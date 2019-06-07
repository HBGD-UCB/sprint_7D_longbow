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

**Intervention Variable:** ever_stunted06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                         ever_stunted06   co_occurence   n_cell      n
--------------------------  -----------------------------  ---------------  -------------  -------  -----
ki0047075b-MAL-ED           BANGLADESH                                   0              0      144    221
ki0047075b-MAL-ED           BANGLADESH                                   0              1        6    221
ki0047075b-MAL-ED           BANGLADESH                                   1              0       63    221
ki0047075b-MAL-ED           BANGLADESH                                   1              1        8    221
ki0047075b-MAL-ED           BRAZIL                                       0              0      149    180
ki0047075b-MAL-ED           BRAZIL                                       0              1        0    180
ki0047075b-MAL-ED           BRAZIL                                       1              0       30    180
ki0047075b-MAL-ED           BRAZIL                                       1              1        1    180
ki0047075b-MAL-ED           INDIA                                        0              0      143    228
ki0047075b-MAL-ED           INDIA                                        0              1        7    228
ki0047075b-MAL-ED           INDIA                                        1              0       68    228
ki0047075b-MAL-ED           INDIA                                        1              1       10    228
ki0047075b-MAL-ED           NEPAL                                        0              0      189    229
ki0047075b-MAL-ED           NEPAL                                        0              1        1    229
ki0047075b-MAL-ED           NEPAL                                        1              0       36    229
ki0047075b-MAL-ED           NEPAL                                        1              1        3    229
ki0047075b-MAL-ED           PERU                                         0              0      119    222
ki0047075b-MAL-ED           PERU                                         0              1        0    222
ki0047075b-MAL-ED           PERU                                         1              0       97    222
ki0047075b-MAL-ED           PERU                                         1              1        6    222
ki0047075b-MAL-ED           SOUTH AFRICA                                 0              0      145    241
ki0047075b-MAL-ED           SOUTH AFRICA                                 0              1        2    241
ki0047075b-MAL-ED           SOUTH AFRICA                                 1              0       92    241
ki0047075b-MAL-ED           SOUTH AFRICA                                 1              1        2    241
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF                 0              0      137    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF                 0              1        0    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF                 1              0       87    225
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF                 1              1        1    225
ki1000107-Serrinha-VitA     BRAZIL                                       0              0        9     10
ki1000107-Serrinha-VitA     BRAZIL                                       0              1        0     10
ki1000107-Serrinha-VitA     BRAZIL                                       1              0        1     10
ki1000107-Serrinha-VitA     BRAZIL                                       1              1        0     10
ki1000108-CMC-V-BCS-2002    INDIA                                        0              0      174    364
ki1000108-CMC-V-BCS-2002    INDIA                                        0              1        8    364
ki1000108-CMC-V-BCS-2002    INDIA                                        1              0      168    364
ki1000108-CMC-V-BCS-2002    INDIA                                        1              1       14    364
ki1000108-IRC               INDIA                                        0              0      236    405
ki1000108-IRC               INDIA                                        0              1        4    405
ki1000108-IRC               INDIA                                        1              0      144    405
ki1000108-IRC               INDIA                                        1              1       21    405
ki1000109-EE                PAKISTAN                                     0              0       78    350
ki1000109-EE                PAKISTAN                                     0              1       13    350
ki1000109-EE                PAKISTAN                                     1              0      197    350
ki1000109-EE                PAKISTAN                                     1              1       62    350
ki1000109-ResPak            PAKISTAN                                     0              0        2      9
ki1000109-ResPak            PAKISTAN                                     0              1        0      9
ki1000109-ResPak            PAKISTAN                                     1              0        7      9
ki1000109-ResPak            PAKISTAN                                     1              1        0      9
ki1000110-WASH-Bangladesh   BANGLADESH                                   0              0       63     81
ki1000110-WASH-Bangladesh   BANGLADESH                                   0              1        6     81
ki1000110-WASH-Bangladesh   BANGLADESH                                   1              0        8     81
ki1000110-WASH-Bangladesh   BANGLADESH                                   1              1        4     81
ki1000111-WASH-Kenya        KENYA                                        0              0        9      9
ki1000111-WASH-Kenya        KENYA                                        0              1        0      9
ki1000111-WASH-Kenya        KENYA                                        1              0        0      9
ki1000111-WASH-Kenya        KENYA                                        1              1        0      9
ki1000304b-SAS-CompFeed     INDIA                                        0              0      715   1255
ki1000304b-SAS-CompFeed     INDIA                                        0              1       39   1255
ki1000304b-SAS-CompFeed     INDIA                                        1              0      411   1255
ki1000304b-SAS-CompFeed     INDIA                                        1              1       90   1255
ki1000304b-SAS-FoodSuppl    INDIA                                        0              0      162    323
ki1000304b-SAS-FoodSuppl    INDIA                                        0              1       31    323
ki1000304b-SAS-FoodSuppl    INDIA                                        1              0      101    323
ki1000304b-SAS-FoodSuppl    INDIA                                        1              1       29    323
ki1017093-NIH-Birth         BANGLADESH                                   0              0      274    461
ki1017093-NIH-Birth         BANGLADESH                                   0              1       26    461
ki1017093-NIH-Birth         BANGLADESH                                   1              0      136    461
ki1017093-NIH-Birth         BANGLADESH                                   1              1       25    461
ki1017093b-PROVIDE          BANGLADESH                                   0              0      391    552
ki1017093b-PROVIDE          BANGLADESH                                   0              1       20    552
ki1017093b-PROVIDE          BANGLADESH                                   1              0      125    552
ki1017093b-PROVIDE          BANGLADESH                                   1              1       16    552
ki1017093c-NIH-Crypto       BANGLADESH                                   0              0      429    634
ki1017093c-NIH-Crypto       BANGLADESH                                   0              1       10    634
ki1017093c-NIH-Crypto       BANGLADESH                                   1              0      176    634
ki1017093c-NIH-Crypto       BANGLADESH                                   1              1       19    634
ki1033518-iLiNS-DYAD-G      GHANA                                        0              0      895   1032
ki1033518-iLiNS-DYAD-G      GHANA                                        0              1        9   1032
ki1033518-iLiNS-DYAD-G      GHANA                                        1              0      115   1032
ki1033518-iLiNS-DYAD-G      GHANA                                        1              1       13   1032
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF                 0              0      768    980
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF                 0              1        5    980
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF                 1              0      191    980
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF                 1              1       16    980
ki1101329-Keneba            GAMBIA                                       0              0     1164   1755
ki1101329-Keneba            GAMBIA                                       0              1       39   1755
ki1101329-Keneba            GAMBIA                                       1              0      493   1755
ki1101329-Keneba            GAMBIA                                       1              1       59   1755
ki1112895-Burkina Faso Zn   BURKINA FASO                                 0              0        1      1
ki1112895-Burkina Faso Zn   BURKINA FASO                                 0              1        0      1
ki1112895-Burkina Faso Zn   BURKINA FASO                                 1              0        0      1
ki1112895-Burkina Faso Zn   BURKINA FASO                                 1              1        0      1
ki1113344-GMS-Nepal         NEPAL                                        0              0      368    550
ki1113344-GMS-Nepal         NEPAL                                        0              1       30    550
ki1113344-GMS-Nepal         NEPAL                                        1              0      125    550
ki1113344-GMS-Nepal         NEPAL                                        1              1       27    550
ki1114097-CMIN              BANGLADESH                                   0              0       96    237
ki1114097-CMIN              BANGLADESH                                   0              1        5    237
ki1114097-CMIN              BANGLADESH                                   1              0      115    237
ki1114097-CMIN              BANGLADESH                                   1              1       21    237
ki1114097-CMIN              BRAZIL                                       0              0      103    115
ki1114097-CMIN              BRAZIL                                       0              1        0    115
ki1114097-CMIN              BRAZIL                                       1              0       12    115
ki1114097-CMIN              BRAZIL                                       1              1        0    115
ki1114097-CMIN              GUINEA-BISSAU                                0              0      409    491
ki1114097-CMIN              GUINEA-BISSAU                                0              1       11    491
ki1114097-CMIN              GUINEA-BISSAU                                1              0       65    491
ki1114097-CMIN              GUINEA-BISSAU                                1              1        6    491
ki1114097-CMIN              PERU                                         0              0      331    374
ki1114097-CMIN              PERU                                         0              1        0    374
ki1114097-CMIN              PERU                                         1              0       43    374
ki1114097-CMIN              PERU                                         1              1        0    374
ki1114097-CONTENT           PERU                                         0              0      156    200
ki1114097-CONTENT           PERU                                         0              1        0    200
ki1114097-CONTENT           PERU                                         1              0       43    200
ki1114097-CONTENT           PERU                                         1              1        1    200
ki1119695-PROBIT            BELARUS                                      0              0     1944   2146
ki1119695-PROBIT            BELARUS                                      0              1        0   2146
ki1119695-PROBIT            BELARUS                                      1              0      202   2146
ki1119695-PROBIT            BELARUS                                      1              1        0   2146
ki1126311-ZVITAMBO          ZIMBABWE                                     0              0     1060   1658
ki1126311-ZVITAMBO          ZIMBABWE                                     0              1       40   1658
ki1126311-ZVITAMBO          ZIMBABWE                                     1              0      508   1658
ki1126311-ZVITAMBO          ZIMBABWE                                     1              1       50   1658
ki1135781-COHORTS           GUATEMALA                                    0              0      455    712
ki1135781-COHORTS           GUATEMALA                                    0              1       15    712
ki1135781-COHORTS           GUATEMALA                                    1              0      222    712
ki1135781-COHORTS           GUATEMALA                                    1              1       20    712
ki1135781-COHORTS           PHILIPPINES                                  0              0     1799   2489
ki1135781-COHORTS           PHILIPPINES                                  0              1      106   2489
ki1135781-COHORTS           PHILIPPINES                                  1              0      502   2489
ki1135781-COHORTS           PHILIPPINES                                  1              1       82   2489
ki1148112-iLiNS-DOSE        MALAWI                                       0              0      609    868
ki1148112-iLiNS-DOSE        MALAWI                                       0              1       14    868
ki1148112-iLiNS-DOSE        MALAWI                                       1              0      226    868
ki1148112-iLiNS-DOSE        MALAWI                                       1              1       19    868
ki1148112-iLiNS-DYAD-M      MALAWI                                       0              0      851   1004
ki1148112-iLiNS-DYAD-M      MALAWI                                       0              1       16   1004
ki1148112-iLiNS-DYAD-M      MALAWI                                       1              0      128   1004
ki1148112-iLiNS-DYAD-M      MALAWI                                       1              1        9   1004
ki1148112-LCNI-5            MALAWI                                       0              0      150    235
ki1148112-LCNI-5            MALAWI                                       0              1        2    235
ki1148112-LCNI-5            MALAWI                                       1              0       79    235
ki1148112-LCNI-5            MALAWI                                       1              1        4    235
kiGH5241-JiVitA-4           BANGLADESH                                   0              0     2876   4420
kiGH5241-JiVitA-4           BANGLADESH                                   0              1      160   4420
kiGH5241-JiVitA-4           BANGLADESH                                   1              0     1124   4420
kiGH5241-JiVitA-4           BANGLADESH                                   1              1      260   4420


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
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* studyid: ki1000111-WASH-Kenya, country: KENYA
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/29296d3e-cf29-4ef5-af16-b1b7b58c8f1d/ba22d5d9-3054-472e-bace-eac11d7c09c2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/29296d3e-cf29-4ef5-af16-b1b7b58c8f1d/ba22d5d9-3054-472e-bace-eac11d7c09c2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/29296d3e-cf29-4ef5-af16-b1b7b58c8f1d/ba22d5d9-3054-472e-bace-eac11d7c09c2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/29296d3e-cf29-4ef5-af16-b1b7b58c8f1d/ba22d5d9-3054-472e-bace-eac11d7c09c2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0400000   0.0085694   0.0714306
ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1126761   0.0389602   0.1863919
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0466667   0.0128382   0.0804952
ki0047075b-MAL-ED          INDIA                          1                    NA                0.1282051   0.0538493   0.2025610
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0439560   0.0141326   0.0737795
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.0769231   0.0381565   0.1156896
ki1000109-EE               PAKISTAN                       0                    NA                0.1428571   0.0708582   0.2148561
ki1000109-EE               PAKISTAN                       1                    NA                0.2393822   0.1873409   0.2914236
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0517241   0.0418760   0.0615722
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1796407   0.1488413   0.2104401
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1606218   0.1087389   0.2125046
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.2230769   0.1514022   0.2947517
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0866667   0.0547954   0.1185380
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.1552795   0.0992753   0.2112837
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0486618   0.0278417   0.0694819
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1134752   0.0610756   0.1658748
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0227790   0.0088114   0.0367467
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0974359   0.0557804   0.1390914
ki1033518-iLiNS-DYAD-G     GHANA                          0                    NA                0.0099558   0.0034808   0.0164307
ki1033518-iLiNS-DYAD-G     GHANA                          1                    NA                0.1015625   0.0492068   0.1539182
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0064683   0.0008142   0.0121224
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0772947   0.0408956   0.1136938
ki1101329-Keneba           GAMBIA                         0                    NA                0.0324190   0.0224078   0.0424301
ki1101329-Keneba           GAMBIA                         1                    NA                0.1068841   0.0811023   0.1326658
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0753769   0.0494170   0.1013368
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1776316   0.1168160   0.2384471
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0495050   0.0071109   0.0918990
ki1114097-CMIN             BANGLADESH                     1                    NA                0.1544118   0.0935539   0.2152696
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0261905   0.0109016   0.0414793
ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.0845070   0.0197428   0.1492713
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0363636   0.0252981   0.0474292
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0896057   0.0659005   0.1133110
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0319149   0.0160127   0.0478171
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0826446   0.0479293   0.1173600
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0556430   0.0453472   0.0659389
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1404110   0.1122288   0.1685932
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                0.0224719   0.0108269   0.0341169
ki1148112-iLiNS-DOSE       MALAWI                         1                    NA                0.0775510   0.0440406   0.1110615
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                0.0184544   0.0094913   0.0274176
ki1148112-iLiNS-DYAD-M     MALAWI                         1                    NA                0.0656934   0.0241875   0.1071993
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0527009   0.0441020   0.0612998
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1878613   0.1617817   0.2139408


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.0633484   0.0311604   0.0955364
ki0047075b-MAL-ED          INDIA                          NA                   NA                0.0745614   0.0403897   0.1087331
ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0604396   0.0359254   0.0849538
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
ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0346232   0.0184356   0.0508108
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0542823   0.0433730   0.0651916
ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0491573   0.0332659   0.0650487
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0755323   0.0651490   0.0859156
ki1148112-iLiNS-DOSE       MALAWI                         NA                   NA                0.0380184   0.0252887   0.0507482
ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.0249004   0.0152571   0.0345437
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0950226   0.0844790   0.1055662


### Parameter: RR


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    0                  1.000000   1.0000000    1.000000
ki0047075b-MAL-ED          BANGLADESH                     1                    0                  2.816901   1.0132564    7.831121
ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000   1.0000000    1.000000
ki0047075b-MAL-ED          INDIA                          1                    0                  2.747253   1.0857212    6.951506
ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000   1.0000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  1.750000   0.7515938    4.074674
ki1000109-EE               PAKISTAN                       0                    0                  1.000000   1.0000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                  1.675676   0.9678627    2.901123
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  3.473054   2.5222482    4.782282
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000   1.0000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  1.388834   0.8806144    2.190356
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000   1.0000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  1.791687   1.0704377    2.998905
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000   1.0000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                  2.331915   1.2425594    4.376312
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000   1.0000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  4.277436   2.0255716    9.032738
ki1033518-iLiNS-DYAD-G     GHANA                          0                    0                  1.000000   1.0000000    1.000000
ki1033518-iLiNS-DYAD-G     GHANA                          1                    0                 10.201389   4.4487581   23.392671
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000   1.0000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 11.949758   4.4273686   32.253178
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000   1.0000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  3.296962   2.2281133    4.878549
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000   1.0000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  2.356579   1.4500364    3.829879
ki1114097-CMIN             BANGLADESH                     0                    0                  1.000000   1.0000000    1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                  3.119118   1.2151260    8.006491
ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000   1.0000000    1.000000
ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  3.226633   1.2312830    8.455536
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  2.464158   1.6464626    3.687951
ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000   1.0000000    1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                  2.589532   1.3495509    4.968819
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000   1.0000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  2.523423   1.9205811    3.315489
ki1148112-iLiNS-DOSE       MALAWI                         0                    0                  1.000000   1.0000000    1.000000
ki1148112-iLiNS-DOSE       MALAWI                         1                    0                  3.451020   1.7575962    6.776040
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    0                  1.000000   1.0000000    1.000000
ki1148112-iLiNS-DYAD-M     MALAWI                         1                    0                  3.559763   1.6044382    7.898036
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  3.564668   2.8799909    4.412116


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0233484   -0.0027845   0.0494814
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0278947   -0.0005011   0.0562906
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0164835   -0.0080307   0.0409977
ki1000109-EE               PAKISTAN                       0                    NA                0.0714286    0.0055387   0.1373184
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0510647    0.0362401   0.0658893
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0251368   -0.0106321   0.0609056
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0239624    0.0012604   0.0466644
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0165556    0.0019610   0.0311502
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0229623    0.0091852   0.0367393
ki1033518-iLiNS-DYAD-G     GHANA                          0                    NA                0.0113621    0.0045642   0.0181599
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0149603    0.0069717   0.0229488
ki1101329-Keneba           GAMBIA                         0                    NA                0.0234215    0.0145733   0.0322697
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0282595    0.0095890   0.0469299
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0601997    0.0171274   0.1032720
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0084327   -0.0013596   0.0182251
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0179186    0.0090313   0.0268060
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0172424    0.0041444   0.0303404
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0198893    0.0127093   0.0270693
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                0.0155465    0.0053980   0.0256950
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                0.0064460    0.0005655   0.0123264
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0423217    0.0333628   0.0512806


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.3685714   -0.1374285   0.6494707
ki0047075b-MAL-ED          INDIA                          0                    NA                0.3741176   -0.0850804   0.6389865
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2727273   -0.2462215   0.5755765
ki1000109-EE               PAKISTAN                       0                    NA                0.3333333   -0.0499580   0.5767027
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.4967923    0.3773099   0.5933483
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1353195   -0.0784734   0.3067308
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.2166013   -0.0098714   0.3922855
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2538524    0.0106589   0.4372656
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.5020030    0.1844692   0.6959023
ki1033518-iLiNS-DYAD-G     GHANA                          0                    NA                0.5329847    0.2315926   0.7161619
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6981457    0.3537738   0.8590029
ki1101329-Keneba           GAMBIA                         0                    NA                0.4194361    0.2636685   0.5422518
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.2726792    0.0818677   0.4238352
ki1114097-CMIN             BANGLADESH                     0                    NA                0.5487433    0.0314149   0.7897628
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.2435574   -0.0670633   0.4637568
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.3301010    0.1609692   0.4651392
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.3507599    0.0561805   0.5533969
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2633216    0.1689595   0.3469692
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                0.4089207    0.1262063   0.6001633
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                0.2588697    0.0098220   0.4452774
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.4453855    0.3657596   0.5150148
