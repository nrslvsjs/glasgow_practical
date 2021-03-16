---
title: "6_NHST_and_one_sample_t"
author: "Nick Schultz"
date: "3/7/2021"
output: html_document
---



## Binomial test

```r
ns_data <- tibble(participant = c(1:22),
                  valid_rt = c(631.2, 800.8, 595.4, 502.6, 604.5, 516.9, 658.0, 502.0, 496.7, 600.3, 714.6, 623.7, 634.5, 724.9, 815.7, 456.9, 703.4, 647.5, 657.9, 613.2, 585.4, 674.1))
```


```r
woods_mean <- 590

n_participants <- ns_data %>% filter(valid_rt > woods_mean) %>% count() %>%pull()
```


```r
pbinom(q = 16, size = 22, prob = 0.5, lower.tail = FALSE)
```

```
## [1] 0.00845027
```

## one-sample t-test


```r
ns_data_mean <-  ns_data %>% summarise(mean = mean(valid_rt)) %>% pull()

ns_data_sd <-  ns_data %>% summarise(sd = sd(valid_rt)) %>% pull()

n <- 22

t_obs <-  (ns_data_mean - woods_mean) / (ns_data_sd / sqrt(n))

pval <-  pt(q = t_obs, df = n - 1, lower.tail = FALSE) * 2
```


```r
t.test(x = ns_data$valid_rt, mu = woods_mean)
```

```
## 
## 	One Sample t-test
## 
## data:  ns_data$valid_rt
## t = 1.7638, df = 21, p-value = 0.09231
## alternative hypothesis: true mean is not equal to 590
## 95 percent confidence interval:
##  583.6503 667.2770
## sample estimates:
## mean of x 
##  625.4636
```

## two-sample t-test


```r
library(broom)
library(tidyverse)

evaluators <-  read_csv("data/06-s01/inclass/evaluators.csv")
```

```
## Parsed with column specification:
## cols(
##   eval_id = col_double(),
##   condition = col_character(),
##   age = col_double(),
##   sex = col_double()
## )
```


```r
mean_age <- evaluators %>% summarise(mean = mean(age, na.rm = TRUE)) %>% pull()

sd_age <- evaluators %>% summarise(sd = sd(age, na.rm = TRUE)) %>% pull()

evaluators %>% 
  count(sex) %>%
  mutate(
  sex.names = recode(sex, "1" = "male", "2" = "female"))
```

```
## # A tibble: 3 x 3
##     sex     n sex.names
## * <dbl> <int> <chr>    
## 1     1     4 male     
## 2     2    30 female   
## 3    NA     5 <NA>
```


```r
ratings2 <- read_csv("data/06-s01/inclass/ratings.csv")
```

```
## Parsed with column specification:
## cols(
##   eval_id = col_double(),
##   Category = col_character(),
##   Rating = col_double()
## )
```


```r
iratings <-  ratings2 %>% 
  filter(Category %in% c("competent", "thoughtful", "intelligent"))

imeans <- iratings %>%
  group_by(eval_id) %>%
  summarise(Rating = mean(Rating)) %>%
  mutate(Category = "intellect")

ratings3 <-  ratings2 %>%
  filter(Category %in% c("impression", "hire")) %>%
  bind_rows(imeans) %>%
  inner_join(evaluators, "eval_id") %>%
  select(-c(age, sex)) %>%
  arrange(eval_id, Category)
```


```r
group_means <- group_by(.data = ratings3, Category, condition) %>%
  summarise(Rating = mean(Rating))
```

```
## `summarise()` has grouped output by 'Category'. You can override using the `.groups` argument.
```

```r
ggplot(group_means, aes(Category, Rating, fill = condition)) +
  geom_col(position = "dodge")
```

<div class="figure" style="text-align: center">
<img src="6_NHST_and_one_sample_t_files/figure-html/unnamed-chunk-10-1.png" alt="**CAPTION THIS FIGURE!!**" width="100%" />
<p class="caption">(\#fig:unnamed-chunk-10)**CAPTION THIS FIGURE!!**</p>
</div>


```r
group_means <- ratings3 %>%
  group_by(condition, Category) %>%
  summarise(Rating = mean(Rating))
```

```
## `summarise()` has grouped output by 'condition'. You can override using the `.groups` argument.
```

```r
ggplot(ratings3, aes(condition, Rating, color = condition)) +
  geom_jitter(alpha = .4) +
  geom_violin(aes(fill = condition), alpha = .1) +
  facet_wrap(~ Category) +
  geom_point(data = group_means, size = 2) +
  xlab("Category") +
  ylab("Recruiters' Evaluation of Candidates") +
  coord_cartesian(ylim = c(0, 10), expand = FALSE) +
  guides(color = "none", fill = "none") +
  theme_bw()
```

<div class="figure" style="text-align: center">
<img src="6_NHST_and_one_sample_t_files/figure-html/unnamed-chunk-11-1.png" alt="**CAPTION THIS FIGURE!!**" width="100%" />
<p class="caption">(\#fig:unnamed-chunk-11)**CAPTION THIS FIGURE!!**</p>
</div>


```r
group_means <- ratings3 %>%
  group_by(condition, Category) %>%
  summarise(m = mean(Rating), sd = sd(Rating))
```

```
## `summarise()` has grouped output by 'condition'. You can override using the `.groups` argument.
```

```r
group_means

intellect <- filter(ratings3, Category == "intellect")

intellect_t <- t.test(intellect %>%
                        filter(condition == "listened") %>%
                        pull(Rating), intellect %>%
                        filter(condition == "read") %>%
                        pull(Rating),
                      var.equal = TRUE) %>%
  tidy()
```

```
## # A tibble: 6 x 4
## # Groups:   condition [2]
##   condition Category       m    sd
##   <chr>     <chr>      <dbl> <dbl>
## 1 listened  hire        4.71  2.26
## 2 listened  impression  5.97  1.92
## 3 listened  intellect   5.63  1.61
## 4 read      hire        2.89  2.05
## 5 read      impression  4.07  2.23
## 6 read      intellect   3.65  1.91
```

