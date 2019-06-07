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

**Intervention Variable:** pers_wasted06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                         pers_wasted06   pers_wasted624   n_cell       n
--------------------------  -----------------------------  --------------  ---------------  -------  ------
ki0047075b-MAL-ED           BANGLADESH                                  0                0      218     240
ki0047075b-MAL-ED           BANGLADESH                                  0                1       15     240
ki0047075b-MAL-ED           BANGLADESH                                  1                0        4     240
ki0047075b-MAL-ED           BANGLADESH                                  1                1        3     240
ki0047075b-MAL-ED           BRAZIL                                      0                0      200     202
ki0047075b-MAL-ED           BRAZIL                                      0                1        1     202
ki0047075b-MAL-ED           BRAZIL                                      1                0        0     202
ki0047075b-MAL-ED           BRAZIL                                      1                1        1     202
ki0047075b-MAL-ED           INDIA                                       0                0      198     234
ki0047075b-MAL-ED           INDIA                                       0                1       18     234
ki0047075b-MAL-ED           INDIA                                       1                0        8     234
ki0047075b-MAL-ED           INDIA                                       1                1       10     234
ki0047075b-MAL-ED           NEPAL                                       0                0      229     234
ki0047075b-MAL-ED           NEPAL                                       0                1        1     234
ki0047075b-MAL-ED           NEPAL                                       1                0        3     234
ki0047075b-MAL-ED           NEPAL                                       1                1        1     234
ki0047075b-MAL-ED           PERU                                        0                0      262     264
ki0047075b-MAL-ED           PERU                                        0                1        2     264
ki0047075b-MAL-ED           PERU                                        1                0        0     264
ki0047075b-MAL-ED           PERU                                        1                1        0     264
ki0047075b-MAL-ED           SOUTH AFRICA                                0                0      255     258
ki0047075b-MAL-ED           SOUTH AFRICA                                0                1        1     258
ki0047075b-MAL-ED           SOUTH AFRICA                                1                0        1     258
ki0047075b-MAL-ED           SOUTH AFRICA                                1                1        1     258
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF                0                0      244     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF                0                1        0     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF                1                0        0     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF                1                1        0     244
ki1000107-Serrinha-VitA     BRAZIL                                      0                0       10      11
ki1000107-Serrinha-VitA     BRAZIL                                      0                1        1      11
ki1000107-Serrinha-VitA     BRAZIL                                      1                0        0      11
ki1000107-Serrinha-VitA     BRAZIL                                      1                1        0      11
ki1000108-CMC-V-BCS-2002    INDIA                                       0                0      302     368
ki1000108-CMC-V-BCS-2002    INDIA                                       0                1       12     368
ki1000108-CMC-V-BCS-2002    INDIA                                       1                0       38     368
ki1000108-CMC-V-BCS-2002    INDIA                                       1                1       16     368
ki1000108-IRC               INDIA                                       0                0      318     410
ki1000108-IRC               INDIA                                       0                1       25     410
ki1000108-IRC               INDIA                                       1                0       44     410
ki1000108-IRC               INDIA                                       1                1       23     410
ki1000109-EE                PAKISTAN                                    0                0      315     373
ki1000109-EE                PAKISTAN                                    0                1       30     373
ki1000109-EE                PAKISTAN                                    1                0       14     373
ki1000109-EE                PAKISTAN                                    1                1       14     373
ki1000109-ResPak            PAKISTAN                                    0                0      165     220
ki1000109-ResPak            PAKISTAN                                    0                1       30     220
ki1000109-ResPak            PAKISTAN                                    1                0       10     220
ki1000109-ResPak            PAKISTAN                                    1                1       15     220
ki1000304-VITAMIN-A         INDIA                                       0                0     1714    2300
ki1000304-VITAMIN-A         INDIA                                       0                1      257    2300
ki1000304-VITAMIN-A         INDIA                                       1                0      214    2300
ki1000304-VITAMIN-A         INDIA                                       1                1      115    2300
ki1000304b-SAS-CompFeed     INDIA                                       0                0     1056    1347
ki1000304b-SAS-CompFeed     INDIA                                       0                1      156    1347
ki1000304b-SAS-CompFeed     INDIA                                       1                0       75    1347
ki1000304b-SAS-CompFeed     INDIA                                       1                1       60    1347
ki1000304b-SAS-FoodSuppl    INDIA                                       0                0      282     389
ki1000304b-SAS-FoodSuppl    INDIA                                       0                1       36     389
ki1000304b-SAS-FoodSuppl    INDIA                                       1                0       37     389
ki1000304b-SAS-FoodSuppl    INDIA                                       1                1       34     389
ki1017093-NIH-Birth         BANGLADESH                                  0                0      393     512
ki1017093-NIH-Birth         BANGLADESH                                  0                1       33     512
ki1017093-NIH-Birth         BANGLADESH                                  1                0       61     512
ki1017093-NIH-Birth         BANGLADESH                                  1                1       25     512
ki1017093b-PROVIDE          BANGLADESH                                  0                0      562     609
ki1017093b-PROVIDE          BANGLADESH                                  0                1       34     609
ki1017093b-PROVIDE          BANGLADESH                                  1                0        7     609
ki1017093b-PROVIDE          BANGLADESH                                  1                1        6     609
ki1017093c-NIH-Crypto       BANGLADESH                                  0                0      664     722
ki1017093c-NIH-Crypto       BANGLADESH                                  0                1       40     722
ki1017093c-NIH-Crypto       BANGLADESH                                  1                0       14     722
ki1017093c-NIH-Crypto       BANGLADESH                                  1                1        4     722
ki1033518-iLiNS-DYAD-G      GHANA                                       0                0      829     941
ki1033518-iLiNS-DYAD-G      GHANA                                       0                1       89     941
ki1033518-iLiNS-DYAD-G      GHANA                                       1                0       11     941
ki1033518-iLiNS-DYAD-G      GHANA                                       1                1       12     941
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF                0                0     1808    1922
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF                0                1       69    1922
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF                1                0       19    1922
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF                1                1       26    1922
ki1101329-Keneba            GAMBIA                                      0                0     1966    2184
ki1101329-Keneba            GAMBIA                                      0                1      160    2184
ki1101329-Keneba            GAMBIA                                      1                0       26    2184
ki1101329-Keneba            GAMBIA                                      1                1       32    2184
ki1112895-Burkina Faso Zn   BURKINA FASO                                0                0       20      26
ki1112895-Burkina Faso Zn   BURKINA FASO                                0                1        4      26
ki1112895-Burkina Faso Zn   BURKINA FASO                                1                0        0      26
ki1112895-Burkina Faso Zn   BURKINA FASO                                1                1        2      26
ki1112895-Guatemala BSC     GUATEMALA                                   0                0      226     236
ki1112895-Guatemala BSC     GUATEMALA                                   0                1        3     236
ki1112895-Guatemala BSC     GUATEMALA                                   1                0        6     236
ki1112895-Guatemala BSC     GUATEMALA                                   1                1        1     236
ki1113344-GMS-Nepal         NEPAL                                       0                0      443     584
ki1113344-GMS-Nepal         NEPAL                                       0                1       68     584
ki1113344-GMS-Nepal         NEPAL                                       1                0       32     584
ki1113344-GMS-Nepal         NEPAL                                       1                1       41     584
ki1114097-CMIN              BANGLADESH                                  0                0      222     252
ki1114097-CMIN              BANGLADESH                                  0                1       20     252
ki1114097-CMIN              BANGLADESH                                  1                0        5     252
ki1114097-CMIN              BANGLADESH                                  1                1        5     252
ki1114097-CMIN              BRAZIL                                      0                0      114     119
ki1114097-CMIN              BRAZIL                                      0                1        0     119
ki1114097-CMIN              BRAZIL                                      1                0        5     119
ki1114097-CMIN              BRAZIL                                      1                1        0     119
ki1114097-CMIN              GUINEA-BISSAU                               0                0      816     880
ki1114097-CMIN              GUINEA-BISSAU                               0                1       32     880
ki1114097-CMIN              GUINEA-BISSAU                               1                0       25     880
ki1114097-CMIN              GUINEA-BISSAU                               1                1        7     880
ki1114097-CMIN              PERU                                        0                0      617     630
ki1114097-CMIN              PERU                                        0                1        1     630
ki1114097-CMIN              PERU                                        1                0       11     630
ki1114097-CMIN              PERU                                        1                1        1     630
ki1114097-CONTENT           PERU                                        0                0      215     215
ki1114097-CONTENT           PERU                                        0                1        0     215
ki1114097-CONTENT           PERU                                        1                0        0     215
ki1114097-CONTENT           PERU                                        1                1        0     215
ki1119695-PROBIT            BELARUS                                     0                0    15120   16449
ki1119695-PROBIT            BELARUS                                     0                1       11   16449
ki1119695-PROBIT            BELARUS                                     1                0     1309   16449
ki1119695-PROBIT            BELARUS                                     1                1        9   16449
ki1126311-ZVITAMBO          ZIMBABWE                                    0                0     7783    8517
ki1126311-ZVITAMBO          ZIMBABWE                                    0                1      312    8517
ki1126311-ZVITAMBO          ZIMBABWE                                    1                0      365    8517
ki1126311-ZVITAMBO          ZIMBABWE                                    1                1       57    8517
ki1135781-COHORTS           GUATEMALA                                   0                0      725     899
ki1135781-COHORTS           GUATEMALA                                   0                1       25     899
ki1135781-COHORTS           GUATEMALA                                   1                0      142     899
ki1135781-COHORTS           GUATEMALA                                   1                1        7     899
ki1135781-COHORTS           INDIA                                       0                0     4112    5884
ki1135781-COHORTS           INDIA                                       0                1      269    5884
ki1135781-COHORTS           INDIA                                       1                0     1132    5884
ki1135781-COHORTS           INDIA                                       1                1      371    5884
ki1135781-COHORTS           PHILIPPINES                                 0                0     2431    2756
ki1135781-COHORTS           PHILIPPINES                                 0                1      166    2756
ki1135781-COHORTS           PHILIPPINES                                 1                0      110    2756
ki1135781-COHORTS           PHILIPPINES                                 1                1       49    2756
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
kiGH5241-JiVitA-3           BANGLADESH                                  0                0    10864   14231
kiGH5241-JiVitA-3           BANGLADESH                                  0                1     2493   14231
kiGH5241-JiVitA-3           BANGLADESH                                  1                0      436   14231
kiGH5241-JiVitA-3           BANGLADESH                                  1                1      438   14231
kiGH5241-JiVitA-4           BANGLADESH                                  0                0     4124    5025
kiGH5241-JiVitA-4           BANGLADESH                                  0                1      369    5025
kiGH5241-JiVitA-4           BANGLADESH                                  1                0      369    5025
kiGH5241-JiVitA-4           BANGLADESH                                  1                1      163    5025


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
* studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/3ed283a1-5b6d-4d04-8aeb-61a3f5a37e8b/1bdd212e-0d40-4405-9a8b-8d3213c1cc70/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3ed283a1-5b6d-4d04-8aeb-61a3f5a37e8b/1bdd212e-0d40-4405-9a8b-8d3213c1cc70/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3ed283a1-5b6d-4d04-8aeb-61a3f5a37e8b/1bdd212e-0d40-4405-9a8b-8d3213c1cc70/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3ed283a1-5b6d-4d04-8aeb-61a3f5a37e8b/1bdd212e-0d40-4405-9a8b-8d3213c1cc70/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0833333    0.0463959   0.1202707
ki0047075b-MAL-ED          INDIA                          1                    NA                0.5555556    0.3255098   0.7856013
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0382166    0.0169822   0.0594509
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2962963    0.1743412   0.4182514
ki1000108-IRC              INDIA                          0                    NA                0.0728863    0.0453427   0.1004299
ki1000108-IRC              INDIA                          1                    NA                0.3432836    0.2294537   0.4571135
ki1000109-EE               PAKISTAN                       0                    NA                0.0869565    0.0571838   0.1167292
ki1000109-EE               PAKISTAN                       1                    NA                0.5000000    0.3145521   0.6854479
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1538462    0.1030901   0.2046022
ki1000109-ResPak           PAKISTAN                       1                    NA                0.6000000    0.4075256   0.7924744
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.1303907    0.1155216   0.1452598
ki1000304-VITAMIN-A        INDIA                          1                    NA                0.3495441    0.2980088   0.4010793
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1287129    0.1116650   0.1457608
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4444444    0.3899011   0.4989878
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1132075    0.0783383   0.1480768
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.4788732    0.3625250   0.5952215
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0774648    0.0520544   0.1028752
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2906977    0.1946339   0.3867615
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0570470    0.0383416   0.0757524
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4615385    0.2299587   0.6931182
ki1033518-iLiNS-DYAD-G     GHANA                          0                    NA                0.0969499    0.0777881   0.1161117
ki1033518-iLiNS-DYAD-G     GHANA                          1                    NA                0.5217391    0.3220417   0.7214365
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0367608    0.0282319   0.0452897
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5777778    0.4425939   0.7129617
ki1101329-Keneba           GAMBIA                         0                    NA                0.0752587    0.0640423   0.0864751
ki1101329-Keneba           GAMBIA                         1                    NA                0.5517241    0.4237073   0.6797410
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1330724    0.1035980   0.1625468
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5616438    0.4477231   0.6755646
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0826446    0.0478846   0.1174046
ki1114097-CMIN             BANGLADESH                     1                    NA                0.5000000    0.1894858   0.8105142
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0377358    0.0249031   0.0505686
ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.2187500    0.0754359   0.3620641
ki1119695-PROBIT           BELARUS                        0                    NA                0.0007270    0.0001693   0.0012847
ki1119695-PROBIT           BELARUS                        1                    NA                0.0068285   -0.0005804   0.0142374
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0385423    0.0343486   0.0427360
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1350711    0.1024582   0.1676839
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0333333    0.0204794   0.0461873
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0469799    0.0129858   0.0809740
ki1135781-COHORTS          INDIA                          0                    NA                0.0614015    0.0542922   0.0685108
ki1135781-COHORTS          INDIA                          1                    NA                0.2468397    0.2250396   0.2686397
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0639199    0.0545104   0.0733294
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.3081761    0.2363924   0.3799598
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1866437    0.1792213   0.1940661
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.5011442    0.4634721   0.5388162
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0821278    0.0715990   0.0926565
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3063910    0.2624801   0.3503019


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
ki1033518-iLiNS-DYAD-G     GHANA                          NA                   NA                0.1073326   0.0875449   0.1271203
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0494277   0.0397346   0.0591208
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0879121   0.0760335   0.0997906
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


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki0047075b-MAL-ED          INDIA                          1                    0                  6.666667    3.6347655   12.227596
ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  7.753086    3.8830245   15.480291
ki1000108-IRC              INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki1000108-IRC              INDIA                          1                    0                  4.709851    2.8488169    7.786634
ki1000109-EE               PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                  5.750000    3.4709578    9.525469
ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                  3.900000    2.4616043    6.178897
ki1000304-VITAMIN-A        INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki1000304-VITAMIN-A        INDIA                          1                    0                  2.680745    2.2248835    3.230008
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  3.452991    2.9127890    4.093379
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  4.230047    2.8573937    6.262104
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  3.752643    2.3557005    5.977979
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                  8.090498    4.4428462   14.732933
ki1033518-iLiNS-DYAD-G     GHANA                          0                    0                  1.000000    1.0000000    1.000000
ki1033518-iLiNS-DYAD-G     GHANA                          1                    0                  5.381534    3.4980369    8.279189
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.0000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 15.717230   11.3051045   21.851309
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.0000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  7.331035    5.5641483    9.658992
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.0000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  4.220588    3.1256453    5.699100
ki1114097-CMIN             BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                  6.050000    2.8576700   12.808512
ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000    1.0000000    1.000000
ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  5.796875    2.7708845   12.127449
ki1119695-PROBIT           BELARUS                        0                    0                  1.000000    1.0000000    1.000000
ki1119695-PROBIT           BELARUS                        1                    0                  9.392951    3.6435746   24.214551
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.0000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  3.504489    2.6891107    4.567101
ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.0000000    1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                  1.409396    0.6207871    3.199804
ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.0000000    1.000000
ki1135781-COHORTS          INDIA                          1                    0                  4.020091    3.4753064    4.650276
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.0000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  4.821285    3.6601077    6.350849
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  2.685031    2.4713202    2.917223
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  3.730663    3.0878604    4.507278


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0363248    0.0121946   0.0604550
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0378704    0.0174437   0.0582971
ki1000108-IRC              INDIA                          0                    NA                0.0441869    0.0227356   0.0656381
ki1000109-EE               PAKISTAN                       0                    NA                0.0310059    0.0130864   0.0489255
ki1000109-ResPak           PAKISTAN                       0                    NA                0.0506993    0.0213167   0.0800819
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.0313485    0.0230597   0.0396373
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0316435    0.0211810   0.0421059
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0667410    0.0404925   0.0929896
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0358165    0.0177514   0.0538816
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0086345    0.0011959   0.0160731
ki1033518-iLiNS-DYAD-G     GHANA                          0                    NA                0.0103827    0.0038453   0.0169201
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0126669    0.0076819   0.0176519
ki1101329-Keneba           GAMBIA                         0                    NA                0.0126534    0.0079657   0.0173411
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0535714    0.0348972   0.0722456
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0165617    0.0005829   0.0325406
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0065823    0.0008907   0.0122739
ki1119695-PROBIT           BELARUS                        0                    NA                0.0004889   -0.0000743   0.0010521
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0047828    0.0030939   0.0064717
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0022618   -0.0037709   0.0082944
ki1135781-COHORTS          INDIA                          0                    NA                0.0473680    0.0411570   0.0535791
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0140917    0.0094047   0.0187787
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0193151    0.0165309   0.0220993
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0237429    0.0186562   0.0288295


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.3035714    0.1010431   0.4604716
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.4977252    0.2403050   0.6679194
ki1000108-IRC              INDIA                          0                    NA                0.3774295    0.1968198   0.5174259
ki1000109-EE               PAKISTAN                       0                    NA                0.2628458    0.1121799   0.3879433
ki1000109-ResPak           PAKISTAN                       0                    NA                0.2478632    0.1006993   0.3709449
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.1938212    0.1432880   0.2413737
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1973322    0.1409545   0.2500100
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.3708895    0.2270307   0.4879744
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.3161729    0.1565731   0.4455720
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1314597    0.0171084   0.2325073
ki1033518-iLiNS-DYAD-G     GHANA                          0                    NA                0.0967342    0.0359165   0.1537153
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2562712    0.1620791   0.3398750
ki1101329-Keneba           GAMBIA                         0                    NA                0.1439323    0.0921530   0.1927583
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.2870249    0.1891040   0.3731212
ki1114097-CMIN             BANGLADESH                     0                    NA                0.1669421    0.0014737   0.3049904
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.1485244    0.0188026   0.2610961
ki1119695-PROBIT           BELARUS                        0                    NA                0.4020917    0.1022350   0.6017952
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1103933    0.0720685   0.1471353
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0635417   -0.1206975   0.2174925
ki1135781-COHORTS          INDIA                          0                    NA                0.4354899    0.3844691   0.4822816
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1806360    0.1225770   0.2348532
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0937814    0.0805546   0.1068180
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2242632    0.1757884   0.2698871
