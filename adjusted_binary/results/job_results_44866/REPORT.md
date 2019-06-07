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

**Intervention Variable:** ever_sstunted06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                         ever_sstunted06   co_occurence   n_cell      n
--------------------------  -----------------------------  ----------------  -------------  -------  -----
ki0047075b-MAL-ED           BANGLADESH                                    0              0      196    221
ki0047075b-MAL-ED           BANGLADESH                                    0              1       12    221
ki0047075b-MAL-ED           BANGLADESH                                    1              0       11    221
ki0047075b-MAL-ED           BANGLADESH                                    1              1        2    221
ki0047075b-MAL-ED           BRAZIL                                        0              0      171    180
ki0047075b-MAL-ED           BRAZIL                                        0              1        0    180
ki0047075b-MAL-ED           BRAZIL                                        1              0        8    180
ki0047075b-MAL-ED           BRAZIL                                        1              1        1    180
ki0047075b-MAL-ED           INDIA                                         0              0      196    228
ki0047075b-MAL-ED           INDIA                                         0              1       14    228
ki0047075b-MAL-ED           INDIA                                         1              0       15    228
ki0047075b-MAL-ED           INDIA                                         1              1        3    228
ki0047075b-MAL-ED           NEPAL                                         0              0      218    229
ki0047075b-MAL-ED           NEPAL                                         0              1        4    229
ki0047075b-MAL-ED           NEPAL                                         1              0        7    229
ki0047075b-MAL-ED           NEPAL                                         1              1        0    229
ki0047075b-MAL-ED           PERU                                          0              0      192    222
ki0047075b-MAL-ED           PERU                                          0              1        2    222
ki0047075b-MAL-ED           PERU                                          1              0       24    222
ki0047075b-MAL-ED           PERU                                          1              1        4    222
ki0047075b-MAL-ED           SOUTH AFRICA                                  0              0      215    241
ki0047075b-MAL-ED           SOUTH AFRICA                                  0              1        3    241
ki0047075b-MAL-ED           SOUTH AFRICA                                  1              0       22    241
ki0047075b-MAL-ED           SOUTH AFRICA                                  1              1        1    241
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF                  0              0      197    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF                  0              1        0    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF                  1              0       27    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF                  1              1        1    225
ki1000107-Serrinha-VitA     BRAZIL                                        0              0       10     10
ki1000107-Serrinha-VitA     BRAZIL                                        0              1        0     10
ki1000107-Serrinha-VitA     BRAZIL                                        1              0        0     10
ki1000107-Serrinha-VitA     BRAZIL                                        1              1        0     10
ki1000108-CMC-V-BCS-2002    INDIA                                         0              0      262    364
ki1000108-CMC-V-BCS-2002    INDIA                                         0              1       12    364
ki1000108-CMC-V-BCS-2002    INDIA                                         1              0       80    364
ki1000108-CMC-V-BCS-2002    INDIA                                         1              1       10    364
ki1000108-IRC               INDIA                                         0              0      338    405
ki1000108-IRC               INDIA                                         0              1       13    405
ki1000108-IRC               INDIA                                         1              0       42    405
ki1000108-IRC               INDIA                                         1              1       12    405
ki1000109-EE                PAKISTAN                                      0              0      162    350
ki1000109-EE                PAKISTAN                                      0              1       36    350
ki1000109-EE                PAKISTAN                                      1              0      113    350
ki1000109-EE                PAKISTAN                                      1              1       39    350
ki1000109-ResPak            PAKISTAN                                      0              0        3      9
ki1000109-ResPak            PAKISTAN                                      0              1        0      9
ki1000109-ResPak            PAKISTAN                                      1              0        6      9
ki1000109-ResPak            PAKISTAN                                      1              1        0      9
ki1000110-WASH-Bangladesh   BANGLADESH                                    0              0       70     81
ki1000110-WASH-Bangladesh   BANGLADESH                                    0              1        9     81
ki1000110-WASH-Bangladesh   BANGLADESH                                    1              0        1     81
ki1000110-WASH-Bangladesh   BANGLADESH                                    1              1        1     81
ki1000111-WASH-Kenya        KENYA                                         0              0        9      9
ki1000111-WASH-Kenya        KENYA                                         0              1        0      9
ki1000111-WASH-Kenya        KENYA                                         1              0        0      9
ki1000111-WASH-Kenya        KENYA                                         1              1        0      9
ki1000304b-SAS-CompFeed     INDIA                                         0              0     1015   1255
ki1000304b-SAS-CompFeed     INDIA                                         0              1       89   1255
ki1000304b-SAS-CompFeed     INDIA                                         1              0      111   1255
ki1000304b-SAS-CompFeed     INDIA                                         1              1       40   1255
ki1000304b-SAS-FoodSuppl    INDIA                                         0              0      235    323
ki1000304b-SAS-FoodSuppl    INDIA                                         0              1       48    323
ki1000304b-SAS-FoodSuppl    INDIA                                         1              0       28    323
ki1000304b-SAS-FoodSuppl    INDIA                                         1              1       12    323
ki1017093-NIH-Birth         BANGLADESH                                    0              0      380    461
ki1017093-NIH-Birth         BANGLADESH                                    0              1       44    461
ki1017093-NIH-Birth         BANGLADESH                                    1              0       30    461
ki1017093-NIH-Birth         BANGLADESH                                    1              1        7    461
ki1017093b-PROVIDE          BANGLADESH                                    0              0      494    552
ki1017093b-PROVIDE          BANGLADESH                                    0              1       32    552
ki1017093b-PROVIDE          BANGLADESH                                    1              0       22    552
ki1017093b-PROVIDE          BANGLADESH                                    1              1        4    552
ki1017093c-NIH-Crypto       BANGLADESH                                    0              0      571    634
ki1017093c-NIH-Crypto       BANGLADESH                                    0              1       24    634
ki1017093c-NIH-Crypto       BANGLADESH                                    1              0       34    634
ki1017093c-NIH-Crypto       BANGLADESH                                    1              1        5    634
ki1033518-iLiNS-DYAD-G      GHANA                                         0              0     1000   1032
ki1033518-iLiNS-DYAD-G      GHANA                                         0              1       19   1032
ki1033518-iLiNS-DYAD-G      GHANA                                         1              0       10   1032
ki1033518-iLiNS-DYAD-G      GHANA                                         1              1        3   1032
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF                  0              0      916    980
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF                  0              1       17    980
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF                  1              0       43    980
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF                  1              1        4    980
ki1101329-Keneba            GAMBIA                                        0              0     1480   1755
ki1101329-Keneba            GAMBIA                                        0              1       70   1755
ki1101329-Keneba            GAMBIA                                        1              0      177   1755
ki1101329-Keneba            GAMBIA                                        1              1       28   1755
ki1112895-Burkina Faso Zn   BURKINA FASO                                  0              0        1      1
ki1112895-Burkina Faso Zn   BURKINA FASO                                  0              1        0      1
ki1112895-Burkina Faso Zn   BURKINA FASO                                  1              0        0      1
ki1112895-Burkina Faso Zn   BURKINA FASO                                  1              1        0      1
ki1113344-GMS-Nepal         NEPAL                                         0              0      471    550
ki1113344-GMS-Nepal         NEPAL                                         0              1       46    550
ki1113344-GMS-Nepal         NEPAL                                         1              0       22    550
ki1113344-GMS-Nepal         NEPAL                                         1              1       11    550
ki1114097-CMIN              BANGLADESH                                    0              0      166    237
ki1114097-CMIN              BANGLADESH                                    0              1       16    237
ki1114097-CMIN              BANGLADESH                                    1              0       45    237
ki1114097-CMIN              BANGLADESH                                    1              1       10    237
ki1114097-CMIN              BRAZIL                                        0              0      112    115
ki1114097-CMIN              BRAZIL                                        0              1        0    115
ki1114097-CMIN              BRAZIL                                        1              0        3    115
ki1114097-CMIN              BRAZIL                                        1              1        0    115
ki1114097-CMIN              GUINEA-BISSAU                                 0              0      460    491
ki1114097-CMIN              GUINEA-BISSAU                                 0              1       13    491
ki1114097-CMIN              GUINEA-BISSAU                                 1              0       14    491
ki1114097-CMIN              GUINEA-BISSAU                                 1              1        4    491
ki1114097-CMIN              PERU                                          0              0      361    374
ki1114097-CMIN              PERU                                          0              1        0    374
ki1114097-CMIN              PERU                                          1              0       13    374
ki1114097-CMIN              PERU                                          1              1        0    374
ki1114097-CONTENT           PERU                                          0              0      191    200
ki1114097-CONTENT           PERU                                          0              1        0    200
ki1114097-CONTENT           PERU                                          1              0        8    200
ki1114097-CONTENT           PERU                                          1              1        1    200
ki1119695-PROBIT            BELARUS                                       0              0     2123   2146
ki1119695-PROBIT            BELARUS                                       0              1        0   2146
ki1119695-PROBIT            BELARUS                                       1              0       23   2146
ki1119695-PROBIT            BELARUS                                       1              1        0   2146
ki1126311-ZVITAMBO          ZIMBABWE                                      0              0     1405   1658
ki1126311-ZVITAMBO          ZIMBABWE                                      0              1       72   1658
ki1126311-ZVITAMBO          ZIMBABWE                                      1              0      163   1658
ki1126311-ZVITAMBO          ZIMBABWE                                      1              1       18   1658
ki1135781-COHORTS           GUATEMALA                                     0              0      617    712
ki1135781-COHORTS           GUATEMALA                                     0              1       28    712
ki1135781-COHORTS           GUATEMALA                                     1              0       60    712
ki1135781-COHORTS           GUATEMALA                                     1              1        7    712
ki1135781-COHORTS           PHILIPPINES                                   0              0     2202   2489
ki1135781-COHORTS           PHILIPPINES                                   0              1      162   2489
ki1135781-COHORTS           PHILIPPINES                                   1              0       99   2489
ki1135781-COHORTS           PHILIPPINES                                   1              1       26   2489
ki1148112-iLiNS-DOSE        MALAWI                                        0              0      788    868
ki1148112-iLiNS-DOSE        MALAWI                                        0              1       28    868
ki1148112-iLiNS-DOSE        MALAWI                                        1              0       47    868
ki1148112-iLiNS-DOSE        MALAWI                                        1              1        5    868
ki1148112-iLiNS-DYAD-M      MALAWI                                        0              0      961   1004
ki1148112-iLiNS-DYAD-M      MALAWI                                        0              1       24   1004
ki1148112-iLiNS-DYAD-M      MALAWI                                        1              0       18   1004
ki1148112-iLiNS-DYAD-M      MALAWI                                        1              1        1   1004
ki1148112-LCNI-5            MALAWI                                        0              0      213    235
ki1148112-LCNI-5            MALAWI                                        0              1        6    235
ki1148112-LCNI-5            MALAWI                                        1              0       16    235
ki1148112-LCNI-5            MALAWI                                        1              1        0    235
kiGH5241-JiVitA-4           BANGLADESH                                    0              0     3785   4420
kiGH5241-JiVitA-4           BANGLADESH                                    0              1      342   4420
kiGH5241-JiVitA-4           BANGLADESH                                    1              0      215   4420
kiGH5241-JiVitA-4           BANGLADESH                                    1              1       78   4420


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
* studyid: ki1033518-iLiNS-DYAD-G, country: GHANA
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1114097-CMIN, country: BRAZIL
* studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU
* studyid: ki1119695-PROBIT, country: BELARUS
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




# Results Detail

## Results Plots
![](/tmp/528531a9-b83f-419a-8db6-610408842b25/114a468c-6f21-4035-baf3-f5aa63f0c764/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/528531a9-b83f-419a-8db6-610408842b25/114a468c-6f21-4035-baf3-f5aa63f0c764/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/528531a9-b83f-419a-8db6-610408842b25/114a468c-6f21-4035-baf3-f5aa63f0c764/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/528531a9-b83f-419a-8db6-610408842b25/114a468c-6f21-4035-baf3-f5aa63f0c764/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0437956   0.0195317   0.0680595
ki1000108-CMC-V-BCS-2002   INDIA         1                    NA                0.1111111   0.0460941   0.1761281
ki1000108-IRC              INDIA         0                    NA                0.0370370   0.0172558   0.0568183
ki1000108-IRC              INDIA         1                    NA                0.2222222   0.1112001   0.3332444
ki1000109-EE               PAKISTAN      0                    NA                0.1818182   0.1280184   0.2356179
ki1000109-EE               PAKISTAN      1                    NA                0.2565789   0.1870484   0.3261095
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0806159   0.0701338   0.0910981
ki1000304b-SAS-CompFeed    INDIA         1                    NA                0.2649007   0.2205470   0.3092543
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.1696113   0.1258192   0.2134035
ki1000304b-SAS-FoodSuppl   INDIA         1                    NA                0.3000000   0.1577668   0.4422332
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.1037736   0.0747140   0.1328331
ki1017093-NIH-Birth        BANGLADESH    1                    NA                0.1891892   0.0628533   0.3155251
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.0403361   0.0245149   0.0561573
ki1017093c-NIH-Crypto      BANGLADESH    1                    NA                0.1282051   0.0231981   0.2332122
ki1101329-Keneba           GAMBIA        0                    NA                0.0451613   0.0348205   0.0555021
ki1101329-Keneba           GAMBIA        1                    NA                0.1365854   0.0895628   0.1836080
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0889749   0.0644110   0.1135387
ki1113344-GMS-Nepal        NEPAL         1                    NA                0.3333333   0.1723503   0.4943163
ki1114097-CMIN             BANGLADESH    0                    NA                0.0879121   0.0466859   0.1291383
ki1114097-CMIN             BANGLADESH    1                    NA                0.1818182   0.0796705   0.2839659
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0487475   0.0377621   0.0597328
ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                0.0994475   0.0558370   0.1430580
ki1135781-COHORTS          GUATEMALA     0                    NA                0.0434109   0.0276734   0.0591483
ki1135781-COHORTS          GUATEMALA     1                    NA                0.1044776   0.0311841   0.1777712
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0685279   0.0583413   0.0787145
ki1135781-COHORTS          PHILIPPINES   1                    NA                0.2080000   0.1368337   0.2791663
ki1148112-iLiNS-DOSE       MALAWI        0                    NA                0.0343137   0.0218167   0.0468107
ki1148112-iLiNS-DOSE       MALAWI        1                    NA                0.0961538   0.0159810   0.1763267
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0828689   0.0729176   0.0928202
kiGH5241-JiVitA-4          BANGLADESH    1                    NA                0.2662116   0.1990458   0.3333774


### Parameter: E(Y)


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.0604396   0.0359254   0.0849538
ki1000108-IRC              INDIA         NA                   NA                0.0617284   0.0382610   0.0851958
ki1000109-EE               PAKISTAN      NA                   NA                0.2142857   0.1712366   0.2573348
ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.1027888   0.0905676   0.1150101
ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.1857585   0.1432798   0.2282372
ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.1106291   0.0819645   0.1392936
ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.0457413   0.0294659   0.0620168
ki1101329-Keneba           GAMBIA        NA                   NA                0.0558405   0.0450949   0.0665861
ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1036364   0.0781411   0.1291317
ki1114097-CMIN             BANGLADESH    NA                   NA                0.1097046   0.0698323   0.1495770
ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0542823   0.0433730   0.0651916
ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0491573   0.0332659   0.0650487
ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0755323   0.0651490   0.0859156
ki1148112-iLiNS-DOSE       MALAWI        NA                   NA                0.0380184   0.0252887   0.0507482
kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0950226   0.0844790   0.1055662


### Parameter: RR


studyid                    country       intervention_level   baseline_level    estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ---------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         0                    0                 1.000000   1.0000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA         1                    0                 2.537037   1.1333470    5.679246
ki1000108-IRC              INDIA         0                    0                 1.000000   1.0000000    1.000000
ki1000108-IRC              INDIA         1                    0                 6.000000   2.8875852   12.467165
ki1000109-EE               PAKISTAN      0                    0                 1.000000   1.0000000    1.000000
ki1000109-EE               PAKISTAN      1                    0                 1.411184   0.9447746    2.107848
ki1000304b-SAS-CompFeed    INDIA         0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed    INDIA         1                    0                 3.285959   2.6431940    4.085029
ki1000304b-SAS-FoodSuppl   INDIA         0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA         1                    0                 1.768750   1.0308851    3.034748
ki1017093-NIH-Birth        BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
ki1017093-NIH-Birth        BANGLADESH    1                    0                 1.823096   0.8837535    3.760866
ki1017093c-NIH-Crypto      BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH    1                    0                 3.178419   1.2817866    7.881457
ki1101329-Keneba           GAMBIA        0                    0                 1.000000   1.0000000    1.000000
ki1101329-Keneba           GAMBIA        1                    0                 3.024390   2.0001949    4.573022
ki1113344-GMS-Nepal        NEPAL         0                    0                 1.000000   1.0000000    1.000000
ki1113344-GMS-Nepal        NEPAL         1                    0                 3.746377   2.1479194    6.534388
ki1114097-CMIN             BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
ki1114097-CMIN             BANGLADESH    1                    0                 2.068182   0.9948736    4.299417
ki1126311-ZVITAMBO         ZIMBABWE      0                    0                 1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE      1                    0                 2.040055   1.2459959    3.340160
ki1135781-COHORTS          GUATEMALA     0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          GUATEMALA     1                    0                 2.406716   1.0926494    5.301137
ki1135781-COHORTS          PHILIPPINES   0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          PHILIPPINES   1                    0                 3.035259   2.0901896    4.407638
ki1148112-iLiNS-DOSE       MALAWI        0                    0                 1.000000   1.0000000    1.000000
ki1148112-iLiNS-DOSE       MALAWI        1                    0                 2.802198   1.1281021    6.960640
kiGH5241-JiVitA-4          BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH    1                    0                 3.212442   2.4293693    4.247928


### Parameter: PAR


studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0166439   -0.0007728   0.0340607
ki1000108-IRC              INDIA         0                    NA                0.0246914    0.0084505   0.0409322
ki1000109-EE               PAKISTAN      0                    NA                0.0324675   -0.0059098   0.0708448
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0221729    0.0148986   0.0294472
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.0161472   -0.0028705   0.0351649
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0068555   -0.0037630   0.0174740
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.0054052   -0.0013310   0.0121414
ki1101329-Keneba           GAMBIA        0                    NA                0.0106792    0.0048898   0.0164685
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0146615    0.0037513   0.0255717
ki1114097-CMIN             BANGLADESH    0                    NA                0.0217926   -0.0042660   0.0478511
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0055348    0.0005666   0.0105031
ki1135781-COHORTS          GUATEMALA     0                    NA                0.0057465   -0.0014285   0.0129214
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0070044    0.0032007   0.0108081
ki1148112-iLiNS-DOSE       MALAWI        0                    NA                0.0037047   -0.0012535   0.0086629
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0121537    0.0071915   0.0171159


### Parameter: PAF


studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.2753815   -0.0486385   0.4992823
ki1000108-IRC              INDIA         0                    NA                0.4000000    0.1358161   0.5834220
ki1000109-EE               PAKISTAN      0                    NA                0.1515152   -0.0461619   0.3118402
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.2157131    0.1517610   0.2748436
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.0869258   -0.0201473   0.1827607
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0619682   -0.0379509   0.1522685
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.1181686   -0.0355110   0.2490408
ki1101329-Keneba           GAMBIA        0                    NA                0.1912442    0.0875202   0.2831777
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.1414707    0.0347873   0.2363625
ki1114097-CMIN             BANGLADESH    0                    NA                0.1986475   -0.0658383   0.3975016
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.1019634    0.0079124   0.1870984
ki1135781-COHORTS          GUATEMALA     0                    NA                0.1168992   -0.0365005   0.2475961
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0927341    0.0424238   0.1404011
ki1148112-iLiNS-DOSE       MALAWI        0                    NA                0.0974450   -0.0384270   0.2155390
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.1279034    0.0774282   0.1756169
