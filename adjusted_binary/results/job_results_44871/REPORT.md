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

**Intervention Variable:** ever_co06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                         ever_co06   co_occurence   n_cell      n
--------------------------  -----------------------------  ----------  -------------  -------  -----
ki0047075b-MAL-ED           BANGLADESH                              0              0      202    221
ki0047075b-MAL-ED           BANGLADESH                              0              1       12    221
ki0047075b-MAL-ED           BANGLADESH                              1              0        5    221
ki0047075b-MAL-ED           BANGLADESH                              1              1        2    221
ki0047075b-MAL-ED           BRAZIL                                  0              0      179    180
ki0047075b-MAL-ED           BRAZIL                                  0              1        1    180
ki0047075b-MAL-ED           BRAZIL                                  1              0        0    180
ki0047075b-MAL-ED           BRAZIL                                  1              1        0    180
ki0047075b-MAL-ED           INDIA                                   0              0      198    228
ki0047075b-MAL-ED           INDIA                                   0              1       13    228
ki0047075b-MAL-ED           INDIA                                   1              0       13    228
ki0047075b-MAL-ED           INDIA                                   1              1        4    228
ki0047075b-MAL-ED           NEPAL                                   0              0      220    229
ki0047075b-MAL-ED           NEPAL                                   0              1        3    229
ki0047075b-MAL-ED           NEPAL                                   1              0        5    229
ki0047075b-MAL-ED           NEPAL                                   1              1        1    229
ki0047075b-MAL-ED           PERU                                    0              0      216    222
ki0047075b-MAL-ED           PERU                                    0              1        5    222
ki0047075b-MAL-ED           PERU                                    1              0        0    222
ki0047075b-MAL-ED           PERU                                    1              1        1    222
ki0047075b-MAL-ED           SOUTH AFRICA                            0              0      233    241
ki0047075b-MAL-ED           SOUTH AFRICA                            0              1        4    241
ki0047075b-MAL-ED           SOUTH AFRICA                            1              0        4    241
ki0047075b-MAL-ED           SOUTH AFRICA                            1              1        0    241
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF            0              0      220    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF            0              1        1    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF            1              0        4    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF            1              1        0    225
ki1000107-Serrinha-VitA     BRAZIL                                  0              0       10     10
ki1000107-Serrinha-VitA     BRAZIL                                  0              1        0     10
ki1000107-Serrinha-VitA     BRAZIL                                  1              0        0     10
ki1000107-Serrinha-VitA     BRAZIL                                  1              1        0     10
ki1000108-CMC-V-BCS-2002    INDIA                                   0              0      316    364
ki1000108-CMC-V-BCS-2002    INDIA                                   0              1       16    364
ki1000108-CMC-V-BCS-2002    INDIA                                   1              0       26    364
ki1000108-CMC-V-BCS-2002    INDIA                                   1              1        6    364
ki1000108-IRC               INDIA                                   0              0      363    405
ki1000108-IRC               INDIA                                   0              1       20    405
ki1000108-IRC               INDIA                                   1              0       17    405
ki1000108-IRC               INDIA                                   1              1        5    405
ki1000109-EE                PAKISTAN                                0              0      249    350
ki1000109-EE                PAKISTAN                                0              1       51    350
ki1000109-EE                PAKISTAN                                1              0       26    350
ki1000109-EE                PAKISTAN                                1              1       24    350
ki1000109-ResPak            PAKISTAN                                0              0        7      9
ki1000109-ResPak            PAKISTAN                                0              1        0      9
ki1000109-ResPak            PAKISTAN                                1              0        2      9
ki1000109-ResPak            PAKISTAN                                1              1        0      9
ki1000110-WASH-Bangladesh   BANGLADESH                              0              0       71     81
ki1000110-WASH-Bangladesh   BANGLADESH                              0              1       10     81
ki1000110-WASH-Bangladesh   BANGLADESH                              1              0        0     81
ki1000110-WASH-Bangladesh   BANGLADESH                              1              1        0     81
ki1000111-WASH-Kenya        KENYA                                   0              0        9      9
ki1000111-WASH-Kenya        KENYA                                   0              1        0      9
ki1000111-WASH-Kenya        KENYA                                   1              0        0      9
ki1000111-WASH-Kenya        KENYA                                   1              1        0      9
ki1000304b-SAS-CompFeed     INDIA                                   0              0     1069   1255
ki1000304b-SAS-CompFeed     INDIA                                   0              1      101   1255
ki1000304b-SAS-CompFeed     INDIA                                   1              0       57   1255
ki1000304b-SAS-CompFeed     INDIA                                   1              1       28   1255
ki1000304b-SAS-FoodSuppl    INDIA                                   0              0      246    321
ki1000304b-SAS-FoodSuppl    INDIA                                   0              1       54    321
ki1000304b-SAS-FoodSuppl    INDIA                                   1              0       15    321
ki1000304b-SAS-FoodSuppl    INDIA                                   1              1        6    321
ki1017093-NIH-Birth         BANGLADESH                              0              0      387    461
ki1017093-NIH-Birth         BANGLADESH                              0              1       38    461
ki1017093-NIH-Birth         BANGLADESH                              1              0       23    461
ki1017093-NIH-Birth         BANGLADESH                              1              1       13    461
ki1017093b-PROVIDE          BANGLADESH                              0              0      496    552
ki1017093b-PROVIDE          BANGLADESH                              0              1       31    552
ki1017093b-PROVIDE          BANGLADESH                              1              0       20    552
ki1017093b-PROVIDE          BANGLADESH                              1              1        5    552
ki1017093c-NIH-Crypto       BANGLADESH                              0              0      594    634
ki1017093c-NIH-Crypto       BANGLADESH                              0              1       24    634
ki1017093c-NIH-Crypto       BANGLADESH                              1              0       11    634
ki1017093c-NIH-Crypto       BANGLADESH                              1              1        5    634
ki1033518-iLiNS-DYAD-G      GHANA                                   0              0     1000   1032
ki1033518-iLiNS-DYAD-G      GHANA                                   0              1       20   1032
ki1033518-iLiNS-DYAD-G      GHANA                                   1              0       10   1032
ki1033518-iLiNS-DYAD-G      GHANA                                   1              1        2   1032
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF            0              0      956    980
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF            0              1       18    980
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF            1              0        3    980
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF            1              1        3    980
ki1101329-Keneba            GAMBIA                                  0              0     1632   1758
ki1101329-Keneba            GAMBIA                                  0              1       81   1758
ki1101329-Keneba            GAMBIA                                  1              0       28   1758
ki1101329-Keneba            GAMBIA                                  1              1       17   1758
ki1112895-Burkina Faso Zn   BURKINA FASO                            0              0        1      1
ki1112895-Burkina Faso Zn   BURKINA FASO                            0              1        0      1
ki1112895-Burkina Faso Zn   BURKINA FASO                            1              0        0      1
ki1112895-Burkina Faso Zn   BURKINA FASO                            1              1        0      1
ki1113344-GMS-Nepal         NEPAL                                   0              0      482    550
ki1113344-GMS-Nepal         NEPAL                                   0              1       49    550
ki1113344-GMS-Nepal         NEPAL                                   1              0       11    550
ki1113344-GMS-Nepal         NEPAL                                   1              1        8    550
ki1114097-CMIN              BANGLADESH                              0              0      204    237
ki1114097-CMIN              BANGLADESH                              0              1       23    237
ki1114097-CMIN              BANGLADESH                              1              0        7    237
ki1114097-CMIN              BANGLADESH                              1              1        3    237
ki1114097-CMIN              BRAZIL                                  0              0      115    115
ki1114097-CMIN              BRAZIL                                  0              1        0    115
ki1114097-CMIN              BRAZIL                                  1              0        0    115
ki1114097-CMIN              BRAZIL                                  1              1        0    115
ki1114097-CMIN              GUINEA-BISSAU                           0              0      472    491
ki1114097-CMIN              GUINEA-BISSAU                           0              1       17    491
ki1114097-CMIN              GUINEA-BISSAU                           1              0        2    491
ki1114097-CMIN              GUINEA-BISSAU                           1              1        0    491
ki1114097-CMIN              PERU                                    0              0      370    374
ki1114097-CMIN              PERU                                    0              1        0    374
ki1114097-CMIN              PERU                                    1              0        4    374
ki1114097-CMIN              PERU                                    1              1        0    374
ki1114097-CONTENT           PERU                                    0              0      199    200
ki1114097-CONTENT           PERU                                    0              1        1    200
ki1114097-CONTENT           PERU                                    1              0        0    200
ki1114097-CONTENT           PERU                                    1              1        0    200
ki1119695-PROBIT            BELARUS                                 0              0     2145   2146
ki1119695-PROBIT            BELARUS                                 0              1        0   2146
ki1119695-PROBIT            BELARUS                                 1              0        1   2146
ki1119695-PROBIT            BELARUS                                 1              1        0   2146
ki1126311-ZVITAMBO          ZIMBABWE                                0              0     1551   1658
ki1126311-ZVITAMBO          ZIMBABWE                                0              1       84   1658
ki1126311-ZVITAMBO          ZIMBABWE                                1              0       18   1658
ki1126311-ZVITAMBO          ZIMBABWE                                1              1        5   1658
ki1135781-COHORTS           GUATEMALA                               0              0      668    712
ki1135781-COHORTS           GUATEMALA                               0              1       32    712
ki1135781-COHORTS           GUATEMALA                               1              0        9    712
ki1135781-COHORTS           GUATEMALA                               1              1        3    712
ki1135781-COHORTS           PHILIPPINES                             0              0     2274   2489
ki1135781-COHORTS           PHILIPPINES                             0              1      174   2489
ki1135781-COHORTS           PHILIPPINES                             1              0       27   2489
ki1135781-COHORTS           PHILIPPINES                             1              1       14   2489
ki1148112-iLiNS-DOSE        MALAWI                                  0              0      830    867
ki1148112-iLiNS-DOSE        MALAWI                                  0              1       33    867
ki1148112-iLiNS-DOSE        MALAWI                                  1              0        4    867
ki1148112-iLiNS-DOSE        MALAWI                                  1              1        0    867
ki1148112-iLiNS-DYAD-M      MALAWI                                  0              0      978   1006
ki1148112-iLiNS-DYAD-M      MALAWI                                  0              1       24   1006
ki1148112-iLiNS-DYAD-M      MALAWI                                  1              0        3   1006
ki1148112-iLiNS-DYAD-M      MALAWI                                  1              1        1   1006
ki1148112-LCNI-5            MALAWI                                  0              0      229    235
ki1148112-LCNI-5            MALAWI                                  0              1        6    235
ki1148112-LCNI-5            MALAWI                                  1              0        0    235
ki1148112-LCNI-5            MALAWI                                  1              1        0    235
kiGH5241-JiVitA-4           BANGLADESH                              0              0     3927   4419
kiGH5241-JiVitA-4           BANGLADESH                              0              1      380   4419
kiGH5241-JiVitA-4           BANGLADESH                              1              0       72   4419
kiGH5241-JiVitA-4           BANGLADESH                              1              1       40   4419


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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/acc97b73-45b3-467c-b300-a314639a958e/65e548d0-9538-4679-a9c2-354c947d3654/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/acc97b73-45b3-467c-b300-a314639a958e/65e548d0-9538-4679-a9c2-354c947d3654/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/acc97b73-45b3-467c-b300-a314639a958e/65e548d0-9538-4679-a9c2-354c947d3654/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/acc97b73-45b3-467c-b300-a314639a958e/65e548d0-9538-4679-a9c2-354c947d3654/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0481928   0.0251231   0.0712625
ki1000108-CMC-V-BCS-2002   INDIA         1                    NA                0.1875000   0.0520800   0.3229200
ki1000108-IRC              INDIA         0                    NA                0.0522193   0.0299116   0.0745270
ki1000108-IRC              INDIA         1                    NA                0.2272727   0.0519411   0.4026044
ki1000109-EE               PAKISTAN      0                    NA                0.1700000   0.1274331   0.2125669
ki1000109-EE               PAKISTAN      1                    NA                0.4800000   0.3413223   0.6186777
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0863248   0.0765792   0.0960704
ki1000304b-SAS-CompFeed    INDIA         1                    NA                0.3294118   0.2396589   0.4191647
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.1800000   0.1364580   0.2235420
ki1000304b-SAS-FoodSuppl   INDIA         1                    NA                0.2857143   0.0921978   0.4792308
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0894118   0.0622547   0.1165689
ki1017093-NIH-Birth        BANGLADESH    1                    NA                0.3611111   0.2040381   0.5181841
ki1017093b-PROVIDE         BANGLADESH    0                    NA                0.0588235   0.0387165   0.0789305
ki1017093b-PROVIDE         BANGLADESH    1                    NA                0.2000000   0.0430607   0.3569393
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.0388350   0.0235907   0.0540792
ki1017093c-NIH-Crypto      BANGLADESH    1                    NA                0.3125000   0.0852038   0.5397962
ki1101329-Keneba           GAMBIA        0                    NA                0.0472855   0.0372315   0.0573394
ki1101329-Keneba           GAMBIA        1                    NA                0.3777778   0.2360822   0.5194734
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0922787   0.0676397   0.1169177
ki1113344-GMS-Nepal        NEPAL         1                    NA                0.4210526   0.1988474   0.6432578
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0513761   0.0405499   0.0622024
ki1126311-ZVITAMBO         ZIMBABWE      1                    NA                0.2173913   0.1238266   0.3109560
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0710784   0.0608084   0.0813484
ki1135781-COHORTS          PHILIPPINES   1                    NA                0.3414634   0.2458047   0.4371221
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0882285   0.0781618   0.0982952
kiGH5241-JiVitA-4          BANGLADESH    1                    NA                0.3571429   0.2335073   0.4807785


### Parameter: E(Y)


studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.0604396   0.0359254   0.0849538
ki1000108-IRC              INDIA         NA                   NA                0.0617284   0.0382610   0.0851958
ki1000109-EE               PAKISTAN      NA                   NA                0.2142857   0.1712366   0.2573348
ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.1027888   0.0905676   0.1150101
ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.1869159   0.1442025   0.2296293
ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.1106291   0.0819645   0.1392936
ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.0652174   0.0446012   0.0858336
ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.0457413   0.0294659   0.0620168
ki1101329-Keneba           GAMBIA        NA                   NA                0.0557452   0.0450174   0.0664730
ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1036364   0.0781411   0.1291317
ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0536791   0.0428272   0.0645311
ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0755323   0.0651490   0.0859156
kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0950441   0.0845063   0.1055819


### Parameter: RR


studyid                    country       intervention_level   baseline_level    estimate    ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ---------  ----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         0                    0                 1.000000   1.0000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA         1                    0                 3.890625   1.6357376    9.253907
ki1000108-IRC              INDIA         0                    0                 1.000000   1.0000000    1.000000
ki1000108-IRC              INDIA         1                    0                 4.352273   1.8019284   10.512226
ki1000109-EE               PAKISTAN      0                    0                 1.000000   1.0000000    1.000000
ki1000109-EE               PAKISTAN      1                    0                 2.823529   1.9264321    4.138385
ki1000304b-SAS-CompFeed    INDIA         0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed    INDIA         1                    0                 3.815958   2.7520595    5.291141
ki1000304b-SAS-FoodSuppl   INDIA         0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA         1                    0                 1.587302   0.7732342    3.258426
ki1017093-NIH-Birth        BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
ki1017093-NIH-Birth        BANGLADESH    1                    0                 4.038743   2.3759860    6.865126
ki1017093b-PROVIDE         BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
ki1017093b-PROVIDE         BANGLADESH    1                    0                 3.400000   1.4446414    8.001986
ki1017093c-NIH-Crypto      BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH    1                    0                 8.046875   3.5210925   18.389803
ki1101329-Keneba           GAMBIA        0                    0                 1.000000   1.0000000    1.000000
ki1101329-Keneba           GAMBIA        1                    0                 7.989300   5.1911350   12.295754
ki1113344-GMS-Nepal        NEPAL         0                    0                 1.000000   1.0000000    1.000000
ki1113344-GMS-Nepal        NEPAL         1                    0                 4.562836   2.5256695    8.243149
ki1126311-ZVITAMBO         ZIMBABWE      0                    0                 1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE      1                    0                 4.231366   2.6203560    6.832836
ki1135781-COHORTS          PHILIPPINES   0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          PHILIPPINES   1                    0                 4.804037   3.5051980    6.584156
kiGH5241-JiVitA-4          BANGLADESH    0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH    1                    0                 4.047932   2.8135328    5.823908


### Parameter: PAR


studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.0122468   -0.0004933   0.0249869
ki1000108-IRC              INDIA         0                    NA                0.0095091   -0.0008421   0.0198602
ki1000109-EE               PAKISTAN      0                    NA                0.0442857    0.0206429   0.0679285
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.0164641    0.0070524   0.0258757
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.0069159   -0.0063729   0.0202046
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.0212173    0.0070987   0.0353359
ki1017093b-PROVIDE         BANGLADESH    0                    NA                0.0063939   -0.0011796   0.0139673
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.0069064    0.0002556   0.0135571
ki1101329-Keneba           GAMBIA        0                    NA                0.0084597    0.0040804   0.0128390
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.0113576    0.0021449   0.0205703
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0023030   -0.0002305   0.0048365
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0044539    0.0016946   0.0072132
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0068157    0.0028865   0.0107448


### Parameter: PAF


studyid                    country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
ki1000108-CMC-V-BCS-2002   INDIA         0                    NA                0.2026287   -0.0194160   0.3763086
ki1000108-IRC              INDIA         0                    NA                0.1540470   -0.0200811   0.2984514
ki1000109-EE               PAKISTAN      0                    NA                0.2066667    0.0934773   0.3057231
ki1000304b-SAS-CompFeed    INDIA         0                    NA                0.1601736    0.0750158   0.2374914
ki1000304b-SAS-FoodSuppl   INDIA         0                    NA                0.0370000   -0.0364828   0.1052732
ki1017093-NIH-Birth        BANGLADESH    0                    NA                0.1917878    0.0628368   0.3029955
ki1017093b-PROVIDE         BANGLADESH    0                    NA                0.0980392   -0.0217253   0.2037652
ki1017093c-NIH-Crypto      BANGLADESH    0                    NA                0.1509876    0.0035173   0.2766337
ki1101329-Keneba           GAMBIA        0                    NA                0.1517567    0.0749658   0.2221728
ki1113344-GMS-Nepal        NEPAL         0                    NA                0.1095913    0.0197566   0.1911931
ki1126311-ZVITAMBO         ZIMBABWE      0                    NA                0.0429028   -0.0051581   0.0886657
ki1135781-COHORTS          PHILIPPINES   0                    NA                0.0589669    0.0222496   0.0943054
kiGH5241-JiVitA-4          BANGLADESH    0                    NA                0.0717105    0.0311953   0.1105314
