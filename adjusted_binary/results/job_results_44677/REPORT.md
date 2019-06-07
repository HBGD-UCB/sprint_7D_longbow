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

**Outcome Variable:** wast_rec90d

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

agecat        studyid                    country     fhtcm           wast_rec90d   n_cell      n
------------  -------------------------  ----------  -------------  ------------  -------  -----
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                  0       34    117
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                  1       16    117
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                   0       19    117
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                   1        9    117
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm              0       27    117
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm              1       12    117
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                  0       13     60
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                  1        1     60
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                   0       23     60
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                   1        1     60
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm              0       20     60
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm              1        2     60
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                  0      324   1086
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                  1      380   1086
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm                   0       39   1086
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm                   1       41   1086
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm              0      129   1086
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm              1      173   1086
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                  0      216   1830
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                  1     1497   1830
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm                   0        3   1830
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm                   1       24   1830
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm              0        3   1830
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm              1       87   1830
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                  0        6     81
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                  1        3     81
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                   0       43     81
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                   1        6     81
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm              0       16     81
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm              1        7     81
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm                  0       13     52
0-6 months    ki1000304b-SAS-CompFeed    INDIA       >=167 cm                  1       11     52
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm                   0        9     52
0-6 months    ki1000304b-SAS-CompFeed    INDIA       <162 cm                   1        5     52
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm              0        9     52
0-6 months    ki1000304b-SAS-CompFeed    INDIA       [162-167) cm              1        5     52
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                  0        3     17
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                  1        0     17
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                   0        6     17
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                   1        0     17
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm              0        8     17
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm              1        0     17
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm                  0       69    294
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm                  1      126    294
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm                   0       12    294
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm                   1       14    294
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm              0       23    294
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm              1       50    294
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm                  0      182   1783
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm                  1     1485   1783
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm                   0        3   1783
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm                   1       24   1783
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm              0        2   1783
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm              1       87   1783
0-6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm                  0        0     28
0-6 months    ki1135781-COHORTS          GUATEMALA   >=167 cm                  1        3     28
0-6 months    ki1135781-COHORTS          GUATEMALA   <162 cm                   0        7     28
0-6 months    ki1135781-COHORTS          GUATEMALA   <162 cm                   1        6     28
0-6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm              0        5     28
0-6 months    ki1135781-COHORTS          GUATEMALA   [162-167) cm              1        7     28
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                  0       21     65
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                  1        5     65
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                   0       10     65
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                   1        4     65
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm              0       18     65
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm              1        7     65
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                  0       10     43
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                  1        1     43
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                   0       17     43
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                   1        1     43
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm              0       12     43
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm              1        2     43
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                  0      255    792
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                  1      254    792
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm                   0       27    792
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm                   1       27    792
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm              0      106    792
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm              1      123    792
6-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                  0       34     47
6-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                  1       12     47
6-24 months   ki1119695-PROBIT           BELARUS     <162 cm                   0        0     47
6-24 months   ki1119695-PROBIT           BELARUS     <162 cm                   1        0     47
6-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm              0        1     47
6-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm              1        0     47
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                  0        6     53
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                  1        0     53
6-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                   0       36     53
6-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                   1        0     53
6-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm              0       11     53
6-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm              1        0     53


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
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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




# Results Detail

## Results Plots
![](/tmp/687f48c0-5548-428b-89b0-dbeadd868726/403e5ad1-baad-4578-95c9-da1d1cac1281/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/687f48c0-5548-428b-89b0-dbeadd868726/403e5ad1-baad-4578-95c9-da1d1cac1281/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/687f48c0-5548-428b-89b0-dbeadd868726/403e5ad1-baad-4578-95c9-da1d1cac1281/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/687f48c0-5548-428b-89b0-dbeadd868726/403e5ad1-baad-4578-95c9-da1d1cac1281/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                0.3200000   0.1831508   0.4568492
0-24 months   ki1000304b-SAS-CompFeed   INDIA     <162 cm              NA                0.3214286   0.1201781   0.5226791
0-24 months   ki1000304b-SAS-CompFeed   INDIA     [162-167) cm         NA                0.3076923   0.1512241   0.4641605
0-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             NA                0.5397727   0.5002388   0.5793066
0-24 months   ki1101329-Keneba          GAMBIA    <162 cm              NA                0.5125000   0.4003549   0.6246451
0-24 months   ki1101329-Keneba          GAMBIA    [162-167) cm         NA                0.5728477   0.5082199   0.6374754
0-6 months    ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                0.4583333   0.2489127   0.6677540
0-6 months    ki1000304b-SAS-CompFeed   INDIA     <162 cm              NA                0.3571429   0.0934596   0.6208261
0-6 months    ki1000304b-SAS-CompFeed   INDIA     [162-167) cm         NA                0.3571429   0.1403954   0.5738903
0-6 months    ki1101329-Keneba          GAMBIA    >=167 cm             NA                0.6461538   0.5797019   0.7126058
0-6 months    ki1101329-Keneba          GAMBIA    <162 cm              NA                0.5384615   0.3573826   0.7195405
0-6 months    ki1101329-Keneba          GAMBIA    [162-167) cm         NA                0.6849315   0.5759682   0.7938948
6-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             NA                0.4990177   0.4529680   0.5450673
6-24 months   ki1101329-Keneba          GAMBIA    <162 cm              NA                0.5000000   0.3685451   0.6314549
6-24 months   ki1101329-Keneba          GAMBIA    [162-167) cm         NA                0.5371179   0.4652021   0.6090337


### Parameter: E(Y)


agecat        studyid                   country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed   INDIA     NA                   NA                0.3162393   0.2243340   0.4081446
0-24 months   ki1101329-Keneba          GAMBIA    NA                   NA                0.5469613   0.5145713   0.5793513
0-6 months    ki1000304b-SAS-CompFeed   INDIA     NA                   NA                0.4038462   0.2695653   0.5381270
0-6 months    ki1101329-Keneba          GAMBIA    NA                   NA                0.6462585   0.5919377   0.7005793
6-24 months   ki1101329-Keneba          GAMBIA    NA                   NA                0.5101010   0.4728139   0.5473881


### Parameter: RR


agecat        studyid                   country   intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ------------------------  --------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA     <162 cm              >=167 cm          1.0044643   0.4705244   2.144306
0-24 months   ki1000304b-SAS-CompFeed   INDIA     [162-167) cm         >=167 cm          0.9615385   0.4946832   1.868987
0-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba          GAMBIA    <162 cm              >=167 cm          0.9494737   0.7538220   1.195906
0-24 months   ki1101329-Keneba          GAMBIA    [162-167) cm         >=167 cm          1.0612757   0.9276968   1.214089
0-6 months    ki1000304b-SAS-CompFeed   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed   INDIA     <162 cm              >=167 cm          0.7792208   0.3270234   1.856702
0-6 months    ki1000304b-SAS-CompFeed   INDIA     [162-167) cm         >=167 cm          0.7792208   0.3645371   1.665633
0-6 months    ki1101329-Keneba          GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba          GAMBIA    <162 cm              >=167 cm          0.8333333   0.5862619   1.184529
0-6 months    ki1101329-Keneba          GAMBIA    [162-167) cm         >=167 cm          1.0600130   0.8770763   1.281106
6-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba          GAMBIA    <162 cm              >=167 cm          1.0019685   0.7582760   1.323978
6-24 months   ki1101329-Keneba          GAMBIA    [162-167) cm         >=167 cm          1.0763504   0.9147876   1.266447


### Parameter: PAR


agecat        studyid                   country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  --------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                -0.0037607   -0.1094856   0.1019642
0-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             NA                 0.0071886   -0.0170022   0.0313794
0-6 months    ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                -0.0544872   -0.2007915   0.0918171
0-6 months    ki1101329-Keneba          GAMBIA    >=167 cm             NA                 0.0001047   -0.0387471   0.0389564
6-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             NA                 0.0110833   -0.0169159   0.0390826


### Parameter: PAF


agecat        studyid                   country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  --------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                -0.0118919   -0.4083057   0.2729382
0-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             NA                 0.0131428   -0.0320609   0.0563666
0-6 months    ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                -0.1349206   -0.5585656   0.1735704
0-6 months    ki1101329-Keneba          GAMBIA    >=167 cm             NA                 0.0001619   -0.0618000   0.0585080
6-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             NA                 0.0217277   -0.0347121   0.0750889
