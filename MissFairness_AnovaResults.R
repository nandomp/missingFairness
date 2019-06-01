require(dplyr)
require(reshape2)


Adult_Race <- readRDS("ANOVA_adult_Race.arff.rds")
Adult_Sex <- readRDS("ANOVA_adult_Sex.arff.rds")
Recid_Race <- readRDS("ANOVA_Recidivism_Race.arff.rds")
Recid_Sex <- readRDS("ANOVA_Recidivism_Sex.arff.rds")
Titanic_Class <- readRDS("ANOVA_TitanicKaggle_Class.arff.rds")
Titanic_Sex <- readRDS("ANOVA_TitanicKaggle_Sex.arff.rds")


data <- Adult_Race # ***
data <- Adult_Sex # ***
data <- Recid_Race # ***
data <- Recid_Sex # ***
data <- Titanic_Class # ***
data <- Titanic_Sex # ***


t.test(data$spdwm, data$spdwom)
t.test(data$spdwmc, data$spdwomc)

### ANOVA

# With all cols
a1 <- select(data, spdwm, spdwom, spdwom_sample)
a1.m <- melt(a1)
res.aov <- aov(value ~ variable, data = a1.m)
summary(res.aov)


# withouth Columns
a2 <- select(data, spdwmc, spdwomc, spdwomc_sample)
a2.m <- melt(a2)
res.aov <- aov(value ~ variable, data = a2.m)
summary(res.aov)


