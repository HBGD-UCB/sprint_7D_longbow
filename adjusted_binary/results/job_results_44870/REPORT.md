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

**Outcome Variable:** co_occurence

## Predictor Variables

**Intervention Variable:** ever_sunderweight06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                         ever_sunderweight06   co_occurence   n_cell      n
-------------------------  -----------------------------  --------------------  -------------  -------  -----
ki0047075b-MAL-ED          BANGLADESH                                        0              0      200    221
ki0047075b-MAL-ED          BANGLADESH                                        0              1       11    221
ki0047075b-MAL-ED          BANGLADESH                                        1              0        7    221
ki0047075b-MAL-ED          BANGLADESH                                        1              1        3    221
ki0047075b-MAL-ED          BRAZIL                                            0              0      179    180
ki0047075b-MAL-ED          BRAZIL                                            0              1        1    180
ki0047075b-MAL-ED          BRAZIL                                            1              0        0    180
ki0047075b-MAL-ED          BRAZIL                                            1              1        0    180
ki0047075b-MAL-ED          INDIA                                             0              0      189    228
ki0047075b-MAL-ED          INDIA                                             0              1       10    228
ki0047075b-MAL-ED          INDIA                                             1              0       22    228
ki0047075b-MAL-ED          INDIA                                             1              1        7    228
ki0047075b-MAL-ED          NEPAL                                             0              0      217    229
ki0047075b-MAL-ED          NEPAL                                             0              1        3    229
ki0047075b-MAL-ED          NEPAL                                             1              0        8    229
ki0047075b-MAL-ED          NEPAL                                             1              1        1    229
ki0047075b-MAL-ED          PERU                                              0              0      212    222
ki0047075b-MAL-ED          PERU                                              0              1        4    222
ki0047075b-MAL-ED          PERU                                              1              0        4    222
ki0047075b-MAL-ED          PERU                                              1              1        2    222
ki0047075b-MAL-ED          SOUTH AFRICA                                      0              0      231    241
ki0047075b-MAL-ED          SOUTH AFRICA                                      0              1        4    241
ki0047075b-MAL-ED          SOUTH AFRICA                                      1              0        6    241
ki0047075b-MAL-ED          SOUTH AFRICA                                      1              1        0    241
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF                      0              0      218    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF                      0              1        0    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF                      1              0        6    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF                      1              1        1    225
ki1000108-CMC-V-BCS-2002   INDIA                                             0              0      290    364
ki1000108-CMC-V-BCS-2002   INDIA                                             0              1       11    364
ki1000108-CMC-V-BCS-2002   INDIA                                             1              0       52    364
ki1000108-CMC-V-BCS-2002   INDIA                                             1              1       11    364
ki1000108-IRC              INDIA                                             0              0      332    405
ki1000108-IRC              INDIA                                             0              1       16    405
ki1000108-IRC              INDIA                                             1              0       48    405
ki1000108-IRC              INDIA                                             1              1        9    405
ki1000109-EE               PAKISTAN                                          0              0      186    349
ki1000109-EE               PAKISTAN                                          0              1       32    349
ki1000109-EE               PAKISTAN                                          1              0       89    349
ki1000109-EE               PAKISTAN                                          1              1       42    349
ki1000109-ResPak           PAKISTAN                                          0              0        6      9
ki1000109-ResPak           PAKISTAN                                          0              1        0      9
ki1000109-ResPak           PAKISTAN                                          1              0        3      9
ki1000109-ResPak           PAKISTAN                                          1              1        0      9
ki1000304b-SAS-CompFeed    INDIA                                             0              0     1010   1252
ki1000304b-SAS-CompFeed    INDIA                                             0              1       77   1252
ki1000304b-SAS-CompFeed    INDIA                                             1              0      113   1252
ki1000304b-SAS-CompFeed    INDIA                                             1              1       52   1252
ki1000304b-SAS-FoodSuppl   INDIA                                             0              0      216    310
ki1000304b-SAS-FoodSuppl   INDIA                                             0              1       36    310
ki1000304b-SAS-FoodSuppl   INDIA                                             1              0       37    310
ki1000304b-SAS-FoodSuppl   INDIA                                             1              1       21    310
ki1017093-NIH-Birth        BANGLADESH                                        0              0      374    461
ki1017093-NIH-Birth        BANGLADESH                                        0              1       32    461
ki1017093-NIH-Birth        BANGLADESH                                        1              0       36    461
ki1017093-NIH-Birth        BANGLADESH                                        1              1       19    461
ki1017093b-PROVIDE         BANGLADESH                                        0              0      490    552
ki1017093b-PROVIDE         BANGLADESH                                        0              1       27    552
ki1017093b-PROVIDE         BANGLADESH                                        1              0       26    552
ki1017093b-PROVIDE         BANGLADESH                                        1              1        9    552
ki1017093c-NIH-Crypto      BANGLADESH                                        0              0      579    634
ki1017093c-NIH-Crypto      BANGLADESH                                        0              1       19    634
ki1017093c-NIH-Crypto      BANGLADESH                                        1              0       26    634
ki1017093c-NIH-Crypto      BANGLADESH                                        1              1       10    634
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF                      0              0      947    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF                      0              1       18    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF                      1              0       12    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF                      1              1        3    980
ki1101329-Keneba           GAMBIA                                            0              0     1589   1754
ki1101329-Keneba           GAMBIA                                            0              1       68   1754
ki1101329-Keneba           GAMBIA                                            1              0       67   1754
ki1101329-Keneba           GAMBIA                                            1              1       30   1754
ki1113344-GMS-Nepal        NEPAL                                             0              0      454    548
ki1113344-GMS-Nepal        NEPAL                                             0              1       35    548
ki1113344-GMS-Nepal        NEPAL                                             1              0       38    548
ki1113344-GMS-Nepal        NEPAL                                             1              1       21    548
ki1114097-CMIN             BANGLADESH                                        0              0      181    237
ki1114097-CMIN             BANGLADESH                                        0              1       15    237
ki1114097-CMIN             BANGLADESH                                        1              0       30    237
ki1114097-CMIN             BANGLADESH                                        1              1       11    237
ki1114097-CMIN             BRAZIL                                            0              0      113    115
ki1114097-CMIN             BRAZIL                                            0              1        0    115
ki1114097-CMIN             BRAZIL                                            1              0        2    115
ki1114097-CMIN             BRAZIL                                            1              1        0    115
ki1114097-CMIN             GUINEA-BISSAU                                     0              0      467    489
ki1114097-CMIN             GUINEA-BISSAU                                     0              1       16    489
ki1114097-CMIN             GUINEA-BISSAU                                     1              0        5    489
ki1114097-CMIN             GUINEA-BISSAU                                     1              1        1    489
ki1114097-CMIN             PERU                                              0              0      361    373
ki1114097-CMIN             PERU                                              0              1        0    373
ki1114097-CMIN             PERU                                              1              0       12    373
ki1114097-CMIN             PERU                                              1              1        0    373
ki1114097-CONTENT          PERU                                              0              0      197    200
ki1114097-CONTENT          PERU                                              0              1        0    200
ki1114097-CONTENT          PERU                                              1              0        2    200
ki1114097-CONTENT          PERU                                              1              1        1    200
ki1119695-PROBIT           BELARUS                                           0              0     2136   2146
ki1119695-PROBIT           BELARUS                                           0              1        0   2146
ki1119695-PROBIT           BELARUS                                           1              0       10   2146
ki1119695-PROBIT           BELARUS                                           1              1        0   2146
ki1126311-ZVITAMBO         ZIMBABWE                                          0              0     1515   1656
ki1126311-ZVITAMBO         ZIMBABWE                                          0              1       74   1656
ki1126311-ZVITAMBO         ZIMBABWE                                          1              0       51   1656
ki1126311-ZVITAMBO         ZIMBABWE                                          1              1       16   1656
ki1135781-COHORTS          GUATEMALA                                         0              0      644    710
ki1135781-COHORTS          GUATEMALA                                         0              1       25    710
ki1135781-COHORTS          GUATEMALA                                         1              0       32    710
ki1135781-COHORTS          GUATEMALA                                         1              1        9    710
ki1135781-COHORTS          PHILIPPINES                                       0              0     2227   2489
ki1135781-COHORTS          PHILIPPINES                                       0              1      160   2489
ki1135781-COHORTS          PHILIPPINES                                       1              0       74   2489
ki1135781-COHORTS          PHILIPPINES                                       1              1       28   2489
ki1148112-LCNI-5           MALAWI                                            0              0      227    235
ki1148112-LCNI-5           MALAWI                                            0              1        6    235
ki1148112-LCNI-5           MALAWI                                            1              0        2    235
ki1148112-LCNI-5           MALAWI                                            1              1        0    235
kiGH5241-JiVitA-4          BANGLADESH                                        0              0     3843   4409
kiGH5241-JiVitA-4          BANGLADESH                                        0              1      326   4409
kiGH5241-JiVitA-4          BANGLADESH                                        1              0      150   4409
kiGH5241-JiVitA-4          BANGLADESH                                        1              1       90   4409


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1000304b-SAS-CompFeed, country: INDIA
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093-NIH-Birth, country: BANGLADESH
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1101329-Keneba, country: GAMBIA
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CMIN, country: BRAZIL
* studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU
* studyid: ki1119695-PROBIT, country: BELARUS
* studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* studyid: ki1135781-COHORTS, country: GUATEMALA
* studyid: ki1135781-COHORTS, country: PHILIPPINES
* studyid: ki1148112-LCNI-5, country: MALAWI
* studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1114097-CMIN, country: BRAZIL
* studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU
* studyid: ki1119695-PROBIT, country: BELARUS
* studyid: ki1148112-LCNI-5, country: MALAWI

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




# Results Detail

## Results Plots
![](/tmp/fb26a2ef-298f-44e9-9c14-b0853320a7fe/76be066d-88af-48b5-b492-d3b5e3118543/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fb26a2ef-298f-44e9-9c14-b0853320a7fe/76be066d-88af-48b5-b492-d3b5e3118543/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fb26a2ef-298f-44e9-9c14-b0853320a7fe/76be066d-88af-48b5-b492-d3b5e3118543/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fb26a2ef-298f-44e9-9c14-b0853320a7fe/76be066d-88af-48b5-b492-d3b5e3118543/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA         0                    NA                0.0502513   0.0198316   0.0806709
ki0047075b-MAL-ED          INDIA         1                    NA                0.2413793   0.0852926   0.3974660
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0365449   0.0153177   0.0577720
ki1000108-CMC-V-BCS-2002   INDIA         1                    NA                0.1746032   0.0807319   0.2684744
ki1000108-IRC              INDIA         0                    NA                0.0459770   0.0239455   0.0680086
ki1000108-IRC              INDIA         1                    NA                0.1578947   0.0631152   0.2526743
ki1000109-EE               PAKISTAN      0                    NA                0.1467890   0.0997435   0.1938345
ki1000109-EE               PAKISTAN      1                    NA                0.3206107   0.2405750   0.4006464
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0708372   0.0576975   0.0839768
ki1000304b-SAS-CompFeed    INDIA         1                    NA                0.3151515   0.2428749   0.3874281
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.1428571   0.0995831   0.1861311
ki1000304b-SAS-FoodSuppl   INDIA         1                    NA                0.3620690   0.2381841   0.4859538
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0788177   0.0525791   0.1050564
ki1017093-NIH-Birth        BANGLADESH    1                    NA                0.3454545   0.2196479   0.4712612
ki1017093b-PROVIDE         BANGLADESH    0                    NA                0.0522244   0.0330295   0.0714193
ki1017093b-PROVIDE         BANGLADESH    1                    NA                0.2571429   0.1122164   0.4020693
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.0317726   0.0177038   0.0458413
ki1017093c-NIH-Crypto      BANGLADESH    1                    NA                0.2777778   0.1313499   0.4242057
ki1101329-Keneba           GAMBIA        0                    NA                0.0410380   0.0314836   0.0505924
ki1101329-Keneba           GAMBIA        1                    NA                0.3092784   0.2172732   0.4012835
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0715746   0.0487058   0.0944434
ki1113344-GMS-Nepal        NEPAL         1                    NA                0.3559322   0.2336486   0.4782158
ki1114097-CMIN             BANGLADESH    0                    NA                0.0765306   0.0392342   0.1138270
ki1114097-CMIN             BANGLADESH    1                    NA                0.2682927   0.1323839   0.4042014
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0465702   0.0362065   0.0569339
ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                0.2388060   0.1366857   0.3409263
ki1135781-COHORTS          GUATEMALA     0                    NA                0.0373692   0.0229869   0.0517515
ki1135781-COHORTS          GUATEMALA     1                    NA                0.2195122   0.0927252   0.3462992
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0670297   0.0569957   0.0770638
ki1135781-COHORTS          PHILIPPINES   1                    NA                0.2745098   0.1878875   0.3611322
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0781962   0.0688486   0.0875438
kiGH5241-JiVitA-4          BANGLADESH    1                    NA                0.3750000   0.2995867   0.4504133


### Parameter: E(Y)


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA         NA                   NA                0.0745614   0.0403897   0.1087331
ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.0604396   0.0359254   0.0849538
ki1000108-IRC              INDIA         NA                   NA                0.0617284   0.0382610   0.0851958
ki1000109-EE               PAKISTAN      NA                   NA                0.2120344   0.1690891   0.2549796
ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.1030351   0.0907482   0.1153221
ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.1838710   0.1406788   0.2270631
ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.1106291   0.0819645   0.1392936
ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.0652174   0.0446012   0.0858336
ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.0457413   0.0294659   0.0620168
ki1101329-Keneba           GAMBIA        NA                   NA                0.0558723   0.0451208   0.0666238
ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1021898   0.0768063   0.1275732
ki1114097-CMIN             BANGLADESH    NA                   NA                0.1097046   0.0698323   0.1495770
ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0543478   0.0434257   0.0652699
ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0478873   0.0321700   0.0636047
ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0755323   0.0651490   0.0859156
kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0943525   0.0838117   0.1048932


### Parameter: RR


studyid                    country       intervention_level   baseline_level    estimate   ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ---------  ---------  ----------
ki0047075b-MAL-ED          INDIA         0                    0                 1.000000   1.000000    1.000000
ki0047075b-MAL-ED          INDIA         1                    0                 4.803448   1.980913   11.647715
ki1000108-CMC-V-BCS-2002   INDIA         0                    0                 1.000000   1.000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA         1                    0                 4.777778   2.165177   10.542861
ki1000108-IRC              INDIA         0                    0                 1.000000   1.000000    1.000000
ki1000108-IRC              INDIA         1                    0                 3.434210   1.593143    7.402850
ki1000109-EE               PAKISTAN      0                    0                 1.000000   1.000000    1.000000
ki1000109-EE               PAKISTAN      1                    0                 2.184160   1.454969    3.278802
ki1000304b-SAS-CompFeed    INDIA         0                    0                 1.000000   1.000000    1.000000
ki1000304b-SAS-CompFeed    INDIA         1                    0                 4.448957   3.061532    6.465136
ki1000304b-SAS-FoodSuppl   INDIA         0                    0                 1.000000   1.000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA         1                    0                 2.534483   1.604815    4.002705
ki1017093-NIH-Birth        BANGLADESH    0                    0                 1.000000   1.000000    1.000000
ki1017093-NIH-Birth        BANGLADESH    1                    0                 4.382955   2.675984    7.178776
ki1017093b-PROVIDE         BANGLADESH    0                    0                 1.000000   1.000000    1.000000
ki1017093b-PROVIDE         BANGLADESH    1                    0                 4.923809   2.512363    9.649840
ki1017093c-NIH-Crypto      BANGLADESH    0                    0                 1.000000   1.000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH    1                    0                 8.742690   4.391987   17.403201
ki1101329-Keneba           GAMBIA        0                    0                 1.000000   1.000000    1.000000
ki1101329-Keneba           GAMBIA        1                    0                 7.536386   5.165412   10.995660
ki1113344-GMS-Nepal        NEPAL         0                    0                 1.000000   1.000000    1.000000
ki1113344-GMS-Nepal        NEPAL         1                    0                 4.972881   3.110648    7.949968
ki1114097-CMIN             BANGLADESH    0                    0                 1.000000   1.000000    1.000000
ki1114097-CMIN             BANGLADESH    1                    0                 3.505691   1.735779    7.080318
ki1126311-ZVITAMBO         ZIMBABWE      0                    0                 1.000000   1.000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE      1                    0                 5.127874   3.166485    8.304188
ki1135781-COHORTS          GUATEMALA     0                    0                 1.000000   1.000000    1.000000
ki1135781-COHORTS          GUATEMALA     1                    0                 5.874146   2.934372   11.759107
ki1135781-COHORTS          PHILIPPINES   0                    0                 1.000000   1.000000    1.000000
ki1135781-COHORTS          PHILIPPINES   1                    0                 4.095343   2.888076    5.807268
kiGH5241-JiVitA-4          BANGLADESH    0                    0                 1.000000   1.000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH    1                    0                 4.795629   3.820083    6.020302


### Parameter: PAR


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA         0                    NA                0.0243101   0.0024528   0.0461675
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0238947   0.0063924   0.0413970
ki1000108-IRC              INDIA         0                    NA                0.0157514   0.0015403   0.0299625
ki1000109-EE               PAKISTAN      0                    NA                0.0652454   0.0292932   0.1011976
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0321980   0.0206243   0.0437717
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.0410138   0.0146765   0.0673511
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0318113   0.0145641   0.0490586
ki1017093b-PROVIDE         BANGLADESH    0                    NA                0.0129930   0.0028290   0.0231571
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.0139687   0.0045115   0.0234260
ki1101329-Keneba           GAMBIA        0                    NA                0.0148343   0.0089687   0.0206999
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0306151   0.0153197   0.0459106
ki1114097-CMIN             BANGLADESH    0                    NA                0.0331740   0.0070960   0.0592520
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0077777   0.0032415   0.0123138
ki1135781-COHORTS          GUATEMALA     0                    NA                0.0105181   0.0025134   0.0185228
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0085026   0.0045806   0.0124246
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0161563   0.0110324   0.0212801


### Parameter: PAF


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA         0                    NA                0.3260420   0.0132207   0.5396950
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.3953488   0.0929021   0.5969530
ki1000108-IRC              INDIA         0                    NA                0.2551724   0.0112776   0.4389040
ki1000109-EE               PAKISTAN      0                    NA                0.3077114   0.1249187   0.4523211
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.3124951   0.2008589   0.4085362
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.2230576   0.0733943   0.3485477
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.2875495   0.1322478   0.4150568
ki1017093b-PROVIDE         BANGLADESH    0                    NA                0.1992263   0.0413432   0.3311073
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.3053858   0.1023445   0.4625010
ki1101329-Keneba           GAMBIA        0                    NA                0.2655032   0.1664264   0.3528039
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.2995910   0.1528559   0.4209099
ki1114097-CMIN             BANGLADESH    0                    NA                0.3023940   0.0496978   0.4878954
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.1431089   0.0604934   0.2184595
ki1135781-COHORTS          GUATEMALA     0                    NA                0.2196430   0.0516370   0.3578861
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.1125690   0.0612236   0.1611061
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.1712330   0.1212704   0.2183548
