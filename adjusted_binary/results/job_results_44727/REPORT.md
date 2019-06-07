---
title: "Risk Factor Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowRiskFactors','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
params:
  roles:
    value:
      - exclude
      - strata
      - id
      - W
      - A
      - Y
  data: 
    value: 
      type: 'web'
      uri: 'https://raw.githubusercontent.com/HBGD-UCB/longbowRiskFactors/master/inst/sample_data/birthwt_data.rdata'
  nodes:
    value:
      strata: ['study_id', 'mrace']
      id: ['subjid']
      W: ['apgar1', 'apgar5', 'gagebrth', 'mage', 'meducyrs', 'sexn']
      A: ['parity_cat']
      Y: ['haz01']
  script_params:
    value:
      parallelize:
        input: checkbox
        value: FALSE
      count_A:
        input: checkbox
        value: TRUE
      count_Y:
        input: checkbox
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** ever_swasted

## Predictor Variables

**Intervention Variable:** fhtcm

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country     fhtcm           ever_swasted   n_cell      n
------------  -------------------------  ----------  -------------  -------------  -------  -----
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                   0       96    243
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                   1       14    243
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                    0       51    243
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                    1        9    243
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm               0       61    243
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm               1       12    243
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                   0       17    101
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                   1        4    101
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                    0       31    101
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                    1        7    101
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm               0       34    101
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm               1        8    101
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                   0     1054   1933
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                   1      194   1933
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm                    0      106   1933
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm                    1       26   1933
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm               0      471   1933
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm               1       82   1933
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                   0     5284   6249
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                   1      552   6249
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm                    0       77   6249
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm                    1        6   6249
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm               0      312   6249
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm               1       18   6249
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                   0       26    227
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                   1        2    227
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                    0      111    227
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                    1       11    227
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm               0       72    227
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm               1        5    227
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm                   0      105    242
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm                   1        5    242
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm                    0       57    242
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm                    1        3    242
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm               0       70    242
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm               1        2    242
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                   0       21    101
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                   1        0    101
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                    0       37    101
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                    1        1    101
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm               0       40    101
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm               1        2    101
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm                   0     1042   1705
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm                   1       61   1705
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm                    0      114   1705
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm                    1        9   1705
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm               0      461   1705
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm               1       18   1705
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm                   0     5289   6249
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm                   1      547   6249
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm                    0       77   6249
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm                    1        6   6249
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm               0      312   6249
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm               1       18   6249
0-6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm                   0       21    148
0-6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm                   1        1    148
0-6 months    ki1135781-COHORTS          GUATEMALA   <162 cm                    0       74    148
0-6 months    ki1135781-COHORTS          GUATEMALA   <162 cm                    1        5    148
0-6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm               0       45    148
0-6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm               1        2    148
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                   0       96    230
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                   1       10    230
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                    0       46    230
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                    1        6    230
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm               0       61    230
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm               1       11    230
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                   0       17    100
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                   1        4    100
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                    0       32    100
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                    1        6    100
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm               0       35    100
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm               1        6    100
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                   0     1043   1851
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                   1      143   1851
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm                    0      113   1851
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm                    1       18   1851
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm               0      467   1851
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm               1       67   1851
6-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                   0     5829   6247
6-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                   1        5   6247
6-24 months   ki1119695-PROBIT           BELARUS     <162 cm                    0       83   6247
6-24 months   ki1119695-PROBIT           BELARUS     <162 cm                    1        0   6247
6-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm               0      330   6247
6-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm               1        0   6247
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                   0       27    227
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                   1        1    227
6-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                    0      116    227
6-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                    1        6    227
6-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm               0       74    227
6-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm               1        3    227


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/b3e3ea55-8ed3-4750-ae93-089be4082b4a/b1910280-ba81-4ca4-95ae-de19b8b88f60/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b3e3ea55-8ed3-4750-ae93-089be4082b4a/b1910280-ba81-4ca4-95ae-de19b8b88f60/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b3e3ea55-8ed3-4750-ae93-089be4082b4a/b1910280-ba81-4ca4-95ae-de19b8b88f60/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b3e3ea55-8ed3-4750-ae93-089be4082b4a/b1910280-ba81-4ca4-95ae-de19b8b88f60/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                0.1272727   0.1056167   0.1489288
0-24 months   ki1000304b-SAS-CompFeed   INDIA     <162 cm              NA                0.1500000   0.0525090   0.2474910
0-24 months   ki1000304b-SAS-CompFeed   INDIA     [162-167) cm         NA                0.1643836   0.0876774   0.2410897
0-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             NA                0.1554487   0.1353411   0.1755563
0-24 months   ki1101329-Keneba          GAMBIA    <162 cm              NA                0.1969697   0.1291057   0.2648337
0-24 months   ki1101329-Keneba          GAMBIA    [162-167) cm         NA                0.1482821   0.1186549   0.1779093
0-24 months   ki1119695-PROBIT          BELARUS   >=167 cm             NA                0.0945853   0.0350531   0.1541176
0-24 months   ki1119695-PROBIT          BELARUS   <162 cm              NA                0.0722892   0.0172644   0.1273139
0-24 months   ki1119695-PROBIT          BELARUS   [162-167) cm         NA                0.0545455   0.0076808   0.1014102
0-6 months    ki1101329-Keneba          GAMBIA    >=167 cm             NA                0.0553037   0.0418106   0.0687968
0-6 months    ki1101329-Keneba          GAMBIA    <162 cm              NA                0.0731707   0.0271354   0.1192061
0-6 months    ki1101329-Keneba          GAMBIA    [162-167) cm         NA                0.0375783   0.0205426   0.0546139
0-6 months    ki1119695-PROBIT          BELARUS   >=167 cm             NA                0.0937286   0.0340397   0.1534174
0-6 months    ki1119695-PROBIT          BELARUS   <162 cm              NA                0.0722892   0.0172644   0.1273139
0-6 months    ki1119695-PROBIT          BELARUS   [162-167) cm         NA                0.0545455   0.0076808   0.1014102
6-24 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                0.0943396   0.0295417   0.1591376
6-24 months   ki1000304b-SAS-CompFeed   INDIA     <162 cm              NA                0.1153846   0.0108270   0.2199422
6-24 months   ki1000304b-SAS-CompFeed   INDIA     [162-167) cm         NA                0.1527778   0.0740552   0.2315004
6-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             NA                0.1205734   0.1020360   0.1391107
6-24 months   ki1101329-Keneba          GAMBIA    <162 cm              NA                0.1374046   0.0784342   0.1963750
6-24 months   ki1101329-Keneba          GAMBIA    [162-167) cm         NA                0.1254682   0.0973654   0.1535710


### Parameter: E(Y)


agecat        studyid                   country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed   INDIA     NA                   NA                0.1440329   0.1156404   0.1724254
0-24 months   ki1101329-Keneba          GAMBIA    NA                   NA                0.1562338   0.1400440   0.1724237
0-24 months   ki1119695-PROBIT          BELARUS   NA                   NA                0.0921747   0.0334053   0.1509442
0-6 months    ki1101329-Keneba          GAMBIA    NA                   NA                0.0516129   0.0411082   0.0621176
0-6 months    ki1119695-PROBIT          BELARUS   NA                   NA                0.0913746   0.0324470   0.1503022
6-24 months   ki1000304b-SAS-CompFeed   INDIA     NA                   NA                0.1173913   0.0746040   0.1601786
6-24 months   ki1101329-Keneba          GAMBIA    NA                   NA                0.1231767   0.1082011   0.1381522


### Parameter: RR


agecat        studyid                   country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA     <162 cm              >=167 cm          1.1785714   0.6854236   2.0265287
0-24 months   ki1000304b-SAS-CompFeed   INDIA     [162-167) cm         >=167 cm          1.2915851   0.7805786   2.1371225
0-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba          GAMBIA    <162 cm              >=167 cm          1.2671040   0.8769657   1.8308044
0-24 months   ki1101329-Keneba          GAMBIA    [162-167) cm         >=167 cm          0.9538972   0.7518501   1.2102411
0-24 months   ki1119695-PROBIT          BELARUS   >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT          BELARUS   <162 cm              >=167 cm          0.7642745   0.4384627   1.3321898
0-24 months   ki1119695-PROBIT          BELARUS   [162-167) cm         >=167 cm          0.5766798   0.3873135   0.8586317
0-6 months    ki1101329-Keneba          GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba          GAMBIA    <162 cm              >=167 cm          1.3230708   0.6737840   2.5980377
0-6 months    ki1101329-Keneba          GAMBIA    [162-167) cm         >=167 cm          0.6794894   0.4060674   1.1370176
0-6 months    ki1119695-PROBIT          BELARUS   >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT          BELARUS   <162 cm              >=167 cm          0.7712605   0.4430895   1.3424892
0-6 months    ki1119695-PROBIT          BELARUS   [162-167) cm         >=167 cm          0.5819511   0.3928385   0.8621027
6-24 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA     <162 cm              >=167 cm          1.2230769   0.4011631   3.7289501
6-24 months   ki1000304b-SAS-CompFeed   INDIA     [162-167) cm         >=167 cm          1.6194444   0.6877707   3.8131897
6-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba          GAMBIA    <162 cm              >=167 cm          1.1395932   0.7223764   1.7977785
6-24 months   ki1101329-Keneba          GAMBIA    [162-167) cm         >=167 cm          1.0405961   0.7930426   1.3654250


### Parameter: PAR


agecat        studyid                   country   intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  --------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                 0.0167602    0.0071970    0.0263234
0-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             NA                 0.0007851   -0.0112295    0.0127998
0-24 months   ki1119695-PROBIT          BELARUS   >=167 cm             NA                -0.0024106   -0.0045027   -0.0003185
0-6 months    ki1101329-Keneba          GAMBIA    >=167 cm             NA                -0.0036908   -0.0112308    0.0038492
0-6 months    ki1119695-PROBIT          BELARUS   >=167 cm             NA                -0.0023540   -0.0044234   -0.0002845
6-24 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                 0.0230517   -0.0144309    0.0605342
6-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             NA                 0.0026033   -0.0086902    0.0138968


### Parameter: PAF


agecat        studyid                   country   intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  --------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                 0.1163636    0.0646005    0.1652623
0-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             NA                 0.0050253   -0.0749253    0.0790292
0-24 months   ki1119695-PROBIT          BELARUS   >=167 cm             NA                -0.0261523   -0.0494103   -0.0034099
0-6 months    ki1101329-Keneba          GAMBIA    >=167 cm             NA                -0.0715095   -0.2272890    0.0644969
0-6 months    ki1119695-PROBIT          BELARUS   >=167 cm             NA                -0.0257617   -0.0488997   -0.0031341
6-24 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                 0.1963662   -0.2384614    0.4785244
6-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             NA                 0.0211347   -0.0749535    0.1086338
