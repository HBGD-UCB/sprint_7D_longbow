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

**Intervention Variable:** ever_stunted06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                         ever_stunted06   pers_wasted624   n_cell       n
--------------------------  -----------------------------  ---------------  ---------------  -------  ------
ki0047075b-MAL-ED           BANGLADESH                                   0                0      149     240
ki0047075b-MAL-ED           BANGLADESH                                   0                1       11     240
ki0047075b-MAL-ED           BANGLADESH                                   1                0       73     240
ki0047075b-MAL-ED           BANGLADESH                                   1                1        7     240
ki0047075b-MAL-ED           BRAZIL                                       0                0      165     202
ki0047075b-MAL-ED           BRAZIL                                       0                1        2     202
ki0047075b-MAL-ED           BRAZIL                                       1                0       35     202
ki0047075b-MAL-ED           BRAZIL                                       1                1        0     202
ki0047075b-MAL-ED           INDIA                                        0                0      139     234
ki0047075b-MAL-ED           INDIA                                        0                1       15     234
ki0047075b-MAL-ED           INDIA                                        1                0       67     234
ki0047075b-MAL-ED           INDIA                                        1                1       13     234
ki0047075b-MAL-ED           NEPAL                                        0                0      194     234
ki0047075b-MAL-ED           NEPAL                                        0                1        1     234
ki0047075b-MAL-ED           NEPAL                                        1                0       38     234
ki0047075b-MAL-ED           NEPAL                                        1                1        1     234
ki0047075b-MAL-ED           PERU                                         0                0      144     264
ki0047075b-MAL-ED           PERU                                         0                1        0     264
ki0047075b-MAL-ED           PERU                                         1                0      118     264
ki0047075b-MAL-ED           PERU                                         1                1        2     264
ki0047075b-MAL-ED           SOUTH AFRICA                                 0                0      157     258
ki0047075b-MAL-ED           SOUTH AFRICA                                 0                1        2     258
ki0047075b-MAL-ED           SOUTH AFRICA                                 1                0       99     258
ki0047075b-MAL-ED           SOUTH AFRICA                                 1                1        0     258
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF                 0                0      146     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF                 0                1        0     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF                 1                0       98     244
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF                 1                1        0     244
ki1000107-Serrinha-VitA     BRAZIL                                       0                0        9      11
ki1000107-Serrinha-VitA     BRAZIL                                       0                1        1      11
ki1000107-Serrinha-VitA     BRAZIL                                       1                0        1      11
ki1000107-Serrinha-VitA     BRAZIL                                       1                1        0      11
ki1000108-CMC-V-BCS-2002    INDIA                                        0                0      171     368
ki1000108-CMC-V-BCS-2002    INDIA                                        0                1       11     368
ki1000108-CMC-V-BCS-2002    INDIA                                        1                0      169     368
ki1000108-CMC-V-BCS-2002    INDIA                                        1                1       17     368
ki1000108-IRC               INDIA                                        0                0      213     410
ki1000108-IRC               INDIA                                        0                1       28     410
ki1000108-IRC               INDIA                                        1                0      149     410
ki1000108-IRC               INDIA                                        1                1       20     410
ki1000109-EE                PAKISTAN                                     0                0       89     373
ki1000109-EE                PAKISTAN                                     0                1        7     373
ki1000109-EE                PAKISTAN                                     1                0      240     373
ki1000109-EE                PAKISTAN                                     1                1       37     373
ki1000109-ResPak            PAKISTAN                                     0                0       77     220
ki1000109-ResPak            PAKISTAN                                     0                1       16     220
ki1000109-ResPak            PAKISTAN                                     1                0       98     220
ki1000109-ResPak            PAKISTAN                                     1                1       29     220
ki1000304-VITAMIN-A         INDIA                                        0                0     1457    2300
ki1000304-VITAMIN-A         INDIA                                        0                1      225    2300
ki1000304-VITAMIN-A         INDIA                                        1                0      471    2300
ki1000304-VITAMIN-A         INDIA                                        1                1      147    2300
ki1000304b-SAS-CompFeed     INDIA                                        0                0      719    1347
ki1000304b-SAS-CompFeed     INDIA                                        0                1       95    1347
ki1000304b-SAS-CompFeed     INDIA                                        1                0      412    1347
ki1000304b-SAS-CompFeed     INDIA                                        1                1      121    1347
ki1000304b-SAS-FoodSuppl    INDIA                                        0                0      198     389
ki1000304b-SAS-FoodSuppl    INDIA                                        0                1       35     389
ki1000304b-SAS-FoodSuppl    INDIA                                        1                0      121     389
ki1000304b-SAS-FoodSuppl    INDIA                                        1                1       35     389
ki1017093-NIH-Birth         BANGLADESH                                   0                0      303     512
ki1017093-NIH-Birth         BANGLADESH                                   0                1       31     512
ki1017093-NIH-Birth         BANGLADESH                                   1                0      151     512
ki1017093-NIH-Birth         BANGLADESH                                   1                1       27     512
ki1017093b-PROVIDE          BANGLADESH                                   0                0      431     609
ki1017093b-PROVIDE          BANGLADESH                                   0                1       20     609
ki1017093b-PROVIDE          BANGLADESH                                   1                0      138     609
ki1017093b-PROVIDE          BANGLADESH                                   1                1       20     609
ki1017093c-NIH-Crypto       BANGLADESH                                   0                0      481     722
ki1017093c-NIH-Crypto       BANGLADESH                                   0                1       21     722
ki1017093c-NIH-Crypto       BANGLADESH                                   1                0      197     722
ki1017093c-NIH-Crypto       BANGLADESH                                   1                1       23     722
ki1033518-iLiNS-DYAD-G      GHANA                                        0                0      750     941
ki1033518-iLiNS-DYAD-G      GHANA                                        0                1       74     941
ki1033518-iLiNS-DYAD-G      GHANA                                        1                0       90     941
ki1033518-iLiNS-DYAD-G      GHANA                                        1                1       27     941
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF                 0                0     1461    1922
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF                 0                1       61    1922
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF                 1                0      366    1922
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF                 1                1       34    1922
ki1101329-Keneba            GAMBIA                                       0                0     1402    2184
ki1101329-Keneba            GAMBIA                                       0                1       93    2184
ki1101329-Keneba            GAMBIA                                       1                0      590    2184
ki1101329-Keneba            GAMBIA                                       1                1       99    2184
ki1112895-Burkina Faso Zn   BURKINA FASO                                 0                0       20      26
ki1112895-Burkina Faso Zn   BURKINA FASO                                 0                1        3      26
ki1112895-Burkina Faso Zn   BURKINA FASO                                 1                0        0      26
ki1112895-Burkina Faso Zn   BURKINA FASO                                 1                1        3      26
ki1112895-Guatemala BSC     GUATEMALA                                    0                0      161     236
ki1112895-Guatemala BSC     GUATEMALA                                    0                1        1     236
ki1112895-Guatemala BSC     GUATEMALA                                    1                0       71     236
ki1112895-Guatemala BSC     GUATEMALA                                    1                1        3     236
ki1113344-GMS-Nepal         NEPAL                                        0                0      358     584
ki1113344-GMS-Nepal         NEPAL                                        0                1       63     584
ki1113344-GMS-Nepal         NEPAL                                        1                0      117     584
ki1113344-GMS-Nepal         NEPAL                                        1                1       46     584
ki1114097-CMIN              BANGLADESH                                   0                0      108     252
ki1114097-CMIN              BANGLADESH                                   0                1        3     252
ki1114097-CMIN              BANGLADESH                                   1                0      119     252
ki1114097-CMIN              BANGLADESH                                   1                1       22     252
ki1114097-CMIN              BRAZIL                                       0                0      107     119
ki1114097-CMIN              BRAZIL                                       0                1        0     119
ki1114097-CMIN              BRAZIL                                       1                0       12     119
ki1114097-CMIN              BRAZIL                                       1                1        0     119
ki1114097-CMIN              GUINEA-BISSAU                                0                0      726     880
ki1114097-CMIN              GUINEA-BISSAU                                0                1       29     880
ki1114097-CMIN              GUINEA-BISSAU                                1                0      115     880
ki1114097-CMIN              GUINEA-BISSAU                                1                1       10     880
ki1114097-CMIN              PERU                                         0                0      550     630
ki1114097-CMIN              PERU                                         0                1        1     630
ki1114097-CMIN              PERU                                         1                0       78     630
ki1114097-CMIN              PERU                                         1                1        1     630
ki1114097-CONTENT           PERU                                         0                0      167     215
ki1114097-CONTENT           PERU                                         0                1        0     215
ki1114097-CONTENT           PERU                                         1                0       48     215
ki1114097-CONTENT           PERU                                         1                1        0     215
ki1119695-PROBIT            BELARUS                                      0                0    14814   16449
ki1119695-PROBIT            BELARUS                                      0                1       16   16449
ki1119695-PROBIT            BELARUS                                      1                0     1615   16449
ki1119695-PROBIT            BELARUS                                      1                1        4   16449
ki1126311-ZVITAMBO          ZIMBABWE                                     0                0     6005    8517
ki1126311-ZVITAMBO          ZIMBABWE                                     0                1      221    8517
ki1126311-ZVITAMBO          ZIMBABWE                                     1                0     2143    8517
ki1126311-ZVITAMBO          ZIMBABWE                                     1                1      148    8517
ki1135781-COHORTS           GUATEMALA                                    0                0      579     899
ki1135781-COHORTS           GUATEMALA                                    0                1       13     899
ki1135781-COHORTS           GUATEMALA                                    1                0      288     899
ki1135781-COHORTS           GUATEMALA                                    1                1       19     899
ki1135781-COHORTS           INDIA                                        0                0     4461    5884
ki1135781-COHORTS           INDIA                                        0                1      441    5884
ki1135781-COHORTS           INDIA                                        1                0      783    5884
ki1135781-COHORTS           INDIA                                        1                1      199    5884
ki1135781-COHORTS           PHILIPPINES                                  0                0     1972    2756
ki1135781-COHORTS           PHILIPPINES                                  0                1      121    2756
ki1135781-COHORTS           PHILIPPINES                                  1                0      569    2756
ki1135781-COHORTS           PHILIPPINES                                  1                1       94    2756
ki1148112-iLiNS-DOSE        MALAWI                                       0                0      550     808
ki1148112-iLiNS-DOSE        MALAWI                                       0                1       20     808
ki1148112-iLiNS-DOSE        MALAWI                                       1                0      214     808
ki1148112-iLiNS-DOSE        MALAWI                                       1                1       24     808
ki1148112-iLiNS-DYAD-M      MALAWI                                       0                0      863    1023
ki1148112-iLiNS-DYAD-M      MALAWI                                       0                1       20    1023
ki1148112-iLiNS-DYAD-M      MALAWI                                       1                0      132    1023
ki1148112-iLiNS-DYAD-M      MALAWI                                       1                1        8    1023
ki1148112-LCNI-5            MALAWI                                       0                0      154     249
ki1148112-LCNI-5            MALAWI                                       0                1        2     249
ki1148112-LCNI-5            MALAWI                                       1                0       89     249
ki1148112-LCNI-5            MALAWI                                       1                1        4     249
kiGH5241-JiVitA-3           BANGLADESH                                   0                0     7453   14231
kiGH5241-JiVitA-3           BANGLADESH                                   0                1     1585   14231
kiGH5241-JiVitA-3           BANGLADESH                                   1                0     3847   14231
kiGH5241-JiVitA-3           BANGLADESH                                   1                1     1346   14231
kiGH5241-JiVitA-4           BANGLADESH                                   0                0     3151    5025
kiGH5241-JiVitA-4           BANGLADESH                                   0                1      284    5025
kiGH5241-JiVitA-4           BANGLADESH                                   1                0     1342    5025
kiGH5241-JiVitA-4           BANGLADESH                                   1                1      248    5025


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
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* studyid: ki1114097-CMIN, country: BANGLADESH
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

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
![](/tmp/0fb89b33-6f7d-48f9-a839-c7b5d21cbe0a/47e84226-8413-44d5-9200-d0f44f39a7cf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0fb89b33-6f7d-48f9-a839-c7b5d21cbe0a/47e84226-8413-44d5-9200-d0f44f39a7cf/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0fb89b33-6f7d-48f9-a839-c7b5d21cbe0a/47e84226-8413-44d5-9200-d0f44f39a7cf/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0fb89b33-6f7d-48f9-a839-c7b5d21cbe0a/47e84226-8413-44d5-9200-d0f44f39a7cf/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0687500   0.0294616   0.1080384
ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.0875000   0.0254517   0.1495483
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0974026   0.0504727   0.1443325
ki0047075b-MAL-ED          INDIA                          1                    NA                0.1625000   0.0814875   0.2435125
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0604396   0.0257718   0.0951074
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.0913978   0.0499275   0.1328682
ki1000108-IRC              INDIA                          0                    NA                0.1161826   0.0756764   0.1566888
ki1000108-IRC              INDIA                          1                    NA                0.1183432   0.0695840   0.1671024
ki1000109-EE               PAKISTAN                       0                    NA                0.0729167   0.0208370   0.1249963
ki1000109-EE               PAKISTAN                       1                    NA                0.1335740   0.0934580   0.1736900
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1720430   0.0951621   0.2489239
ki1000109-ResPak           PAKISTAN                       1                    NA                0.2283465   0.1551746   0.3015183
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.1337693   0.1174979   0.1500407
ki1000304-VITAMIN-A        INDIA                          1                    NA                0.2378641   0.2042881   0.2714401
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1167076   0.0876924   0.1457229
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2270169   0.1971073   0.2569264
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1502146   0.1042800   0.1961492
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.2243590   0.1588129   0.2899051
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0928144   0.0616646   0.1239642
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.1516854   0.0989365   0.2044342
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0443459   0.0253310   0.0633608
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1265823   0.0746935   0.1784711
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0418327   0.0243070   0.0593584
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1045455   0.0640867   0.1450042
ki1033518-iLiNS-DYAD-G     GHANA                          0                    NA                0.0898058   0.0702744   0.1093373
ki1033518-iLiNS-DYAD-G     GHANA                          1                    NA                0.2307692   0.1543851   0.3071534
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0400788   0.0302222   0.0499355
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0850000   0.0576630   0.1123370
ki1101329-Keneba           GAMBIA                         0                    NA                0.0622074   0.0499612   0.0744536
ki1101329-Keneba           GAMBIA                         1                    NA                0.1436865   0.1174889   0.1698842
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1496437   0.1155394   0.1837480
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2822086   0.2130556   0.3513615
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0384106   0.0246941   0.0521271
ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.0800000   0.0324140   0.1275860
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0354963   0.0309000   0.0400927
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0646006   0.0545341   0.0746671
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0219595   0.0101476   0.0337713
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.0618893   0.0349208   0.0888577
ki1135781-COHORTS          INDIA                          0                    NA                0.0899633   0.0819528   0.0979738
ki1135781-COHORTS          INDIA                          1                    NA                0.2026477   0.1775042   0.2277911
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0578118   0.0478113   0.0678122
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1417798   0.1152229   0.1683366
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                0.0350877   0.0199730   0.0502025
ki1148112-iLiNS-DOSE       MALAWI                         1                    NA                0.1008403   0.0625610   0.1391196
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                0.0226501   0.0128222   0.0324779
ki1148112-iLiNS-DYAD-M     MALAWI                         1                    NA                0.0571429   0.0186371   0.0956486
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1753707   0.1665546   0.1841867
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2591951   0.2459812   0.2724089
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0826783   0.0716322   0.0937245
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.1559748   0.1335138   0.1784359


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.0750000   0.0416074   0.1083926
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
ki1033518-iLiNS-DYAD-G     GHANA                          NA                   NA                0.1073326   0.0875449   0.1271203
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0494277   0.0397346   0.0591208
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0879121   0.0760335   0.0997906
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1866438   0.1550166   0.2182711
ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0443182   0.0307131   0.0579233
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0433251   0.0390011   0.0476491
ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0355951   0.0234770   0.0477132
ki1135781-COHORTS          INDIA                          NA                   NA                0.1087695   0.1008135   0.1167256
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0780116   0.0679971   0.0880261
ki1148112-iLiNS-DOSE       MALAWI                         NA                   NA                0.0544554   0.0387997   0.0701112
ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.0273705   0.0173577   0.0373833
kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2059588   0.1983834   0.2135343
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1058706   0.0951082   0.1166330


### Parameter: RR


studyid                    country                        intervention_level   baseline_level    estimate    ci_lower   ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ---------  ----------  ---------
ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
ki0047075b-MAL-ED          BANGLADESH                     1                    0                 1.272727   0.5119289   3.164179
ki0047075b-MAL-ED          INDIA                          0                    0                 1.000000   1.0000000   1.000000
ki0047075b-MAL-ED          INDIA                          1                    0                 1.668333   0.8340268   3.337226
ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.000000   1.0000000   1.000000
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.512219   0.7277626   3.142242
ki1000108-IRC              INDIA                          0                    0                 1.000000   1.0000000   1.000000
ki1000108-IRC              INDIA                          1                    0                 1.018597   0.5937459   1.747447
ki1000109-EE               PAKISTAN                       0                    0                 1.000000   1.0000000   1.000000
ki1000109-EE               PAKISTAN                       1                    0                 1.831872   0.8441115   3.975488
ki1000109-ResPak           PAKISTAN                       0                    0                 1.000000   1.0000000   1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                 1.327264   0.7658509   2.300225
ki1000304-VITAMIN-A        INDIA                          0                    0                 1.000000   1.0000000   1.000000
ki1000304-VITAMIN-A        INDIA                          1                    0                 1.778166   1.4758696   2.142381
ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.000000   1.0000000   1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.945176   1.4523347   2.605261
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.000000   1.0000000   1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.493590   0.9784985   2.279830
ki1017093-NIH-Birth        BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                 1.634288   1.0079499   2.649831
ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                 2.854430   1.5772244   5.165893
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 2.499134   1.4128486   4.420623
ki1033518-iLiNS-DYAD-G     GHANA                          0                    0                 1.000000   1.0000000   1.000000
ki1033518-iLiNS-DYAD-G     GHANA                          1                    0                 2.569647   1.7292941   3.818369
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.000000   1.0000000   1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 2.120820   1.4147271   3.179324
ki1101329-Keneba           GAMBIA                         0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba           GAMBIA                         1                    0                 2.309799   1.7662147   3.020681
ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.000000   1.0000000   1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.885870   1.3495174   2.635391
ki1114097-CMIN             GUINEA-BISSAU                  0                    0                 1.000000   1.0000000   1.000000
ki1114097-CMIN             GUINEA-BISSAU                  1                    0                 2.082759   1.0407156   4.168174
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.819925   1.4861511   2.228661
ki1135781-COHORTS          GUATEMALA                      0                    0                 1.000000   1.0000000   1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                 2.818341   1.4104355   5.631628
ki1135781-COHORTS          INDIA                          0                    0                 1.000000   1.0000000   1.000000
ki1135781-COHORTS          INDIA                          1                    0                 2.252560   1.9335320   2.624226
ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.000000   1.0000000   1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                 2.452439   1.9004974   3.164675
ki1148112-iLiNS-DOSE       MALAWI                         0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DOSE       MALAWI                         1                    0                 2.873950   1.6185416   5.103104
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DYAD-M     MALAWI                         1                    0                 2.522857   1.1319352   5.622944
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.477984   1.3778578   1.585387
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.886527   1.5592830   2.282448


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0062500   -0.0182560   0.0307560
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0222555   -0.0099973   0.0545083
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0156474   -0.0117183   0.0430131
ki1000108-IRC              INDIA                          0                    NA                0.0008906   -0.0252384   0.0270196
ki1000109-EE               PAKISTAN                       0                    NA                0.0450458   -0.0038479   0.0939395
ki1000109-ResPak           PAKISTAN                       0                    NA                0.0325024   -0.0288774   0.0938823
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.0279698    0.0177686   0.0381710
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0436487    0.0268725   0.0604249
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0297340   -0.0025670   0.0620350
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0204669   -0.0009687   0.0419025
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0213355    0.0067145   0.0359566
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0191092    0.0055099   0.0327084
ki1033518-iLiNS-DYAD-G     GHANA                          0                    NA                0.0175268    0.0072829   0.0277707
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0093488    0.0032463   0.0154514
ki1101329-Keneba           GAMBIA                         0                    NA                0.0257047    0.0164444   0.0349651
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0370001    0.0149446   0.0590556
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0059076   -0.0011922   0.0130073
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0078288    0.0048395   0.0108181
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0136356    0.0035056   0.0237657
ki1135781-COHORTS          INDIA                          0                    NA                0.0188063    0.0142732   0.0233393
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0201999    0.0132429   0.0271568
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                0.0193677    0.0070701   0.0316653
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                0.0047204   -0.0007666   0.0102074
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0305882    0.0249359   0.0362404
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0231923    0.0152607   0.0311239


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0833333   -0.3066636   0.3569288
ki0047075b-MAL-ED          INDIA                          0                    NA                0.1859926   -0.1250318   0.4110317
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2056515   -0.2389864   0.4907211
ki1000108-IRC              INDIA                          0                    NA                0.0076072   -0.2426583   0.2074704
ki1000109-EE               PAKISTAN                       0                    NA                0.3818655   -0.1863664   0.6779324
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1589008   -0.1993544   0.4101428
ki1000304-VITAMIN-A        INDIA                          0                    NA                0.1729316    0.1089169   0.2323475
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.2721983    0.1460818   0.3796885
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1652361   -0.0323167   0.3249834
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1806731   -0.0270884   0.3464083
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3248337    0.0888089   0.4997213
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.3135639    0.0732892   0.4915410
ki1033518-iLiNS-DYAD-G     GHANA                          0                    NA                0.1632942    0.0665262   0.2500309
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1891417    0.0618320   0.2991754
ki1101329-Keneba           GAMBIA                         0                    NA                0.2923913    0.1864402   0.3845442
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1982392    0.0744540   0.3054690
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.1332994   -0.0368065   0.2754965
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1806991    0.1111227   0.2448294
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.3830764    0.0680879   0.5915981
ki1135781-COHORTS          INDIA                          0                    NA                0.1729001    0.1317960   0.2120581
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2589340    0.1704530   0.3379774
ki1148112-iLiNS-DOSE       MALAWI                         0                    NA                0.3556619    0.1166719   0.5299916
ki1148112-iLiNS-DYAD-M     MALAWI                         0                    NA                0.1724640   -0.0420866   0.3428417
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1485159    0.1208296   0.1753304
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2190629    0.1450520   0.2866669
