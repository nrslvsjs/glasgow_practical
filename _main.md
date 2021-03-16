--- 
title: "Level 2 Research Methods and Statistics Practical Skills"
date: "Last Update: 2021-02-22"
site: bookdown::bookdown_site
documentclass: book
bibliography: [book.bib, packages.bib]
biblio-style: apalike
link-citations: yes
description: ug2-practical-materials
---

--- 
title: "Level 2 Research Methods and Statistics Practical Skills"
date: "Last Update: 2021-02-22"
site: bookdown::bookdown_site
documentclass: book
bibliography: [book.bib, packages.bib]
biblio-style: apalike
link-citations: yes
description: ug2-practical-materials
---



# Overview {-}

<img src="images/L2.png" style="width: 200px; float: right;">

Materials for the University of Glasgow School of Psychology Year 2 Research Methods and Statistics Practical Course. 

**Authors:** Phil McAleer & Helena M. Paterson

**Aim:** This course covers data skills such as R Markdown, data wrangling with tidyverse, and data visualisation with ggplot2. It also introduces statistical concepts such as permutation tests, Null Hypothesis Significance Testing (NHST), alpha, power, effect size, and sample size. Semester 2 focusses on correlations and the general linear model.

**Contact:** This book is a living document and will be regularly checked and updated for improvements. Should you have any issues using the book or queries, please contact [Phil McAleer](mailto:philip.mcaleer@glasgow.ac.uk).

**R Version:** This book has been written with R version 3.5.1 (2018-07-02)

**Randomising Seed:** In chapters that use some level of randomisation, where we have remembered, the seed is set as 1409.

<!--chapter:end:index.Rmd-->


# Starting with R Markdown

Placeholder


## Overview
### What is R Markdown?
### Advantages of using R Markdown
### Creating an R Markdown (.Rmd) File
### One last thing before beginning!

<!--chapter:end:01-s01-lab01a.Rmd-->



## PreClass Activiy
### Let's Begin
### Code Chunks
### Knitting Code
### Adding Code Chunk Rules and Options
### Adding Inline Code
### Formatting the R Markdown File

<!--chapter:end:01-s01-lab01b.Rmd-->



## InClass Activiy
### R Markdown and The Experimental Design Portfolio
### The Ponzo Illusion and Age
### Task 1: Setting up Your R Markdown Portfolio {#Ch1InClassQueT1}
### Task 2: Give your Report a Heading {#Ch1InClassQueT2}
### Task 3: Creating a Code Chunk {#Ch1InClassQueT3}
### Task 4: Writing your Report {#Ch1InClassQueT4}
### Task 5: Making Text Bold or Italicized {#Ch1InClassQueT5}
### Task 6: Adding Links to the Data in your Methods {#Ch1InClassQueT6}
### Task 7: Adding an Image to your Methods {#Ch1InClassQueT7}
### Task 8: Adding a Table to your Results {#Ch1InClassQueT8}
### Task 9: Adding a Figure to your Results {#Ch1InClassQueT9}

<!--chapter:end:01-s01-lab01c.Rmd-->


## Assignment

This is a formative assignment. Instructions as to how to access this assignment will be made available on Moodle during the course. Please note though that this assignment will not be graded and does not count towards obtaining course credit or your overall grade.




<!--chapter:end:01-s01-lab01d.Rmd-->



## Solutions to Questions
### InClass Activities
#### Task 2: Give your Report a Heading 
#### Task 3: Creating a Code Chunk
#### Task 4: Writing your Report
#### Task 5: Making Text Bold or Italicized
#### Task 6: Adding Links to the Data in your Methods
#### Task 7: Adding an Image to your Methods
#### Task 8: Adding a Table to your Results
#### Task 9: Adding a Figure to your Results

<!--chapter:end:01-s01-lab01e.Rmd-->



## InClass Comparison
### Lab 1 - The Magnitude of the Ponzo Illusion varies as a function of Age {-}
### Introduction {-}
### Methods {-}
#### Data {-}
#### Stimuli {-}
### Results {-}

<!--chapter:end:01-s01-lab01f.Rmd-->


# Data-Wrangling: A Key Skill

## Overview

One of the key skills in any researcher's toolbox is the ability to work with data. When you run an experiment you get lots of data in various files. For instance, it is not uncommon for an experimental software to create a new file for every participant you run and for each participant's file to contain numerous columns and rows of data, only some of which are important. Being able to wrangle that data, manipulate it into different layouts, extract the parts you need, and summarise it, is one of the most important skills we will help you learn in the coming weeks.

The next few labs are aimed at refreshing and consolidating your skills in working with data. This lab focuses on organizing data using the `tidyverse` package. Over the course of the activities, you will recap the main functions and how to use them, and we will use a number of real datasets to give you a wide range of exposure to what Psychology is about, and to reiterate that the same skills apply across different datasets. **The skills don't change, just the data!**

There are some questions to answer as you go along to help build your skills: use the example code as a guide and check your answer against the solutions at the end of the chapter. Finally, remember to be pro-active in your learning, work together as a community, and if you get stuck, ask on the forums, google what you are trying to do (e.g. "mutate table tidyverse"), and use the **<a href = "https://www.rstudio.com/resources/cheatsheets/" target = "_blank">cheatsheets</a>** or the **<a href = "https://psyteachr.github.io/" target = "_blank">Grassroots PsyTeacher book</a>**. The key cheatsheet for this activity is the Data Transformation Cheatsheet with `dplyr`.

In this lab you will recap on:

* Data-Wrangling with the Wickham Six one-table verbs.
* Additional useful functions such as count, pivot_longer (to gether data) and joins
* Piping and making efficient codes.

**Note:** This preclass is a bit of a read but it is important that you have all this information in the one place so you can quickly refer back to it. Also, you did a very similar task in the Grassroots book so it is about recapping more than learning afresh. But take your time to try to understand the information and be sure to ask any questions you have. **"Try first, then ask"** is our only rule!


<div class='solution'><button>Portfolio Point - Getting Help</button>

<div class="info">
<p>Remember to open up your Portfolio that you created in Lab 1 so you can add useful information to it as you work through the tasks! Also summarising the information we give in this preclass, in your own words, is a great way to learn! You don’t have to read all of these but they might help from time to time to explain parts further.</p>
<p>For instance, do you remember how to get help on an R function in RStudio? In your Console window, you can call the help function (e.g. <code>?mutate</code>) to view the reference page for each function. This example shows how to get help on the <code>mutate()</code> function within <code>dplyr</code>, which we will use in later labs.</p>
</div>

</div>


<!--chapter:end:02-s01-lab02a.Rmd-->



## PreClass Activity
### Revisiting the Wickham Six
### Learning to Wrangle: Is there a Chastity Belt on Perception
### The **`select()`** Function - to keep only specific columns {#Ch2PreClassQueT1}
### The **`arrange()`** Function - to sort and arrange columns {#Ch2PreClassQueT2}
### The **`filter()`** Function - to keep only parts of the data {#Ch2PreClassQueT3}
### The **`mutate()`** Function - for adding new columns {#Ch2PreClassQueT4}
### The **`group_by()`** Function - to group parts of data altogether {#Ch2PreClassQueT5}
### The **`summarise()`** Function - to do some calculations on the data {#Ch2PreClassQueT6}
### Two Other Useful Functions
### Last but not least - Pipes (**`%>%`**) to make your code efficient

<!--chapter:end:02-s01-lab02b.Rmd-->



## InClass Activity
### Task 1: Open a Script
### Task 2: Bring in Your Library {#Ch2InClassQueT2}
### Task 3: Load in the Data {#Ch2InClassQueT3}
### Task 4: Review Your Data. {#Ch2InClassQueT4}
### Task 5: Gathering Data with pivot_longer(). {#Ch2InClassQueT5}
### Task 6: Combining Data. {#Ch2InClassQueT6}
### Task 7: Calculating the AQ Scores.  {#Ch2InClassQueT7}
### Task 8: One Last Thing on Pipes {#Ch2InClassQueT8}

<!--chapter:end:02-s01-lab02c.Rmd-->



## Assignment
### Today's Topic - The Ageing Brain 
### Load in the data
### Task 1 - Oldest Participant {#Ch2AssignQueT1}
### Task 2 - Arranging D-SPAN {#Ch2AssignQueT2}
### Task 3 - Foreign Language Speakers {#Ch2AssignQueT3}
### Task 4 - Creating Percentage MOCA scores {#Ch2AssignQueT4}
### Task 5 - Remove the MOCA column {#Ch2AssignQueT5}
### Task 6 - Gather the Responses together {#Ch2AssignQueT6}
### Task 7 - Joining the data {#Ch2AssignQueT7}
### Task 8 - Working the Pipes {#Ch2AssignQueT8}
### Task 9 - Difference in Musical Means {#Ch2AssignQueT9}

<!--chapter:end:02-s01-lab02d.Rmd-->



## Solutions to Questions
### PreClass Activities
#### PreClass Task 1
#### PreClass Task 2
#### PreClass Task 3
#### PreClass Task 4
#### PreClass Task 5
#### PreClass Task 6
### InClass Actitivies
#### InClass Task 2
#### InClass Task 3
#### InClass Task 7 
#### InClass Task 8
### Assignment Solution
#### Assignment Task 1 - Oldest Participant
#### Assignment Task 2 - Arranging D-SPAN
#### Assignment Task 3 - Foreign Language Speakers
#### Assignment Task 4 - Creating Percentage MOCA scores
#### Assignment Task 5 - Remove the MOCA column
#### Assignment Task 6 - Gather the Responses together
#### Assignment Task 7 - Joining the data
#### Assignment Task 8 - Working the Pipes
#### Assignment Task 9 - Difference in Musical Means

<!--chapter:end:02-s01-lab02e.Rmd-->



## Additional Material
### More on read_csv() {-}
### More on Code Layout {-}
### More on gathering data - `pivot_longer()` and `gather()` {-}
### More on binding and joining {-}

<!--chapter:end:02-s01-lab02f.Rmd-->


# Visualisation Through **`ggplot2`**

## Overview

In the last lab we encouraged you to always be looking at your data, making sure you are understanding your data, paying attention to how it is made up in regards to data types, and what the different functions do to your data. Remember that it is one thing to get a function to run, but you need to check it is doing what you think it is doing. It is just a function. You are the human! 

A second way of looking at your data, and what we are going to focus on in this chapter, is through visualisation - figures and plots - to help understand patterns and effects in your data. For example, when we asked you about the relationship between age and the Ponzo illusion in Chapter 1. 

Visualisation is very important for understanding your data, for example in regards to seeing differences between groups, but also for seeing where things don't quite match up with what you think is happening. A great example of this is Anscombe's Quartet, which you can read up about at a later date if you like - <a href = "https://en.wikipedia.org/wiki/Anscombe%27s_quartet" target = "_blank">see here</a> - four datasets given exact same means but with very different underlying structures when visualised. The key point is that it is always good to visualise your data and visualisation should be a common step in your practical skill set.

In the PsyTeachR <a href="https://psyteachr.github.io/" target = "_blank">Grassroots book</a> we introduced data visualisation using `ggplot2`, the main visualisation package of `tidyverse`. You should look back at that when working through this chapter, and you can find additional info here at the main page for the package: <a href = "https://ggplot2.tidyverse.org/" target = "_blank">ggplot2</a>. 

Today we will revisit plotting data and expand your skills in order to make effective and informative figures. This will become really beneficial to you as your progress as visualisation of any data is a skill that applies to multiple careers, not just Psychology.

In this lab you will:

1. Recap on visualisation
2. Expand your skills to produce new figures
3. Learn about Mental Rotation

<!--chapter:end:03-s01-lab03a.Rmd-->



## PreClass Activity
### Scatterplots - `geom_point()`
### Histograms - geom_histogram()
### Boxplots - geom_boxplot()
### Barplots - geom_bar() or geom_col()
### Themes, Labels, Guides, and **`facet_wraps()`**

<!--chapter:end:03-s01-lab03b.Rmd-->



## InClass Activity
### Mental Rotation: Angle and Reaction Time
### Task 1: Loading and Viewing the Data {#Ch3InClassQueT1}
### Task 2: Recreating the Figure {#Ch3InClassQueT2}
### Task 3: Examining Additional Variable Effects {#Ch3InClassQueT3}
### Task 4: Grouping the Figure Data {#Ch3InClassQueT4}
### Task 5: Identifying Groups Using **`aes()`** {#Ch3InClassQueT5}
### Task 6: Changing the Shape and Size of Data Points {#Ch3InClassQueT6}
### Task 7: Adding Labels and Changing the Background {#Ch3InClassQueT7}
### Task 8: Separating a Variable and Removing Legends {#Ch3InClassQueT8}
### Additional Considerations (briefly!)

<!--chapter:end:03-s01-lab03c.Rmd-->


## Assignment

This is a summative assignment. Instructions as to how to access and submit your assignment will be made available on Moodle during the course.

<!--chapter:end:03-s01-lab03d.Rmd-->



## Solutions to Questions
### InClass Activities
#### InClass Task 1
#### InClass Task 2
#### InClass Task 3
#### InClass Task 4
#### InClass Task 5
#### InClass Task 6
#### InClass Task 7
#### InClass Task 8

<!--chapter:end:03-s01-lab03e.Rmd-->



## Additional Material
### More on `aes()` - when to and when not to! {-}
### Combining Plots into one Figure {-}

<!--chapter:end:03-s01-lab03f.Rmd-->


# Revisiting Probability Distributions

Placeholder


## Overview
### Discrete or Continuous Datasets

<!--chapter:end:04-s01-lab04a.Rmd-->



## PreClass Activity 1
### General Probability Calculations
### Creating a Simple Probability Distribution 
### The Binomial Distribution - Creating a Discrete Distribution
### **`dbinom()`** - The Density Function
### **`pbinom()`** - The Cumulative Probability Function
### **`qbinom()`** - The Quantile Function

<!--chapter:end:04-s01-lab04b1.Rmd-->



## PreClass Activity 2
### Continuous Data - Brief Recap on The Normal Distribution
### Properties of the Normal distribution:

<!--chapter:end:04-s01-lab04b2.Rmd-->



## InClass Activity 1
### Continuous Data and the Normal Distribution
### Estimating from the Normal Distribution
### **`dnorm()`** - The Density Function for the Normal Distribution
#### Task 1: Standard Deviations and IQ Score Distribution {#Ch4InClassQueT1}
#### Task 2: Changing Range and Step Size of The Normal Distribution {#Ch4InClassQueT2}
### **`pnorm()`** - The Cumulative Probability function
#### Task 3: Calculating Cumulative Probability of Height {#Ch4InClassQueT3}
#### Task 4: Using Figures to Calculate Cumulative Probability {#Ch4InClassQueT4}
### **`qnorm()`** - The Quantile Function
#### Task 5: Using **`pnorm()`** and **`qnorm()`** to find probability and cut-off values {#Ch4InClassQueT5}

<!--chapter:end:04-s01-lab04c1.Rmd-->



## InClass Activity 2 (Additional)
### Return of the Binomial {Ch4InClassQueBinomial}

<!--chapter:end:04-s01-lab04c2.Rmd-->



## InClass Activity 3 (Additional)
### Back to Basics

<!--chapter:end:04-s01-lab04c3.Rmd-->



## Assignment
### Today's Topic - Probability
### Load in the Library {#Ch4AssignQueLib}
### Assignment Task 1 {#Ch4AssignQueT1}
### Assignment Task 2 {#Ch4AssignQueT2}
### Assignment Task 3 {#Ch4AssignQueT3}
### Assignment Task 4 {#Ch4AssignQueT4}
### Assignment Task 5 {#Ch4AssignQueT5}
### Assignment Task 6 {#Ch4AssignQueT6}
### Assignment Task 7 {#Ch4AssignQueT7}
### Assignment Task 8 {#Ch4AssignQueT8}
### Assignment Task 9 {#Ch4AssignQueT9}
### Assignment Task 10 {#Ch4AssignQueT10}

<!--chapter:end:04-s01-lab04d.Rmd-->



## Solutions to Questions
### InClass Activities
#### InClass Task 1
#### InClass Task 2
#### InClass Task 3
#### InClass Task 4
#### InClass Task 5
### Return of the Binomial
#### Task 1
### Assignment Solution
#### Load in the Library
#### Assignment Task 1
#### Assignment Task 2
#### Assignment Task 3
#### Assignment Task 4
#### Assignment Task 5
#### Assignment Task 6
#### Assignment Task 7
#### Assignment Task 8
#### Assignment Task 9
#### Assignment Task 10

<!--chapter:end:04-s01-lab04e.Rmd-->


# Permutation Tests - A Skill Set 

Placeholder


## Overview

<!--chapter:end:05-s01-lab05a.Rmd-->



## PreClass Activity 
### Skill 1: Generating Random Numbers
### Skill 2: Permuting Values
### Skill 3: Creating Tibbles
#### Entering Data into a Tibble
#### Repeating Values to Save Typing
#### Bringing it Together in a Tibble
### Skill 4: Computing Differences in Group Means
### Skill 5: Creating Your Own Functions
### Skill 6: Replicating Operations

<!--chapter:end:05-s01-lab05b.Rmd-->



## InClass Activity 
### Permutation Tests of Hypotheses
### Step 1: Load in Add-on Packages and Data {#Ch5InClassQueT1}
### Step 2: Calculate the Original Mean Difference - $D_{orig}$ {#Ch5InClassQueT2}
### Step 3: Permute the Group Labels {#Ch5InClassQueT3}
### Step 4: Create the Null-Hypothesis Distribution (NHD) for the Difference {#Ch5InClassQueT4}
### Step 5: Compare the Observed Mean Difference to the NHD {#Ch5InClassQueT5}

<!--chapter:end:05-s01-lab05c.Rmd-->


## Assignment

This is a summative assignment. Instructions on how to access and submit your assignment will be made available on Moodle during the course.

<!--chapter:end:05-s01-lab05d.Rmd-->



## Solutions to Questions
### InClass Activities
#### Step 1
#### Step 2
#### Step 3
#### Step 4
#### Step 5

<!--chapter:end:05-s01-lab05e.Rmd-->



## Additional Material
### More on `pivot_wider()` {-}
### More on simulating your own data {-}
### More on Permutations - a blog {-}

<!--chapter:end:05-s01-lab05f.Rmd-->


# NHST and One-sample t-tests

Placeholder


## Overview

<!--chapter:end:06-s01-lab06a.Rmd-->



## PreClass Activity
### The Binomial Test
### Task 1: Creating a Dataframe {#Ch6PreClassQueT1}
### Task 2: Comparing Original and New Sample Reaction Times {#Ch6PreClassQueT2}
### Task 3: Calculating Probability {#Ch6PreClassQueT3}
### The One-Sample t-test
### Task 4: Calculating the Mean and Standard Deviation {#Ch6PreClassQueT4}
### Task 5: Calculating the Observed Test Statistic {#Ch6PreClassQueT5}
### Task 6: Comparing the Observed Test Statistic to the t-distribution using **`pt()`** {#Ch6PreClassQueT6}
### Task 7: Comparing the Observed Test Statistic to the t-distribution using **`t.test()`** {#Ch6PreClassQueT7}
### Task 8: Drawing Conclusions about the new data {#Ch6PreClassQueT8}

<!--chapter:end:06-s01-lab06b.Rmd-->



## InClass Activity
### Task 1: Evaluators {#Ch6InClassQueT1}
### Task 2: Ratings {#Ch6InClassQueT2}
### Task 3: Creating a Figure {#Ch6InClassQueT3}
### Task 4: t-tests {#Ch6InClassQueT4}

<!--chapter:end:06-s01-lab06c.Rmd-->



## Assignment
### Task 1A: Libraries {#Ch6AssignQueT1A}
### Task 1B: Loading in the data {#Ch6AssignQueT1B}
### Task 2: Selecting only relevant columns {#Ch6AssignQueT2}
### Task 3: Verify the number of subjects in each group {#Ch6AssignQueT3}
### Task 4: Reproduce Figure 2a {#Ch6AssignQueT4}
### Task 5: Interpreting your Figure {#Ch6AssignQueT5}
### Task 6: t-test {#Ch6AssignQueT6}
### Task 7: Reporting results {#Ch6AssignQueT7}

<!--chapter:end:06-s01-lab06d.Rmd-->



## Solutions to Questions
### PreClass Activities
#### PreClass Task 1
#### PreClass Task 2
#### PreClass Task 3
#### PreClass Task 4
#### PreClass Task 5
#### PreClass Task 6
#### PreClass Task 7
#### PreClass Task 8
### InClass Activities
#### InClass Task 1
#### InClass Task 2
#### InClass Task 4
#### Going Further with your coding
### Homework Activity
#### Assignment Task 1A: Libraries
#### Assignment Task 1B: Loading in the data
#### Assignment Task 2: Selecting only relevant columns
#### Assignment Task 3: Verify the number of subjects in each group
#### Assignment Task 4: Reproduce Figure 2A
#### Assignment Task 5: Interpreting your Figure
#### Assignment Task 6: t-test
#### Assignment Task 7: Reporting results

<!--chapter:end:06-s01-lab06e.Rmd-->



## Additional Material
### More on `t.test()` - vectors vs. formula {-}
### Misleading and Appropriate Barplots {-}
### Analysing chi-squares {-}

<!--chapter:end:06-s01-lab06f.Rmd-->


# Within-Subjects t-test

Placeholder


## Overview

<!--chapter:end:07-s01-lab07a.Rmd-->



## PreClass Activity
### Reading
### Task

<!--chapter:end:07-s01-lab07b.Rmd-->



## InClass Activity
### Task 1: Load the Data {#Ch7InClassQueT1}
### Task 2: Wrangle the Data {#Ch7InClassQueT2}
### Task 3: Look at the Histogram for Normality {#Ch7InClassQueT3}
### Task 4: A Boxplot of Outliers {#Ch7InClassQueT4}
### Task 5: The Violin Plot {#Ch7InClassQueT5}
### Task 6: Calculating Descriptives {#Ch7InClassQueT6}
### Task 7: Visualising Means and Descriptives {#Ch7InClassQueT7}
### Task 8: The t-test {#Ch7InClassQueT8}
### Task 9: The Write-up {#Ch7InClassQueT9}

<!--chapter:end:07-s01-lab07c.Rmd-->


## Assignment

This is a summative assignment. Instructions as to how to access and submit your assignment will be made available on Moodle during the course.

<!--chapter:end:07-s01-lab07d.Rmd-->



## Solutions to Questions
### InClass Activities
#### InClass Task 1
#### InClass Task 2
#### InClass Task 3
#### InClass Task 4
#### InClass Task 5
#### InClass Task 6
#### InClass Task 7
#### InClass Task 8
#### InClass Task 9

<!--chapter:end:07-s01-lab07e.Rmd-->



## Additional Material
### Non-Parametric tests {-}

<!--chapter:end:07-s01-lab07f.Rmd-->


# APES - Alpha, Power, Effect Sizes, Sample Size

## Overview

Up until now we have mainly spent time on data-wrangling, understanding probability, visualising our data, and more recently, running inferential tests, i.e. t-tests. In the lectures, however, you have also started to learn about additional aspects of inferential testing and trying to reduce certain types of error in your analyses. It is this balance of minimising error in our inferential statisitcs that we will focus on today. 

First thing to remember is that there are two types of hypotheses in Null Hypothesis Significance Testing (NHST) and what you are trying to establish is the probability of the null hypothesis not being accepted. Those two hypotheses are:

* The **null hypothesis** which states that the compared values **are equivalent** and, when referring to means, is written as: $H_0: \mu_1 = \mu_2$ 
* And the **alternative hypothesis** which states that the compared values **are not equivalent** and, when referring to means, is written as: $H_1: \mu_1 \ne \mu_2$.

Now, each decision about a hypothesis is prone to some degree of error and, as you will learn, the two main types of error that we worry about in Psychology are:

* **Type I error** - or **False Positives**, is the error of rejecting the null hypothesis when it should not be rejected (otherwise called **alpha** or $\alpha$). In other words, you conclude that there is a real "effect" when in fact there is no effect. The field standard rate of acceptable false positives is $\alpha = .05$ meaning that in theory 1 in 20 studies may be a false positive.
* **Type II error** - or **False Negatives**, is the error of retaining the null hypothesis when it is false (otherwise called **beta** or $\beta$). In other words, you conclude that there was no real "effect" when in fact there was one. The field standard rate of acceptable false negatives is $\beta = .2$ meaning that in theory 1 in 5 studies may be a false negative. 

Adding to the ideas of hypotheses and errors, we are going to look at the idea of **power** which you will learn is the long-run probability of correctly rejecting the null hypothesis for a fixed effect size and fixed sample size; i.e. correctly concluding there is an effect when there is a real effect to detect. Power is calculated as $power = 1-\beta$ and is directly related to the False Negative rate. If the field standard of False Negatives is $\beta = .2$ then the field standard of power should be $power = 1 - .2 = .8$, for a given effect size and sample size (though some papers, including Registered Reports are often required to have a power of at least $power >= .9$). As such, $power = .8$ means that the majority of studies should find an effect if there is one to detect, assuming that your study maintains these rates of error and power.

Unfortunately, however, psychological research has been criticised for neglecting power and $\beta$ when planning studies resulting in what are called "underpowered" or "low powered" studies - meaning that your error rates are higher than you think they are, your power is lower than you think it is, and the study is unreliable. Note that as $\beta$ increases (the false negative rate increases), power decreases; power and false positive rates are also related, though less directly. In fact, low powered studies, combined with undisclosed analytical flexibility and publication bias, is thought to be a key issue in the replication crisis within the field. As such there may be a large number of studies where the null hypothesis has been rejected when it should not have been, and unpublished studies that have not been written up because they did not find an effect when they should have. In turn, when that is the case, the field becomes noisy and you are unsure which studies will replicate.  It is issues like this that led us to redevelop our courses and why we really want you to understand power as much as possible.

So this chapter is all about power, error rates, effect sizes, and sample sizes. We will learn:

* the relationship between power, alpha, effect sizes and sample sizes
* how to calculate certain effect sizes
* how to determine appropriate sample sizes in given scenarios
* and how to interpret power analyses.


<!--chapter:end:08-s01-lab08a.Rmd-->



## PreClass Activity
### Reading 
### Watch
### Optional

<!--chapter:end:08-s01-lab08b.Rmd-->



## InClass Activity
### Task 1: Effect size from a one-sample t-test {#Ch8InClassQueT1}
### Task 2: Effect size from between-subjects t-test {#Ch8InClassQueT2}
### Task 3: Effect Size from matched-pairs t-test {#Ch8InClassQueT3}
### Task 4: t-value and effect size for a between-subjects Experiment {#Ch8InClassQueT4}
### Task 5: Sample size for standard power one-sample t-test {#Ch8InClassQueT5}
### Task 6: Effect size from a high power between-subjects t-test {#Ch8InClassQueT6}
### Task 7: Power of Published Research {#Ch8InClassQueT7}

<!--chapter:end:08-s01-lab08c.Rmd-->



## Assignment
### Assignment Task 1 {#Ch8AssignQueT1}
### Assignment Task 2 {#Ch8AssignQueT2}
### Assignment Task 3 {#Ch8AssignQueT3}
### Assignment Task 4 {#Ch8AssignQueT4}
### Assignment Task 5 {#Ch8AssignQueT5}
### Assignment Task 6 {#Ch8AssignQueT6}
### Assignment Task 7 {#Ch8AssignQueT7}
### Assignment Task 8 {#Ch8AssignQueT8}
### Assignment Task 9 {#Ch8AssignQueT9}
### Assignment Task 10 {#Ch8AssignQueT10}
### Assignment Task 11 {#Ch8AssignQueT11}
### The **`pwr`** package

<!--chapter:end:08-s01-lab08d.Rmd-->



## Solutions to Questions
### InClass Activities
#### InClass Task 1
#### InClass Task 2
#### InClass Task 3
#### InClass Task 4
#### InClass Task 5
#### InClass Task 6
#### InClass Task 7
### Homework Activity
#### Assignment Task 1
#### Assignment Task 2
#### Assignment Task 3
#### Assignment Task 4
#### Assignment Task 5 
#### Assignment Task 6
#### Assignment Task 7
#### Assignment Task 8
#### Assignment Task 9
#### Assignment Task 10
#### Assignment Task 11

<!--chapter:end:08-s01-lab08e.Rmd-->



## Additional Material
### A different power function - `power.t.test()` {-}
### Cohen's d to r {-}
### How to choose an effect size {-}
### Interpreting and writing up power {-}

<!--chapter:end:08-s01-lab08f.Rmd-->


# Reflection - Semester 1

## Overview

We have covered a lot of material in these first few chapters and now would be a good time to stop, recap, and reflect on what we have learnt.  As such, this chapter is more about looking back at what you have learnt, testing your skills, resolving issues, and looking at other cool applications of R that have not been covered in this lab series.

<!--chapter:end:09-s01-lab09a.Rmd-->


## PreClass Activity

As we are reflecting in this lab, your preclass activities this time are:

1. Review the labs from this semester and note any issues you have with the elements covered - both in terms of concepts and code.

2. Post these issues on available discussion channels and we can look at them together at our next meeting.



<!--chapter:end:09-s01-lab09b.Rmd-->


## InClass Activity

1. Like the PreClass, we want to spend some time reflecting on what we have learnt and as such this InClass is about looking at ideas, concepts, and codes, that you have had issue with and seeing if we can resolve those issues. In class, we will spend some time looking at any issues you have had along the way.

2. We will also look at some other interesting things you can do in R should you wish to expand your own knowledge and skills, such as:

     - Popping out the Source Window to make working easier - <a href="https://support.rstudio.com/hc/en-us/articles/207126217-Using-Source-Windows" target = "_blank">Using Source Windows</a>
     - Analysing Twitter data with the **`rtweet`** package [@R-rtweet]
     - Animating plots with the **`ggganimate`** package [@R-gganimate]
     - Creating quickfire quizzes with the **`webex`** [@R-webex]
     - Make your own memes using the **`meme`** package [@R-meme]
     - <a href="https://dreamrs.shinyapps.io/memory-hex/" target = "_blank">The Hex Sticker Memory game</a> and <a href="https://community.rstudio.com/t/shiny-contest-submission-hex-memory-game/25336" target = "_blank">the background behind it</a>
     - <a href = "https://datatitian.com/how-to-turn-your-ggplot2-visualization-into-an-interactive-tweet/" target = "_blank">Creating interactive plots using ggplot and plotly</a>
     - Even funkier visualtions using the **`ggforce`** package - check out `facet_zoom()` [@R-ggforce]
     - Many diverse fields are now using R and this is a good example: <a href = "https://learn.r-journalism.com/en/" target = "_blank">R for Journalists</a>
     - Using the `knitr::read_chunk()` function to call R script code through R Markdown [@R-knitr]
     - The **`statcheck`** package for checking that you and others are presenting their inferential analyses accurately (in terms of df and p-value) and in APA format [@R-statcheck]
     - A great repository of R resources for teaching, learning, writing webpages, CVs, and doing very cool things with webpages

<!--chapter:end:09-s01-lab09c.Rmd-->


## Assignment

This is a summative assignment. Instructions on how to access and submit your assignment will be made available on Moodle during the course.

<!--chapter:end:09-s01-lab09d.Rmd-->


## Solutions to Questions

Instructions on how to access the solution to this lab will be made available during the course.

<!--chapter:end:09-s01-lab09e.Rmd-->


# Correlations

Placeholder


## Overview

<!--chapter:end:10-s02-lab10a.Rmd-->



## PreClass Activity
### Read
### Watch
### Play

<!--chapter:end:10-s02-lab10b.Rmd-->



## InClass Activity
### Task 1 - The Data {#Ch10InClassQueT1}
### Task 2 - Interval or Ordinal {#Ch10InClassQueT2}
### Task 3 - Missing Data {#Ch10InClassQueT3}
### Task 4 - Normality {#Ch10InClassQueT4}
### Task 5 - Descriptives {#Ch10InClassQueT5}
### Task 6 - Pearson or Spearman? {#Ch10InClassQueT6}
### Task 7 - Interpretation {#Ch10InClassQueT7}
### Advanced 1: Matrix of Scatterplots
### Task 8 - The Matrix {#Ch10InClassQueT8}
### Advanced 2: Attitudes towards Vaping
### Task 9 - Attitudes to Vaping {#Ch10InClassQueT9}

<!--chapter:end:10-s02-lab10c.Rmd-->


## Assignment

This is a **summative** assignment and as such, as well as testing your knowledge, skills, and learning, this assignment contributes to your overall grade for this semester. Due to changes to the course schedule, related to the pivot to online teaching as part of the COVID Pandemic, you will be instructed by the Course Lead on Moodle as to when you will receive this assignment, as well as given full instructions as to how to access and submit the assignment. Please check the information and schedule on the Level 2 Moodle page.

<!--chapter:end:10-s02-lab10d.Rmd-->



## Solutions to Questions
### InClass Activity
#### InClass Task 1
#### InClass Task 2
#### InClass Task 3
#### InClass Task 4
#### InClass Task 5
#### InClass Task 6
#### InClass Task 7
#### InClass Task 8
#### InClass Task 9

<!--chapter:end:10-s02-lab10e.Rmd-->



## Additional Material
### Checking for outliers with z-scores {-}
### A different approach to making a correlation table {-}
### Comparing Correlations {-}

<!--chapter:end:10-s02-lab10f.Rmd-->


# Introduction to GLM: One-factor ANOVA

## Overview

A key way that we attempt to learn from data is to build a **statistical model** that captures relationships among variables. You are actually already familiar with this approach but it just hasn't been phrased as such - this is what t-test, correlations, etc, do. In this chapter we will formalise this approach and introduce you to the General Linear Model (GLM) which you will read about in the Miller and Haden (2013) textbook (Chapters 1-3) as part of the PreClass. 

The GLM is a very common model in statistics in Psychology and it encapsulates a range of common analytical techniques that you are already familiar with and will become even more familiar with throughout this book as we will spend some of the next few lessons looking at the GLM and reading about it. The GLM covers all the t-tests and correlations you have looked at, and the ANOVA and regression we are going to come on to. Basically, the General Linear Model (GLM) is the foundation of a lot of that statistical tests we use. Over the next few chapters, and building for future years of study, we will introduce the GLM here, through working with the model "by hand" on a simulated dataset, as this one of the best ways to learn about linear models.

You will also notice a slight change in the assignments for the next few chapters in that you are required to do a little more computation than before. Keep in mind though that all the skills you need will of course be shown to you first or you have already learnt them. The previous chapters have been aimed at developing your general practical data skills and now we want to develop your understanding of the analysis and data you are working with.

As such, the goals of this chapter are:

- to recap and practice entering data into a tibble (tidyverse data frame - as introduced Chapter 5);
- to learn how to estimate model parameters from a dataset;
- to learn how to derive/generate a **decomposition matrix** that expresses each observation/participant as a linear sum of model components and error.

These terms will become more familiar to you over the following chapters and from reading Miller and Haden, but remember to make notes for yourself to help your solidify your learnin and, as always, ask as many questions as you like!

<!--chapter:end:11-s02-lab11a.Rmd-->



## PreClass Activity
### Read

<!--chapter:end:11-s02-lab11b.Rmd-->



## InClass Activity
### Recreate decomposition matrix from the raw data
### Step 1: Create the basic tibble {#Ch11InClassQueT1}
### Step 2: Estimate the Grand Mean $\hat{\mu}$ {#Ch11InClassQueT2}
### Step 3: Entering the estimates $\hat{A}_1$, $\hat{A}_2$, $\hat{A}_3$ {#Ch11InClassQueT3}
### Step 4: Calculate Residuals $\widehat{S(A)}_{ij}$ {#Ch11InClassQueT4}
### Step 5: Sums of squares {#Ch11InClassQueT5}

<!--chapter:end:11-s02-lab11c.Rmd-->



## Assignment
### Question 1 {#Ch11AssignQueT1}
### Question 2 {#Ch11AssignQueT2}
### Question 3 {#Ch11AssignQueT3}
### Question 4 {#Ch11AssignQueT4}
### Question 5 {#Ch11AssignQueT5}
### Question 6 {#Ch11AssignQueT6}
### Question 7 {#Ch11AssignQueT7}
### Question 8 {#Ch11AssignQueT8}
### Question 9: Create your own decomposition matrix {#Ch11AssignQueT9}

<!--chapter:end:11-s02-lab11d.Rmd-->



## Solutions to Questions
### InClass Activities
#### InClass Step 1
#### InClass Step 2
#### InClass Step 3
#### InClass Step 4
#### InClass Step 5 (version 1)
#### InClass Step 5 (version 2)
### Homework Activities
#### Assignment Question 1
#### Assignment Question 2
#### Assignment Question 3
#### Assignment Question 4
#### Assignment Question 5
#### Assignment Question 6
#### Assignment Question 7
#### Assignment Question 8
#### Assignment Question 9 

<!--chapter:end:11-s02-lab11e.Rmd-->


# Continuing the GLM: One-factor ANOVA

## Overview

In the previous chapter you learned how to decompose a dependent variable into components of the general linear model, expressing the values in terms of a decomposition matrix, before finishing up with calculating the sums of squares. In this chapter, we will take it a step further and look at running the ANOVA from those values. Through this we will start exploring the relationships between sums of squares (SS), mean squares (MS), degrees of freedom (df), and F-ratios.  In this chapter we will show you how you go from the decomposition matrix we created in the previous chapter to actually determining if there is a significant difference or not.  

In the last chapter we had you work through the calculations step-by-step "by hand" to gain a conceptual understanding, and we will continue that in the first half of the inclass activities. However, when you run an ANOVA, typically the software does all of these calculations for you. As such, in the second part of the activities, we'll show you how to run a one-factor ANOVA using the `aov_ez()` function in the **`afex`** add-on package. From there you will see how the output of this function maps onto the concepts you've been learning about. 

Some key terms from this chapter are:

* **Sums of Squares (SS)** - an estimate of the total spread of the data (variance) around a parameter (such as the mean). We saw these in Chapter 11
* **degrees of freedom (df)** - the number of observations that are free to vary to produce a known output. Again we have seen these before in all previous tests. The df impacts on the distribution that is used to compare against for probability
* **Mean Square (MS)** - an average estimate of the spread of the data (variance) calculated by $MS = \frac{SS}{df}$
* **F-ratio **- the test statistic of the ANOVA from the F-distribution. Calculated as $F = \frac{MS_{between}}{MS_{within}}$ or $F = \frac{MS_{A}}{MS_{err}}$.

Again, these terms will become more familiar as we work through this Chapter so don't worry if you don't understand them yet.  The main thing to understand is that we go from the indivual data to the decomposition matrix to the Sums of Squares to the Mean Squares to the F-ratio. But in summary this is what we are doing:

**ANOVA PATH:** $Data \to Decomp. Matrix \to SS \to MS \to F$

As such, the goals of this chapter are to:

* to demonstrate how Sums of Squares leads to an F-value, finishing off the decomposition matrix
* to determine the probability of a F-value for given degrees of freedom (df)
* to explore using the `aov_ez()` function and how the outcome compares to your decomposition matrix calculations.

**Note:** The **`afex`** package is already installed on the Boyd Orr machines and only needs read into the library in the normal fashion. Do not install it on the Boyd Orr Lab machines. If you are using your own laptop you will need to make sure you have installed the **`afex`** package.

<!--chapter:end:12-s02-lab12a.Rmd-->


## PreClass Activity

As per the previous Chapter, the PreClass activity for this lab is reading (re-reading in fact) and trying out some of the Miller and Haden activities. We will go over similar activities in the remainder of this chapter so it will really help you to spend a few minutes trying out the Miller and Haden activities and thinking about them.

### Read

**Chapters**

* Re-read Chapter 3 of <a href="https://drive.google.com/file/d/0B1fyuTuvj3YoaFdUR3FZaXNuNXc/view" target = "_blank">Miller and Haden (2013)</a> and make sure you are understanding it. Particularly focus on how the decomposition matrix leads to the ANOVA output through sums of squares, dfs, and mean squares. 

### Try

**Activities**

* Test your understanding by working through Computational Exercise #1 in section 3.12 of Miller and Haden (page 31) all the way to the summary table. The answer is in Miller and Haden section 3.13 but be sure to work through the example first. Don't worry about sketching the data. What you want to do is work the values through the decomposition matrix all the way to the F-value.
    - The decomposition matrix is very similar to the one we looked at in Chapter 11, but with less conditions.
    - The sums of squares would be calculated the same way as we did in Chapter 11.
    - Use the formulas shown to calculate F.

$$MS = \frac{SS}{df} \space\space\space\space\space F = \frac{MS_{between}}{MS_{within}}$$   
    
    
* It may also help to review Chapter 4 on probability as we move onto understanding F distributions and p-values.

<span style="font-size: 22px; font-weight: bold; color: var(--blue);">Job Done - Activity Complete!</span>

<!--chapter:end:12-s02-lab12b.Rmd-->



## InClass Activity
### Task 1 - Quick Checks {#Ch12InClassQueT1}
### Task 2 - Mean squares and degrees of freedom {#Ch12InClassQueT2}
### Task 3 - F-ratios {#Ch12InClassQueT3}
### Task 4 - Using afex::aov_ez() {#Ch12InClassQueT4}

<!--chapter:end:12-s02-lab12c.Rmd-->


## Assignment

This is a **summative** assignment and as such, as well as testing your knowledge, skills, and learning, this assignment contributes to your overall grade for this semester. Due to changes to the course schedule, related to the pivot to online teaching as part of the COVID Pandemic, you will be instructed by the Course Lead on Moodle as to when you will receive this assignment, as well as given full instructions as to how to access and submit the assignment. Please check the information and schedule on the Level 2 Moodle page.

<!--chapter:end:12-s02-lab12d.Rmd-->



## Solutions to Questions
### InClass Activities
#### InClass Task 1 
#### InClass Task 2
#### InClass Task 3
#### InClass Task 4

<!--chapter:end:12-s02-lab12e.Rmd-->



## Additional Material
### Levene's Test of Homogeneity

<!--chapter:end:12-s02-lab12f.Rmd-->


# Continuing the GLM: Two-factor designs

## Overview

For the past couple of weeks we have been building our understanding of the General Linear Model and in particular how it applies to a one-factor between-subjects ANOVA.  Remember this is the scenario where you have one IV (categorical) and one DV (continuous) and you want to know if there is a significant effect at the different levels of your factor; where factor is another name for variable (or IV) and level is another name for condition (or group). We started out with the decomposition matrix, calculated our sums of squares, and from there our F-value to determine if there was a significant effect.  One thing that is really worth keeping in mind is that the ANOVA is an **omnibus** test in that it tells you there is a significant effect of that factor, but it doesn't specifically say in which way is that effect manifested; you always have to do a little work there to tease out the pattern of the effect.  Say for instance you test a one-way ANOVA on three animal categories on some test (dogs, cats, gerbils). The ANOVA will tell you if there is an overall effect (or difference between groups) but you need to do a little work to find out is the difference between cats and dogs, dogs and gerbils, etc etc.  But more on that another time.

One-way ANOVAs are great when you only have one IV but the really useful thing about ANOVAs, and the GLM really, is that it can handle much more complex situations; which we are going to look at a little today.  You were asked to read up on Chapter 4 of Miller and Haden (2013) looking at two-factor, between-subjects designs. This is the scenario where you have two factors (IVs) and it is different people in each condition. For example, say your IVs were people who can/can't juggle, and people who do/don't have pets.  You have 4 groups here as you have people who can juggle and have pets, people who can't juggle and have pets, people who can juggle and don't have pets, and people who can't juggle and who don't have pets (how sad!!!). This would be an example of a two-way between-subjects factorial ANOVA (also a 2x2 ANOVA). And it is this scenario that we will be looking at today.

The goals of this chapter are to:

1. extend our knowledge of ANOVAs and GLMs to deal with two factors between-subject designs.
2. understand the concepts of and calculate main effects and interactions.
3. be able to plot and interpret data from factorial ANOVAs.

<!--chapter:end:13-s02-lab13a.Rmd-->



## PreClass Activity
### Read
### TRY

<!--chapter:end:13-s02-lab13b.Rmd-->



## InClass Activity
### Estimation equations and decomposition matrix {#Ch13InClassQueT1}
### Adding the missing columns {#Ch13InClassQueT2}
### Understanding the two-factor decomposition matrix {#Ch13InClassQueT3}
### Get your data ready for analysis {#Ch13InClassQueT4}
### Visualizing 2x2 designs: The interaction plot {#Ch13InClassQueT5}
### Running a 2x2 between-subjects ANOVA with aov_ez {#Ch13InClassQueT6}
### App: Understanding main effects and interactions 

<!--chapter:end:13-s02-lab13c.Rmd-->



## Assignment
### Task 1A: Libraries {#Ch13AssignQueT1A}
### Task 1B: Loading in the data {#Ch13AssignQueT1B}
### Task 2: Calculate cell means {#Ch13AssignQueT2}
### Task 3: Marginal means for sex {#Ch13AssignQueT3}
### Task 4: Marginal means for condition {#Ch13AssignQueT4}
### Task 5: Interaction plot {#Ch13AssignQueT5}
### Task 6: Recap Question 1 {#Ch13AssignQueT6}
### Task 7: Recap Question 2 {#Ch13AssignQueT7}
### Task 8: Recap Question 3 {#Ch13AssignQueT8}
### Task 9: Running the factorial ANOVA {#Ch13AssignQueT9}
### Task 10: Interpreting the ANOVA output Question {#Ch13AssignQueT10}
### Task 11: Report your results {#Ch13AssignQueT11}

<!--chapter:end:13-s02-lab13d.Rmd-->



## Solutions to Questions
### InClass Activities
#### Estimation equations and decomposition matrix
#### Adding the missing columns
#### Understanding the two-factor decomposition matrix
#### Get your data ready for analysis
#### Visualizing 2x2 designs: The interaction plot
#### ANOVA Using aov_ez
### Homework Activities
#### Task 1A: Libraries
#### Task 1B: Loading in the data
#### Task 2: Calculate cell means for the cell means.
#### Task 3: Marginal means for sex
#### Task 4: Marginal means for condition
#### Task 5: Interaction plot
#### Task 6: Recap Question 1
#### Task 7: Recap Question 2
#### Task 8: Recap Question 3
#### Task 9: Running the factorial ANOVA
#### Task 10: Interpreting the ANOVA output Question
#### Task 11: Report your results

<!--chapter:end:13-s02-lab13e.Rmd-->


# Regression

## Overview

For the past few weeks we have been looking at designs where you have categorical factors/variables and where you want to see whether there is an effect of a given factor or an interaction between two factors on a continuous DV. And we have looked at this through decomposition matrices and through the **`afex`** package and the `aov_ez()` function. We also briefly mentioned how this approach can be extrapolated into designs with more than two factors such as three-way ANOVAs (three factors) and larger, but also into within-subject designs where every participant sees every stimuli, and mixed-designs where you have at least one between and one within factor. We will look in-depth at these different types of designs next year.

Today, however, we want to start looking at predicting relationships from continuous variables through regression. You will already be familiar with many of the terms here from your lecture series. In addition, by looking at a practical example (relating to voice research) in the lab, and by reading about regression in Miller and Haden (2013) in the PreClass, it should start to become more concrete for you.  Regression is still part of the GLM and eventually the goal will be to show you how to analyse designs that has both categorical and continuous variables as much of real data is made up like that. But for now we will just look at simple linear regression and multitple linear regression to make you more comfortable with carrying out and interpreting these analyses.

The goals of this chapter are to:

1. Introduce the concepts that underpin linear regression.
2. Demonstrate and practice carrying out and interpreting regression analysis with one or more predictor variables.
3. Demonstrate and practice being able to make predictions based on your regression model.

<!--chapter:end:14-s02-lab14a.Rmd-->


## PreClass Activity

As in previous chapters, the PreClass activity is to read the following chapter from Miller and Haden (2013). You may also want to try reading Chapter 14 as well on Multiple Regression but really more to add to your understanding of the general goal, as opposed to the underlying computations. Finally, reviewing your lecture on Simple Linear and Multiple Linear Regression will really help your understanding of this lab.

### Read

**Chapter**

Read Chapter 12 of <a href="https://drive.google.com/file/d/0B1fyuTuvj3YoaFdUR3FZaXNuNXc/view" target = "_blank">Miller and Haden (2013)</a> and try to understand the how the GLM applies to regression. The concept of regression will be familiar to you based on the stats lectures of this semester so some of the terms will just be recapping. Some will be an expansion of your understanding and basing the analysis in terms of the GLM.

**Optional**

Read Chapter 14 of <a href="https://drive.google.com/file/d/0B1fyuTuvj3YoaFdUR3FZaXNuNXc/view" target = "_blank">Miller and Haden (2013)</a>. This covers Multiple Linear Regression. Again the concepts will be familiar to you from the lecture series and reading this chapter would be to enhance your overall understanding, not necessarily the underlying computations.

<span style="font-size: 22px; font-weight: bold; color: var(--blue);">Job Done - Activity Complete!</span>


<!--chapter:end:14-s02-lab14b.Rmd-->



## InClass Activity
### Task 1: Setup {#Ch14InClassQueT1}
### Task 2: Restructuring the ratings {#Ch14InClassQueT2}
### Task 3: Calculate mean trustworthiness rating for each voice {#Ch14InClassQueT3}
### Task 4: Joining the Data together {#Ch14InClassQueT4}
### Task 5: Scatterplot {#Ch14InClassQueT5}
### Task 6: Spreading the data with `pivot_wider()` {#Ch14InClassQueT6}
### Task 7: The Regressions {#Ch14InClassQueT7}
### Task 8: Model interpretations {#Ch14InClassQueT8}
### Task 9: Making predictions {#Ch14InClassQueT9}

<!--chapter:end:14-s02-lab14c.Rmd-->


## Assignment

This is a **summative** assignment and as such, as well as testing your knowledge, skills, and learning, this assignment contributes to your overall grade for this semester. Due to changes to the course schedule, related to the pivot to online teaching as part of the COVID Pandemic, you will be instructed by the Course Lead on Moodle as to when you will receive this assignment, as well as given full instructions as to how to access and submit the assignment. Please check the information and schedule on the Level 2 Moodle page.

<!--chapter:end:14-s02-lab14d.Rmd-->



## Solutions to Questions
### InClass Ativities
### Task 1
### Task 2
### Task 3
### Task 4
### Task 5
### Task 6
### Task 7
### Task 8
### Task 9

<!--chapter:end:14-s02-lab14e.Rmd-->


# Combining ANOVA and Regression (e.g. ANCOVAs)

**Note:** This chapter looks at regression where you have one continuous IV and one categorical IV. More often than not this approach would be called an **ANCOVA**. However, it can also simply be considered as multitple regression, or the General Linear Model, as really that is what it is all about; just extended to having a mix of continuous and categorical variables.

## Overview

Over the last few weeks of the semester we have been really building up our skills on regression and on ANOVAs and now we'll focus on seeing the link between them. Most places would tell you that they are separate entities but, as you will see from the reading and activities in this lab, they are related. ANOVAs to some degree are just a special type of regression where you have **categorical** predictors. The question you probably now have is, well, if they are related, can't we merge them and combine categorical and continuous predictors in some fashion?  Yes, yes we can! And that is exactly what we are going to do today whilst learning a little bit about screen time and well-being.

The goals of this lab are:

1. to gain a conceptual understanding of how ANOVA and regression are interlinked
2. to get practical experience in analysing continuous and categorical variables in one design
3. to consolidate the wrangling skills we have learnt for the past two years


<!--chapter:end:15-s02-lab15a.Rmd-->



## PreClass Activity
### Read
### Activity
### Loading in the data {#Ch15PreClassQueT1}
### Compute the well-being score for each participant {#Ch15PreClassQueT2}
### Visualising Screen time on all technologies {#Ch15PreClassQueT3}
### Visualising the Screen time and Well-being relationship {#Ch15PreClassQueT4}

<!--chapter:end:15-s02-lab15b.Rmd-->



## InClass Activity
### Smartphone and well-being for boys and girls {#Ch15InClassQueT1}
### Visualising and Interpreting the relationship between smartphone use and wellbeing by sex {#Ch15InClassQueT2}
### A side point on mean centering and deviation coding
### Estimating model parameters {#Ch15InClassQueT3}
### Final Interpretations {#Ch15InClassQueT4}

<!--chapter:end:15-s02-lab15c.Rmd-->


## Update Your Notes

We will hold off from an assignment on ANCOVAs just now to allow you space to bring your notes together and fill in any gaps in your knowledge. For now, if you have any questions, please post them on the TEAMS channel. Finally, don’t forget to add any useful information to your Portfolio before you leave it too long and forget.

<!--chapter:end:15-s02-lab15d.Rmd-->



## Solutions to Questions
### PreClass Activities
#### Loading the Data
#### Compute the well-being score for each participant
#### Visualising Screen time on all technologies
#### Visualising the Screen time and Well-being relationship
### InClass Activities
#### Smartphone and well-being for boys and girls
#### Visualise and Interpreting the relationship of smartphone use and wellbeing by sex 
#### Estimating model parameters
#### Final Interpretations

<!--chapter:end:15-s02-lab15e.Rmd-->


# Reflection - Semester 2

## Overview

As in Semester 1 we have covered a lot of material in these labs and now would be a good time to stop, recap, and reflect on what we have learned. As such this last chapter is again about looking back at what you have learned, testing your skills, resolving issues, and looking at other cool applications of R that have not been covered in this lab series.

<!--chapter:end:16-s02-lab16a.Rmd-->


## PreClass Activity

As we are reflecting in this lab, your PreClass activities this time are:

1. Review the labs from this semester and note any issues you have with the elements covered - both in terms of concepts and code.

2. Post these issues on <a href = "https://moodle.gla.ac.uk" target = "_blank">the Practical labs forum on Moodle</a> and bring them to the lab.

<!--chapter:end:16-s02-lab16b.Rmd-->


## InClass Activity

1. Like in the PreClass we want to spend sometime reflecting on what we have learnt and as such this InClass is about looking at ideas, concepts, and codes, that you have had issues with and seeing if we can resolve those issues. It would be particularly worthwhile spending sometime looking at aspects of working with the GLM and decomposition matrices as this will make up much of the course next year.

2. We will also look at some other interesting things you can do in R, should you wish to expand your own knowledge and skills. Below is the list we looked at in Semester 1 but, I am sure we have found loads more as the year has gone on, such as:

* New

     - **`redoc`** package, by Ross Noam, for collaborative editing of Word documents (https://noamross.github.io/redoc/)
     - **`faux`** for the creation of simulated data (https://debruine.github.io/faux/) [@R-faux]
     - **`checkpoint`** for timestamping the version of the packages you are using in your code
     - `mydata <- read.delim("clipboard")` for creating a dataframe from your copy and paste function on your keyboard.
     - **R.Online** to compare codes across different versions of R (https://srv.colinfay.me:1001/)
     - **Hack Your Data Beautiful** (https://psyteachr.github.io/hack-your-data/index.html) - a workshop run by a team of postgraduates in Psychology @ Glasgow that shows a range of excellent and interesting skills and applications.

* Previous

    - Popping out the Source Window to make working easier - <a href="https://support.rstudio.com/hc/en-us/articles/207126217-Using-Source-Windows" target = "_blank">Using Source Windows</a>
    - Analysing Twitter data with the **`rtweet`** package [@R-rtweet]
    - Animating plots with the **`ggganimate`** package [@R-gganimate]
    - Creating quickfire quizzes with the **`webex`** [@R-webex]
    - Make your own memes using the **`meme`** package [@R-meme]
    - <a href="https://dreamrs.shinyapps.io/memory-hex/" target = "_blank">The Hex Sticker Memory game</a> and <a href="https://community.rstudio.com/t/shiny-contest-submission-hex-memory-game/25336" target = "_blank">the background behind it</a>
    - <a href = "https://datatitian.com/how-to-turn-your-ggplot2-visualization-into-an-interactive-tweet/" target = "_blank">Creating interactive plots using ggplot and plotly</a>
    - Even funkier visualtions using the **`ggforce`** package - check out `facet_zoom()` [@R-ggforce]
    - Many diverse fields are now using R and this is a good example: <a href = "https://learn.r-journalism.com/en/" target = "_blank">R for Journalists</a>
    - Using the `knitr::read_chunk()` function to call R script code through R Markdown [@R-knitr]

<!--chapter:end:16-s02-lab16c.Rmd-->


## Assignment

This is a **formative** assignment meaning that it is purely for you to test your own knowledge, skill development, and learning, and does not count towards an overall grade. However, you are strongly encouraged to do the assignment as it will continue to boost your skills which you will need in future assignments. Due to changes to the course schedule, related to the pivot to online teaching as part of the COVID Pandemic, you will be instructed by the Course Lead on Moodle as to when you should attempt this assignment. Please check the information and schedule on the Level 2 Moodle page.

<!--chapter:end:16-s02-lab16d.Rmd-->


## Solutions to Questions

Instructions as to how to access the solution to this lab will be made available during the course.

<!--chapter:end:16-s02-lab16e.Rmd-->



## Binomial test
## one-sample t-test
## two-sample t-test

<!--chapter:end:6_NHST_and_one_sample_t.Rmd-->

---
title: "7_within_subjects-t_tests"
author: "Nick Schultz"
date: "3/8/2021"
output: html_document
---


## Witing-Subjects t-test

Assumptions of between-subjects t-test:  
*independence  
*equal variances  
*dependent variable is continuous (interval/ratio)  
*dependent variable normally distributed  

Assumptions of within-subjects t-test:  
*all participants appear in both groups  
*dependent variable is continuous (interval/ratio)  
*dependent variable normally distributed  

<!--chapter:end:7_within-subjects_t_test.Rmd-->

---
title: '7'
author: "Nick Schultz"
date: "3/8/2021"
output: html_document
---



## R Markdown

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:


```r
summary(cars)
```

```
##      speed           dist       
##  Min.   : 4.0   Min.   :  2.00  
##  1st Qu.:12.0   1st Qu.: 26.00  
##  Median :15.0   Median : 36.00  
##  Mean   :15.4   Mean   : 42.98  
##  3rd Qu.:19.0   3rd Qu.: 56.00  
##  Max.   :25.0   Max.   :120.00
```

## Including Plots

You can also embed plots, for example:

<div class="figure" style="text-align: center">
<img src="7_files/figure-html/pressure-1.png" alt="**CAPTION THIS FIGURE!!**" width="100%" />
<p class="caption">(\#fig:pressure)**CAPTION THIS FIGURE!!**</p>
</div>

Note that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot.

<!--chapter:end:7.Rmd-->


# (APPENDIX) Appendices {-} 

<!--chapter:end:appendix-0.Rmd-->


# References

<!--chapter:end:references.Rmd-->

