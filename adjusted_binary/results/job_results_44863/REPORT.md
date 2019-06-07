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

**Intervention Variable:** ever_swasted06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                         ever_swasted06   co_occurence   n_cell      n
--------------------------  -----------------------------  ---------------  -------------  -------  -----
ki0047075b-MAL-ED           BANGLADESH                                   0              0      194    221
ki0047075b-MAL-ED           BANGLADESH                                   0              1       12    221
ki0047075b-MAL-ED           BANGLADESH                                   1              0       13    221
ki0047075b-MAL-ED           BANGLADESH                                   1              1        2    221
ki0047075b-MAL-ED           BRAZIL                                       0              0      178    180
ki0047075b-MAL-ED           BRAZIL                                       0              1        1    180
ki0047075b-MAL-ED           BRAZIL                                       1              0        1    180
ki0047075b-MAL-ED           BRAZIL                                       1              1        0    180
ki0047075b-MAL-ED           INDIA                                        0              0      196    228
ki0047075b-MAL-ED           INDIA                                        0              1       13    228
ki0047075b-MAL-ED           INDIA                                        1              0       15    228
ki0047075b-MAL-ED           INDIA                                        1              1        4    228
ki0047075b-MAL-ED           NEPAL                                        0              0      218    229
ki0047075b-MAL-ED           NEPAL                                        0              1        4    229
ki0047075b-MAL-ED           NEPAL                                        1              0        7    229
ki0047075b-MAL-ED           NEPAL                                        1              1        0    229
ki0047075b-MAL-ED           PERU                                         0              0      215    222
ki0047075b-MAL-ED           PERU                                         0              1        6    222
ki0047075b-MAL-ED           PERU                                         1              0        1    222
ki0047075b-MAL-ED           PERU                                         1              1        0    222
ki0047075b-MAL-ED           SOUTH AFRICA                                 0              0      233    241
ki0047075b-MAL-ED           SOUTH AFRICA                                 0              1        4    241
ki0047075b-MAL-ED           SOUTH AFRICA                                 1              0        4    241
ki0047075b-MAL-ED           SOUTH AFRICA                                 1              1        0    241
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF                 0              0      221    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF                 0              1        1    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF                 1              0        3    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF                 1              1        0    225
ki1000107-Serrinha-VitA     BRAZIL                                       0              0       10     10
ki1000107-Serrinha-VitA     BRAZIL                                       0              1        0     10
ki1000107-Serrinha-VitA     BRAZIL                                       1              0        0     10
ki1000107-Serrinha-VitA     BRAZIL                                       1              1        0     10
ki1000108-CMC-V-BCS-2002    INDIA                                        0              0      282    364
ki1000108-CMC-V-BCS-2002    INDIA                                        0              1       13    364
ki1000108-CMC-V-BCS-2002    INDIA                                        1              0       60    364
ki1000108-CMC-V-BCS-2002    INDIA                                        1              1        9    364
ki1000108-IRC               INDIA                                        0              0      268    405
ki1000108-IRC               INDIA                                        0              1       15    405
ki1000108-IRC               INDIA                                        1              0      112    405
ki1000108-IRC               INDIA                                        1              1       10    405
ki1000109-EE                PAKISTAN                                     0              0      256    350
ki1000109-EE                PAKISTAN                                     0              1       67    350
ki1000109-EE                PAKISTAN                                     1              0       19    350
ki1000109-EE                PAKISTAN                                     1              1        8    350
ki1000109-ResPak            PAKISTAN                                     0              0        6      9
ki1000109-ResPak            PAKISTAN                                     0              1        0      9
ki1000109-ResPak            PAKISTAN                                     1              0        3      9
ki1000109-ResPak            PAKISTAN                                     1              1        0      9
ki1000110-WASH-Bangladesh   BANGLADESH                                   0              0       71     81
ki1000110-WASH-Bangladesh   BANGLADESH                                   0              1       10     81
ki1000110-WASH-Bangladesh   BANGLADESH                                   1              0        0     81
ki1000110-WASH-Bangladesh   BANGLADESH                                   1              1        0     81
ki1000111-WASH-Kenya        KENYA                                        0              0        9      9
ki1000111-WASH-Kenya        KENYA                                        0              1        0      9
ki1000111-WASH-Kenya        KENYA                                        1              0        0      9
ki1000111-WASH-Kenya        KENYA                                        1              1        0      9
ki1000304b-SAS-CompFeed     INDIA                                        0              0     1064   1255
ki1000304b-SAS-CompFeed     INDIA                                        0              1      110   1255
ki1000304b-SAS-CompFeed     INDIA                                        1              0       62   1255
ki1000304b-SAS-CompFeed     INDIA                                        1              1       19   1255
ki1000304b-SAS-FoodSuppl    INDIA                                        0              0      255    323
ki1000304b-SAS-FoodSuppl    INDIA                                        0              1       55    323
ki1000304b-SAS-FoodSuppl    INDIA                                        1              0        8    323
ki1000304b-SAS-FoodSuppl    INDIA                                        1              1        5    323
ki1017093-NIH-Birth         BANGLADESH                                   0              0      376    461
ki1017093-NIH-Birth         BANGLADESH                                   0              1       39    461
ki1017093-NIH-Birth         BANGLADESH                                   1              0       34    461
ki1017093-NIH-Birth         BANGLADESH                                   1              1       12    461
ki1017093b-PROVIDE          BANGLADESH                                   0              0      495    552
ki1017093b-PROVIDE          BANGLADESH                                   0              1       34    552
ki1017093b-PROVIDE          BANGLADESH                                   1              0       21    552
ki1017093b-PROVIDE          BANGLADESH                                   1              1        2    552
ki1017093c-NIH-Crypto       BANGLADESH                                   0              0      560    634
ki1017093c-NIH-Crypto       BANGLADESH                                   0              1       26    634
ki1017093c-NIH-Crypto       BANGLADESH                                   1              0       45    634
ki1017093c-NIH-Crypto       BANGLADESH                                   1              1        3    634
ki1033518-iLiNS-DYAD-G      GHANA                                        0              0     1001   1032
ki1033518-iLiNS-DYAD-G      GHANA                                        0              1       21   1032
ki1033518-iLiNS-DYAD-G      GHANA                                        1              0        9   1032
ki1033518-iLiNS-DYAD-G      GHANA                                        1              1        1   1032
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF                 0              0      933    980
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF                 0              1       21    980
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF                 1              0       26    980
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF                 1              1        0    980
ki1101329-Keneba            GAMBIA                                       0              0     1587   1755
ki1101329-Keneba            GAMBIA                                       0              1       77   1755
ki1101329-Keneba            GAMBIA                                       1              0       70   1755
ki1101329-Keneba            GAMBIA                                       1              1       21   1755
ki1112895-Burkina Faso Zn   BURKINA FASO                                 0              0        1      1
ki1112895-Burkina Faso Zn   BURKINA FASO                                 0              1        0      1
ki1112895-Burkina Faso Zn   BURKINA FASO                                 1              0        0      1
ki1112895-Burkina Faso Zn   BURKINA FASO                                 1              1        0      1
ki1113344-GMS-Nepal         NEPAL                                        0              0      448    550
ki1113344-GMS-Nepal         NEPAL                                        0              1       47    550
ki1113344-GMS-Nepal         NEPAL                                        1              0       45    550
ki1113344-GMS-Nepal         NEPAL                                        1              1       10    550
ki1114097-CMIN              BANGLADESH                                   0              0      204    237
ki1114097-CMIN              BANGLADESH                                   0              1       24    237
ki1114097-CMIN              BANGLADESH                                   1              0        7    237
ki1114097-CMIN              BANGLADESH                                   1              1        2    237
ki1114097-CMIN              BRAZIL                                       0              0      114    115
ki1114097-CMIN              BRAZIL                                       0              1        0    115
ki1114097-CMIN              BRAZIL                                       1              0        1    115
ki1114097-CMIN              BRAZIL                                       1              1        0    115
ki1114097-CMIN              GUINEA-BISSAU                                0              0      469    491
ki1114097-CMIN              GUINEA-BISSAU                                0              1       17    491
ki1114097-CMIN              GUINEA-BISSAU                                1              0        5    491
ki1114097-CMIN              GUINEA-BISSAU                                1              1        0    491
ki1114097-CMIN              PERU                                         0              0      366    374
ki1114097-CMIN              PERU                                         0              1        0    374
ki1114097-CMIN              PERU                                         1              0        8    374
ki1114097-CMIN              PERU                                         1              1        0    374
ki1114097-CONTENT           PERU                                         0              0      199    200
ki1114097-CONTENT           PERU                                         0              1        1    200
ki1114097-CONTENT           PERU                                         1              0        0    200
ki1114097-CONTENT           PERU                                         1              1        0    200
ki1119695-PROBIT            BELARUS                                      0              0     2004   2146
ki1119695-PROBIT            BELARUS                                      0              1        0   2146
ki1119695-PROBIT            BELARUS                                      1              0      142   2146
ki1119695-PROBIT            BELARUS                                      1              1        0   2146
ki1126311-ZVITAMBO          ZIMBABWE                                     0              0     1470   1658
ki1126311-ZVITAMBO          ZIMBABWE                                     0              1       83   1658
ki1126311-ZVITAMBO          ZIMBABWE                                     1              0       98   1658
ki1126311-ZVITAMBO          ZIMBABWE                                     1              1        7   1658
ki1135781-COHORTS           GUATEMALA                                    0              0      635    712
ki1135781-COHORTS           GUATEMALA                                    0              1       33    712
ki1135781-COHORTS           GUATEMALA                                    1              0       42    712
ki1135781-COHORTS           GUATEMALA                                    1              1        2    712
ki1135781-COHORTS           PHILIPPINES                                  0              0     2168   2489
ki1135781-COHORTS           PHILIPPINES                                  0              1      166   2489
ki1135781-COHORTS           PHILIPPINES                                  1              0      133   2489
ki1135781-COHORTS           PHILIPPINES                                  1              1       22   2489
ki1148112-iLiNS-DOSE        MALAWI                                       0              0      834    868
ki1148112-iLiNS-DOSE        MALAWI                                       0              1       33    868
ki1148112-iLiNS-DOSE        MALAWI                                       1              0        1    868
ki1148112-iLiNS-DOSE        MALAWI                                       1              1        0    868
ki1148112-iLiNS-DYAD-M      MALAWI                                       0              0      973   1004
ki1148112-iLiNS-DYAD-M      MALAWI                                       0              1       25   1004
ki1148112-iLiNS-DYAD-M      MALAWI                                       1              0        6   1004
ki1148112-iLiNS-DYAD-M      MALAWI                                       1              1        0   1004
ki1148112-LCNI-5            MALAWI                                       0              0      229    235
ki1148112-LCNI-5            MALAWI                                       0              1        6    235
ki1148112-LCNI-5            MALAWI                                       1              0        0    235
ki1148112-LCNI-5            MALAWI                                       1              1        0    235
kiGH5241-JiVitA-4           BANGLADESH                                   0              0     3932   4420
kiGH5241-JiVitA-4           BANGLADESH                                   0              1      398   4420
kiGH5241-JiVitA-4           BANGLADESH                                   1              0       68   4420
kiGH5241-JiVitA-4           BANGLADESH                                   1              1       22   4420


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* studyid: ki1000111-WASH-Kenya, country: KENYA
* studyid: ki1000304b-SAS-CompFeed, country: INDIA
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093-NIH-Birth, country: BANGLADESH
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* studyid: ki1033518-iLiNS-DYAD-G, country: GHANA
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1101329-Keneba, country: GAMBIA
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
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
* studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
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
* studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* studyid: ki1000111-WASH-Kenya, country: KENYA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* studyid: ki1033518-iLiNS-DYAD-G, country: GHANA
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CMIN, country: BRAZIL
* studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU
* studyid: ki1119695-PROBIT, country: BELARUS
* studyid: ki1135781-COHORTS, country: GUATEMALA
* studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
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




# Results Detail

## Results Plots
![](/tmp/450d3465-083a-4189-97eb-db2de76e5224/0eb1440d-0f56-439c-8fa4-412094620fc6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/450d3465-083a-4189-97eb-db2de76e5224/0eb1440d-0f56-439c-8fa4-412094620fc6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/450d3465-083a-4189-97eb-db2de76e5224/0eb1440d-0f56-439c-8fa4-412094620fc6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/450d3465-083a-4189-97eb-db2de76e5224/0eb1440d-0f56-439c-8fa4-412094620fc6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0440678   0.0206142   0.0675214
ki1000108-CMC-V-BCS-2002   INDIA         1                    NA                0.1304348   0.0508612   0.2100083
ki1000108-IRC              INDIA         0                    NA                0.0530035   0.0268688   0.0791383
ki1000108-IRC              INDIA         1                    NA                0.0819672   0.0332307   0.1307037
ki1000109-EE               PAKISTAN      0                    NA                0.2074303   0.1631488   0.2517119
ki1000109-EE               PAKISTAN      1                    NA                0.2962963   0.1238136   0.4687790
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0936968   0.0815852   0.1058084
ki1000304b-SAS-CompFeed    INDIA         1                    NA                0.2345679   0.1086372   0.3604986
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.1774194   0.1348271   0.2200116
ki1000304b-SAS-FoodSuppl   INDIA         1                    NA                0.3846154   0.1197432   0.6494876
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0939759   0.0658715   0.1220803
ki1017093-NIH-Birth        BANGLADESH    1                    NA                0.2608696   0.1338376   0.3879015
ki1101329-Keneba           GAMBIA        0                    NA                0.0462740   0.0361774   0.0563707
ki1101329-Keneba           GAMBIA        1                    NA                0.2307692   0.1441791   0.3173594
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0949495   0.0691017   0.1207973
ki1113344-GMS-Nepal        NEPAL         1                    NA                0.1818182   0.0797934   0.2838429
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0534449   0.0422552   0.0646347
ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                0.0666667   0.0189404   0.1143929
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0711225   0.0606929   0.0815521
ki1135781-COHORTS          PHILIPPINES   1                    NA                0.1419355   0.0869846   0.1968864
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0919169   0.0813542   0.1024795
kiGH5241-JiVitA-4          BANGLADESH    1                    NA                0.2444444   0.1681297   0.3207592


### Parameter: E(Y)


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.0604396   0.0359254   0.0849538
ki1000108-IRC              INDIA         NA                   NA                0.0617284   0.0382610   0.0851958
ki1000109-EE               PAKISTAN      NA                   NA                0.2142857   0.1712366   0.2573348
ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.1027888   0.0905676   0.1150101
ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.1857585   0.1432798   0.2282372
ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.1106291   0.0819645   0.1392936
ki1101329-Keneba           GAMBIA        NA                   NA                0.0558405   0.0450949   0.0665861
ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1036364   0.0781411   0.1291317
ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0542823   0.0433730   0.0651916
ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0755323   0.0651490   0.0859156
kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0950226   0.0844790   0.1055662


### Parameter: RR


studyid                    country       intervention_level   baseline_level    estimate    ci_lower   ci_upper
-------------------------  ------------  -------------------  ---------------  ---------  ----------  ---------
ki1000108-CMC-V-BCS-2002   INDIA         0                    0                 1.000000   1.0000000   1.000000
ki1000108-CMC-V-BCS-2002   INDIA         1                    0                 2.959866   1.3172643   6.650759
ki1000108-IRC              INDIA         0                    0                 1.000000   1.0000000   1.000000
ki1000108-IRC              INDIA         1                    0                 1.546448   0.7142847   3.348107
ki1000109-EE               PAKISTAN      0                    0                 1.000000   1.0000000   1.000000
ki1000109-EE               PAKISTAN      1                    0                 1.428414   0.7683782   2.655418
ki1000304b-SAS-CompFeed    INDIA         0                    0                 1.000000   1.0000000   1.000000
ki1000304b-SAS-CompFeed    INDIA         1                    0                 2.503479   1.3768918   4.551852
ki1000304b-SAS-FoodSuppl   INDIA         0                    0                 1.000000   1.0000000   1.000000
ki1000304b-SAS-FoodSuppl   INDIA         1                    0                 2.167832   1.0454178   4.495328
ki1017093-NIH-Birth        BANGLADESH    0                    0                 1.000000   1.0000000   1.000000
ki1017093-NIH-Birth        BANGLADESH    1                    0                 2.775920   1.5675686   4.915721
ki1101329-Keneba           GAMBIA        0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba           GAMBIA        1                    0                 4.987013   3.2309806   7.697446
ki1113344-GMS-Nepal        NEPAL         0                    0                 1.000000   1.0000000   1.000000
ki1113344-GMS-Nepal        NEPAL         1                    0                 1.914894   1.0263190   3.572785
ki1126311-ZVITAMBO         ZIMBABWE      0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO         ZIMBABWE      1                    0                 1.247390   0.5916569   2.629870
ki1135781-COHORTS          PHILIPPINES   0                    0                 1.000000   1.0000000   1.000000
ki1135781-COHORTS          PHILIPPINES   1                    0                 1.995647   1.3191303   3.019116
kiGH5241-JiVitA-4          BANGLADESH    0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4          BANGLADESH    1                    0                 2.659408   1.9198241   3.683906


### Parameter: PAR


studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0163718    0.0002653   0.0324783
ki1000108-IRC              INDIA         0                    NA                0.0087249   -0.0079842   0.0254339
ki1000109-EE               PAKISTAN      0                    NA                0.0068554   -0.0071054   0.0208161
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0090921    0.0002455   0.0179387
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.0083392   -0.0033385   0.0200168
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0166532    0.0028898   0.0304165
ki1101329-Keneba           GAMBIA        0                    NA                0.0095664    0.0046575   0.0144754
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0086869   -0.0020613   0.0194351
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0008373   -0.0022710   0.0039456
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0044098    0.0008624   0.0079572
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0031058    0.0011579   0.0050536


### Parameter: PAF


studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.2708783   -0.0204611   0.4790409
ki1000108-IRC              INDIA         0                    NA                0.1413428   -0.1703473   0.3700227
ki1000109-EE               PAKISTAN      0                    NA                0.0319917   -0.0352405   0.0948577
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0884540    0.0018791   0.1675195
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.0448925   -0.0195805   0.1052885
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.1505315    0.0222282   0.2619989
ki1101329-Keneba           GAMBIA        0                    NA                0.1713170    0.0849615   0.2495227
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0838207   -0.0241659   0.1804213
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0154253   -0.0434554   0.0709835
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0583830    0.0108401   0.1036408
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0326845    0.0119453   0.0529884
