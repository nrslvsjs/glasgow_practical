## Miller-Haden, example 3.10

library(tidyverse)

#experiment:  compare quiz performances of freshmean, sophomore, juniors, 
#and seniors
#randomly select three students from each class
#one between subjects factor = class level = Factor A
#three subjects per group = three students per group

data <- tibble("1" = c(39, 41, 40),
               "2" = c(35, 35, 32),
               "3" = c(24, 25, 23),
               "4" = c(22, 23, 21))



dmx <- data %>%
  gather(key = "i", value = "Y_ijk") %>%
  mutate(j = rep(c(1:3), times = 4), .before = "Y_ijk") %>%
  mutate(mu = mean(Y_ijk)) %>%
  group_by(i) %>%
  mutate(grp_mu = mean(Y_ijk)) %>%
  ungroup() %>%
  mutate(Ai = grp_mu - mu) %>%
  mutate(err = Y_ijk - mu - Ai)

dmx2 <- dmx %>%
  select(Y_ijk, mu, Ai, err)

dmx$mu + dmx$Ai == dmx$grp_mu

sum(dmx$Ai) == 0

sum(dmx$err) == 0

indiv_var <- dmx$Y_ijk - dmx$mu

dmx$Ai + dmx$err == indiv_var
  
ss_table <- dmx2 %>%
  mutate(Yij2 = Y_ijk^2,
         mu2 = mu^2,
         Ai2 = Ai^2,
         err2 = err^2) %>%
  select(Yij2, mu2, Ai2, err2) %>%
  mutate(SSY = sum(Yij2),
         SSmu = sum(mu2),
         SSAi = sum(Ai2),
         SSerr = sum(err2))

dat_ss <- dmx2 %>%
  summarise(total = sum(Y_ijk^2),
            ss_mu = sum(mu^2),
            ss_class = sum(Ai^2),
            ss_err = sum(err^2)) %>%
  mutate(ss_correct = total - ss_mu,
         ss_cor_prop_meffect = ss_class / ss_correct,
         ss_cor_prop_err = ss_err / ss_correct,
         ms_a_btw = ss_class / 3,
         ms_err_with = ss_err / 8,
         f = ms_a_btw / ms_err_with,
         p = pf(f, 3, 8, lower.tail = FALSE)
)

library(afex)

afex_table <- dmx %>%
  mutate(sub_id = 1:12, .before = "i") %>%
  select(sub_id, Y_ijk, i, j) %>%
  mutate(Class = rep(c("Freshmen", "Sophomore", "Juniors", "Seniors"), each = 3)) %>%
  select(sub_id, Y_ijk, Class) %>%
  rename("Score" = "Y_ijk")

results <- afex::aov_ez(data = afex_table,
                        dv = "Score",
                        id = "sub_id",
                        type = 3,
                        between = "Class")

print(results$anova_table)
