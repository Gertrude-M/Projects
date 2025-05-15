library(tidyverse)
library(dplyr)
library(ggplot2)

#load the data set
cancer_patients <- read.csv("global_cancer_patients_2015_2024.csv")

#Display few rows of the data set
head(cancer_patients)

#summary statistics
patients <- cancer_patients %>%
  summarize(avg = mean(Age), stddev = sd(Age))

#Distribution of cancer types
cancer_patients %>% count(Cancer_Type) %>%
  arrange(desc(n)) %>%
  ggplot(aes(x = reorder(Cancer_Type, -n), y = n,  fill = Cancer_Type)) +
  geom_bar(stat = "identity") +
  scale_y_continuous(breaks = c(0, 1000,2000,3000,4000,5000,6000)) +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  ggtitle("Cancer Types Distribution")

#Distribution of Patients by Age
cancer_patients %>% ggplot(aes(Age)) +
  geom_histogram(binwidth = 2, col = "black", fill = "skyblue", alpha = 0.4) +
  scale_y_continuous(breaks = c(0,200,400,600,800,1000,1200,1400)) +
  scale_x_continuous(breaks = c(0, 20, 30, 40, 50, 60, 70, 80, 90)) +
  ggtitle(("Age Distribution of Cancer Patients"))

#Distribution of patients by Gender
cancer_patients %>% count(Gender) %>%
  arrange(desc(n)) %>%
  ggplot(aes(x = reorder(Gender, -n), y = n, fill = Gender)) +
  geom_bar(stat = "identity") +
  ggtitle("Distribution of patients by Gender")

#Cancer Stage distribution
cancer_patients %>% ggplot(aes(Cancer_Stage, Survival_Years, fill = Cancer_Stage)) +
  geom_boxplot() +
  ggtitle("Distribution of Cancer Stages")

#Cancer cases per region
cancer_patients %>% count(Country_Region) %>%
  arrange(desc(n)) %>%
  ggplot(aes(x = reorder(Country_Region, -n), y = n,  fill = Country_Region)) +
  geom_bar(stat = "identity")+
  ylab("Number of cases") +
  xlab("Country Region")
  ggtitle("Cancer cases per region") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

#Treatment cost per cancer type
cancer_patients %>% ggplot(aes(Cancer_Type, Treatment_Cost_USD, fill = Cancer_Type)) +
  geom_boxplot() +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  ggtitle("Treatment Cost per Cancer type")

#Obesity level by cancer type
cancer_patients %>% ggplot(aes(Obesity_Level)) +
  geom_histogram(binwidth = 0.3, col = "black", fill = "skyblue",  alpha = 0.2) +
  scale_y_continuous(breaks = c(0,250,500,750,1000,1250,1500,1750,2000)) +
  scale_x_continuous(breaks = c(0, 2, 4, 6, 8, 10)) +
  ggtitle("Cases from 2015 to 24")


