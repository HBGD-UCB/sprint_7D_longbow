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

**Intervention Variable:** ever_wasted06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                         ever_wasted06   pers_wasted624   n_cell       n
--------------------------  -----------------------------  --------------  ---------------  -------  ------
ki0047075b-MAL-ED           BANGLADESH                                  0                0      180     240
ki0047075b-MAL-ED           BANGLADESH                                  0                1        5     240
ki0047075b-MAL-ED           BANGLADESH                                  1                0       42     240
ki0047075b-MAL-ED           BANGLADESH                                  1                1       13     240
ki0047075b-MAL-ED           BRAZIL                                      0                0      187     202
ki0047075b-MAL-ED           BRAZIL                                      0                1        1     202
ki0047075b-MAL-ED           BRAZIL                                      1                0       13     202
ki0047075b-MAL-ED           BRAZIL                                      1                1        1     202
ki0047075b-MAL-ED           INDIA                                       0                0      154     234
ki0047075b-MAL-ED           INDIA                                       0                1        6     234
ki0047075b-MAL-ED           INDIA                                       1                0       52     234
ki0047075b-MAL-ED           INDIA                                       1                1       22     234
ki0047075b-MAL-ED           NEPAL                                       0                0      194     234
ki0047075b-MAL-ED           NEPAL                                       0                1        0     234
ki0047075b-MAL-ED           NEPAL                                       1                0       38     234
ki0047075b-MAL-ED           NEPAL                                       1                1        2     234
ki0047075b-MAL-ED           PERU                                        0                0      252     264
ki0047075b-MAL-ED           PERU                                        0                1        2     264
ki0047075b-MAL-ED           PERU                                        1                0       10     264
ki0047075b-MAL-ED           PERU                                        1                1        0     264
ki0047075b-MAL-ED           SOUTH AFRICA                                0                0      232     258
ki0047075b-MAL-ED           SOUTH AFRICA                                0                1        0     258
ki0047075b-MAL-ED           SOUTH AFRICA                                1                0       24     258
ki0047075b-MAL-ED           SOUTH AFRICA                                1                1        2     258
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF                0                0      233     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF                0                1        0     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF                1                0       11     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF                1                1        0     244
ki1000107-Serrinha-VitA     BRAZIL                                      0                0       10      11
ki1000107-Serrinha-VitA     BRAZIL                                      0                1        1      11
ki1000107-Serrinha-VitA     BRAZIL                                      1                0        0      11
ki1000107-Serrinha-VitA     BRAZIL                                      1                1        0      11
ki1000108-CMC-V-BCS-2002    INDIA                                       0                0      174     368
ki1000108-CMC-V-BCS-2002    INDIA                                       0                1        3     368
ki1000108-CMC-V-BCS-2002    INDIA                                       1                0      166     368
ki1000108-CMC-V-BCS-2002    INDIA                                       1                1       25     368
ki1000108-IRC               INDIA                                       0                0      180     410
ki1000108-IRC               INDIA                                       0                1        7     410
ki1000108-IRC               INDIA                                       1                0      182     410
ki1000108-IRC               INDIA                                       1                1       41     410
ki1000109-EE                PAKISTAN                                    0                0      257     373
ki1000109-EE                PAKISTAN                                    0                1       14     373
ki1000109-EE                PAKISTAN                                    1                0       72     373
ki1000109-EE                PAKISTAN                                    1                1       30     373
ki1000109-ResPak            PAKISTAN                                    0                0      119     220
ki1000109-ResPak            PAKISTAN                                    0                1       15     220
ki1000109-ResPak            PAKISTAN                                    1                0       56     220
ki1000109-ResPak            PAKISTAN                                    1                1       30     220
ki1000304-VITAMIN-A         INDIA                                       0                0     1714    2300
ki1000304-VITAMIN-A         INDIA                                       0                1      257    2300
ki1000304-VITAMIN-A         INDIA                                       1                0      214    2300
ki1000304-VITAMIN-A         INDIA                                       1                1      115    2300
ki1000304b-SAS-CompFeed     INDIA                                       0                0      939    1347
ki1000304b-SAS-CompFeed     INDIA                                       0                1      107    1347
ki1000304b-SAS-CompFeed     INDIA                                       1                0      192    1347
ki1000304b-SAS-CompFeed     INDIA                                       1                1      109    1347
ki1000304b-SAS-FoodSuppl    INDIA                                       0                0      282     389
ki1000304b-SAS-FoodSuppl    INDIA                                       0                1       36     389
ki1000304b-SAS-FoodSuppl    INDIA                                       1                0       37     389
ki1000304b-SAS-FoodSuppl    INDIA                                       1                1       34     389
ki1017093-NIH-Birth         BANGLADESH                                  0                0      312     512
ki1017093-NIH-Birth         BANGLADESH                                  0                1       18     512
ki1017093-NIH-Birth         BANGLADESH                                  1                0      142     512
ki1017093-NIH-Birth         BANGLADESH                                  1                1       40     512
ki1017093b-PROVIDE          BANGLADESH                                  0                0      435     609
ki1017093b-PROVIDE          BANGLADESH                                  0                1       19     609
ki1017093b-PROVIDE          BANGLADESH                                  1                0      134     609
ki1017093b-PROVIDE          BANGLADESH                                  1                1       21     609
ki1017093c-NIH-Crypto       BANGLADESH                                  0                0      511     722
ki1017093c-NIH-Crypto       BANGLADESH                                  0                1       23     722
ki1017093c-NIH-Crypto       BANGLADESH                                  1                0      167     722
ki1017093c-NIH-Crypto       BANGLADESH                                  1                1       21     722
ki1033518-iLiNS-DYAD-G      GHANA                                       0                0      805     941
ki1033518-iLiNS-DYAD-G      GHANA                                       0                1       71     941
ki1033518-iLiNS-DYAD-G      GHANA                                       1                0       35     941
ki1033518-iLiNS-DYAD-G      GHANA                                       1                1       30     941
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF                0                0     1606    1922
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF                0                1       41    1922
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF                1                0      221    1922
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF                1                1       54    1922
ki1101329-Keneba            GAMBIA                                      0                0     1736    2184
ki1101329-Keneba            GAMBIA                                      0                1       93    2184
ki1101329-Keneba            GAMBIA                                      1                0      256    2184
ki1101329-Keneba            GAMBIA                                      1                1       99    2184
ki1112895-Burkina Faso Zn   BURKINA FASO                                0                0       20      26
ki1112895-Burkina Faso Zn   BURKINA FASO                                0                1        4      26
ki1112895-Burkina Faso Zn   BURKINA FASO                                1                0        0      26
ki1112895-Burkina Faso Zn   BURKINA FASO                                1                1        2      26
ki1112895-Guatemala BSC     GUATEMALA                                   0                0      226     236
ki1112895-Guatemala BSC     GUATEMALA                                   0                1        3     236
ki1112895-Guatemala BSC     GUATEMALA                                   1                0        6     236
ki1112895-Guatemala BSC     GUATEMALA                                   1                1        1     236
ki1113344-GMS-Nepal         NEPAL                                       0                0      370     584
ki1113344-GMS-Nepal         NEPAL                                       0                1       38     584
ki1113344-GMS-Nepal         NEPAL                                       1                0      105     584
ki1113344-GMS-Nepal         NEPAL                                       1                1       71     584
ki1114097-CMIN              BANGLADESH                                  0                0      197     252
ki1114097-CMIN              BANGLADESH                                  0                1       12     252
ki1114097-CMIN              BANGLADESH                                  1                0       30     252
ki1114097-CMIN              BANGLADESH                                  1                1       13     252
ki1114097-CMIN              BRAZIL                                      0                0      110     119
ki1114097-CMIN              BRAZIL                                      0                1        0     119
ki1114097-CMIN              BRAZIL                                      1                0        9     119
ki1114097-CMIN              BRAZIL                                      1                1        0     119
ki1114097-CMIN              GUINEA-BISSAU                               0                0      812     880
ki1114097-CMIN              GUINEA-BISSAU                               0                1       30     880
ki1114097-CMIN              GUINEA-BISSAU                               1                0       29     880
ki1114097-CMIN              GUINEA-BISSAU                               1                1        9     880
ki1114097-CMIN              PERU                                        0                0      588     630
ki1114097-CMIN              PERU                                        0                1        0     630
ki1114097-CMIN              PERU                                        1                0       40     630
ki1114097-CMIN              PERU                                        1                1        2     630
ki1114097-CONTENT           PERU                                        0                0      211     215
ki1114097-CONTENT           PERU                                        0                1        0     215
ki1114097-CONTENT           PERU                                        1                0        4     215
ki1114097-CONTENT           PERU                                        1                1        0     215
ki1119695-PROBIT            BELARUS                                     0                0    12301   16449
ki1119695-PROBIT            BELARUS                                     0                1        6   16449
ki1119695-PROBIT            BELARUS                                     1                0     4128   16449
ki1119695-PROBIT            BELARUS                                     1                1       14   16449
ki1126311-ZVITAMBO          ZIMBABWE                                    0                0     6741    8517
ki1126311-ZVITAMBO          ZIMBABWE                                    0                1      235    8517
ki1126311-ZVITAMBO          ZIMBABWE                                    1                0     1407    8517
ki1126311-ZVITAMBO          ZIMBABWE                                    1                1      134    8517
ki1135781-COHORTS           GUATEMALA                                   0                0      692     899
ki1135781-COHORTS           GUATEMALA                                   0                1       22     899
ki1135781-COHORTS           GUATEMALA                                   1                0      175     899
ki1135781-COHORTS           GUATEMALA                                   1                1       10     899
ki1135781-COHORTS           INDIA                                       0                0     4112    5884
ki1135781-COHORTS           INDIA                                       0                1      269    5884
ki1135781-COHORTS           INDIA                                       1                0     1132    5884
ki1135781-COHORTS           INDIA                                       1                1      371    5884
ki1135781-COHORTS           PHILIPPINES                                 0                0     2001    2756
ki1135781-COHORTS           PHILIPPINES                                 0                1      115    2756
ki1135781-COHORTS           PHILIPPINES                                 1                0      540    2756
ki1135781-COHORTS           PHILIPPINES                                 1                1      100    2756
ki1148112-iLiNS-DOSE        MALAWI                                      0                0      760     808
ki1148112-iLiNS-DOSE        MALAWI                                      0                1       42     808
ki1148112-iLiNS-DOSE        MALAWI                                      1                0        4     808
ki1148112-iLiNS-DOSE        MALAWI                                      1                1        2     808
ki1148112-iLiNS-DYAD-M      MALAWI                                      0                0      964    1023
ki1148112-iLiNS-DYAD-M      MALAWI                                      0                1       25    1023
ki1148112-iLiNS-DYAD-M      MALAWI                                      1                0       31    1023
ki1148112-iLiNS-DYAD-M      MALAWI                                      1                1        3    1023
ki1148112-LCNI-5            MALAWI                                      0                0      240     249
ki1148112-LCNI-5            MALAWI                                      0                1        6     249
ki1148112-LCNI-5            MALAWI                                      1                0        3     249
ki1148112-LCNI-5            MALAWI                                      1                1        0     249
kiGH5241-JiVitA-3           BANGLADESH                                  0                0     9867   14231
kiGH5241-JiVitA-3           BANGLADESH                                  0                1     2016   14231
kiGH5241-JiVitA-3           BANGLADESH                                  1                0     1433   14231
kiGH5241-JiVitA-3           BANGLADESH                                  1                1      915   14231
kiGH5241-JiVitA-4           BANGLADESH                                  0                0     4119    5025
kiGH5241-JiVitA-4           BANGLADESH                                  0                1      368    5025
kiGH5241-JiVitA-4           BANGLADESH                                  1                0      374    5025
kiGH5241-JiVitA-4           BANGLADESH                                  1                1      164    5025


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

* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* studyid: ki1114097-CMIN, country: BRAZIL
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/a4570d09-07c2-4c23-bda7-3e9d2012688c/43492787-fb8c-4556-b0e3-224877049c01/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a4570d09-07c2-4c23-bda7-3e9d2012688c/43492787-fb8c-4556-b0e3-224877049c01/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a4570d09-07c2-4c23-bda7-3e9d2012688c/43492787-fb8c-4556-b0e3-224877049c01/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a4570d09-07c2-4c23-bda7-3e9d2012688c/43492787-fb8c-4556-b0e3-224877049c01/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0270270   0.0036107   0.0504433
ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.2363636   0.1238495   0.3488778
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0375000   0.0079992   0.0670008
ki0047075b-MAL-ED          INDIA                          1                    NA                0.2972973   0.1929350   0.4016596
ki1000108-IRC              INDIA                          0                    NA                0.0374332   0.0101935   0.0646728
ki1000108-IRC              INDIA                          1                    NA                0.1838565   0.1329529   0.2347601
ki1000109-EE               PAKISTAN                       0                    NA                0.0516605   0.0252724   0.0780486
ki1000109-EE               PAKISTAN                       1                    NA                0.2941176   0.2055739   0.3826613
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1119403   0.0584347   0.1654459
ki1000109-ResPak           PAKISTAN                       1                    NA                0.3488372   0.2478784   0.4497960
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.1303907   0.1155216   0.1452598
ki1000304-VITAMIN-A        INDIA                          1                    NA                0.3495441   0.2980088   0.4010793
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1022945   0.0836988   0.1208901
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3621262   0.3131639   0.4110886
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1132075   0.0783383   0.1480768
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.4788732   0.3625250   0.5952215
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0545455   0.0300201   0.0790708
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2197802   0.1595604   0.2800001
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0418502   0.0234152   0.0602852
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1354839   0.0815614   0.1894063
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0430712   0.0258401   0.0603022
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1117021   0.0666433   0.1567610
ki1033518-iLiNS-DYAD-G     GHANA                          0                    NA                0.0810502   0.0629681   0.0991324
ki1033518-iLiNS-DYAD-G     GHANA                          1                    NA                0.4615385   0.3402824   0.5827946
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0248937   0.0173674   0.0324201
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1963636   0.1494007   0.2433266
ki1101329-Keneba           GAMBIA                         0                    NA                0.0508475   0.0407771   0.0609178
ki1101329-Keneba           GAMBIA                         1                    NA                0.2788732   0.2322135   0.3255330
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0931373   0.0649130   0.1213615
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4034091   0.3308695   0.4759487
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0574163   0.0258142   0.0890184
ki1114097-CMIN             BANGLADESH                     1                    NA                0.3023256   0.1647817   0.4398694
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0356295   0.0231019   0.0481570
ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.2368421   0.1015913   0.3720929
ki1119695-PROBIT           BELARUS                        0                    NA                0.0004875   0.0000008   0.0009742
ki1119695-PROBIT           BELARUS                        1                    NA                0.0033800   0.0000091   0.0067509
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0336869   0.0294528   0.0379210
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0869565   0.0728873   0.1010257
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0308123   0.0181298   0.0434949
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0540541   0.0214515   0.0866566
ki1135781-COHORTS          INDIA                          0                    NA                0.0614015   0.0542922   0.0685108
ki1135781-COHORTS          INDIA                          1                    NA                0.2468397   0.2250396   0.2686397
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0543478   0.0446867   0.0640089
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1562500   0.1281146   0.1843854
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1696541   0.1620038   0.1773044
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3896934   0.3680634   0.4113233
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0820147   0.0714681   0.0925613
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3048327   0.2611744   0.3484910


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.0750000   0.0416074   0.1083926
ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1196581   0.0779840   0.1613323
ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
ki1000109-EE               PAKISTAN                       NA                   NA                0.1179625   0.0851837   0.1507412
ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2045455   0.1511224   0.2579685
ki1000304-VITAMIN-A        INDIA                          NA                   NA                0.1617391   0.1466878   0.1767905
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1603563   0.1395035   0.1812092
ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1799486   0.1417254   0.2181718
ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1132813   0.0858017   0.1407608
ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0656814   0.0459906   0.0853723
ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0609418   0.0434802   0.0784034
ki1033518-iLiNS-DYAD-G     GHANA                          NA                   NA                0.1073326   0.0875449   0.1271203
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0494277   0.0397346   0.0591208
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0879121   0.0760335   0.0997907
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1866438   0.1550166   0.2182711
ki1114097-CMIN             BANGLADESH                     NA                   NA                0.0992063   0.0622241   0.1361886
ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0443182   0.0307131   0.0579233
ki1119695-PROBIT           BELARUS                        NA                   NA                0.0012159   0.0002433   0.0021885
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0433251   0.0390011   0.0476491
ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0355951   0.0234770   0.0477132
ki1135781-COHORTS          INDIA                          NA                   NA                0.1087695   0.1008135   0.1167256
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0780116   0.0679971   0.0880261
kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2059588   0.1983834   0.2135343
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1058706   0.0951082   0.1166330


### Parameter: RR


studyid                    country                        intervention_level   baseline_level    estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ---------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki0047075b-MAL-ED          BANGLADESH                     1                    0                 8.745454   3.2542894   23.502204
ki0047075b-MAL-ED          INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki0047075b-MAL-ED          INDIA                          1                    0                 7.927928   3.3499192   18.762256
ki1000108-IRC              INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000108-IRC              INDIA                          1                    0                 4.911595   2.2547088   10.699283
ki1000109-EE               PAKISTAN                       0                    0                 1.000000   1.0000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                 5.693277   3.1467625   10.300557
ki1000109-ResPak           PAKISTAN                       0                    0                 1.000000   1.0000000    1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                 3.116279   1.7822289    5.448905
ki1000304-VITAMIN-A        INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000304-VITAMIN-A        INDIA                          1                    0                 2.680745   2.2248835    3.230008
ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                 3.540038   2.8376671    4.416257
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 4.230047   2.8573937    6.262104
ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                 4.029304   2.3798879    6.821872
ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                 3.237351   1.7879808    5.861609
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 2.593432   1.4694036    4.577292
ki1033518-iLiNS-DYAD-G     GHANA                          0                    0                 1.000000   1.0000000    1.000000
ki1033518-iLiNS-DYAD-G     GHANA                          1                    0                 5.694475   4.0342860    8.037864
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.000000   1.0000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 7.888071   5.3647739   11.598189
ki1101329-Keneba           GAMBIA                         0                    0                 1.000000   1.0000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                 5.484507   4.2319493    7.107793
ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.000000   1.0000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                 4.331340   3.0450085    6.161068
ki1114097-CMIN             BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                 5.265504   2.5781863   10.753890
ki1114097-CMIN             GUINEA-BISSAU                  0                    0                 1.000000   1.0000000    1.000000
ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 6.647368   3.3993972   12.998630
ki1119695-PROBIT           BELARUS                        0                    0                 1.000000   1.0000000    1.000000
ki1119695-PROBIT           BELARUS                        1                    0                 6.932963   1.8068114   26.602654
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 2.581314   2.1031133    3.168246
ki1135781-COHORTS          GUATEMALA                      0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                 1.754300   0.8452357    3.641076
ki1135781-COHORTS          INDIA                          0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          INDIA                          1                    0                 4.020091   3.4753064    4.650276
ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.000000   1.0000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                 2.875000   2.2322786    3.702775
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 2.296987   2.1413382    2.463950
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 3.716805   3.0752062    4.492265


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0479730    0.0193712   0.0765747
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0821581    0.0445166   0.1197996
ki1000108-IRC              INDIA                          0                    NA                0.0796400    0.0474529   0.1118271
ki1000109-EE               PAKISTAN                       0                    NA                0.0663019    0.0387529   0.0938510
ki1000109-ResPak           PAKISTAN                       0                    NA                0.0926052    0.0453886   0.1398217
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.0313485    0.0230597   0.0396373
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0580619    0.0431660   0.0729578
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0667410    0.0404925   0.0929896
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0587358    0.0346265   0.0828451
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0238312    0.0089693   0.0386931
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0178707    0.0051183   0.0306230
ki1033518-iLiNS-DYAD-G     GHANA                          0                    NA                0.0262824    0.0158058   0.0367590
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0245339    0.0172182   0.0318496
ki1101329-Keneba           GAMBIA                         0                    NA                0.0370646    0.0285407   0.0455885
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0935066    0.0673566   0.1196565
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0417901    0.0151476   0.0684325
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0086887    0.0022302   0.0151473
ki1119695-PROBIT           BELARUS                        0                    NA                0.0007284   -0.0001416   0.0015983
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0096382    0.0069444   0.0123320
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0047828   -0.0024422   0.0120078
ki1135781-COHORTS          INDIA                          0                    NA                0.0473680    0.0411570   0.0535791
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0236638    0.0165713   0.0307563
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0363047    0.0323128   0.0402966
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0238559    0.0187572   0.0289547


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.6396396    0.2527566   0.8262151
ki0047075b-MAL-ED          INDIA                          0                    NA                0.6866071    0.3757083   0.8426776
ki1000108-IRC              INDIA                          0                    NA                0.6802585    0.3765411   0.8360202
ki1000109-EE               PAKISTAN                       0                    NA                0.5620597    0.3369023   0.7107640
ki1000109-ResPak           PAKISTAN                       0                    NA                0.4527363    0.1997756   0.6257331
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.1938212    0.1432880   0.2413737
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.3620804    0.2763681   0.4376403
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.3708895    0.2270307   0.4879744
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.5184953    0.3042028   0.6667897
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3628304    0.1264232   0.5352611
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2932414    0.0708881   0.4623815
ki1033518-iLiNS-DYAD-G     GHANA                          0                    NA                0.2448687    0.1508007   0.3285165
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4963602    0.3688026   0.5981399
ki1101329-Keneba           GAMBIA                         0                    NA                0.4216102    0.3349722   0.4969612
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.5009894    0.3670700   0.6065732
ki1114097-CMIN             BANGLADESH                     0                    NA                0.4212440    0.1463035   0.6076375
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.1960534    0.0505496   0.3192586
ki1119695-PROBIT           BELARUS                        0                    NA                0.5990331   -0.0451102   0.8461650
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2224619    0.1618396   0.2786995
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1343662   -0.0882265   0.3114285
ki1135781-COHORTS          INDIA                          0                    NA                0.4354899    0.3844691   0.4822816
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.3033367    0.2149251   0.3817918
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1762716    0.1571802   0.1949305
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2253310    0.1766499   0.2711338
