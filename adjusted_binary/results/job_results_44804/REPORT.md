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

**Intervention Variable:** parity

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        parity    pers_wast   n_cell      n
------------  -------------------------  -----------------------------  -------  ----------  -------  -----
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                 0      123    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                 1        8    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                 0       87    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                 1        8    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                0      186    428
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                1       16    428
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 0       14     92
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 1        3     92
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                 0       18     92
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                 1        1     92
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                0       43     92
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                1       13     92
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      237    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1        4    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                 0      223    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                 1        4    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                0      165    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                1        7    640
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      710   2132
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1       18   2132
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 0      683   2132
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 1       20   2132
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                0      682   2132
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                1       19   2132
0-24 months   ki1101329-Keneba           GAMBIA                         1                 0      220   1850
0-24 months   ki1101329-Keneba           GAMBIA                         1                 1        9   1850
0-24 months   ki1101329-Keneba           GAMBIA                         2                 0      190   1850
0-24 months   ki1101329-Keneba           GAMBIA                         2                 1        9   1850
0-24 months   ki1101329-Keneba           GAMBIA                         3+                0     1350   1850
0-24 months   ki1101329-Keneba           GAMBIA                         3+                1       72   1850
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0      148    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1       19    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                 0      130    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                 1       25    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                0      229    592
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                1       41    592
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 0     3651   9332
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 1       61   9332
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                 0     2816   9332
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                 1       51   9332
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                0     2698   9332
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                1       55   9332
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                 0       75    514
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                 1        4    514
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                 0       79    514
0-24 months   ki1135781-COHORTS          GUATEMALA                      2                 1        2    514
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                0      334    514
0-24 months   ki1135781-COHORTS          GUATEMALA                      3+                1       20    514
0-24 months   ki1135781-COHORTS          INDIA                          1                 0      550   3595
0-24 months   ki1135781-COHORTS          INDIA                          1                 1       46   3595
0-24 months   ki1135781-COHORTS          INDIA                          2                 0      825   3595
0-24 months   ki1135781-COHORTS          INDIA                          2                 1       73   3595
0-24 months   ki1135781-COHORTS          INDIA                          3+                0     1853   3595
0-24 months   ki1135781-COHORTS          INDIA                          3+                1      248   3595
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                 0      583   2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                 1       24   2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                 0      608   2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                 1       19   2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                0     1476   2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                1      101   2811
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0     2696   7756
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1      180   7756
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                 0     2539   7756
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                 1      132   7756
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                0     2071   7756
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                1      138   7756
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      234    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1        5    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                 0      224    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2                 1        3    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                0      165    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     3+                1        6    637
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      681   2030
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1       14   2030
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 0      652   2030
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 1       17   2030
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                0      646   2030
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                1       20   2030
0-6 months    ki1101329-Keneba           GAMBIA                         1                 0      203   1624
0-6 months    ki1101329-Keneba           GAMBIA                         1                 1        3   1624
0-6 months    ki1101329-Keneba           GAMBIA                         2                 0      177   1624
0-6 months    ki1101329-Keneba           GAMBIA                         2                 1        0   1624
0-6 months    ki1101329-Keneba           GAMBIA                         3+                0     1205   1624
0-6 months    ki1101329-Keneba           GAMBIA                         3+                1       36   1624
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                 0      128    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                 1       16    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                 0      122    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                 1       17    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                0      227    542
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                1       32    542
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                 0      235    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                 1        6    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                 0      194    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                 1        5    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                0      167    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+                1        3    610
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                 0      158    853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                 1        9    853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                 0      174    853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                 1       13    853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                0      469    853
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                1       30    853
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0        4     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1        1     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                 0       12     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                 1        0     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                0        7     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                1        1     25
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                 0      123    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                 1        8    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                 0       87    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                 1        8    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                0      186    428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                1       16    428
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 0       14     92
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 1        3     92
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                 0       18     92
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2                 1        1     92
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                0       43     92
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3+                1       13     92
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      237    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1        4    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                 0      223    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2                 1        4    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                0      165    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     3+                1        7    640
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      710   2132
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1       18   2132
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 0      683   2132
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                 1       20   2132
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                0      682   2132
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                1       19   2132
6-24 months   ki1101329-Keneba           GAMBIA                         1                 0      220   1850
6-24 months   ki1101329-Keneba           GAMBIA                         1                 1        9   1850
6-24 months   ki1101329-Keneba           GAMBIA                         2                 0      190   1850
6-24 months   ki1101329-Keneba           GAMBIA                         2                 1        9   1850
6-24 months   ki1101329-Keneba           GAMBIA                         3+                0     1350   1850
6-24 months   ki1101329-Keneba           GAMBIA                         3+                1       72   1850
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0      148    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1       19    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                 0      130    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                 1       25    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                0      229    592
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                1       41    592
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 0     3651   9332
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 1       61   9332
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                 0     2816   9332
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                 1       51   9332
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                0     2698   9332
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                1       55   9332
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                 0       75    514
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                 1        4    514
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                 0       79    514
6-24 months   ki1135781-COHORTS          GUATEMALA                      2                 1        2    514
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                0      334    514
6-24 months   ki1135781-COHORTS          GUATEMALA                      3+                1       20    514
6-24 months   ki1135781-COHORTS          INDIA                          1                 0      550   3595
6-24 months   ki1135781-COHORTS          INDIA                          1                 1       46   3595
6-24 months   ki1135781-COHORTS          INDIA                          2                 0      825   3595
6-24 months   ki1135781-COHORTS          INDIA                          2                 1       73   3595
6-24 months   ki1135781-COHORTS          INDIA                          3+                0     1853   3595
6-24 months   ki1135781-COHORTS          INDIA                          3+                1      248   3595
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                 0      583   2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                 1       24   2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                 0      608   2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                 1       19   2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                0     1476   2811
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                1      101   2811
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0     2696   7756
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1      180   7756
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                 0     2539   7756
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                 1      132   7756
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                0     2071   7756
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                1      138   7756


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
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
![](/tmp/6d41c67d-2da0-45b4-956c-9ce14f5fd7d9/69a50898-352f-4213-ba9b-80acda130475/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6d41c67d-2da0-45b4-956c-9ce14f5fd7d9/69a50898-352f-4213-ba9b-80acda130475/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6d41c67d-2da0-45b4-956c-9ce14f5fd7d9/69a50898-352f-4213-ba9b-80acda130475/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6d41c67d-2da0-45b4-956c-9ce14f5fd7d9/69a50898-352f-4213-ba9b-80acda130475/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.0610687   0.0096368   0.1125006
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.0842105   0.0525539   0.1158672
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.0792079   0.0156221   0.1427938
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0247253   0.0134424   0.0360081
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0284495   0.0161569   0.0407421
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0271041   0.0150803   0.0391279
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.0393013   0.0141277   0.0644749
0-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.0452261   0.0163470   0.0741053
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.0506329   0.0392344   0.0620315
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1137725   0.0655723   0.1619726
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1612903   0.1033395   0.2192411
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.1518519   0.1090089   0.1946948
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0164332   0.0123431   0.0205233
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0177886   0.0129499   0.0226274
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.0199782   0.0147511   0.0252053
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.0771812   0.0557523   0.0986101
0-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.0812918   0.0634153   0.0991683
0-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.1180390   0.1042405   0.1318376
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0395387   0.0240333   0.0550441
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0303030   0.0168830   0.0437230
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.0640457   0.0519597   0.0761316
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0625869   0.0529350   0.0722388
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0494197   0.0406855   0.0581539
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.0624717   0.0525536   0.0723898
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0201439   0.0096963   0.0305915
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0254111   0.0134832   0.0373390
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0300300   0.0170650   0.0429951
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1111111   0.0597339   0.1624883
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1223022   0.0677852   0.1768191
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.1235521   0.0834389   0.1636653
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0538922   0.0196251   0.0881594
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0695187   0.0330444   0.1059930
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.0601202   0.0392514   0.0809891
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.0610687   0.0096368   0.1125006
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    NA                0.0842105   0.0525539   0.1158672
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   NA                0.0792079   0.0156221   0.1427938
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0247253   0.0134424   0.0360081
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0284495   0.0161569   0.0407421
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0271041   0.0150803   0.0391279
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.0393013   0.0141277   0.0644749
6-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.0452261   0.0163470   0.0741053
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   NA                0.0506329   0.0392344   0.0620315
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1137725   0.0655723   0.1619726
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1612903   0.1033395   0.2192411
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   NA                0.1518519   0.1090089   0.1946948
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0164332   0.0123431   0.0205233
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.0177886   0.0129499   0.0226274
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   NA                0.0199782   0.0147511   0.0252053
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.0771812   0.0557523   0.0986101
6-24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.0812918   0.0634153   0.0991683
6-24 months   ki1135781-COHORTS          INDIA                          3+                   NA                0.1180390   0.1042405   0.1318376
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.0395387   0.0240333   0.0550441
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    NA                0.0303030   0.0168830   0.0437230
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   NA                0.0640457   0.0519597   0.0761316
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0625869   0.0529350   0.0722388
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.0494197   0.0406855   0.0581539
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.0624717   0.0525536   0.0723898


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0747664   0.0516226   0.0979101
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0267355   0.0198866   0.0335843
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0486486   0.0388428   0.0584545
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1435811   0.1153098   0.1718524
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0178954   0.0152055   0.0205853
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1020862   0.0921879   0.1119845
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0512273   0.0430760   0.0593786
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0580196   0.0522035   0.0638357
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0251232   0.0183136   0.0319327
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1199262   0.0925504   0.1473020
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0609613   0.0448957   0.0770269
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0747664   0.0516226   0.0979101
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0267355   0.0198866   0.0335843
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0486486   0.0388428   0.0584545
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1435811   0.1153098   0.1718524
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0178954   0.0152055   0.0205853
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1020862   0.0921879   0.1119845
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0512273   0.0430760   0.0593786
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0580196   0.0522035   0.0638357


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.3789474   0.4220832   4.5050263
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.2970297   0.2637119   6.3792566
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.1506243   0.6137724   2.1570475
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.0962118   0.5800975   2.0715142
0-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 1.1507536   0.4657865   2.8430063
0-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.2883261   0.6533823   2.5402955
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.4176570   0.8134344   2.4706989
0-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.3346979   0.8022801   2.2204443
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0824818   0.7486825   1.5651053
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.2157229   0.8472369   1.7444733
0-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.0532584   0.7391217   1.5009075
0-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.5293752   1.1315744   2.0670215
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.7664141   0.4241932   1.3847242
0-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.6198214   1.0482449   2.5030614
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.7896169   0.6299457   0.9897597
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.9981590   0.8056770   1.2366264
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.2614777   0.6267314   2.5390878
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.4907765   0.7591695   2.9274287
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.1007194   0.5790866   2.0922316
0-6 months    ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.1119691   0.6320034   1.9564378
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    2                    1                 1.2899584   0.5656642   2.9416615
0-6 months    ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.1155645   0.5406060   2.3020166
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          2                    1                 1.3789474   0.4220832   4.5050263
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          3+                   1                 1.2970297   0.2637119   6.3792566
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.1506243   0.6137724   2.1570475
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.0962118   0.5800975   2.0715142
6-24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 1.1507536   0.4657865   2.8430063
6-24 months   ki1101329-Keneba           GAMBIA                         3+                   1                 1.2883261   0.6533823   2.5402955
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.4176570   0.8134344   2.4706989
6-24 months   ki1113344-GMS-Nepal        NEPAL                          3+                   1                 1.3346979   0.8022801   2.2204443
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0824818   0.7486825   1.5651053
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+                   1                 1.2157229   0.8472369   1.7444733
6-24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          2                    1                 1.0532584   0.7391217   1.5009075
6-24 months   ki1135781-COHORTS          INDIA                          3+                   1                 1.5293752   1.1315744   2.0670215
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    2                    1                 0.7664141   0.4241932   1.3847242
6-24 months   ki1135781-COHORTS          PHILIPPINES                    3+                   1                 1.6198214   1.0482449   2.5030614
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.7896169   0.6299457   0.9897597
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.9981590   0.8056770   1.2366264


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0136977   -0.0562390   0.0836343
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0020102   -0.0073317   0.0113521
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0093473   -0.0145896   0.0332843
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0298086   -0.0127562   0.0723735
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0014622   -0.0018021   0.0047265
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0249050    0.0047825   0.0450276
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0116886   -0.0025603   0.0259375
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0045673   -0.0116588   0.0025241
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0049793   -0.0040086   0.0139672
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0088151   -0.0357545   0.0533847
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0070691   -0.0241168   0.0382550
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0136977   -0.0562390   0.0836343
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0020102   -0.0073317   0.0113521
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0093473   -0.0145896   0.0332843
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0298086   -0.0127562   0.0723735
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0014622   -0.0018021   0.0047265
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.0249050    0.0047825   0.0450276
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.0116886   -0.0025603   0.0259375
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0045673   -0.0116588   0.0025241


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1832061   -1.4199988   0.7243171
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0751880   -0.3486669   0.3658350
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.1921396   -0.4828459   0.5598744
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.2076083   -0.1488967   0.4534891
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0817094   -0.1195925   0.2468174
0-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.2439606    0.0202944   0.4165640
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.2281713   -0.1035805   0.4601939
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0787204   -0.2074543   0.0362883
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1981944   -0.2466347   0.4842978
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.0735043   -0.3833037   0.3794607
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.1159604   -0.5753898   0.5039158
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.1832061   -1.4199988   0.7243171
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0751880   -0.3486669   0.3658350
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.1921396   -0.4828459   0.5598744
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                 0.2076083   -0.1488967   0.4534891
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0817094   -0.1195925   0.2468174
6-24 months   ki1135781-COHORTS          INDIA                          1                    NA                 0.2439606    0.0202944   0.4165640
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                 0.2281713   -0.1035805   0.4601939
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0787204   -0.2074543   0.0362883
