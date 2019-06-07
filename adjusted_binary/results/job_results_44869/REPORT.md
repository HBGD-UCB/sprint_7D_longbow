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

**Intervention Variable:** ever_underweight06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                         ever_underweight06   co_occurence   n_cell      n
-------------------------  -----------------------------  -------------------  -------------  -------  -----
ki0047075b-MAL-ED          BANGLADESH                                       0              0      153    221
ki0047075b-MAL-ED          BANGLADESH                                       0              1        3    221
ki0047075b-MAL-ED          BANGLADESH                                       1              0       54    221
ki0047075b-MAL-ED          BANGLADESH                                       1              1       11    221
ki0047075b-MAL-ED          BRAZIL                                           0              0      172    180
ki0047075b-MAL-ED          BRAZIL                                           0              1        0    180
ki0047075b-MAL-ED          BRAZIL                                           1              0        7    180
ki0047075b-MAL-ED          BRAZIL                                           1              1        1    180
ki0047075b-MAL-ED          INDIA                                            0              0      140    228
ki0047075b-MAL-ED          INDIA                                            0              1        0    228
ki0047075b-MAL-ED          INDIA                                            1              0       71    228
ki0047075b-MAL-ED          INDIA                                            1              1       17    228
ki0047075b-MAL-ED          NEPAL                                            0              0      193    229
ki0047075b-MAL-ED          NEPAL                                            0              1        0    229
ki0047075b-MAL-ED          NEPAL                                            1              0       32    229
ki0047075b-MAL-ED          NEPAL                                            1              1        4    229
ki0047075b-MAL-ED          PERU                                             0              0      186    222
ki0047075b-MAL-ED          PERU                                             0              1        1    222
ki0047075b-MAL-ED          PERU                                             1              0       30    222
ki0047075b-MAL-ED          PERU                                             1              1        5    222
ki0047075b-MAL-ED          SOUTH AFRICA                                     0              0      204    241
ki0047075b-MAL-ED          SOUTH AFRICA                                     0              1        2    241
ki0047075b-MAL-ED          SOUTH AFRICA                                     1              0       33    241
ki0047075b-MAL-ED          SOUTH AFRICA                                     1              1        2    241
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF                     0              0      191    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF                     0              1        0    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF                     1              0       33    225
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF                     1              1        1    225
ki1000108-CMC-V-BCS-2002   INDIA                                            0              0      191    364
ki1000108-CMC-V-BCS-2002   INDIA                                            0              1        1    364
ki1000108-CMC-V-BCS-2002   INDIA                                            1              0      151    364
ki1000108-CMC-V-BCS-2002   INDIA                                            1              1       21    364
ki1000108-IRC              INDIA                                            0              0      212    405
ki1000108-IRC              INDIA                                            0              1        2    405
ki1000108-IRC              INDIA                                            1              0      168    405
ki1000108-IRC              INDIA                                            1              1       23    405
ki1000109-EE               PAKISTAN                                         0              0       96    349
ki1000109-EE               PAKISTAN                                         0              1        7    349
ki1000109-EE               PAKISTAN                                         1              0      179    349
ki1000109-EE               PAKISTAN                                         1              1       67    349
ki1000109-ResPak           PAKISTAN                                         0              0        3      9
ki1000109-ResPak           PAKISTAN                                         0              1        0      9
ki1000109-ResPak           PAKISTAN                                         1              0        6      9
ki1000109-ResPak           PAKISTAN                                         1              1        0      9
ki1000304b-SAS-CompFeed    INDIA                                            0              0      742   1252
ki1000304b-SAS-CompFeed    INDIA                                            0              1       20   1252
ki1000304b-SAS-CompFeed    INDIA                                            1              0      381   1252
ki1000304b-SAS-CompFeed    INDIA                                            1              1      109   1252
ki1000304b-SAS-FoodSuppl   INDIA                                            0              0      151    310
ki1000304b-SAS-FoodSuppl   INDIA                                            0              1       16    310
ki1000304b-SAS-FoodSuppl   INDIA                                            1              0      102    310
ki1000304b-SAS-FoodSuppl   INDIA                                            1              1       41    310
ki1017093-NIH-Birth        BANGLADESH                                       0              0      265    461
ki1017093-NIH-Birth        BANGLADESH                                       0              1       13    461
ki1017093-NIH-Birth        BANGLADESH                                       1              0      145    461
ki1017093-NIH-Birth        BANGLADESH                                       1              1       38    461
ki1017093b-PROVIDE         BANGLADESH                                       0              0      370    552
ki1017093b-PROVIDE         BANGLADESH                                       0              1       13    552
ki1017093b-PROVIDE         BANGLADESH                                       1              0      146    552
ki1017093b-PROVIDE         BANGLADESH                                       1              1       23    552
ki1017093c-NIH-Crypto      BANGLADESH                                       0              0      447    634
ki1017093c-NIH-Crypto      BANGLADESH                                       0              1        6    634
ki1017093c-NIH-Crypto      BANGLADESH                                       1              0      158    634
ki1017093c-NIH-Crypto      BANGLADESH                                       1              1       23    634
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF                     0              0      886    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF                     0              1        9    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF                     1              0       73    980
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF                     1              1       12    980
ki1101329-Keneba           GAMBIA                                           0              0     1388   1754
ki1101329-Keneba           GAMBIA                                           0              1       31   1754
ki1101329-Keneba           GAMBIA                                           1              0      268   1754
ki1101329-Keneba           GAMBIA                                           1              1       67   1754
ki1113344-GMS-Nepal        NEPAL                                            0              0      336    548
ki1113344-GMS-Nepal        NEPAL                                            0              1       12    548
ki1113344-GMS-Nepal        NEPAL                                            1              0      156    548
ki1113344-GMS-Nepal        NEPAL                                            1              1       44    548
ki1114097-CMIN             BANGLADESH                                       0              0      112    237
ki1114097-CMIN             BANGLADESH                                       0              1        3    237
ki1114097-CMIN             BANGLADESH                                       1              0       99    237
ki1114097-CMIN             BANGLADESH                                       1              1       23    237
ki1114097-CMIN             BRAZIL                                           0              0      105    115
ki1114097-CMIN             BRAZIL                                           0              1        0    115
ki1114097-CMIN             BRAZIL                                           1              0       10    115
ki1114097-CMIN             BRAZIL                                           1              1        0    115
ki1114097-CMIN             GUINEA-BISSAU                                    0              0      445    489
ki1114097-CMIN             GUINEA-BISSAU                                    0              1       11    489
ki1114097-CMIN             GUINEA-BISSAU                                    1              0       27    489
ki1114097-CMIN             GUINEA-BISSAU                                    1              1        6    489
ki1114097-CMIN             PERU                                             0              0      347    373
ki1114097-CMIN             PERU                                             0              1        0    373
ki1114097-CMIN             PERU                                             1              0       26    373
ki1114097-CMIN             PERU                                             1              1        0    373
ki1114097-CONTENT          PERU                                             0              0      187    200
ki1114097-CONTENT          PERU                                             0              1        0    200
ki1114097-CONTENT          PERU                                             1              0       12    200
ki1114097-CONTENT          PERU                                             1              1        1    200
ki1119695-PROBIT           BELARUS                                          0              0     1986   2146
ki1119695-PROBIT           BELARUS                                          0              1        0   2146
ki1119695-PROBIT           BELARUS                                          1              0      160   2146
ki1119695-PROBIT           BELARUS                                          1              1        0   2146
ki1126311-ZVITAMBO         ZIMBABWE                                         0              0     1321   1656
ki1126311-ZVITAMBO         ZIMBABWE                                         0              1       48   1656
ki1126311-ZVITAMBO         ZIMBABWE                                         1              0      245   1656
ki1126311-ZVITAMBO         ZIMBABWE                                         1              1       42   1656
ki1135781-COHORTS          GUATEMALA                                        0              0      532    710
ki1135781-COHORTS          GUATEMALA                                        0              1       11    710
ki1135781-COHORTS          GUATEMALA                                        1              0      144    710
ki1135781-COHORTS          GUATEMALA                                        1              1       23    710
ki1135781-COHORTS          PHILIPPINES                                      0              0     1950   2489
ki1135781-COHORTS          PHILIPPINES                                      0              1       89   2489
ki1135781-COHORTS          PHILIPPINES                                      1              0      351   2489
ki1135781-COHORTS          PHILIPPINES                                      1              1       99   2489
ki1148112-LCNI-5           MALAWI                                           0              0      202    235
ki1148112-LCNI-5           MALAWI                                           0              1        3    235
ki1148112-LCNI-5           MALAWI                                           1              0       27    235
ki1148112-LCNI-5           MALAWI                                           1              1        3    235
kiGH5241-JiVitA-4          BANGLADESH                                       0              0     3091   4409
kiGH5241-JiVitA-4          BANGLADESH                                       0              1      106   4409
kiGH5241-JiVitA-4          BANGLADESH                                       1              0      902   4409
kiGH5241-JiVitA-4          BANGLADESH                                       1              1      310   4409


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
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CMIN, country: BRAZIL
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




# Results Detail

## Results Plots
![](/tmp/fd4f96b4-9b3f-4c6d-a074-c49151fe6328/6adac288-a122-4b93-b9de-6bc58c3d0508/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fd4f96b4-9b3f-4c6d-a074-c49151fe6328/6adac288-a122-4b93-b9de-6bc58c3d0508/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fd4f96b4-9b3f-4c6d-a074-c49151fe6328/6adac288-a122-4b93-b9de-6bc58c3d0508/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fd4f96b4-9b3f-4c6d-a074-c49151fe6328/6adac288-a122-4b93-b9de-6bc58c3d0508/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000109-EE               PAKISTAN                       0                    NA                0.0679612   0.0192868   0.1166355
ki1000109-EE               PAKISTAN                       1                    NA                0.2723577   0.2166478   0.3280676
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0262467   0.0190775   0.0334159
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2224490   0.1998446   0.2450533
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0958084   0.0510965   0.1405203
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.2867133   0.2124733   0.3609532
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0467626   0.0219171   0.0716081
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2076503   0.1488176   0.2664830
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0339426   0.0157909   0.0520942
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1360947   0.0843516   0.1878377
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0132450   0.0027091   0.0237810
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1270718   0.0785133   0.1756303
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0100559   0.0035159   0.0165958
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1411765   0.0671148   0.2152381
ki1101329-Keneba           GAMBIA                         0                    NA                0.0218464   0.0142383   0.0294544
ki1101329-Keneba           GAMBIA                         1                    NA                0.2000000   0.1571541   0.2428459
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0344828   0.0152945   0.0536710
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2200000   0.1625370   0.2774630
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0241228   0.0100260   0.0382196
ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.1818182   0.0500898   0.3135465
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0350621   0.0253156   0.0448085
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1463415   0.1054376   0.1872453
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0202578   0.0084000   0.0321157
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1377246   0.0854218   0.1900273
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0436488   0.0347789   0.0525188
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2200000   0.1817186   0.2582814
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0331561   0.0261618   0.0401504
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2557756   0.2256663   0.2858849


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000109-EE               PAKISTAN                       NA                   NA                0.2120344   0.1690891   0.2549796
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1030351   0.0907482   0.1153221
ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1838710   0.1406788   0.2270631
ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1106291   0.0819645   0.1392936
ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0652174   0.0446012   0.0858336
ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0457413   0.0294659   0.0620168
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0214286   0.0123577   0.0304995
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0558723   0.0451208   0.0666238
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1021898   0.0768063   0.1275732
ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0347648   0.0185122   0.0510175
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0543478   0.0434257   0.0652699
ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0478873   0.0321700   0.0636047
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0755323   0.0651490   0.0859156
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0943525   0.0838117   0.1048932


### Parameter: RR


studyid                    country                        intervention_level   baseline_level     estimate   ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ---------  ----------
ki1000109-EE               PAKISTAN                       0                    0                  1.000000   1.000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                  4.007549   1.902817    8.440355
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  8.475306   6.204712   11.576817
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000   1.000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  2.992570   1.754932    5.103031
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  4.440521   2.431816    8.108437
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                  4.009558   2.080334    7.727874
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  9.593923   3.969500   23.187641
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000   1.000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 14.039216   6.087787   32.376226
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000   1.000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  9.154839   6.082483   13.779089
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000   1.000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  6.380000   3.450282   11.797413
ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000   1.000000    1.000000
ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  7.537190   2.971420   19.118548
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000   1.000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  4.173781   2.814032    6.190563
ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000   1.000000    1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                  6.798585   3.383690   13.659868
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000   1.000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  5.040224   3.857112    6.586239
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000   1.000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  7.714288   6.060356    9.819594


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000109-EE               PAKISTAN                       0                    NA                0.1440732   0.0910162   0.1971303
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0767884   0.0630911   0.0904858
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0880626   0.0467009   0.1294243
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0638665   0.0375141   0.0902189
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0312748   0.0140326   0.0485171
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0324963   0.0177563   0.0472363
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0113727   0.0045222   0.0182232
ki1101329-Keneba           GAMBIA                         0                    NA                0.0340259   0.0250915   0.0429603
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0677070   0.0443643   0.0910497
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0106420   0.0010373   0.0202467
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0192857   0.0117210   0.0268505
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0276295   0.0144928   0.0407662
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0318835   0.0242950   0.0394720
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0611964   0.0517820   0.0706107


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki1000109-EE               PAKISTAN                       0                    NA                0.6794805   0.3698803   0.8369631
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.7452644   0.6599904   0.8091518
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.4789368   0.2317805   0.6465765
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.5773029   0.3348638   0.7313740
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.4795474   0.2050979   0.6592399
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.7104362   0.4137558   0.8569756
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.5307263   0.2343771   0.7123677
ki1101329-Keneba           GAMBIA                         0                    NA                0.6089945   0.4797310   0.7061419
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.6625616   0.4500140   0.7929680
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.3061146   0.0215290   0.5079292
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.3548576   0.2216440   0.4652720
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.5769689   0.3175948   0.7377580
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.4221171   0.3317855   0.5002373
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.6485933   0.5772578   0.7078914
