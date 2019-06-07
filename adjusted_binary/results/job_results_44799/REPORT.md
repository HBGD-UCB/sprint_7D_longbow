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

**Outcome Variable:** pers_wast

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

agecat        studyid                    country     fhtcm           pers_wast   n_cell      n
------------  -------------------------  ----------  -------------  ----------  -------  -----
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                0      101    229
0-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                1        5    229
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                 0       46    229
0-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                 1        5    229
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm            0       67    229
0-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm            1        5    229
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                0       18     92
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                1        1     92
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                 0       27     92
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                 1        8     92
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm            0       30     92
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm            1        8     92
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                0     1047   1717
0-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                1       58   1717
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm                 0      113   1717
0-24 months   ki1101329-Keneba           GAMBIA      <162 cm                 1       11   1717
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm            0      465   1717
0-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm            1       23   1717
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                0     5774   6248
0-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                1       61   6248
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm                 0       82   6248
0-24 months   ki1119695-PROBIT           BELARUS     <162 cm                 1        1   6248
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm            0      329   6248
0-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm            1        1   6248
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                0       23    197
0-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                1        1    197
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                 0      101    197
0-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                 1        8    197
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm            0       62    197
0-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm            1        2    197
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm                0      927   1481
0-6 months    ki1101329-Keneba           GAMBIA      >=167 cm                1       25   1481
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm                 0      107   1481
0-6 months    ki1101329-Keneba           GAMBIA      <162 cm                 1        3   1481
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm            0      410   1481
0-6 months    ki1101329-Keneba           GAMBIA      [162-167) cm            1        9   1481
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm                0     5109   6054
0-6 months    ki1119695-PROBIT           BELARUS     >=167 cm                1      542   6054
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm                 0       71   6054
0-6 months    ki1119695-PROBIT           BELARUS     <162 cm                 1       10   6054
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm            0      295   6054
0-6 months    ki1119695-PROBIT           BELARUS     [162-167) cm            1       27   6054
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                0      101    229
6-24 months   ki1000304b-SAS-CompFeed    INDIA       >=167 cm                1        5    229
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                 0       46    229
6-24 months   ki1000304b-SAS-CompFeed    INDIA       <162 cm                 1        5    229
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm            0       67    229
6-24 months   ki1000304b-SAS-CompFeed    INDIA       [162-167) cm            1        5    229
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                0       18     92
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=167 cm                1        1     92
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                 0       27     92
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       <162 cm                 1        8     92
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm            0       30     92
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA       [162-167) cm            1        8     92
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                0     1047   1717
6-24 months   ki1101329-Keneba           GAMBIA      >=167 cm                1       58   1717
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm                 0      113   1717
6-24 months   ki1101329-Keneba           GAMBIA      <162 cm                 1       11   1717
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm            0      465   1717
6-24 months   ki1101329-Keneba           GAMBIA      [162-167) cm            1       23   1717
6-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                0     5774   6248
6-24 months   ki1119695-PROBIT           BELARUS     >=167 cm                1       61   6248
6-24 months   ki1119695-PROBIT           BELARUS     <162 cm                 0       82   6248
6-24 months   ki1119695-PROBIT           BELARUS     <162 cm                 1        1   6248
6-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm            0      329   6248
6-24 months   ki1119695-PROBIT           BELARUS     [162-167) cm            1        1   6248
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                0       23    197
6-24 months   ki1135781-COHORTS          GUATEMALA   >=167 cm                1        1    197
6-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                 0      101    197
6-24 months   ki1135781-COHORTS          GUATEMALA   <162 cm                 1        8    197
6-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm            0       62    197
6-24 months   ki1135781-COHORTS          GUATEMALA   [162-167) cm            1        2    197


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
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
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
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
![](/tmp/646ec9e1-bbdf-4ea6-8b05-e13a8980a7aa/3767d56c-8a62-4c69-b7ce-be2fbaf25c7d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/646ec9e1-bbdf-4ea6-8b05-e13a8980a7aa/3767d56c-8a62-4c69-b7ce-be2fbaf25c7d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/646ec9e1-bbdf-4ea6-8b05-e13a8980a7aa/3767d56c-8a62-4c69-b7ce-be2fbaf25c7d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/646ec9e1-bbdf-4ea6-8b05-e13a8980a7aa/3767d56c-8a62-4c69-b7ce-be2fbaf25c7d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country   intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  ------------------------  --------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                0.0471698   -0.0063363   0.1006759
0-24 months   ki1000304b-SAS-CompFeed   INDIA     <162 cm              NA                0.0980392    0.0293820   0.1666964
0-24 months   ki1000304b-SAS-CompFeed   INDIA     [162-167) cm         NA                0.0694444    0.0297326   0.1091563
0-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             NA                0.0524887    0.0393359   0.0656415
0-24 months   ki1101329-Keneba          GAMBIA    <162 cm              NA                0.0887097    0.0386512   0.1387682
0-24 months   ki1101329-Keneba          GAMBIA    [162-167) cm         NA                0.0471311    0.0283235   0.0659388
0-6 months    ki1119695-PROBIT          BELARUS   >=167 cm             NA                0.0959122    0.0484921   0.1433324
0-6 months    ki1119695-PROBIT          BELARUS   <162 cm              NA                0.1234568    0.0881419   0.1587717
0-6 months    ki1119695-PROBIT          BELARUS   [162-167) cm         NA                0.0838509    0.0121362   0.1555657
6-24 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                0.0471698   -0.0063363   0.1006759
6-24 months   ki1000304b-SAS-CompFeed   INDIA     <162 cm              NA                0.0980392    0.0293820   0.1666964
6-24 months   ki1000304b-SAS-CompFeed   INDIA     [162-167) cm         NA                0.0694444    0.0297326   0.1091563
6-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             NA                0.0524887    0.0393359   0.0656415
6-24 months   ki1101329-Keneba          GAMBIA    <162 cm              NA                0.0887097    0.0386512   0.1387682
6-24 months   ki1101329-Keneba          GAMBIA    [162-167) cm         NA                0.0471311    0.0283235   0.0659388


### Parameter: E(Y)


agecat        studyid                   country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  --------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed   INDIA     NA                   NA                0.0655022   0.0207217   0.1102827
0-24 months   ki1101329-Keneba          GAMBIA    NA                   NA                0.0535818   0.0429272   0.0642365
0-6 months    ki1119695-PROBIT          BELARUS   NA                   NA                0.0956392   0.0473199   0.1439586
6-24 months   ki1000304b-SAS-CompFeed   INDIA     NA                   NA                0.0655022   0.0207217   0.1102827
6-24 months   ki1101329-Keneba          GAMBIA    NA                   NA                0.0535818   0.0429272   0.0642365


### Parameter: RR


agecat        studyid                   country   intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ------------------------  --------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA     <162 cm              >=167 cm          2.0784313   0.8657106   4.989978
0-24 months   ki1000304b-SAS-CompFeed   INDIA     [162-167) cm         >=167 cm          1.4722222   0.7259570   2.985629
0-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba          GAMBIA    <162 cm              >=167 cm          1.6900723   0.9115032   3.133664
0-24 months   ki1101329-Keneba          GAMBIA    [162-167) cm         >=167 cm          0.8979296   0.5605329   1.438413
0-6 months    ki1119695-PROBIT          BELARUS   >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT          BELARUS   <162 cm              >=167 cm          1.2871851   0.8659503   1.913326
0-6 months    ki1119695-PROBIT          BELARUS   [162-167) cm         >=167 cm          0.8742465   0.5524665   1.383445
6-24 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA     <162 cm              >=167 cm          2.0784313   0.8657106   4.989978
6-24 months   ki1000304b-SAS-CompFeed   INDIA     [162-167) cm         >=167 cm          1.4722222   0.7259570   2.985629
6-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             >=167 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba          GAMBIA    <162 cm              >=167 cm          1.6900723   0.9115032   3.133664
6-24 months   ki1101329-Keneba          GAMBIA    [162-167) cm         >=167 cm          0.8979296   0.5605329   1.438413


### Parameter: PAR


agecat        studyid                   country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  --------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                 0.0183324    0.0055203   0.0311444
0-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             NA                 0.0010931   -0.0068975   0.0090837
0-6 months    ki1119695-PROBIT          BELARUS   >=167 cm             NA                -0.0002730   -0.0023610   0.0018150
6-24 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                 0.0183324    0.0055203   0.0311444
6-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             NA                 0.0010931   -0.0068975   0.0090837


### Parameter: PAF


agecat        studyid                   country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  --------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                 0.2798742   -0.1652288   0.5549534
0-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             NA                 0.0204013   -0.1406203   0.1586915
0-6 months    ki1119695-PROBIT          BELARUS   >=167 cm             NA                -0.0028543   -0.0256246   0.0194105
6-24 months   ki1000304b-SAS-CompFeed   INDIA     >=167 cm             NA                 0.2798742   -0.1652288   0.5549534
6-24 months   ki1101329-Keneba          GAMBIA    >=167 cm             NA                 0.0204013   -0.1406203   0.1586915
