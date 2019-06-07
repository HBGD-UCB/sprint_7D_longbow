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

**Intervention Variable:** ever_wasted06_noBW

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                         ever_wasted06_noBW   co_occurence   n_cell      n
--------------------------  -----------------------------  -------------------  -------------  -------  -----
ki0047075b-MAL-ED           BANGLADESH                                       0              0      196    220
ki0047075b-MAL-ED           BANGLADESH                                       0              1       10    220
ki0047075b-MAL-ED           BANGLADESH                                       1              0       10    220
ki0047075b-MAL-ED           BANGLADESH                                       1              1        4    220
ki0047075b-MAL-ED           BRAZIL                                           0              0      172    179
ki0047075b-MAL-ED           BRAZIL                                           0              1        1    179
ki0047075b-MAL-ED           BRAZIL                                           1              0        6    179
ki0047075b-MAL-ED           BRAZIL                                           1              1        0    179
ki0047075b-MAL-ED           INDIA                                            0              0      180    223
ki0047075b-MAL-ED           INDIA                                            0              1        8    223
ki0047075b-MAL-ED           INDIA                                            1              0       26    223
ki0047075b-MAL-ED           INDIA                                            1              1        9    223
ki0047075b-MAL-ED           NEPAL                                            0              0      209    227
ki0047075b-MAL-ED           NEPAL                                            0              1        3    227
ki0047075b-MAL-ED           NEPAL                                            1              0       14    227
ki0047075b-MAL-ED           NEPAL                                            1              1        1    227
ki0047075b-MAL-ED           PERU                                             0              0      213    222
ki0047075b-MAL-ED           PERU                                             0              1        5    222
ki0047075b-MAL-ED           PERU                                             1              0        3    222
ki0047075b-MAL-ED           PERU                                             1              1        1    222
ki0047075b-MAL-ED           SOUTH AFRICA                                     0              0      227    240
ki0047075b-MAL-ED           SOUTH AFRICA                                     0              1        2    240
ki0047075b-MAL-ED           SOUTH AFRICA                                     1              0        9    240
ki0047075b-MAL-ED           SOUTH AFRICA                                     1              1        2    240
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF                     0              0      216    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF                     0              1        1    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF                     1              0        8    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF                     1              1        0    225
ki1000107-Serrinha-VitA     BRAZIL                                           0              0       10     10
ki1000107-Serrinha-VitA     BRAZIL                                           0              1        0     10
ki1000107-Serrinha-VitA     BRAZIL                                           1              0        0     10
ki1000107-Serrinha-VitA     BRAZIL                                           1              1        0     10
ki1000108-CMC-V-BCS-2002    INDIA                                            0              0      233    346
ki1000108-CMC-V-BCS-2002    INDIA                                            0              1        6    346
ki1000108-CMC-V-BCS-2002    INDIA                                            1              0       98    346
ki1000108-CMC-V-BCS-2002    INDIA                                            1              1        9    346
ki1000108-IRC               INDIA                                            0              0      237    387
ki1000108-IRC               INDIA                                            0              1       18    387
ki1000108-IRC               INDIA                                            1              0      126    387
ki1000108-IRC               INDIA                                            1              1        6    387
ki1000109-EE                PAKISTAN                                         0              0      230    344
ki1000109-EE                PAKISTAN                                         0              1       43    344
ki1000109-EE                PAKISTAN                                         1              0       42    344
ki1000109-EE                PAKISTAN                                         1              1       29    344
ki1000109-ResPak            PAKISTAN                                         0              0        5      9
ki1000109-ResPak            PAKISTAN                                         0              1        0      9
ki1000109-ResPak            PAKISTAN                                         1              0        4      9
ki1000109-ResPak            PAKISTAN                                         1              1        0      9
ki1000110-WASH-Bangladesh   BANGLADESH                                       0              0       70     78
ki1000110-WASH-Bangladesh   BANGLADESH                                       0              1        8     78
ki1000110-WASH-Bangladesh   BANGLADESH                                       1              0        0     78
ki1000110-WASH-Bangladesh   BANGLADESH                                       1              1        0     78
ki1000111-WASH-Kenya        KENYA                                            0              0        8      8
ki1000111-WASH-Kenya        KENYA                                            0              1        0      8
ki1000111-WASH-Kenya        KENYA                                            1              0        0      8
ki1000111-WASH-Kenya        KENYA                                            1              1        0      8
ki1000304b-SAS-CompFeed     INDIA                                            0              0      996   1235
ki1000304b-SAS-CompFeed     INDIA                                            0              1       85   1235
ki1000304b-SAS-CompFeed     INDIA                                            1              0      116   1235
ki1000304b-SAS-CompFeed     INDIA                                            1              1       38   1235
ki1000304b-SAS-FoodSuppl    INDIA                                            0              0      228    271
ki1000304b-SAS-FoodSuppl    INDIA                                            0              1       43    271
ki1000304b-SAS-FoodSuppl    INDIA                                            1              0        0    271
ki1000304b-SAS-FoodSuppl    INDIA                                            1              1        0    271
ki1017093-NIH-Birth         BANGLADESH                                       0              0      369    442
ki1017093-NIH-Birth         BANGLADESH                                       0              1       33    442
ki1017093-NIH-Birth         BANGLADESH                                       1              0       28    442
ki1017093-NIH-Birth         BANGLADESH                                       1              1       12    442
ki1017093b-PROVIDE          BANGLADESH                                       0              0      489    544
ki1017093b-PROVIDE          BANGLADESH                                       0              1       27    544
ki1017093b-PROVIDE          BANGLADESH                                       1              0       21    544
ki1017093b-PROVIDE          BANGLADESH                                       1              1        7    544
ki1017093c-NIH-Crypto       BANGLADESH                                       0              0      589    629
ki1017093c-NIH-Crypto       BANGLADESH                                       0              1       24    629
ki1017093c-NIH-Crypto       BANGLADESH                                       1              0       13    629
ki1017093c-NIH-Crypto       BANGLADESH                                       1              1        3    629
ki1033518-iLiNS-DYAD-G      GHANA                                            0              0      978   1027
ki1033518-iLiNS-DYAD-G      GHANA                                            0              1       17   1027
ki1033518-iLiNS-DYAD-G      GHANA                                            1              0       27   1027
ki1033518-iLiNS-DYAD-G      GHANA                                            1              1        5   1027
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF                     0              0      879    974
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF                     0              1       18    974
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF                     1              0       74    974
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF                     1              1        3    974
ki1101329-Keneba            GAMBIA                                           0              0     1459   1742
ki1101329-Keneba            GAMBIA                                           0              1       61   1742
ki1101329-Keneba            GAMBIA                                           1              0      190   1742
ki1101329-Keneba            GAMBIA                                           1              1       32   1742
ki1112895-Burkina Faso Zn   BURKINA FASO                                     0              0        1      1
ki1112895-Burkina Faso Zn   BURKINA FASO                                     0              1        0      1
ki1112895-Burkina Faso Zn   BURKINA FASO                                     1              0        0      1
ki1112895-Burkina Faso Zn   BURKINA FASO                                     1              1        0      1
ki1113344-GMS-Nepal         NEPAL                                            0              0      407    521
ki1113344-GMS-Nepal         NEPAL                                            0              1       35    521
ki1113344-GMS-Nepal         NEPAL                                            1              0       60    521
ki1113344-GMS-Nepal         NEPAL                                            1              1       19    521
ki1114097-CMIN              BANGLADESH                                       0              0      193    236
ki1114097-CMIN              BANGLADESH                                       0              1       19    236
ki1114097-CMIN              BANGLADESH                                       1              0       17    236
ki1114097-CMIN              BANGLADESH                                       1              1        7    236
ki1114097-CMIN              BRAZIL                                           0              0      112    113
ki1114097-CMIN              BRAZIL                                           0              1        0    113
ki1114097-CMIN              BRAZIL                                           1              0        1    113
ki1114097-CMIN              BRAZIL                                           1              1        0    113
ki1114097-CMIN              GUINEA-BISSAU                                    0              0      465    488
ki1114097-CMIN              GUINEA-BISSAU                                    0              1       17    488
ki1114097-CMIN              GUINEA-BISSAU                                    1              0        6    488
ki1114097-CMIN              GUINEA-BISSAU                                    1              1        0    488
ki1114097-CMIN              PERU                                             0              0      359    370
ki1114097-CMIN              PERU                                             0              1        0    370
ki1114097-CMIN              PERU                                             1              0       11    370
ki1114097-CMIN              PERU                                             1              1        0    370
ki1114097-CONTENT           PERU                                             0              0      197    200
ki1114097-CONTENT           PERU                                             0              1        1    200
ki1114097-CONTENT           PERU                                             1              0        2    200
ki1114097-CONTENT           PERU                                             1              1        0    200
ki1119695-PROBIT            BELARUS                                          0              0     1962   2125
ki1119695-PROBIT            BELARUS                                          0              1        0   2125
ki1119695-PROBIT            BELARUS                                          1              0      163   2125
ki1119695-PROBIT            BELARUS                                          1              1        0   2125
ki1126311-ZVITAMBO          ZIMBABWE                                         0              0     1498   1634
ki1126311-ZVITAMBO          ZIMBABWE                                         0              1       70   1634
ki1126311-ZVITAMBO          ZIMBABWE                                         1              0       50   1634
ki1126311-ZVITAMBO          ZIMBABWE                                         1              1       16   1634
ki1135781-COHORTS           GUATEMALA                                        0              0      657    697
ki1135781-COHORTS           GUATEMALA                                        0              1       29    697
ki1135781-COHORTS           GUATEMALA                                        1              0        7    697
ki1135781-COHORTS           GUATEMALA                                        1              1        4    697
ki1135781-COHORTS           PHILIPPINES                                      0              0     2103   2471
ki1135781-COHORTS           PHILIPPINES                                      0              1      141   2471
ki1135781-COHORTS           PHILIPPINES                                      1              0      184   2471
ki1135781-COHORTS           PHILIPPINES                                      1              1       43   2471
ki1148112-iLiNS-DOSE        MALAWI                                           0              0      830    863
ki1148112-iLiNS-DOSE        MALAWI                                           0              1       33    863
ki1148112-iLiNS-DOSE        MALAWI                                           1              0        0    863
ki1148112-iLiNS-DOSE        MALAWI                                           1              1        0    863
ki1148112-iLiNS-DYAD-M      MALAWI                                           0              0      949    974
ki1148112-iLiNS-DYAD-M      MALAWI                                           0              1       24    974
ki1148112-iLiNS-DYAD-M      MALAWI                                           1              0        0    974
ki1148112-iLiNS-DYAD-M      MALAWI                                           1              1        1    974
ki1148112-LCNI-5            MALAWI                                           0              0      226    232
ki1148112-LCNI-5            MALAWI                                           0              1        6    232
ki1148112-LCNI-5            MALAWI                                           1              0        0    232
ki1148112-LCNI-5            MALAWI                                           1              1        0    232
kiGH5241-JiVitA-4           BANGLADESH                                       0              0     3849   4307
kiGH5241-JiVitA-4           BANGLADESH                                       0              1      350   4307
kiGH5241-JiVitA-4           BANGLADESH                                       1              0       80   4307
kiGH5241-JiVitA-4           BANGLADESH                                       1              1       28   4307


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
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* studyid: ki1000111-WASH-Kenya, country: KENYA
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/a96cf868-75a8-4f7f-a1c4-649a926af8bc/ff556b75-ea17-4290-8885-3b3bd321455b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a96cf868-75a8-4f7f-a1c4-649a926af8bc/ff556b75-ea17-4290-8885-3b3bd321455b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a96cf868-75a8-4f7f-a1c4-649a926af8bc/ff556b75-ea17-4290-8885-3b3bd321455b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a96cf868-75a8-4f7f-a1c4-649a926af8bc/ff556b75-ea17-4290-8885-3b3bd321455b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA         0                    NA                0.0425532   0.0136352   0.0714712
ki0047075b-MAL-ED          INDIA         1                    NA                0.2571429   0.1120220   0.4022637
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0251046   0.0052421   0.0449671
ki1000108-CMC-V-BCS-2002   INDIA         1                    NA                0.0841121   0.0314456   0.1367787
ki1000108-IRC              INDIA         0                    NA                0.0705882   0.0391100   0.1020664
ki1000108-IRC              INDIA         1                    NA                0.0454545   0.0098742   0.0810349
ki1000109-EE               PAKISTAN      0                    NA                0.1575092   0.1142344   0.2007839
ki1000109-EE               PAKISTAN      1                    NA                0.4084507   0.2939478   0.5229536
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0786309   0.0655885   0.0916733
ki1000304b-SAS-CompFeed    INDIA         1                    NA                0.2467532   0.2115870   0.2819195
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0820896   0.0552255   0.1089536
ki1017093-NIH-Birth        BANGLADESH    1                    NA                0.3000000   0.1578262   0.4421738
ki1017093b-PROVIDE         BANGLADESH    0                    NA                0.0523256   0.0330942   0.0715569
ki1017093b-PROVIDE         BANGLADESH    1                    NA                0.2500000   0.0894652   0.4105348
ki1033518-iLiNS-DYAD-G     GHANA         0                    NA                0.0170854   0.0090294   0.0251414
ki1033518-iLiNS-DYAD-G     GHANA         1                    NA                0.1562500   0.0303860   0.2821140
ki1101329-Keneba           GAMBIA        0                    NA                0.0401316   0.0302620   0.0500012
ki1101329-Keneba           GAMBIA        1                    NA                0.1441441   0.0979279   0.1903604
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0791855   0.0539877   0.1043833
ki1113344-GMS-Nepal        NEPAL         1                    NA                0.2405063   0.1461704   0.3348422
ki1114097-CMIN             BANGLADESH    0                    NA                0.0896226   0.0510906   0.1281547
ki1114097-CMIN             BANGLADESH    1                    NA                0.2916667   0.1094338   0.4738996
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0446429   0.0344178   0.0548679
ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                0.2424242   0.1390029   0.3458456
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0628342   0.0527920   0.0728765
ki1135781-COHORTS          PHILIPPINES   1                    NA                0.1894273   0.1384426   0.2404121
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0833532   0.0734857   0.0932207
kiGH5241-JiVitA-4          BANGLADESH    1                    NA                0.2592593   0.1753360   0.3431826


### Parameter: E(Y)


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA         NA                   NA                0.0762332   0.0413252   0.1111412
ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.0433526   0.0218633   0.0648419
ki1000108-IRC              INDIA         NA                   NA                0.0620155   0.0379551   0.0860759
ki1000109-EE               PAKISTAN      NA                   NA                0.2093023   0.1662503   0.2523543
ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.0995951   0.0890249   0.1101654
ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.1018100   0.0735866   0.1300333
ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.0625000   0.0421402   0.0828598
ki1033518-iLiNS-DYAD-G     GHANA         NA                   NA                0.0214216   0.0125623   0.0302809
ki1101329-Keneba           GAMBIA        NA                   NA                0.0533869   0.0428272   0.0639466
ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1036468   0.0774491   0.1298446
ki1114097-CMIN             BANGLADESH    NA                   NA                0.1101695   0.0701383   0.1502007
ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0526316   0.0418014   0.0634618
ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0744638   0.0641107   0.0848168
kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0877641   0.0778697   0.0976585


### Parameter: RR


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA         0                    0                 1.0000000   1.0000000    1.000000
ki0047075b-MAL-ED          INDIA         1                    0                 6.0428571   2.4980717   14.617724
ki1000108-CMC-V-BCS-2002   INDIA         0                    0                 1.0000000   1.0000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA         1                    0                 3.3504673   1.2215497    9.189664
ki1000108-IRC              INDIA         0                    0                 1.0000000   1.0000000    1.000000
ki1000108-IRC              INDIA         1                    0                 0.6439394   0.2615755    1.585233
ki1000109-EE               PAKISTAN      0                    0                 1.0000000   1.0000000    1.000000
ki1000109-EE               PAKISTAN      1                    0                 2.5931870   1.7513163    3.839751
ki1000304b-SAS-CompFeed    INDIA         0                    0                 1.0000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed    INDIA         1                    0                 3.1381207   2.4365112    4.041763
ki1017093-NIH-Birth        BANGLADESH    0                    0                 1.0000000   1.0000000    1.000000
ki1017093-NIH-Birth        BANGLADESH    1                    0                 3.6545455   2.0545330    6.500603
ki1017093b-PROVIDE         BANGLADESH    0                    0                 1.0000000   1.0000000    1.000000
ki1017093b-PROVIDE         BANGLADESH    1                    0                 4.7777778   2.2798173   10.012715
ki1033518-iLiNS-DYAD-G     GHANA         0                    0                 1.0000000   1.0000000    1.000000
ki1033518-iLiNS-DYAD-G     GHANA         1                    0                 9.1452206   3.5960983   23.257167
ki1101329-Keneba           GAMBIA        0                    0                 1.0000000   1.0000000    1.000000
ki1101329-Keneba           GAMBIA        1                    0                 3.5917885   2.3978379    5.380241
ki1113344-GMS-Nepal        NEPAL         0                    0                 1.0000000   1.0000000    1.000000
ki1113344-GMS-Nepal        NEPAL         1                    0                 3.0372514   1.8328429    5.033108
ki1114097-CMIN             BANGLADESH    0                    0                 1.0000000   1.0000000    1.000000
ki1114097-CMIN             BANGLADESH    1                    0                 3.2543860   1.5243561    6.947870
ki1126311-ZVITAMBO         ZIMBABWE      0                    0                 1.0000000   1.0000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE      1                    0                 5.4303029   3.3460664    8.812793
ki1135781-COHORTS          PHILIPPINES   0                    0                 1.0000000   1.0000000    1.000000
ki1135781-COHORTS          PHILIPPINES   1                    0                 3.0147155   2.2044517    4.122798
kiGH5241-JiVitA-4          BANGLADESH    0                    0                 1.0000000   1.0000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH    1                    0                 3.1103704   2.2089261    4.379687


### Parameter: PAR


studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
ki0047075b-MAL-ED          INDIA         0                    NA                 0.0336800    0.0082868   0.0590732
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                 0.0182480    0.0006049   0.0358911
ki1000108-IRC              INDIA         0                    NA                -0.0085727   -0.0248199   0.0076745
ki1000109-EE               PAKISTAN      0                    NA                 0.0517932    0.0243376   0.0792487
ki1000304b-SAS-CompFeed    INDIA         0                    NA                 0.0209642    0.0120623   0.0298661
ki1017093-NIH-Birth        BANGLADESH    0                    NA                 0.0197204    0.0053851   0.0340557
ki1017093b-PROVIDE         BANGLADESH    0                    NA                 0.0101744    0.0010777   0.0192711
ki1033518-iLiNS-DYAD-G     GHANA         0                    NA                 0.0043362    0.0001371   0.0085353
ki1101329-Keneba           GAMBIA        0                    NA                 0.0132553    0.0070163   0.0194944
ki1113344-GMS-Nepal        NEPAL         0                    NA                 0.0244613    0.0088427   0.0400800
ki1114097-CMIN             BANGLADESH    0                    NA                 0.0205469    0.0000589   0.0410348
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                 0.0079887    0.0033857   0.0125917
ki1135781-COHORTS          PHILIPPINES   0                    NA                 0.0116296    0.0066428   0.0166163
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                 0.0044109    0.0022497   0.0065722


### Parameter: PAF


studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
ki0047075b-MAL-ED          INDIA         0                    NA                 0.4418023    0.0918735   0.6568928
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                 0.4209205   -0.0647081   0.6850470
ki1000108-IRC              INDIA         0                    NA                -0.1382353   -0.4269134   0.0920405
ki1000109-EE               PAKISTAN      0                    NA                 0.2474562    0.1113637   0.3627065
ki1000304b-SAS-CompFeed    INDIA         0                    NA                 0.2104946    0.1155062   0.2952820
ki1017093-NIH-Birth        BANGLADESH    0                    NA                 0.1936982    0.0500755   0.3156060
ki1017093b-PROVIDE         BANGLADESH    0                    NA                 0.1627907    0.0143024   0.2889103
ki1033518-iLiNS-DYAD-G     GHANA         0                    NA                 0.2024212    0.0030774   0.3619044
ki1101329-Keneba           GAMBIA        0                    NA                 0.2482881    0.1332920   0.3480263
ki1113344-GMS-Nepal        NEPAL         0                    NA                 0.2360064    0.0815958   0.3644560
ki1114097-CMIN             BANGLADESH    0                    NA                 0.1865022   -0.0097774   0.3446291
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                 0.1517857    0.0654153   0.2301741
ki1135781-COHORTS          PHILIPPINES   0                    NA                 0.1561773    0.0898449   0.2176755
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                 0.0502589    0.0253500   0.0745312
