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

**Intervention Variable:** single

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        single    pers_wast   n_cell      n
------------  -------------------------  -----------------------------  -------  ----------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 0      235    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 1       13    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0        0    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1        0    248
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                 0      185    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                 1        1    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0       30    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        1    217
0-24 months   ki0047075b-MAL-ED          INDIA                          0                 0      218    239
0-24 months   ki0047075b-MAL-ED          INDIA                          0                 1       21    239
0-24 months   ki0047075b-MAL-ED          INDIA                          1                 0        0    239
0-24 months   ki0047075b-MAL-ED          INDIA                          1                 1        0    239
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                 0      234    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                 1        4    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                 0        0    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                 1        0    238
0-24 months   ki0047075b-MAL-ED          PERU                           0                 0      249    284
0-24 months   ki0047075b-MAL-ED          PERU                           0                 1        1    284
0-24 months   ki0047075b-MAL-ED          PERU                           1                 0       34    284
0-24 months   ki0047075b-MAL-ED          PERU                           1                 1        0    284
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      154    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        1    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0      117    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        1    273
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      244    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        0    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        9    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0    253
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0     1896   2148
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1       53   2148
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      194   2148
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        5   2148
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                 0      221    251
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                 1        3    251
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                 0       26    251
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                 1        1    251
0-24 months   ki1119695-PROBIT           BELARUS                        0                 0     7594   7972
0-24 months   ki1119695-PROBIT           BELARUS                        0                 1       89   7972
0-24 months   ki1119695-PROBIT           BELARUS                        1                 0      283   7972
0-24 months   ki1119695-PROBIT           BELARUS                        1                 1        6   7972
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                 0     8563   9295
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                 1      154   9295
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 0      568   9295
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 1       10   9295
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                 0      412    481
0-24 months   ki1135781-COHORTS          GUATEMALA                      0                 1       22    481
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                 0       44    481
0-24 months   ki1135781-COHORTS          GUATEMALA                      1                 1        3    481
0-24 months   ki1135781-COHORTS          INDIA                          0                 0     3707   4127
0-24 months   ki1135781-COHORTS          INDIA                          0                 1      413   4127
0-24 months   ki1135781-COHORTS          INDIA                          1                 0        7   4127
0-24 months   ki1135781-COHORTS          INDIA                          1                 1        0   4127
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                 0     2571   2778
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                 1      136   2778
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                 0       63   2778
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                 1        8   2778
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 0      241    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 1        7    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 0        0    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 1        0    248
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                 0      186    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                 1        0    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                 0       30    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                 1        1    217
0-6 months    ki0047075b-MAL-ED          INDIA                          0                 0      219    238
0-6 months    ki0047075b-MAL-ED          INDIA                          0                 1       19    238
0-6 months    ki0047075b-MAL-ED          INDIA                          1                 0        0    238
0-6 months    ki0047075b-MAL-ED          INDIA                          1                 1        0    238
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                 0      232    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                 1        5    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                 0        0    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                 1        0    237
0-6 months    ki0047075b-MAL-ED          PERU                           0                 0      250    284
0-6 months    ki0047075b-MAL-ED          PERU                           0                 1        0    284
0-6 months    ki0047075b-MAL-ED          PERU                           1                 0       34    284
0-6 months    ki0047075b-MAL-ED          PERU                           1                 1        0    284
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      152    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        2    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0      117    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        0    271
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      244    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        0    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        9    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0    253
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0     1814   2044
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1       45   2044
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      178   2044
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        7   2044
0-6 months    ki1119695-PROBIT           BELARUS                        0                 0     5825   6657
0-6 months    ki1119695-PROBIT           BELARUS                        0                 1      596   6657
0-6 months    ki1119695-PROBIT           BELARUS                        1                 0      205   6657
0-6 months    ki1119695-PROBIT           BELARUS                        1                 1       31   6657
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                 0      564    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                 1       14    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                 0       32    610
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                 1        0    610
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                 0      767    842
0-6 months    ki1135781-COHORTS          PHILIPPINES                    0                 1       50    842
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                 0       24    842
0-6 months    ki1135781-COHORTS          PHILIPPINES                    1                 1        1    842
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 0      235    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 1       13    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0        0    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1        0    248
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                 0      185    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                 1        1    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0       30    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        1    217
6-24 months   ki0047075b-MAL-ED          INDIA                          0                 0      218    239
6-24 months   ki0047075b-MAL-ED          INDIA                          0                 1       21    239
6-24 months   ki0047075b-MAL-ED          INDIA                          1                 0        0    239
6-24 months   ki0047075b-MAL-ED          INDIA                          1                 1        0    239
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                 0      234    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                 1        4    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                 0        0    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                 1        0    238
6-24 months   ki0047075b-MAL-ED          PERU                           0                 0      249    284
6-24 months   ki0047075b-MAL-ED          PERU                           0                 1        1    284
6-24 months   ki0047075b-MAL-ED          PERU                           1                 0       34    284
6-24 months   ki0047075b-MAL-ED          PERU                           1                 1        0    284
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      154    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        1    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0      117    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        1    273
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      244    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        0    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        9    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0    253
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0     1896   2148
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1       53   2148
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      194   2148
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        5   2148
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                 0      221    251
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                 1        3    251
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                 0       26    251
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                 1        1    251
6-24 months   ki1119695-PROBIT           BELARUS                        0                 0     7594   7972
6-24 months   ki1119695-PROBIT           BELARUS                        0                 1       89   7972
6-24 months   ki1119695-PROBIT           BELARUS                        1                 0      283   7972
6-24 months   ki1119695-PROBIT           BELARUS                        1                 1        6   7972
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                 0     8563   9295
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                 1      154   9295
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 0      568   9295
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                 1       10   9295
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                 0      412    481
6-24 months   ki1135781-COHORTS          GUATEMALA                      0                 1       22    481
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                 0       44    481
6-24 months   ki1135781-COHORTS          GUATEMALA                      1                 1        3    481
6-24 months   ki1135781-COHORTS          INDIA                          0                 0     3707   4127
6-24 months   ki1135781-COHORTS          INDIA                          0                 1      413   4127
6-24 months   ki1135781-COHORTS          INDIA                          1                 0        7   4127
6-24 months   ki1135781-COHORTS          INDIA                          1                 1        0   4127
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                 0     2571   2778
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                 1      136   2778
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                 0       63   2778
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                 1        8   2778


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA

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
![](/tmp/4ca8ed1f-99e4-4f23-9e57-457249cef3c4/f40a2b67-64e5-4d60-9e87-8d48a1968f1e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4ca8ed1f-99e4-4f23-9e57-457249cef3c4/f40a2b67-64e5-4d60-9e87-8d48a1968f1e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4ca8ed1f-99e4-4f23-9e57-457249cef3c4/f40a2b67-64e5-4d60-9e87-8d48a1968f1e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4ca8ed1f-99e4-4f23-9e57-457249cef3c4/f40a2b67-64e5-4d60-9e87-8d48a1968f1e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0271934   0.0199709   0.0344159
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0251256   0.0033758   0.0468754
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0115840   0.0043737   0.0187944
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.0207612   0.0041857   0.0373368
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0176666   0.0149010   0.0204323
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0173010   0.0066705   0.0279315
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0502401   0.0420098   0.0584704
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1126761   0.0391140   0.1862381
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0242066   0.0172184   0.0311947
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0378378   0.0103364   0.0653393
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0928204   0.0439662   0.1416747
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.1313559   0.0620885   0.2006234
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0271934   0.0199709   0.0344159
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0251256   0.0033758   0.0468754
6-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0115840   0.0043737   0.0187944
6-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.0207612   0.0041857   0.0373368
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0176666   0.0149010   0.0204323
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0173010   0.0066705   0.0279315
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0502401   0.0420098   0.0584704
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1126761   0.0391140   0.1862381


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0270019   0.0201456   0.0338581
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0119167   0.0046062   0.0192272
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0176439   0.0149673   0.0203205
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0518359   0.0435904   0.0600814
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0254403   0.0186125   0.0322681
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0941866   0.0454872   0.1428859
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0270019   0.0201456   0.0338581
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0119167   0.0046062   0.0192272
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0176439   0.0149673   0.0203205
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0518359   0.0435904   0.0600814


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9239594   0.3736040   2.285042
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.7922320   0.9263434   3.467500
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.9793062   0.5194511   1.846258
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 2.2427506   1.1440794   4.396487
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.5631231   0.7150723   3.416933
0-6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        1                    0                 1.4151618   0.9205352   2.175564
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9239594   0.3736040   2.285042
6-24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.7922320   0.9263434   3.467500
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.9793062   0.5194511   1.846258
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 2.2427506   1.1440794   4.396487


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0001916   -0.0023149   0.0019318
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0003327   -0.0001125   0.0007779
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0000227   -0.0007058   0.0006603
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0015957   -0.0003313   0.0035227
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0012338   -0.0013401   0.0038076
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0013661   -0.0003810   0.0031132
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0001916   -0.0023149   0.0019318
6-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0003327   -0.0001125   0.0007779
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0000227   -0.0007058   0.0006603
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0015957   -0.0003313   0.0035227


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0070947   -0.0888621   0.0685324
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0279181   -0.0097289   0.0641614
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0012885   -0.0407595   0.0366855
0-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0307844   -0.0068119   0.0669768
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0484959   -0.0573614   0.1437553
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0145046   -0.0062048   0.0347877
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0070947   -0.0888621   0.0685324
6-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0279181   -0.0097289   0.0641614
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0012885   -0.0407595   0.0366855
6-24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0307844   -0.0068119   0.0669768
