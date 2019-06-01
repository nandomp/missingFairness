# Fairness and Missing Values

### Analysis of fairness metrics with missing data (repo under-construction)

*Summary* 

The causes underlying unfair decision making are complex, being internalised in different ways by decision makers, other actors dealing with data and models, and ultimately by the individuals being affected by these decisions. One frequent manifestation of all these latent causes arises in the form of missing values: protected groups are more reluctant to give information that could be used against them, delicate information for some groups can be erased by human operators, or data acquisition may simply be less complete and systematic for minority groups. As a result, missing values and bias in data are two phenomena that are tightly coupled. However, most recent techniques, libraries and experimental results dealing with fairness in machine learning have simply ignored missing data. In this paper, we claim that fairness research should not miss the opportunity to deal properly with missing data. To support this claim, (1) we analyse the sources of missing data and bias, and we map the common causes, (2) we find that rows containing missing values are usually fairer than the rest, which should not be treated as the uncomfortable ugly data that different techniques and libraries get rid of at the first occasion, and (3) we study the trade-off between performance and fairness when the rows with missing values are used (either because the technique deals with them directly or by imputation methods). We end the paper with a series of recommended procedures about what to do with missing data when aiming for fair decision making.


### Docs

[Preprint submitted to Decision Support Systems Journal](https://arxiv.org/abs/1905.12728)
