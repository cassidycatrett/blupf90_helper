## Initial Phenotypic Exploration

# Before moving in to further analysis of phenotypes, it is important to do some initial data exploration
 # to identify outliers or biologically impossible phenotypes. These can be identified through data 
 # visualization and summary statistics.

# Required packages
library(tidyverse)
library(lubridate)
library(cowplot)

# For plotting purposes, creating histograms allow you to see how phenotypes are distributed and see if all
  # values are realistic.
ggplot(df, aes(x=your_phenotype)) +
  geom_histogram() +
  ylab("n animals") + 
  theme_cowplot()

# You may also want to plot your phenotype with an effect (age, season, year). This helps when identifying
  # what effects to include in BLUPF90 analyses.
ggplot(df, aes(x=your_effect, y=your_phenotype)) +
  geom_point() +
  theme_cowplot()

# For summary statistics, abnormal phenotypic observations can also be identified and you can better identify
  # if these abnormal values are skewing the data and need to be removed.
df |> 
  ungroup() |> 
  summarise(mean(your_phenotype, na.rm=TRUE), median(your_phenotype, na.rm=TRUE), #@# max(your_phenotype, na.rm=TRUE),
            min(your_phenotype,na.rm=TRUE)) |>  
  View()

# Use this step to remove biologically impossible values so that you are keeping a clean data frame of more reliable information.