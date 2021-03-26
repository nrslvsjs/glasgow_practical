data <- tibble(sub_id = c(1:12),
               i = rep(c(1,2), each = 6),
               j = rep(c(1,2), each = 3, times = 2),
               k = rep(c(1:3), times = 4),
               score = c(48, 39, 48, 31, 37, 25, 29, 45, 37, 47, 51, 43),
               mu = mean(score)) %>%
  group_by(i) %>%
  mutate(Ai = mean(score) - mu) %>%
  ungroup() %>%
  group_by(j) %>%
  mutate(Bj = mean(score) - mu) %>%
  ungroup()

data2 <- data %>%
  group_by(i, j) %>%
  mutate(ABij = mean(score) - mu - Ai - Bj) %>%
  mutate(err = score - mu - Ai - Bj - ABij) %>%
  ungroup()

data3 <- data2 %>%
  rename(id = sub_id) %>%
  mutate(Personality = paste0("A", i)) %>%
  mutate(Motivation = paste0("B", j)) %>%
  select(id, Personality, Motivation, score)

cell_means <- data3 %>%
  group_by(Personality, Motivation) %>%
  summarise(mu = mean(score))

ggplot(cell_means, aes(Personality, mu, group = Motivation,
                       shape = Motivation, color = Motivation)) +
  geom_point(size = 3) +
  geom_line()

cell_means1 <- data3 %>%
  group_by(Personality, Motivation) %>%
  summarise(m = mean(score),
            n = n(),
            sd_scores = sd(score),
            ste_scores = sd_scores/sqrt(n),
            ci = 1.96 * ste_scores)

ggplot(cell_means1, aes(Personality, m, group = Motivation)) +
  geom_point(aes(shape = Motivation), size = 3) +
  geom_line() +
  geom_errorbar(aes(ymin = m - ci, ymax = m + ci),
                width = 0.05,
                size = .5) +
  coord_cartesian(ylim = c(0, 100)) +
  labs(x = "Personality",
       y = "Mean Scores",
       caption = "Figure 1. Mean scores from two-way between-subjects \ndesign ANOVA. Error bars indicate 95% confidence \nintervals.")


result <- aov_ez(data3,
                 dv = "score",
                 id = "id",
                 type = 3,
                 between = c("Personality", "Motivation"))

result$anova_table
result$Anova
