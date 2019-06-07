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

**Intervention Variable:** ever_co06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                         ever_co06   pers_wasted624   n_cell       n
--------------------------  -----------------------------  ----------  ---------------  -------  ------
ki0047075b-MAL-ED           BANGLADESH                              0                0      215     240
ki0047075b-MAL-ED           BANGLADESH                              0                1       16     240
ki0047075b-MAL-ED           BANGLADESH                              1                0        7     240
ki0047075b-MAL-ED           BANGLADESH                              1                1        2     240
ki0047075b-MAL-ED           BRAZIL                                  0                0      200     202
ki0047075b-MAL-ED           BRAZIL                                  0                1        2     202
ki0047075b-MAL-ED           BRAZIL                                  1                0        0     202
ki0047075b-MAL-ED           BRAZIL                                  1                1        0     202
ki0047075b-MAL-ED           INDIA                                   0                0      196     234
ki0047075b-MAL-ED           INDIA                                   0                1       21     234
ki0047075b-MAL-ED           INDIA                                   1                0       10     234
ki0047075b-MAL-ED           INDIA                                   1                1        7     234
ki0047075b-MAL-ED           NEPAL                                   0                0      227     234
ki0047075b-MAL-ED           NEPAL                                   0                1        1     234
ki0047075b-MAL-ED           NEPAL                                   1                0        5     234
ki0047075b-MAL-ED           NEPAL                                   1                1        1     234
ki0047075b-MAL-ED           PERU                                    0                0      261     264
ki0047075b-MAL-ED           PERU                                    0                1        2     264
ki0047075b-MAL-ED           PERU                                    1                0        1     264
ki0047075b-MAL-ED           PERU                                    1                1        0     264
ki0047075b-MAL-ED           SOUTH AFRICA                            0                0      252     258
ki0047075b-MAL-ED           SOUTH AFRICA                            0                1        2     258
ki0047075b-MAL-ED           SOUTH AFRICA                            1                0        4     258
ki0047075b-MAL-ED           SOUTH AFRICA                            1                1        0     258
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF            0                0      240     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF            0                1        0     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF            1                0        4     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF            1                1        0     244
ki1000107-Serrinha-VitA     BRAZIL                                  0                0       10      11
ki1000107-Serrinha-VitA     BRAZIL                                  0                1        1      11
ki1000107-Serrinha-VitA     BRAZIL                                  1                0        0      11
ki1000107-Serrinha-VitA     BRAZIL                                  1                1        0      11
ki1000108-CMC-V-BCS-2002    INDIA                                   0                0      314     368
ki1000108-CMC-V-BCS-2002    INDIA                                   0                1       22     368
ki1000108-CMC-V-BCS-2002    INDIA                                   1                0       26     368
ki1000108-CMC-V-BCS-2002    INDIA                                   1                1        6     368
ki1000108-IRC               INDIA                                   0                0      343     410
ki1000108-IRC               INDIA                                   0                1       42     410
ki1000108-IRC               INDIA                                   1                0       19     410
ki1000108-IRC               INDIA                                   1                1        6     410
ki1000109-EE                PAKISTAN                                0                0      301     372
ki1000109-EE                PAKISTAN                                0                1       19     372
ki1000109-EE                PAKISTAN                                1                0       27     372
ki1000109-EE                PAKISTAN                                1                1       25     372
ki1000109-ResPak            PAKISTAN                                0                0      168     220
ki1000109-ResPak            PAKISTAN                                0                1       42     220
ki1000109-ResPak            PAKISTAN                                1                0        7     220
ki1000109-ResPak            PAKISTAN                                1                1        3     220
ki1000304-VITAMIN-A         INDIA                                   0                0     1884    2302
ki1000304-VITAMIN-A         INDIA                                   0                1      341    2302
ki1000304-VITAMIN-A         INDIA                                   1                0       44    2302
ki1000304-VITAMIN-A         INDIA                                   1                1       33    2302
ki1000304b-SAS-CompFeed     INDIA                                   0                0     1088    1346
ki1000304b-SAS-CompFeed     INDIA                                   0                1      168    1346
ki1000304b-SAS-CompFeed     INDIA                                   1                0       42    1346
ki1000304b-SAS-CompFeed     INDIA                                   1                1       48    1346
ki1000304b-SAS-FoodSuppl    INDIA                                   0                0      298     387
ki1000304b-SAS-FoodSuppl    INDIA                                   0                1       59     387
ki1000304b-SAS-FoodSuppl    INDIA                                   1                0       19     387
ki1000304b-SAS-FoodSuppl    INDIA                                   1                1       11     387
ki1017093-NIH-Birth         BANGLADESH                              0                0      429     512
ki1017093-NIH-Birth         BANGLADESH                              0                1       46     512
ki1017093-NIH-Birth         BANGLADESH                              1                0       25     512
ki1017093-NIH-Birth         BANGLADESH                              1                1       12     512
ki1017093b-PROVIDE          BANGLADESH                              0                0      551     609
ki1017093b-PROVIDE          BANGLADESH                              0                1       30     609
ki1017093b-PROVIDE          BANGLADESH                              1                0       18     609
ki1017093b-PROVIDE          BANGLADESH                              1                1       10     609
ki1017093c-NIH-Crypto       BANGLADESH                              0                0      664     722
ki1017093c-NIH-Crypto       BANGLADESH                              0                1       40     722
ki1017093c-NIH-Crypto       BANGLADESH                              1                0       14     722
ki1017093c-NIH-Crypto       BANGLADESH                              1                1        4     722
ki1033518-iLiNS-DYAD-G      GHANA                                   0                0      834     941
ki1033518-iLiNS-DYAD-G      GHANA                                   0                1       96     941
ki1033518-iLiNS-DYAD-G      GHANA                                   1                0        6     941
ki1033518-iLiNS-DYAD-G      GHANA                                   1                1        5     941
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF            0                0     1820    1922
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF            0                1       85    1922
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF            1                0        7    1922
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF            1                1       10    1922
ki1101329-Keneba            GAMBIA                                  0                0     1963    2187
ki1101329-Keneba            GAMBIA                                  0                1      166    2187
ki1101329-Keneba            GAMBIA                                  1                0       32    2187
ki1101329-Keneba            GAMBIA                                  1                1       26    2187
ki1112895-Burkina Faso Zn   BURKINA FASO                            0                0       20      26
ki1112895-Burkina Faso Zn   BURKINA FASO                            0                1        4      26
ki1112895-Burkina Faso Zn   BURKINA FASO                            1                0        0      26
ki1112895-Burkina Faso Zn   BURKINA FASO                            1                1        2      26
ki1112895-Guatemala BSC     GUATEMALA                               0                0      228     236
ki1112895-Guatemala BSC     GUATEMALA                               0                1        3     236
ki1112895-Guatemala BSC     GUATEMALA                               1                0        4     236
ki1112895-Guatemala BSC     GUATEMALA                               1                1        1     236
ki1113344-GMS-Nepal         NEPAL                                   0                0      464     584
ki1113344-GMS-Nepal         NEPAL                                   0                1       96     584
ki1113344-GMS-Nepal         NEPAL                                   1                0       11     584
ki1113344-GMS-Nepal         NEPAL                                   1                1       13     584
ki1114097-CMIN              BANGLADESH                              0                0      222     252
ki1114097-CMIN              BANGLADESH                              0                1       19     252
ki1114097-CMIN              BANGLADESH                              1                0        5     252
ki1114097-CMIN              BANGLADESH                              1                1        6     252
ki1114097-CMIN              BRAZIL                                  0                0      119     119
ki1114097-CMIN              BRAZIL                                  0                1        0     119
ki1114097-CMIN              BRAZIL                                  1                0        0     119
ki1114097-CMIN              BRAZIL                                  1                1        0     119
ki1114097-CMIN              GUINEA-BISSAU                           0                0      837     879
ki1114097-CMIN              GUINEA-BISSAU                           0                1       37     879
ki1114097-CMIN              GUINEA-BISSAU                           1                0        3     879
ki1114097-CMIN              GUINEA-BISSAU                           1                1        2     879
ki1114097-CMIN              PERU                                    0                0      621     630
ki1114097-CMIN              PERU                                    0                1        1     630
ki1114097-CMIN              PERU                                    1                0        7     630
ki1114097-CMIN              PERU                                    1                1        1     630
ki1114097-CONTENT           PERU                                    0                0      215     215
ki1114097-CONTENT           PERU                                    0                1        0     215
ki1114097-CONTENT           PERU                                    1                0        0     215
ki1114097-CONTENT           PERU                                    1                1        0     215
ki1119695-PROBIT            BELARUS                                 0                0    16411   16449
ki1119695-PROBIT            BELARUS                                 0                1       20   16449
ki1119695-PROBIT            BELARUS                                 1                0       18   16449
ki1119695-PROBIT            BELARUS                                 1                1        0   16449
ki1126311-ZVITAMBO          ZIMBABWE                                0                0     8079    8519
ki1126311-ZVITAMBO          ZIMBABWE                                0                1      352    8519
ki1126311-ZVITAMBO          ZIMBABWE                                1                0       71    8519
ki1126311-ZVITAMBO          ZIMBABWE                                1                1       17    8519
ki1135781-COHORTS           GUATEMALA                               0                0      853     898
ki1135781-COHORTS           GUATEMALA                               0                1       28     898
ki1135781-COHORTS           GUATEMALA                               1                0       13     898
ki1135781-COHORTS           GUATEMALA                               1                1        4     898
ki1135781-COHORTS           INDIA                                   0                0     5178    5886
ki1135781-COHORTS           INDIA                                   0                1      569    5886
ki1135781-COHORTS           INDIA                                   1                0       67    5886
ki1135781-COHORTS           INDIA                                   1                1       72    5886
ki1135781-COHORTS           PHILIPPINES                             0                0     2505    2756
ki1135781-COHORTS           PHILIPPINES                             0                1      190    2756
ki1135781-COHORTS           PHILIPPINES                             1                0       36    2756
ki1135781-COHORTS           PHILIPPINES                             1                1       25    2756
ki1148112-iLiNS-DOSE        MALAWI                                  0                0      760     807
ki1148112-iLiNS-DOSE        MALAWI                                  0                1       43     807
ki1148112-iLiNS-DOSE        MALAWI                                  1                0        3     807
ki1148112-iLiNS-DOSE        MALAWI                                  1                1        1     807
ki1148112-iLiNS-DYAD-M      MALAWI                                  0                0      992    1025
ki1148112-iLiNS-DYAD-M      MALAWI                                  0                1       27    1025
ki1148112-iLiNS-DYAD-M      MALAWI                                  1                0        5    1025
ki1148112-iLiNS-DYAD-M      MALAWI                                  1                1        1    1025
ki1148112-LCNI-5            MALAWI                                  0                0      243     249
ki1148112-LCNI-5            MALAWI                                  0                1        6     249
ki1148112-LCNI-5            MALAWI                                  1                0        0     249
ki1148112-LCNI-5            MALAWI                                  1                1        0     249
kiGH5241-JiVitA-3           BANGLADESH                              0                0    11022   14216
kiGH5241-JiVitA-3           BANGLADESH                              0                1     2732   14216
kiGH5241-JiVitA-3           BANGLADESH                              1                0      271   14216
kiGH5241-JiVitA-3           BANGLADESH                              1                1      191   14216
kiGH5241-JiVitA-4           BANGLADESH                              0                0     4406    5024
kiGH5241-JiVitA-4           BANGLADESH                              0                1      485    5024
kiGH5241-JiVitA-4           BANGLADESH                              1                0       86    5024
kiGH5241-JiVitA-4           BANGLADESH                              1                1       47    5024


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
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/90c17db4-525b-4e93-9ec6-46586dbfc176/bc4d832d-2484-4ce9-ac24-47610076bff8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/90c17db4-525b-4e93-9ec6-46586dbfc176/bc4d832d-2484-4ce9-ac24-47610076bff8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/90c17db4-525b-4e93-9ec6-46586dbfc176/bc4d832d-2484-4ce9-ac24-47610076bff8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/90c17db4-525b-4e93-9ec6-46586dbfc176/bc4d832d-2484-4ce9-ac24-47610076bff8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0967742   0.0573533   0.1361951
ki0047075b-MAL-ED          INDIA                          1                    NA                0.4117647   0.1773128   0.6462166
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0654762   0.0389908   0.0919616
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1875000   0.0520820   0.3229180
ki1000108-IRC              INDIA                          0                    NA                0.1090909   0.0779121   0.1402697
ki1000108-IRC              INDIA                          1                    NA                0.2400000   0.0723820   0.4076180
ki1000109-EE               PAKISTAN                       0                    NA                0.0593750   0.0334471   0.0853029
ki1000109-EE               PAKISTAN                       1                    NA                0.4807692   0.3447878   0.6167506
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.1532584   0.1382869   0.1682299
ki1000304-VITAMIN-A        INDIA                          1                    NA                0.4285714   0.3180136   0.5391293
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1337580   0.1145801   0.1529358
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.5333333   0.4788565   0.5878101
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1652661   0.1266879   0.2038443
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.3666667   0.1940029   0.5393304
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0968421   0.0702202   0.1234641
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.3243243   0.1733404   0.4753082
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0516351   0.0336266   0.0696436
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3571429   0.1795178   0.5347679
ki1033518-iLiNS-DYAD-G     GHANA                          0                    NA                0.1032258   0.0833940   0.1230576
ki1033518-iLiNS-DYAD-G     GHANA                          1                    NA                0.4545455   0.3168836   0.5922073
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0446194   0.0351918   0.0540470
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5882353   0.5054426   0.6710280
ki1101329-Keneba           GAMBIA                         0                    NA                0.0779709   0.0665789   0.0893628
ki1101329-Keneba           GAMBIA                         1                    NA                0.4482759   0.3202590   0.5762927
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1714286   0.1401870   0.2026701
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5416667   0.3421536   0.7411798
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0788382   0.0447472   0.1129291
ki1114097-CMIN             BANGLADESH                     1                    NA                0.5454545   0.2506168   0.8402923
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0417507   0.0374167   0.0460847
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1931818   0.1590973   0.2272663
ki1135781-COHORTS          INDIA                          0                    NA                0.0990082   0.0912747   0.1067417
ki1135781-COHORTS          INDIA                          1                    NA                0.5179856   0.4395125   0.5964587
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0705009   0.0608060   0.0801959
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.4098361   0.3005502   0.5191219
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1986331   0.1911206   0.2061456
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4134199   0.3649300   0.4619098
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0991617   0.0886225   0.1097010
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3533835   0.2535834   0.4531835


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1196581   0.0779840   0.1613323
ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0760870   0.0489610   0.1032130
ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
ki1000109-EE               PAKISTAN                       NA                   NA                0.1182796   0.0854185   0.1511406
ki1000304-VITAMIN-A        INDIA                          NA                   NA                0.1624674   0.1473953   0.1775395
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1604755   0.1397079   0.1812430
ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1808786   0.1424794   0.2192777
ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1132813   0.0858017   0.1407608
ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0656814   0.0459906   0.0853723
ki1033518-iLiNS-DYAD-G     GHANA                          NA                   NA                0.1073326   0.0875449   0.1271203
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0494277   0.0397346   0.0591208
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0877915   0.0759284   0.0996545
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1866438   0.1550166   0.2182711
ki1114097-CMIN             BANGLADESH                     NA                   NA                0.0992063   0.0622241   0.1361886
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0433149   0.0389920   0.0476379
ki1135781-COHORTS          INDIA                          NA                   NA                0.1089025   0.1009435   0.1168614
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0780116   0.0679971   0.0880261
kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2056134   0.1980359   0.2131909
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1058917   0.0951201   0.1166633


### Parameter: RR


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000    1.000000    1.000000
ki0047075b-MAL-ED          INDIA                          1                    0                  4.254902    2.112725    8.569117
ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  2.863636    1.251448    6.552742
ki1000108-IRC              INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000108-IRC              INDIA                          1                    0                  2.200000    1.034411    4.678991
ki1000109-EE               PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                  8.097166    4.812593   13.623445
ki1000304-VITAMIN-A        INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000304-VITAMIN-A        INDIA                          1                    0                  2.796397    2.122271    3.684656
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  3.987302    3.268758    4.863797
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  2.218644    1.311686    3.752715
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  3.349001    1.950375    5.750590
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                  6.916667    3.767778   12.697212
ki1033518-iLiNS-DYAD-G     GHANA                          0                    0                  1.000000    1.000000    1.000000
ki1033518-iLiNS-DYAD-G     GHANA                          1                    0                  4.403409    3.076295    6.303041
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 13.183391   10.227518   16.993545
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  5.749273    4.171570    7.923669
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  3.159722    2.094957    4.765655
ki1114097-CMIN             BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                  6.918660    3.462552   13.824446
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  4.627034    3.770494    5.678152
ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1135781-COHORTS          INDIA                          1                    0                  5.231746    4.411864    6.203990
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  5.813201    4.306406    7.847217
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  2.081324    1.843678    2.349602
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  3.563708    2.643041    4.805077


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0228839    0.0026719   0.0430960
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0106108   -0.0018928   0.0231144
ki1000108-IRC              INDIA                          0                    NA                0.0079823   -0.0028479   0.0188124
ki1000109-EE               PAKISTAN                       0                    NA                0.0589046    0.0345010   0.0833081
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.0092090    0.0049643   0.0134537
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0267175    0.0189642   0.0344709
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0156124    0.0008828   0.0303421
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0164391    0.0042395   0.0286388
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0140463    0.0043899   0.0237028
ki1033518-iLiNS-DYAD-G     GHANA                          0                    NA                0.0041068   -0.0001261   0.0083397
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0048083    0.0017227   0.0078938
ki1101329-Keneba           GAMBIA                         0                    NA                0.0098206    0.0055970   0.0140442
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0152153    0.0049943   0.0254362
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0203682    0.0028480   0.0378883
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0015643    0.0006458   0.0024827
ki1135781-COHORTS          INDIA                          0                    NA                0.0098943    0.0073393   0.0124493
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0075107    0.0041943   0.0108271
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0069803    0.0052762   0.0086843
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0067300    0.0035195   0.0099405


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.1912442    0.0163422   0.3350473
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.1394558   -0.0336740   0.2835881
ki1000108-IRC              INDIA                          0                    NA                0.0681818   -0.0275834   0.1550223
ki1000109-EE               PAKISTAN                       0                    NA                0.4980114    0.3078452   0.6359303
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.0566821    0.0305374   0.0821217
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1664897    0.1205542   0.2100260
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0863145    0.0024951   0.1630907
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1451180    0.0355449   0.2422423
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2138554    0.0677466   0.3370651
ki1033518-iLiNS-DYAD-G     GHANA                          0                    NA                0.0382625   -0.0019422   0.0768540
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0972786    0.0345346   0.1559450
ki1101329-Keneba           GAMBIA                         0                    NA                0.1118630    0.0645469   0.1567857
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0815203    0.0261723   0.1337226
ki1114097-CMIN             BANGLADESH                     0                    NA                0.2053112    0.0251928   0.3521485
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0361137    0.0147085   0.0570538
ki1135781-COHORTS          INDIA                          0                    NA                0.0908547    0.0678207   0.1133195
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0962765    0.0542642   0.1364225
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0339485    0.0257202   0.0421073
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0635554    0.0335107   0.0926661
