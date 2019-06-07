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

**Intervention Variable:** ever_wasted06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                         ever_wasted06   co_occurence   n_cell      n
--------------------------  -----------------------------  --------------  -------------  -------  -----
ki0047075b-MAL-ED           BANGLADESH                                  0              0      165    221
ki0047075b-MAL-ED           BANGLADESH                                  0              1        5    221
ki0047075b-MAL-ED           BANGLADESH                                  1              0       42    221
ki0047075b-MAL-ED           BANGLADESH                                  1              1        9    221
ki0047075b-MAL-ED           BRAZIL                                      0              0      167    180
ki0047075b-MAL-ED           BRAZIL                                      0              1        1    180
ki0047075b-MAL-ED           BRAZIL                                      1              0       12    180
ki0047075b-MAL-ED           BRAZIL                                      1              1        0    180
ki0047075b-MAL-ED           INDIA                                       0              0      151    228
ki0047075b-MAL-ED           INDIA                                       0              1        4    228
ki0047075b-MAL-ED           INDIA                                       1              0       60    228
ki0047075b-MAL-ED           INDIA                                       1              1       13    228
ki0047075b-MAL-ED           NEPAL                                       0              0      187    229
ki0047075b-MAL-ED           NEPAL                                       0              1        2    229
ki0047075b-MAL-ED           NEPAL                                       1              0       38    229
ki0047075b-MAL-ED           NEPAL                                       1              1        2    229
ki0047075b-MAL-ED           PERU                                        0              0      208    222
ki0047075b-MAL-ED           PERU                                        0              1        5    222
ki0047075b-MAL-ED           PERU                                        1              0        8    222
ki0047075b-MAL-ED           PERU                                        1              1        1    222
ki0047075b-MAL-ED           SOUTH AFRICA                                0              0      215    241
ki0047075b-MAL-ED           SOUTH AFRICA                                0              1        2    241
ki0047075b-MAL-ED           SOUTH AFRICA                                1              0       22    241
ki0047075b-MAL-ED           SOUTH AFRICA                                1              1        2    241
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF                0              0      213    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF                0              1        1    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF                1              0       11    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF                1              1        0    225
ki1000107-Serrinha-VitA     BRAZIL                                      0              0       10     10
ki1000107-Serrinha-VitA     BRAZIL                                      0              1        0     10
ki1000107-Serrinha-VitA     BRAZIL                                      1              0        0     10
ki1000107-Serrinha-VitA     BRAZIL                                      1              1        0     10
ki1000108-CMC-V-BCS-2002    INDIA                                       0              0      170    364
ki1000108-CMC-V-BCS-2002    INDIA                                       0              1        4    364
ki1000108-CMC-V-BCS-2002    INDIA                                       1              0      172    364
ki1000108-CMC-V-BCS-2002    INDIA                                       1              1       18    364
ki1000108-IRC               INDIA                                       0              0      176    405
ki1000108-IRC               INDIA                                       0              1       11    405
ki1000108-IRC               INDIA                                       1              0      204    405
ki1000108-IRC               INDIA                                       1              1       14    405
ki1000109-EE                PAKISTAN                                    0              0      211    350
ki1000109-EE                PAKISTAN                                    0              1       39    350
ki1000109-EE                PAKISTAN                                    1              0       64    350
ki1000109-EE                PAKISTAN                                    1              1       36    350
ki1000109-ResPak            PAKISTAN                                    0              0        4      9
ki1000109-ResPak            PAKISTAN                                    0              1        0      9
ki1000109-ResPak            PAKISTAN                                    1              0        5      9
ki1000109-ResPak            PAKISTAN                                    1              1        0      9
ki1000110-WASH-Bangladesh   BANGLADESH                                  0              0       70     81
ki1000110-WASH-Bangladesh   BANGLADESH                                  0              1        8     81
ki1000110-WASH-Bangladesh   BANGLADESH                                  1              0        1     81
ki1000110-WASH-Bangladesh   BANGLADESH                                  1              1        2     81
ki1000111-WASH-Kenya        KENYA                                       0              0        8      9
ki1000111-WASH-Kenya        KENYA                                       0              1        0      9
ki1000111-WASH-Kenya        KENYA                                       1              0        1      9
ki1000111-WASH-Kenya        KENYA                                       1              1        0      9
ki1000304b-SAS-CompFeed     INDIA                                       0              0      905   1255
ki1000304b-SAS-CompFeed     INDIA                                       0              1       74   1255
ki1000304b-SAS-CompFeed     INDIA                                       1              0      221   1255
ki1000304b-SAS-CompFeed     INDIA                                       1              1       55   1255
ki1000304b-SAS-FoodSuppl    INDIA                                       0              0      227    323
ki1000304b-SAS-FoodSuppl    INDIA                                       0              1       43    323
ki1000304b-SAS-FoodSuppl    INDIA                                       1              0       36    323
ki1000304b-SAS-FoodSuppl    INDIA                                       1              1       17    323
ki1017093-NIH-Birth         BANGLADESH                                  0              0      281    461
ki1017093-NIH-Birth         BANGLADESH                                  0              1       17    461
ki1017093-NIH-Birth         BANGLADESH                                  1              0      129    461
ki1017093-NIH-Birth         BANGLADESH                                  1              1       34    461
ki1017093b-PROVIDE          BANGLADESH                                  0              0      392    552
ki1017093b-PROVIDE          BANGLADESH                                  0              1       22    552
ki1017093b-PROVIDE          BANGLADESH                                  1              0      124    552
ki1017093b-PROVIDE          BANGLADESH                                  1              1       14    552
ki1017093c-NIH-Crypto       BANGLADESH                                  0              0      442    634
ki1017093c-NIH-Crypto       BANGLADESH                                  0              1       16    634
ki1017093c-NIH-Crypto       BANGLADESH                                  1              0      163    634
ki1017093c-NIH-Crypto       BANGLADESH                                  1              1       13    634
ki1033518-iLiNS-DYAD-G      GHANA                                       0              0      943   1032
ki1033518-iLiNS-DYAD-G      GHANA                                       0              1       17   1032
ki1033518-iLiNS-DYAD-G      GHANA                                       1              0       67   1032
ki1033518-iLiNS-DYAD-G      GHANA                                       1              1        5   1032
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF                0              0      837    980
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF                0              1       15    980
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF                1              0      122    980
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF                1              1        6    980
ki1101329-Keneba            GAMBIA                                      0              0     1416   1755
ki1101329-Keneba            GAMBIA                                      0              1       57   1755
ki1101329-Keneba            GAMBIA                                      1              0      241   1755
ki1101329-Keneba            GAMBIA                                      1              1       41   1755
ki1112895-Burkina Faso Zn   BURKINA FASO                                0              0        1      1
ki1112895-Burkina Faso Zn   BURKINA FASO                                0              1        0      1
ki1112895-Burkina Faso Zn   BURKINA FASO                                1              0        0      1
ki1112895-Burkina Faso Zn   BURKINA FASO                                1              1        0      1
ki1113344-GMS-Nepal         NEPAL                                       0              0      355    550
ki1113344-GMS-Nepal         NEPAL                                       0              1       28    550
ki1113344-GMS-Nepal         NEPAL                                       1              0      138    550
ki1113344-GMS-Nepal         NEPAL                                       1              1       29    550
ki1114097-CMIN              BANGLADESH                                  0              0      180    237
ki1114097-CMIN              BANGLADESH                                  0              1       18    237
ki1114097-CMIN              BANGLADESH                                  1              0       31    237
ki1114097-CMIN              BANGLADESH                                  1              1        8    237
ki1114097-CMIN              BRAZIL                                      0              0      108    115
ki1114097-CMIN              BRAZIL                                      0              1        0    115
ki1114097-CMIN              BRAZIL                                      1              0        7    115
ki1114097-CMIN              BRAZIL                                      1              1        0    115
ki1114097-CMIN              GUINEA-BISSAU                               0              0      456    491
ki1114097-CMIN              GUINEA-BISSAU                               0              1       17    491
ki1114097-CMIN              GUINEA-BISSAU                               1              0       18    491
ki1114097-CMIN              GUINEA-BISSAU                               1              1        0    491
ki1114097-CMIN              PERU                                        0              0      348    374
ki1114097-CMIN              PERU                                        0              1        0    374
ki1114097-CMIN              PERU                                        1              0       26    374
ki1114097-CMIN              PERU                                        1              1        0    374
ki1114097-CONTENT           PERU                                        0              0      196    200
ki1114097-CONTENT           PERU                                        0              1        1    200
ki1114097-CONTENT           PERU                                        1              0        3    200
ki1114097-CONTENT           PERU                                        1              1        0    200
ki1119695-PROBIT            BELARUS                                     0              0     1623   2146
ki1119695-PROBIT            BELARUS                                     0              1        0   2146
ki1119695-PROBIT            BELARUS                                     1              0      523   2146
ki1119695-PROBIT            BELARUS                                     1              1        0   2146
ki1126311-ZVITAMBO          ZIMBABWE                                    0              0     1301   1658
ki1126311-ZVITAMBO          ZIMBABWE                                    0              1       60   1658
ki1126311-ZVITAMBO          ZIMBABWE                                    1              0      267   1658
ki1126311-ZVITAMBO          ZIMBABWE                                    1              1       30   1658
ki1135781-COHORTS           GUATEMALA                                   0              0      542    712
ki1135781-COHORTS           GUATEMALA                                   0              1       23    712
ki1135781-COHORTS           GUATEMALA                                   1              0      135    712
ki1135781-COHORTS           GUATEMALA                                   1              1       12    712
ki1135781-COHORTS           PHILIPPINES                                 0              0     1797   2489
ki1135781-COHORTS           PHILIPPINES                                 0              1      121   2489
ki1135781-COHORTS           PHILIPPINES                                 1              0      504   2489
ki1135781-COHORTS           PHILIPPINES                                 1              1       67   2489
ki1148112-iLiNS-DOSE        MALAWI                                      0              0      830    868
ki1148112-iLiNS-DOSE        MALAWI                                      0              1       33    868
ki1148112-iLiNS-DOSE        MALAWI                                      1              0        5    868
ki1148112-iLiNS-DOSE        MALAWI                                      1              1        0    868
ki1148112-iLiNS-DYAD-M      MALAWI                                      0              0      948   1004
ki1148112-iLiNS-DYAD-M      MALAWI                                      0              1       24   1004
ki1148112-iLiNS-DYAD-M      MALAWI                                      1              0       31   1004
ki1148112-iLiNS-DYAD-M      MALAWI                                      1              1        1   1004
ki1148112-LCNI-5            MALAWI                                      0              0      226    235
ki1148112-LCNI-5            MALAWI                                      0              1        6    235
ki1148112-LCNI-5            MALAWI                                      1              0        3    235
ki1148112-LCNI-5            MALAWI                                      1              1        0    235
kiGH5241-JiVitA-4           BANGLADESH                                  0              0     3640   4420
kiGH5241-JiVitA-4           BANGLADESH                                  0              1      316   4420
kiGH5241-JiVitA-4           BANGLADESH                                  1              0      360   4420
kiGH5241-JiVitA-4           BANGLADESH                                  1              1      104   4420


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

* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* studyid: ki1000111-WASH-Kenya, country: KENYA
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1114097-CMIN, country: BRAZIL
* studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU
* studyid: ki1119695-PROBIT, country: BELARUS
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/285aefca-9ec9-4c1b-8909-4caebe568ebb/a82fbbf6-3837-49e5-8c61-b27a0e9f6d95/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/285aefca-9ec9-4c1b-8909-4caebe568ebb/a82fbbf6-3837-49e5-8c61-b27a0e9f6d95/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/285aefca-9ec9-4c1b-8909-4caebe568ebb/a82fbbf6-3837-49e5-8c61-b27a0e9f6d95/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/285aefca-9ec9-4c1b-8909-4caebe568ebb/a82fbbf6-3837-49e5-8c61-b27a0e9f6d95/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0294118   0.0039560   0.0548675
ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1764706   0.0716073   0.2813339
ki1000108-IRC              INDIA                          0                    NA                0.0588235   0.0250579   0.0925892
ki1000108-IRC              INDIA                          1                    NA                0.0642202   0.0316381   0.0968023
ki1000109-EE               PAKISTAN                       0                    NA                0.1560000   0.1109564   0.2010436
ki1000109-EE               PAKISTAN                       1                    NA                0.3600000   0.2657870   0.4542130
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0755873   0.0644993   0.0866754
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1992754   0.1552777   0.2432730
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1592593   0.1155450   0.2029735
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.3207547   0.1948960   0.4466134
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0570470   0.0306853   0.0834086
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2085890   0.1461476   0.2710303
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0531401   0.0315131   0.0747671
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1014493   0.0510298   0.1518687
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0349345   0.0181053   0.0517637
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0738636   0.0351925   0.1125348
ki1033518-iLiNS-DYAD-G     GHANA                          0                    NA                0.0177083   0.0093613   0.0260554
ki1033518-iLiNS-DYAD-G     GHANA                          1                    NA                0.0694444   0.0106979   0.1281910
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0176056   0.0087704   0.0264409
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0468750   0.0102388   0.0835112
ki1101329-Keneba           GAMBIA                         0                    NA                0.0386965   0.0288443   0.0485488
ki1101329-Keneba           GAMBIA                         1                    NA                0.1453901   0.1042373   0.1865428
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0731070   0.0470132   0.0992009
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1736527   0.1161475   0.2311579
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0909091   0.0507817   0.1310365
ki1114097-CMIN             BANGLADESH                     1                    NA                0.2051282   0.0781307   0.3321257
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0440852   0.0331757   0.0549948
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1010101   0.0667285   0.1352917
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0407080   0.0244021   0.0570138
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0816327   0.0373397   0.1259256
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0630865   0.0522040   0.0739691
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1173380   0.0909362   0.1437398
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0798787   0.0696009   0.0901565
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2241379   0.1784848   0.2697911


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.0633484   0.0311604   0.0955364
ki1000108-IRC              INDIA                          NA                   NA                0.0617284   0.0382610   0.0851958
ki1000109-EE               PAKISTAN                       NA                   NA                0.2142857   0.1712366   0.2573348
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1027888   0.0905676   0.1150101
ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1857585   0.1432798   0.2282372
ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1106291   0.0819645   0.1392936
ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0652174   0.0446012   0.0858336
ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0457413   0.0294659   0.0620168
ki1033518-iLiNS-DYAD-G     GHANA                          NA                   NA                0.0213178   0.0125010   0.0301346
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0214286   0.0123577   0.0304995
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0558405   0.0450949   0.0665861
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1036364   0.0781411   0.1291317
ki1114097-CMIN             BANGLADESH                     NA                   NA                0.1097046   0.0698323   0.1495770
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0542823   0.0433730   0.0651916
ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0491573   0.0332659   0.0650487
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0755323   0.0651490   0.0859156
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0950226   0.0844790   0.1055662


### Parameter: RR


studyid                    country                        intervention_level   baseline_level    estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ---------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki0047075b-MAL-ED          BANGLADESH                     1                    0                 6.000000   2.0999382   17.143362
ki1000108-IRC              INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000108-IRC              INDIA                          1                    0                 1.091743   0.5074701    2.348716
ki1000109-EE               PAKISTAN                       0                    0                 1.000000   1.0000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                 2.307692   1.5629208    3.407366
ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                 2.636359   1.9699429    3.528219
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 2.014041   1.2476775    3.251130
ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                 3.656442   2.1083344    6.341293
ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.909091   1.0042706    3.629130
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 2.114347   1.0379918    4.306837
ki1033518-iLiNS-DYAD-G     GHANA                          0                    0                 1.000000   1.0000000    1.000000
ki1033518-iLiNS-DYAD-G     GHANA                          1                    0                 3.921568   1.4889690   10.328421
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.000000   1.0000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 2.662500   1.0517430    6.740150
ki1101329-Keneba           GAMBIA                         0                    0                 1.000000   1.0000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                 3.757185   2.5675689    5.497980
ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.000000   1.0000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                 2.375321   1.4597236    3.865217
ki1114097-CMIN             BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                 2.256410   1.0548754    4.826529
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 2.291246   1.5054152    3.487282
ki1135781-COHORTS          GUATEMALA                      0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                 2.005324   1.0216109    3.936258
ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.859953   1.4007800    2.469641
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 2.805980   2.2119204    3.559587


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0339367    0.0077232   0.0601501
ki1000108-IRC              INDIA                          0                    NA                0.0029049   -0.0223535   0.0281632
ki1000109-EE               PAKISTAN                       0                    NA                0.0582857    0.0269219   0.0896495
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0272015    0.0142604   0.0401426
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0264993    0.0036821   0.0493164
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0535821    0.0287195   0.0784447
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0120773   -0.0017490   0.0259036
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0108068   -0.0009794   0.0225931
ki1033518-iLiNS-DYAD-G     GHANA                          0                    NA                0.0036095   -0.0006077   0.0078267
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0038229   -0.0011380   0.0087839
ki1101329-Keneba           GAMBIA                         0                    NA                0.0171439    0.0101016   0.0241863
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0305293    0.0109690   0.0500896
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0187956   -0.0037774   0.0413685
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0101970    0.0036675   0.0167265
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0084493   -0.0013712   0.0182699
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0124458    0.0058336   0.0190580
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0151440    0.0099873   0.0203006


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.5357143    0.0769639   0.7664650
ki1000108-IRC              INDIA                          0                    NA                0.0470588   -0.4635004   0.3795035
ki1000109-EE               PAKISTAN                       0                    NA                0.2720000    0.1175359   0.3994271
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.2646349    0.1465921   0.3663500
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1426543    0.0136593   0.2547792
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.4843400    0.2520354   0.6444950
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1851852   -0.0475415   0.3662082
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2362596   -0.0520926   0.4455817
ki1033518-iLiNS-DYAD-G     GHANA                          0                    NA                0.1693182   -0.0385197   0.3355617
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1784037   -0.0729713   0.3708868
ki1101329-Keneba           GAMBIA                         0                    NA                0.3070161    0.1846369   0.4110271
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.2945811    0.0937633   0.4508986
ki1114097-CMIN             BANGLADESH                     0                    NA                0.1713287   -0.0524818   0.3475458
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1878521    0.0645535   0.2948990
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1718837   -0.0449328   0.3437122
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1647744    0.0753284   0.2455680
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1593721    0.1058670   0.2096756
