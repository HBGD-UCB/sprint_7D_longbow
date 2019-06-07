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

**Intervention Variable:** ever_sstunted06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                         ever_sstunted06   pers_wasted624   n_cell       n
--------------------------  -----------------------------  ----------------  ---------------  -------  ------
ki0047075b-MAL-ED           BANGLADESH                                    0                0      209     240
ki0047075b-MAL-ED           BANGLADESH                                    0                1       16     240
ki0047075b-MAL-ED           BANGLADESH                                    1                0       13     240
ki0047075b-MAL-ED           BANGLADESH                                    1                1        2     240
ki0047075b-MAL-ED           BRAZIL                                        0                0      190     202
ki0047075b-MAL-ED           BRAZIL                                        0                1        2     202
ki0047075b-MAL-ED           BRAZIL                                        1                0       10     202
ki0047075b-MAL-ED           BRAZIL                                        1                1        0     202
ki0047075b-MAL-ED           INDIA                                         0                0      193     234
ki0047075b-MAL-ED           INDIA                                         0                1       22     234
ki0047075b-MAL-ED           INDIA                                         1                0       13     234
ki0047075b-MAL-ED           INDIA                                         1                1        6     234
ki0047075b-MAL-ED           NEPAL                                         0                0      225     234
ki0047075b-MAL-ED           NEPAL                                         0                1        2     234
ki0047075b-MAL-ED           NEPAL                                         1                0        7     234
ki0047075b-MAL-ED           NEPAL                                         1                1        0     234
ki0047075b-MAL-ED           PERU                                          0                0      233     264
ki0047075b-MAL-ED           PERU                                          0                1        1     264
ki0047075b-MAL-ED           PERU                                          1                0       29     264
ki0047075b-MAL-ED           PERU                                          1                1        1     264
ki0047075b-MAL-ED           SOUTH AFRICA                                  0                0      231     258
ki0047075b-MAL-ED           SOUTH AFRICA                                  0                1        2     258
ki0047075b-MAL-ED           SOUTH AFRICA                                  1                0       25     258
ki0047075b-MAL-ED           SOUTH AFRICA                                  1                1        0     258
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF                  0                0      213     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF                  0                1        0     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF                  1                0       31     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF                  1                1        0     244
ki1000107-Serrinha-VitA     BRAZIL                                        0                0       10      11
ki1000107-Serrinha-VitA     BRAZIL                                        0                1        1      11
ki1000107-Serrinha-VitA     BRAZIL                                        1                0        0      11
ki1000107-Serrinha-VitA     BRAZIL                                        1                1        0      11
ki1000108-CMC-V-BCS-2002    INDIA                                         0                0      261     368
ki1000108-CMC-V-BCS-2002    INDIA                                         0                1       17     368
ki1000108-CMC-V-BCS-2002    INDIA                                         1                0       79     368
ki1000108-CMC-V-BCS-2002    INDIA                                         1                1       11     368
ki1000108-IRC               INDIA                                         0                0      316     410
ki1000108-IRC               INDIA                                         0                1       39     410
ki1000108-IRC               INDIA                                         1                0       46     410
ki1000108-IRC               INDIA                                         1                1        9     410
ki1000109-EE                PAKISTAN                                      0                0      186     373
ki1000109-EE                PAKISTAN                                      0                1       24     373
ki1000109-EE                PAKISTAN                                      1                0      143     373
ki1000109-EE                PAKISTAN                                      1                1       20     373
ki1000109-ResPak            PAKISTAN                                      0                0      115     220
ki1000109-ResPak            PAKISTAN                                      0                1       32     220
ki1000109-ResPak            PAKISTAN                                      1                0       60     220
ki1000109-ResPak            PAKISTAN                                      1                1       13     220
ki1000304-VITAMIN-A         INDIA                                         0                0     1783    2300
ki1000304-VITAMIN-A         INDIA                                         0                1      326    2300
ki1000304-VITAMIN-A         INDIA                                         1                0      145    2300
ki1000304-VITAMIN-A         INDIA                                         1                1       46    2300
ki1000304b-SAS-CompFeed     INDIA                                         0                0     1025    1347
ki1000304b-SAS-CompFeed     INDIA                                         0                1      160    1347
ki1000304b-SAS-CompFeed     INDIA                                         1                0      106    1347
ki1000304b-SAS-CompFeed     INDIA                                         1                1       56    1347
ki1000304b-SAS-FoodSuppl    INDIA                                         0                0      285     389
ki1000304b-SAS-FoodSuppl    INDIA                                         0                1       53     389
ki1000304b-SAS-FoodSuppl    INDIA                                         1                0       34     389
ki1000304b-SAS-FoodSuppl    INDIA                                         1                1       17     389
ki1017093-NIH-Birth         BANGLADESH                                    0                0      418     512
ki1017093-NIH-Birth         BANGLADESH                                    0                1       52     512
ki1017093-NIH-Birth         BANGLADESH                                    1                0       36     512
ki1017093-NIH-Birth         BANGLADESH                                    1                1        6     512
ki1017093b-PROVIDE          BANGLADESH                                    0                0      544     609
ki1017093b-PROVIDE          BANGLADESH                                    0                1       38     609
ki1017093b-PROVIDE          BANGLADESH                                    1                0       25     609
ki1017093b-PROVIDE          BANGLADESH                                    1                1        2     609
ki1017093c-NIH-Crypto       BANGLADESH                                    0                0      642     722
ki1017093c-NIH-Crypto       BANGLADESH                                    0                1       36     722
ki1017093c-NIH-Crypto       BANGLADESH                                    1                0       36     722
ki1017093c-NIH-Crypto       BANGLADESH                                    1                1        8     722
ki1033518-iLiNS-DYAD-G      GHANA                                         0                0      831     941
ki1033518-iLiNS-DYAD-G      GHANA                                         0                1       97     941
ki1033518-iLiNS-DYAD-G      GHANA                                         1                0        9     941
ki1033518-iLiNS-DYAD-G      GHANA                                         1                1        4     941
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF                  0                0     1746    1922
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF                  0                1       86    1922
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF                  1                0       81    1922
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF                  1                1        9    1922
ki1101329-Keneba            GAMBIA                                        0                0     1777    2184
ki1101329-Keneba            GAMBIA                                        0                1      154    2184
ki1101329-Keneba            GAMBIA                                        1                0      215    2184
ki1101329-Keneba            GAMBIA                                        1                1       38    2184
ki1112895-Burkina Faso Zn   BURKINA FASO                                  0                0       20      26
ki1112895-Burkina Faso Zn   BURKINA FASO                                  0                1        5      26
ki1112895-Burkina Faso Zn   BURKINA FASO                                  1                0        0      26
ki1112895-Burkina Faso Zn   BURKINA FASO                                  1                1        1      26
ki1112895-Guatemala BSC     GUATEMALA                                     0                0      212     236
ki1112895-Guatemala BSC     GUATEMALA                                     0                1        2     236
ki1112895-Guatemala BSC     GUATEMALA                                     1                0       20     236
ki1112895-Guatemala BSC     GUATEMALA                                     1                1        2     236
ki1113344-GMS-Nepal         NEPAL                                         0                0      456     584
ki1113344-GMS-Nepal         NEPAL                                         0                1       88     584
ki1113344-GMS-Nepal         NEPAL                                         1                0       19     584
ki1113344-GMS-Nepal         NEPAL                                         1                1       21     584
ki1114097-CMIN              BANGLADESH                                    0                0      181     252
ki1114097-CMIN              BANGLADESH                                    0                1       13     252
ki1114097-CMIN              BANGLADESH                                    1                0       46     252
ki1114097-CMIN              BANGLADESH                                    1                1       12     252
ki1114097-CMIN              BRAZIL                                        0                0      116     119
ki1114097-CMIN              BRAZIL                                        0                1        0     119
ki1114097-CMIN              BRAZIL                                        1                0        3     119
ki1114097-CMIN              BRAZIL                                        1                1        0     119
ki1114097-CMIN              GUINEA-BISSAU                                 0                0      814     880
ki1114097-CMIN              GUINEA-BISSAU                                 0                1       34     880
ki1114097-CMIN              GUINEA-BISSAU                                 1                0       27     880
ki1114097-CMIN              GUINEA-BISSAU                                 1                1        5     880
ki1114097-CMIN              PERU                                          0                0      611     630
ki1114097-CMIN              PERU                                          0                1        1     630
ki1114097-CMIN              PERU                                          1                0       17     630
ki1114097-CMIN              PERU                                          1                1        1     630
ki1114097-CONTENT           PERU                                          0                0      206     215
ki1114097-CONTENT           PERU                                          0                1        0     215
ki1114097-CONTENT           PERU                                          1                0        9     215
ki1114097-CONTENT           PERU                                          1                1        0     215
ki1119695-PROBIT            BELARUS                                       0                0    16213   16449
ki1119695-PROBIT            BELARUS                                       0                1       20   16449
ki1119695-PROBIT            BELARUS                                       1                0      216   16449
ki1119695-PROBIT            BELARUS                                       1                1        0   16449
ki1126311-ZVITAMBO          ZIMBABWE                                      0                0     7536    8517
ki1126311-ZVITAMBO          ZIMBABWE                                      0                1      318    8517
ki1126311-ZVITAMBO          ZIMBABWE                                      1                0      612    8517
ki1126311-ZVITAMBO          ZIMBABWE                                      1                1       51    8517
ki1135781-COHORTS           GUATEMALA                                     0                0      782     899
ki1135781-COHORTS           GUATEMALA                                     0                1       23     899
ki1135781-COHORTS           GUATEMALA                                     1                0       85     899
ki1135781-COHORTS           GUATEMALA                                     1                1        9     899
ki1135781-COHORTS           INDIA                                         0                0     5115    5884
ki1135781-COHORTS           INDIA                                         0                1      579    5884
ki1135781-COHORTS           INDIA                                         1                0      129    5884
ki1135781-COHORTS           INDIA                                         1                1       61    5884
ki1135781-COHORTS           PHILIPPINES                                   0                0     2411    2756
ki1135781-COHORTS           PHILIPPINES                                   0                1      190    2756
ki1135781-COHORTS           PHILIPPINES                                   1                0      130    2756
ki1135781-COHORTS           PHILIPPINES                                   1                1       25    2756
ki1148112-iLiNS-DOSE        MALAWI                                        0                0      723     808
ki1148112-iLiNS-DOSE        MALAWI                                        0                1       36     808
ki1148112-iLiNS-DOSE        MALAWI                                        1                0       41     808
ki1148112-iLiNS-DOSE        MALAWI                                        1                1        8     808
ki1148112-iLiNS-DYAD-M      MALAWI                                        0                0      978    1023
ki1148112-iLiNS-DYAD-M      MALAWI                                        0                1       27    1023
ki1148112-iLiNS-DYAD-M      MALAWI                                        1                0       17    1023
ki1148112-iLiNS-DYAD-M      MALAWI                                        1                1        1    1023
ki1148112-LCNI-5            MALAWI                                        0                0      224     249
ki1148112-LCNI-5            MALAWI                                        0                1        6     249
ki1148112-LCNI-5            MALAWI                                        1                0       19     249
ki1148112-LCNI-5            MALAWI                                        1                1        0     249
kiGH5241-JiVitA-3           BANGLADESH                                    0                0    10361   14231
kiGH5241-JiVitA-3           BANGLADESH                                    0                1     2526   14231
kiGH5241-JiVitA-3           BANGLADESH                                    1                0      939   14231
kiGH5241-JiVitA-3           BANGLADESH                                    1                1      405   14231
kiGH5241-JiVitA-4           BANGLADESH                                    0                0     4214    5025
kiGH5241-JiVitA-4           BANGLADESH                                    0                1      472    5025
kiGH5241-JiVitA-4           BANGLADESH                                    1                0      279    5025
kiGH5241-JiVitA-4           BANGLADESH                                    1                1       60    5025


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
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1033518-iLiNS-DYAD-G, country: GHANA
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* studyid: ki1114097-CMIN, country: BRAZIL
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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




# Results Detail

## Results Plots
![](/tmp/49fd7b2b-f739-4c09-9cb1-a1a2247f6cf1/4530726e-4317-46a7-8580-cd81ce2bc55a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/49fd7b2b-f739-4c09-9cb1-a1a2247f6cf1/4530726e-4317-46a7-8580-cd81ce2bc55a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/49fd7b2b-f739-4c09-9cb1-a1a2247f6cf1/4530726e-4317-46a7-8580-cd81ce2bc55a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/49fd7b2b-f739-4c09-9cb1-a1a2247f6cf1/4530726e-4317-46a7-8580-cd81ce2bc55a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.1023256   0.0617270   0.1429241
ki0047075b-MAL-ED          INDIA                          1                    NA                0.3157895   0.1063324   0.5252465
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0611511   0.0329467   0.0893555
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1222222   0.0544604   0.1899840
ki1000108-IRC              INDIA                          0                    NA                0.1098592   0.0772896   0.1424287
ki1000108-IRC              INDIA                          1                    NA                0.1636364   0.0657472   0.2615255
ki1000109-EE               PAKISTAN                       0                    NA                0.1142857   0.0711969   0.1573745
ki1000109-EE               PAKISTAN                       1                    NA                0.1226994   0.0722643   0.1731345
ki1000109-ResPak           PAKISTAN                       0                    NA                0.2176871   0.1508242   0.2845500
ki1000109-ResPak           PAKISTAN                       1                    NA                0.1780822   0.0901191   0.2660453
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.1545756   0.1391440   0.1700073
ki1000304-VITAMIN-A        INDIA                          1                    NA                0.2408377   0.1801843   0.3014911
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1350211   0.1091022   0.1609400
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3456790   0.2421003   0.4492577
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1568047   0.1179904   0.1956191
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.3333333   0.2037898   0.4628769
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1106383   0.0822515   0.1390250
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.1428571   0.0369255   0.2487888
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0530973   0.0362076   0.0699871
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1818182   0.0677758   0.2958606
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0469432   0.0372550   0.0566315
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1000000   0.0380044   0.1619956
ki1101329-Keneba           GAMBIA                         0                    NA                0.0797514   0.0676655   0.0918373
ki1101329-Keneba           GAMBIA                         1                    NA                0.1501976   0.1061647   0.1942306
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1617647   0.1307944   0.1927350
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5250000   0.3701124   0.6798876
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0670103   0.0317554   0.1022652
ki1114097-CMIN             BANGLADESH                     1                    NA                0.2068966   0.1024392   0.3113539
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0400943   0.0268828   0.0533059
ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.1562500   0.0303757   0.2821243
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0404889   0.0361296   0.0448483
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0769231   0.0566386   0.0972076
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0285714   0.0170564   0.0400864
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0957447   0.0362294   0.1552600
ki1135781-COHORTS          INDIA                          0                    NA                0.1016860   0.0938351   0.1095369
ki1135781-COHORTS          INDIA                          1                    NA                0.3210526   0.2546608   0.3874444
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0730488   0.0630467   0.0830509
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1612903   0.1033780   0.2192027
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                0.0474308   0.0322996   0.0625621
ki1148112-iLiNS-DOSE       MALAWI                         1                    NA                0.1632653   0.0597130   0.2668176
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1960115   0.1881669   0.2038561
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3013393   0.2747524   0.3279262
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1007256   0.0896746   0.1117766
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1769912   0.1299716   0.2240107


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
ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0609418   0.0434802   0.0784034
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0494277   0.0397346   0.0591208
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0879121   0.0760335   0.0997906
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1866438   0.1550166   0.2182711
ki1114097-CMIN             BANGLADESH                     NA                   NA                0.0992063   0.0622241   0.1361886
ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0443182   0.0307131   0.0579233
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0433251   0.0390011   0.0476491
ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0355951   0.0234770   0.0477132
ki1135781-COHORTS          INDIA                          NA                   NA                0.1087695   0.1008135   0.1167256
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0780116   0.0679971   0.0880261
ki1148112-iLiNS-DOSE       MALAWI                         NA                   NA                0.0544554   0.0387997   0.0701112
kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2059588   0.1983834   0.2135343
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1058706   0.0951082   0.1166331


### Parameter: RR


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki0047075b-MAL-ED          INDIA                          1                    0                 3.0861244   1.4247928   6.684596
ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.9986928   0.9717187   4.111039
ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000108-IRC              INDIA                          1                    0                 1.4895105   0.7639928   2.904009
ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
ki1000109-EE               PAKISTAN                       1                    0                 1.0736196   0.6146301   1.875371
ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                 0.8180651   0.4572748   1.463519
ki1000304-VITAMIN-A        INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000304-VITAMIN-A        INDIA                          1                    0                 1.5580574   1.1883084   2.042856
ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                 2.5601852   1.6796826   3.902254
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 2.1257862   1.3409450   3.369987
ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                 1.2912088   0.5891491   2.829878
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 3.4242424   1.6948601   6.918232
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 2.1302325   1.1082977   4.094469
ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.000000
ki1101329-Keneba           GAMBIA                         1                    0                 1.8833222   1.3539395   2.619690
ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                 3.2454545   2.2831469   4.613359
ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                 3.0875332   1.4891393   6.401591
ki1114097-CMIN             GUINEA-BISSAU                  0                    0                 1.0000000   1.0000000   1.000000
ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 3.8970588   1.6320588   9.305466
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.8998549   1.4289583   2.525930
ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                 3.3510638   1.5975218   7.029406
ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
ki1135781-COHORTS          INDIA                          1                    0                 3.1572948   2.5319218   3.937132
ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                 2.2079796   1.5035062   3.242537
ki1148112-iLiNS-DOSE       MALAWI                         0                    0                 1.0000000   1.0000000   1.000000
ki1148112-iLiNS-DOSE       MALAWI                         1                    0                 3.4421768   1.6923798   7.001136
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.5373553   1.3960344   1.692982
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.7571621   1.3156923   2.346763


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0173325   -0.0015396   0.0362047
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0149359   -0.0032143   0.0330861
ki1000108-IRC              INDIA                          0                    NA                 0.0072140   -0.0067387   0.0211668
ki1000109-EE               PAKISTAN                       0                    NA                 0.0036768   -0.0253146   0.0326681
ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0131416   -0.0498875   0.0236042
ki1000304-VITAMIN-A        INDIA                          0                    NA                 0.0071635    0.0018759   0.0124511
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0253353    0.0082748   0.0423957
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.0231439    0.0044491   0.0418386
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0026430   -0.0063859   0.0116718
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0078445    0.0004679   0.0152210
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0024844   -0.0004963   0.0054652
ki1101329-Keneba           GAMBIA                         0                    NA                 0.0081607    0.0027872   0.0135341
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0248791    0.0117447   0.0380135
ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0321960    0.0057970   0.0585951
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0042238   -0.0005978   0.0090455
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0028362    0.0012079   0.0044645
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0070237    0.0005443   0.0135030
ki1135781-COHORTS          INDIA                          0                    NA                 0.0070836    0.0047082   0.0094589
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0049628    0.0015715   0.0083541
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                 0.0070246    0.0003977   0.0136515
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0099473    0.0072921   0.0126026
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0051451    0.0018322   0.0084580


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                 0.1448505   -0.0207766   0.2836036
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.1963001   -0.0692768   0.3959155
ki1000108-IRC              INDIA                          0                    NA                 0.0616197   -0.0644938   0.1727922
ki1000109-EE               PAKISTAN                       0                    NA                 0.0311688   -0.2484373   0.2481530
ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0642479   -0.2595267   0.1007545
ki1000304-VITAMIN-A        INDIA                          0                    NA                 0.0442905    0.0112026   0.0762711
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1579934    0.0441117   0.2583076
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.1286137    0.0208009   0.2245560
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                 0.0233309   -0.0595512   0.0997296
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1287208    0.0046998   0.2372880
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0502643   -0.0112177   0.1080082
ki1101329-Keneba           GAMBIA                         0                    NA                 0.0928276    0.0307440   0.1509345
ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.1332974    0.0623927   0.1988400
ki1114097-CMIN             BANGLADESH                     0                    NA                 0.3245361    0.0341363   0.5276233
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                 0.0953072   -0.0161749   0.1945588
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0654630    0.0276576   0.1017985
ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.1973214    0.0080165   0.3505004
ki1135781-COHORTS          INDIA                          0                    NA                 0.0651245    0.0434433   0.0863143
ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0636160    0.0198001   0.1054732
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                 0.1289975    0.0043477   0.2380419
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0482977    0.0353237   0.0610973
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0485978    0.0167177   0.0794443
