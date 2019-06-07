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

**Outcome Variable:** pers_wasted624

## Predictor Variables

**Intervention Variable:** ever_swasted06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                         ever_swasted06   pers_wasted624   n_cell       n
--------------------------  -----------------------------  ---------------  ---------------  -------  ------
ki0047075b-MAL-ED           BANGLADESH                                   0                0      210     240
ki0047075b-MAL-ED           BANGLADESH                                   0                1       14     240
ki0047075b-MAL-ED           BANGLADESH                                   1                0       12     240
ki0047075b-MAL-ED           BANGLADESH                                   1                1        4     240
ki0047075b-MAL-ED           BRAZIL                                       0                0      198     202
ki0047075b-MAL-ED           BRAZIL                                       0                1        2     202
ki0047075b-MAL-ED           BRAZIL                                       1                0        2     202
ki0047075b-MAL-ED           BRAZIL                                       1                1        0     202
ki0047075b-MAL-ED           INDIA                                        0                0      197     234
ki0047075b-MAL-ED           INDIA                                        0                1       18     234
ki0047075b-MAL-ED           INDIA                                        1                0        9     234
ki0047075b-MAL-ED           INDIA                                        1                1       10     234
ki0047075b-MAL-ED           NEPAL                                        0                0      226     234
ki0047075b-MAL-ED           NEPAL                                        0                1        1     234
ki0047075b-MAL-ED           NEPAL                                        1                0        6     234
ki0047075b-MAL-ED           NEPAL                                        1                1        1     234
ki0047075b-MAL-ED           PERU                                         0                0      261     264
ki0047075b-MAL-ED           PERU                                         0                1        2     264
ki0047075b-MAL-ED           PERU                                         1                0        1     264
ki0047075b-MAL-ED           PERU                                         1                1        0     264
ki0047075b-MAL-ED           SOUTH AFRICA                                 0                0      252     258
ki0047075b-MAL-ED           SOUTH AFRICA                                 0                1        2     258
ki0047075b-MAL-ED           SOUTH AFRICA                                 1                0        4     258
ki0047075b-MAL-ED           SOUTH AFRICA                                 1                1        0     258
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF                 0                0      241     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF                 0                1        0     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF                 1                0        3     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF                 1                1        0     244
ki1000107-Serrinha-VitA     BRAZIL                                       0                0       10      11
ki1000107-Serrinha-VitA     BRAZIL                                       0                1        1      11
ki1000107-Serrinha-VitA     BRAZIL                                       1                0        0      11
ki1000107-Serrinha-VitA     BRAZIL                                       1                1        0      11
ki1000108-CMC-V-BCS-2002    INDIA                                        0                0      282     368
ki1000108-CMC-V-BCS-2002    INDIA                                        0                1       16     368
ki1000108-CMC-V-BCS-2002    INDIA                                        1                0       58     368
ki1000108-CMC-V-BCS-2002    INDIA                                        1                1       12     368
ki1000108-IRC               INDIA                                        0                0      265     410
ki1000108-IRC               INDIA                                        0                1       19     410
ki1000108-IRC               INDIA                                        1                0       97     410
ki1000108-IRC               INDIA                                        1                1       29     410
ki1000109-EE                PAKISTAN                                     0                0      311     373
ki1000109-EE                PAKISTAN                                     0                1       35     373
ki1000109-EE                PAKISTAN                                     1                0       18     373
ki1000109-EE                PAKISTAN                                     1                1        9     373
ki1000109-ResPak            PAKISTAN                                     0                0      156     220
ki1000109-ResPak            PAKISTAN                                     0                1       27     220
ki1000109-ResPak            PAKISTAN                                     1                0       19     220
ki1000109-ResPak            PAKISTAN                                     1                1       18     220
ki1000304-VITAMIN-A         INDIA                                        0                0     1890    2300
ki1000304-VITAMIN-A         INDIA                                        0                1      344    2300
ki1000304-VITAMIN-A         INDIA                                        1                0       38    2300
ki1000304-VITAMIN-A         INDIA                                        1                1       28    2300
ki1000304b-SAS-CompFeed     INDIA                                        0                0     1084    1347
ki1000304b-SAS-CompFeed     INDIA                                        0                1      177    1347
ki1000304b-SAS-CompFeed     INDIA                                        1                0       47    1347
ki1000304b-SAS-CompFeed     INDIA                                        1                1       39    1347
ki1000304b-SAS-FoodSuppl    INDIA                                        0                0      311     389
ki1000304b-SAS-FoodSuppl    INDIA                                        0                1       61     389
ki1000304b-SAS-FoodSuppl    INDIA                                        1                0        8     389
ki1000304b-SAS-FoodSuppl    INDIA                                        1                1        9     389
ki1017093-NIH-Birth         BANGLADESH                                   0                0      420     512
ki1017093-NIH-Birth         BANGLADESH                                   0                1       44     512
ki1017093-NIH-Birth         BANGLADESH                                   1                0       34     512
ki1017093-NIH-Birth         BANGLADESH                                   1                1       14     512
ki1017093b-PROVIDE          BANGLADESH                                   0                0      551     609
ki1017093b-PROVIDE          BANGLADESH                                   0                1       33     609
ki1017093b-PROVIDE          BANGLADESH                                   1                0       18     609
ki1017093b-PROVIDE          BANGLADESH                                   1                1        7     609
ki1017093c-NIH-Crypto       BANGLADESH                                   0                0      637     722
ki1017093c-NIH-Crypto       BANGLADESH                                   0                1       37     722
ki1017093c-NIH-Crypto       BANGLADESH                                   1                0       41     722
ki1017093c-NIH-Crypto       BANGLADESH                                   1                1        7     722
ki1033518-iLiNS-DYAD-G      GHANA                                        0                0      835     941
ki1033518-iLiNS-DYAD-G      GHANA                                        0                1       98     941
ki1033518-iLiNS-DYAD-G      GHANA                                        1                0        5     941
ki1033518-iLiNS-DYAD-G      GHANA                                        1                1        3     941
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF                 0                0     1787    1922
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF                 0                1       71    1922
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF                 1                0       40    1922
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF                 1                1       24    1922
ki1101329-Keneba            GAMBIA                                       0                0     1918    2184
ki1101329-Keneba            GAMBIA                                       0                1      143    2184
ki1101329-Keneba            GAMBIA                                       1                0       74    2184
ki1101329-Keneba            GAMBIA                                       1                1       49    2184
ki1112895-Burkina Faso Zn   BURKINA FASO                                 0                0       20      26
ki1112895-Burkina Faso Zn   BURKINA FASO                                 0                1        6      26
ki1112895-Burkina Faso Zn   BURKINA FASO                                 1                0        0      26
ki1112895-Burkina Faso Zn   BURKINA FASO                                 1                1        0      26
ki1112895-Guatemala BSC     GUATEMALA                                    0                0      232     236
ki1112895-Guatemala BSC     GUATEMALA                                    0                1        3     236
ki1112895-Guatemala BSC     GUATEMALA                                    1                0        0     236
ki1112895-Guatemala BSC     GUATEMALA                                    1                1        1     236
ki1113344-GMS-Nepal         NEPAL                                        0                0      444     584
ki1113344-GMS-Nepal         NEPAL                                        0                1       84     584
ki1113344-GMS-Nepal         NEPAL                                        1                0       31     584
ki1113344-GMS-Nepal         NEPAL                                        1                1       25     584
ki1114097-CMIN              BANGLADESH                                   0                0      222     252
ki1114097-CMIN              BANGLADESH                                   0                1       20     252
ki1114097-CMIN              BANGLADESH                                   1                0        5     252
ki1114097-CMIN              BANGLADESH                                   1                1        5     252
ki1114097-CMIN              BRAZIL                                       0                0      118     119
ki1114097-CMIN              BRAZIL                                       0                1        0     119
ki1114097-CMIN              BRAZIL                                       1                0        1     119
ki1114097-CMIN              BRAZIL                                       1                1        0     119
ki1114097-CMIN              GUINEA-BISSAU                                0                0      832     880
ki1114097-CMIN              GUINEA-BISSAU                                0                1       38     880
ki1114097-CMIN              GUINEA-BISSAU                                1                0        9     880
ki1114097-CMIN              GUINEA-BISSAU                                1                1        1     880
ki1114097-CMIN              PERU                                         0                0      617     630
ki1114097-CMIN              PERU                                         0                1        1     630
ki1114097-CMIN              PERU                                         1                0       11     630
ki1114097-CMIN              PERU                                         1                1        1     630
ki1114097-CONTENT           PERU                                         0                0      215     215
ki1114097-CONTENT           PERU                                         0                1        0     215
ki1114097-CONTENT           PERU                                         1                0        0     215
ki1114097-CONTENT           PERU                                         1                1        0     215
ki1119695-PROBIT            BELARUS                                      0                0    15170   16449
ki1119695-PROBIT            BELARUS                                      0                1       14   16449
ki1119695-PROBIT            BELARUS                                      1                0     1259   16449
ki1119695-PROBIT            BELARUS                                      1                1        6   16449
ki1126311-ZVITAMBO          ZIMBABWE                                     0                0     7643    8517
ki1126311-ZVITAMBO          ZIMBABWE                                     0                1      317    8517
ki1126311-ZVITAMBO          ZIMBABWE                                     1                0      505    8517
ki1126311-ZVITAMBO          ZIMBABWE                                     1                1       52    8517
ki1135781-COHORTS           GUATEMALA                                    0                0      809     899
ki1135781-COHORTS           GUATEMALA                                    0                1       30     899
ki1135781-COHORTS           GUATEMALA                                    1                0       58     899
ki1135781-COHORTS           GUATEMALA                                    1                1        2     899
ki1135781-COHORTS           INDIA                                        0                0     4954    5884
ki1135781-COHORTS           INDIA                                        0                1      497    5884
ki1135781-COHORTS           INDIA                                        1                0      290    5884
ki1135781-COHORTS           INDIA                                        1                1      143    5884
ki1135781-COHORTS           PHILIPPINES                                  0                0     2398    2756
ki1135781-COHORTS           PHILIPPINES                                  0                1      178    2756
ki1135781-COHORTS           PHILIPPINES                                  1                0      143    2756
ki1135781-COHORTS           PHILIPPINES                                  1                1       37    2756
ki1148112-iLiNS-DOSE        MALAWI                                       0                0      763     808
ki1148112-iLiNS-DOSE        MALAWI                                       0                1       44     808
ki1148112-iLiNS-DOSE        MALAWI                                       1                0        1     808
ki1148112-iLiNS-DOSE        MALAWI                                       1                1        0     808
ki1148112-iLiNS-DYAD-M      MALAWI                                       0                0      988    1023
ki1148112-iLiNS-DYAD-M      MALAWI                                       0                1       28    1023
ki1148112-iLiNS-DYAD-M      MALAWI                                       1                0        7    1023
ki1148112-iLiNS-DYAD-M      MALAWI                                       1                1        0    1023
ki1148112-LCNI-5            MALAWI                                       0                0      243     249
ki1148112-LCNI-5            MALAWI                                       0                1        6     249
ki1148112-LCNI-5            MALAWI                                       1                0        0     249
ki1148112-LCNI-5            MALAWI                                       1                1        0     249
kiGH5241-JiVitA-3           BANGLADESH                                   0                0    10998   14231
kiGH5241-JiVitA-3           BANGLADESH                                   0                1     2749   14231
kiGH5241-JiVitA-3           BANGLADESH                                   1                0      302   14231
kiGH5241-JiVitA-3           BANGLADESH                                   1                1      182   14231
kiGH5241-JiVitA-4           BANGLADESH                                   0                0     4416    5025
kiGH5241-JiVitA-4           BANGLADESH                                   0                1      500    5025
kiGH5241-JiVitA-4           BANGLADESH                                   1                0       77    5025
kiGH5241-JiVitA-4           BANGLADESH                                   1                1       32    5025


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
* studyid: ki1000304-VITAMIN-A, country: INDIA
* studyid: ki1000304b-SAS-CompFeed, country: INDIA
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093-NIH-Birth, country: BANGLADESH
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* studyid: ki1033518-iLiNS-DYAD-G, country: GHANA
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1101329-Keneba, country: GAMBIA
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CMIN, country: BRAZIL
* studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU
* studyid: ki1119695-PROBIT, country: BELARUS
* studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* studyid: ki1135781-COHORTS, country: GUATEMALA
* studyid: ki1135781-COHORTS, country: INDIA
* studyid: ki1135781-COHORTS, country: PHILIPPINES
* studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* studyid: ki1148112-LCNI-5, country: MALAWI
* studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
* studyid: ki1033518-iLiNS-DYAD-G, country: GHANA
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* studyid: ki1114097-CMIN, country: BRAZIL
* studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/d28f4638-5f53-4078-a758-00176b74efc7/f3ac6d78-13fa-4e73-afe7-1a4799e1d05a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d28f4638-5f53-4078-a758-00176b74efc7/f3ac6d78-13fa-4e73-afe7-1a4799e1d05a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d28f4638-5f53-4078-a758-00176b74efc7/f3ac6d78-13fa-4e73-afe7-1a4799e1d05a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d28f4638-5f53-4078-a758-00176b74efc7/f3ac6d78-13fa-4e73-afe7-1a4799e1d05a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0837209    0.0466196   0.1208223
ki0047075b-MAL-ED          INDIA                          1                    NA                0.5263158    0.3013228   0.7513087
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0536913    0.0280642   0.0793184
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1714286    0.0830196   0.2598376
ki1000108-IRC              INDIA                          0                    NA                0.0669014    0.0378076   0.0959952
ki1000108-IRC              INDIA                          1                    NA                0.2301587    0.1565707   0.3037468
ki1000109-EE               PAKISTAN                       0                    NA                0.1011561    0.0693411   0.1329710
ki1000109-EE               PAKISTAN                       1                    NA                0.3333333    0.1552830   0.5113837
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1475410    0.0960413   0.1990407
ki1000109-ResPak           PAKISTAN                       1                    NA                0.4864865    0.3250700   0.6479030
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.1539839    0.1390137   0.1689541
ki1000304-VITAMIN-A        INDIA                          1                    NA                0.4242424    0.3049817   0.5435031
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1403648    0.1209577   0.1597719
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4534884    0.3963909   0.5105859
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1639785    0.1263048   0.2016521
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.5294118    0.2918372   0.7669863
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0948276    0.0681439   0.1215113
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2916667    0.1629561   0.4203772
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0565068    0.0377647   0.0752490
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2800000    0.1038510   0.4561490
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0548961    0.0376882   0.0721041
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1458333    0.0459189   0.2457477
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0382131    0.0294938   0.0469325
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3750000    0.2563612   0.4936388
ki1101329-Keneba           GAMBIA                         0                    NA                0.0693838    0.0584109   0.0803567
ki1101329-Keneba           GAMBIA                         1                    NA                0.3983740    0.3118366   0.4849114
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1590909    0.1278661   0.1903158
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4464286    0.3161152   0.5767420
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0826446    0.0478846   0.1174046
ki1114097-CMIN             BANGLADESH                     1                    NA                0.5000000    0.1894858   0.8105142
ki1119695-PROBIT           BELARUS                        0                    NA                0.0009220    0.0001900   0.0016540
ki1119695-PROBIT           BELARUS                        1                    NA                0.0047431   -0.0002339   0.0097201
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0398241    0.0355281   0.0441201
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0933573    0.0691950   0.1175196
ki1135781-COHORTS          INDIA                          0                    NA                0.0911759    0.0835336   0.0988183
ki1135781-COHORTS          INDIA                          1                    NA                0.3302540    0.2859524   0.3745557
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0690994    0.0593035   0.0788952
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2055556    0.1465100   0.2646011
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1999709    0.1924520   0.2074898
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3760331    0.3273998   0.4246663
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1017087    0.0909066   0.1125109
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2935780    0.2161239   0.3710320


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1196581   0.0779840   0.1613323
ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0760870   0.0489610   0.1032130
ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
ki1000109-EE               PAKISTAN                       NA                   NA                0.1179625   0.0851837   0.1507412
ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2045455   0.1511224   0.2579685
ki1000304-VITAMIN-A        INDIA                          NA                   NA                0.1617391   0.1466878   0.1767905
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1603563   0.1395035   0.1812092
ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1799486   0.1417254   0.2181718
ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1132813   0.0858017   0.1407608
ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0656814   0.0459906   0.0853723
ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0609418   0.0434802   0.0784034
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0494277   0.0397346   0.0591208
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0879121   0.0760335   0.0997906
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1866438   0.1550166   0.2182711
ki1114097-CMIN             BANGLADESH                     NA                   NA                0.0992063   0.0622241   0.1361886
ki1119695-PROBIT           BELARUS                        NA                   NA                0.0012159   0.0002433   0.0021885
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0433251   0.0390011   0.0476491
ki1135781-COHORTS          INDIA                          NA                   NA                0.1087695   0.1008135   0.1167256
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0780116   0.0679971   0.0880261
kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2059588   0.1983834   0.2135343
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1058706   0.0951082   0.1166331


### Parameter: RR


studyid                    country                        intervention_level   baseline_level    estimate   ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ---------  ---------  ----------
ki0047075b-MAL-ED          INDIA                          0                    0                 1.000000   1.000000    1.000000
ki0047075b-MAL-ED          INDIA                          1                    0                 6.286550   3.396264   11.636523
ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.000000   1.000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 3.192857   1.581252    6.447001
ki1000108-IRC              INDIA                          0                    0                 1.000000   1.000000    1.000000
ki1000108-IRC              INDIA                          1                    0                 3.440267   2.005288    5.902116
ki1000109-EE               PAKISTAN                       0                    0                 1.000000   1.000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                 3.295238   1.772889    6.124801
ki1000109-ResPak           PAKISTAN                       0                    0                 1.000000   1.000000    1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                 3.297297   2.037069    5.337163
ki1000304-VITAMIN-A        INDIA                          0                    0                 1.000000   1.000000    1.000000
ki1000304-VITAMIN-A        INDIA                          1                    0                 2.755109   2.046245    3.709540
ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.000000   1.000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                 3.230784   2.706712    3.856327
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.000000   1.000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 3.228544   1.950111    5.345078
ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.000000   1.000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                 3.075758   1.822440    5.190999
ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.000000   1.000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                 4.955152   2.433290   10.090670
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.000000   1.000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 2.656531   1.250558    5.643210
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.000000   1.000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 9.813380   6.643751   14.495190
ki1101329-Keneba           GAMBIA                         0                    0                 1.000000   1.000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                 5.741600   4.388733    7.511501
ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.000000   1.000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                 2.806122   1.973981    3.989057
ki1114097-CMIN             BANGLADESH                     0                    0                 1.000000   1.000000    1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                 6.050000   2.857670   12.808512
ki1119695-PROBIT           BELARUS                        0                    0                 1.000000   1.000000    1.000000
ki1119695-PROBIT           BELARUS                        1                    0                 5.144212   2.183254   12.120863
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.000000   1.000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 2.344239   1.771035    3.102964
ki1135781-COHORTS          INDIA                          0                    0                 1.000000   1.000000    1.000000
ki1135781-COHORTS          INDIA                          1                    0                 3.622162   3.092231    4.242912
ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.000000   1.000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                 2.974782   2.159430    4.097992
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.000000   1.000000    1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.880439   1.646151    2.148072
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.000000   1.000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 2.886459   2.177635    3.826006


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0359372    0.0117760   0.0600983
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0223957    0.0042595   0.0405319
ki1000108-IRC              INDIA                          0                    NA                0.0501718    0.0247815   0.0755620
ki1000109-EE               PAKISTAN                       0                    NA                0.0168064    0.0023568   0.0312560
ki1000109-ResPak           PAKISTAN                       0                    NA                0.0570045    0.0239301   0.0900788
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.0077552    0.0038440   0.0116665
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0199916    0.0134133   0.0265699
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0159701    0.0030953   0.0288449
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0184537    0.0051643   0.0317431
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0091746    0.0010935   0.0172557
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0060457   -0.0008945   0.0129859
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0112145    0.0064195   0.0160096
ki1101329-Keneba           GAMBIA                         0                    NA                0.0185283    0.0126753   0.0243812
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0275529    0.0129833   0.0421226
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0165617    0.0005829   0.0325406
ki1119695-PROBIT           BELARUS                        0                    NA                0.0002939   -0.0000417   0.0006294
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0035010    0.0018716   0.0051304
ki1135781-COHORTS          INDIA                          0                    NA                0.0175936    0.0139208   0.0212664
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0089122    0.0048054   0.0130191
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0059879    0.0041568   0.0078190
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0041619    0.0021337   0.0061902


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.3003322    0.0968199   0.4579874
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2943432    0.0402926   0.4811424
ki1000108-IRC              INDIA                          0                    NA                0.4285505    0.2035296   0.5899978
ki1000109-EE               PAKISTAN                       0                    NA                0.1424724    0.0165879   0.2522427
ki1000109-ResPak           PAKISTAN                       0                    NA                0.2786885    0.1106706   0.4149634
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.0479491    0.0237253   0.0715718
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1246696    0.0856993   0.1619789
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0887481    0.0159449   0.1561650
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1629013    0.0431098   0.2676963
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1396832    0.0148104   0.2487284
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0992042   -0.0185911   0.2033770
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2268880    0.1346658   0.3092817
ki1101329-Keneba           GAMBIA                         0                    NA                0.2107593    0.1471283   0.2696430
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1476230    0.0685892   0.2199505
ki1114097-CMIN             BANGLADESH                     0                    NA                0.1669421    0.0014737   0.3049904
ki1119695-PROBIT           BELARUS                        0                    NA                0.2416820    0.0541509   0.3920318
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0808075    0.0432534   0.1168875
ki1135781-COHORTS          INDIA                          0                    NA                0.1617513    0.1290542   0.1932208
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1142424    0.0618753   0.1636863
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0290734    0.0202411   0.0378260
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0393116    0.0198406   0.0583957
