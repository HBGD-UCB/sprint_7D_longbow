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

**Intervention Variable:** ever_underweight06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                         ever_underweight06   pers_wasted624   n_cell       n
-------------------------  -----------------------------  -------------------  ---------------  -------  ------
ki0047075b-MAL-ED          BANGLADESH                                       0                0      163     240
ki0047075b-MAL-ED          BANGLADESH                                       0                1        5     240
ki0047075b-MAL-ED          BANGLADESH                                       1                0       59     240
ki0047075b-MAL-ED          BANGLADESH                                       1                1       13     240
ki0047075b-MAL-ED          BRAZIL                                           0                0      190     202
ki0047075b-MAL-ED          BRAZIL                                           0                1        2     202
ki0047075b-MAL-ED          BRAZIL                                           1                0       10     202
ki0047075b-MAL-ED          BRAZIL                                           1                1        0     202
ki0047075b-MAL-ED          INDIA                                            0                0      142     234
ki0047075b-MAL-ED          INDIA                                            0                1        1     234
ki0047075b-MAL-ED          INDIA                                            1                0       64     234
ki0047075b-MAL-ED          INDIA                                            1                1       27     234
ki0047075b-MAL-ED          NEPAL                                            0                0      198     234
ki0047075b-MAL-ED          NEPAL                                            0                1        0     234
ki0047075b-MAL-ED          NEPAL                                            1                0       34     234
ki0047075b-MAL-ED          NEPAL                                            1                1        2     234
ki0047075b-MAL-ED          PERU                                             0                0      223     264
ki0047075b-MAL-ED          PERU                                             0                1        1     264
ki0047075b-MAL-ED          PERU                                             1                0       39     264
ki0047075b-MAL-ED          PERU                                             1                1        1     264
ki0047075b-MAL-ED          SOUTH AFRICA                                     0                0      221     258
ki0047075b-MAL-ED          SOUTH AFRICA                                     0                1        0     258
ki0047075b-MAL-ED          SOUTH AFRICA                                     1                0       35     258
ki0047075b-MAL-ED          SOUTH AFRICA                                     1                1        2     258
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF                     0                0      206     244
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF                     0                1        0     244
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF                     1                0       38     244
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF                     1                1        0     244
ki1000108-CMC-V-BCS-2002   INDIA                                            0                0      189     368
ki1000108-CMC-V-BCS-2002   INDIA                                            0                1        4     368
ki1000108-CMC-V-BCS-2002   INDIA                                            1                0      151     368
ki1000108-CMC-V-BCS-2002   INDIA                                            1                1       24     368
ki1000108-IRC              INDIA                                            0                0      201     410
ki1000108-IRC              INDIA                                            0                1       13     410
ki1000108-IRC              INDIA                                            1                0      161     410
ki1000108-IRC              INDIA                                            1                1       35     410
ki1000109-EE               PAKISTAN                                         0                0      108     370
ki1000109-EE               PAKISTAN                                         0                1        2     370
ki1000109-EE               PAKISTAN                                         1                0      220     370
ki1000109-EE               PAKISTAN                                         1                1       40     370
ki1000109-ResPak           PAKISTAN                                         0                0      122     220
ki1000109-ResPak           PAKISTAN                                         0                1       17     220
ki1000109-ResPak           PAKISTAN                                         1                0       53     220
ki1000109-ResPak           PAKISTAN                                         1                1       28     220
ki1000304b-SAS-CompFeed    INDIA                                            0                0      772    1343
ki1000304b-SAS-CompFeed    INDIA                                            0                1       46    1343
ki1000304b-SAS-CompFeed    INDIA                                            1                0      355    1343
ki1000304b-SAS-CompFeed    INDIA                                            1                1      170    1343
ki1000304b-SAS-FoodSuppl   INDIA                                            0                0      191     373
ki1000304b-SAS-FoodSuppl   INDIA                                            0                1       10     373
ki1000304b-SAS-FoodSuppl   INDIA                                            1                0      119     373
ki1000304b-SAS-FoodSuppl   INDIA                                            1                1       53     373
ki1017093-NIH-Birth        BANGLADESH                                       0                0      295     512
ki1017093-NIH-Birth        BANGLADESH                                       0                1       14     512
ki1017093-NIH-Birth        BANGLADESH                                       1                0      159     512
ki1017093-NIH-Birth        BANGLADESH                                       1                1       44     512
ki1017093b-PROVIDE         BANGLADESH                                       0                0      410     609
ki1017093b-PROVIDE         BANGLADESH                                       0                1        9     609
ki1017093b-PROVIDE         BANGLADESH                                       1                0      159     609
ki1017093b-PROVIDE         BANGLADESH                                       1                1       31     609
ki1017093c-NIH-Crypto      BANGLADESH                                       0                0      512     722
ki1017093c-NIH-Crypto      BANGLADESH                                       0                1       11     722
ki1017093c-NIH-Crypto      BANGLADESH                                       1                0      166     722
ki1017093c-NIH-Crypto      BANGLADESH                                       1                1       33     722
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF                     0                0     1705    1922
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF                     0                1       32    1922
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF                     1                0      122    1922
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF                     1                1       63    1922
ki1101329-Keneba           GAMBIA                                           0                0     1697    2183
ki1101329-Keneba           GAMBIA                                           0                1       65    2183
ki1101329-Keneba           GAMBIA                                           1                0      294    2183
ki1101329-Keneba           GAMBIA                                           1                1      127    2183
ki1112895-Guatemala BSC    GUATEMALA                                        0                0      186     235
ki1112895-Guatemala BSC    GUATEMALA                                        0                1        0     235
ki1112895-Guatemala BSC    GUATEMALA                                        1                0       45     235
ki1112895-Guatemala BSC    GUATEMALA                                        1                1        4     235
ki1113344-GMS-Nepal        NEPAL                                            0                0      351     582
ki1113344-GMS-Nepal        NEPAL                                            0                1       19     582
ki1113344-GMS-Nepal        NEPAL                                            1                0      123     582
ki1113344-GMS-Nepal        NEPAL                                            1                1       89     582
ki1114097-CMIN             BANGLADESH                                       0                0      122     251
ki1114097-CMIN             BANGLADESH                                       0                1        1     251
ki1114097-CMIN             BANGLADESH                                       1                0      105     251
ki1114097-CMIN             BANGLADESH                                       1                1       23     251
ki1114097-CMIN             BRAZIL                                           0                0      109     119
ki1114097-CMIN             BRAZIL                                           0                1        0     119
ki1114097-CMIN             BRAZIL                                           1                0       10     119
ki1114097-CMIN             BRAZIL                                           1                1        0     119
ki1114097-CMIN             GUINEA-BISSAU                                    0                0      790     877
ki1114097-CMIN             GUINEA-BISSAU                                    0                1       23     877
ki1114097-CMIN             GUINEA-BISSAU                                    1                0       49     877
ki1114097-CMIN             GUINEA-BISSAU                                    1                1       15     877
ki1114097-CMIN             PERU                                             0                0      579     629
ki1114097-CMIN             PERU                                             0                1        0     629
ki1114097-CMIN             PERU                                             1                0       48     629
ki1114097-CMIN             PERU                                             1                1        2     629
ki1114097-CONTENT          PERU                                             0                0      200     215
ki1114097-CONTENT          PERU                                             0                1        0     215
ki1114097-CONTENT          PERU                                             1                0       15     215
ki1114097-CONTENT          PERU                                             1                1        0     215
ki1119695-PROBIT           BELARUS                                          0                0    15271   16449
ki1119695-PROBIT           BELARUS                                          0                1       12   16449
ki1119695-PROBIT           BELARUS                                          1                0     1158   16449
ki1119695-PROBIT           BELARUS                                          1                1        8   16449
ki1126311-ZVITAMBO         ZIMBABWE                                         0                0     7101    8513
ki1126311-ZVITAMBO         ZIMBABWE                                         0                1      222    8513
ki1126311-ZVITAMBO         ZIMBABWE                                         1                0     1043    8513
ki1126311-ZVITAMBO         ZIMBABWE                                         1                1      147    8513
ki1135781-COHORTS          GUATEMALA                                        0                0      674     894
ki1135781-COHORTS          GUATEMALA                                        0                1        6     894
ki1135781-COHORTS          GUATEMALA                                        1                0      190     894
ki1135781-COHORTS          GUATEMALA                                        1                1       24     894
ki1135781-COHORTS          INDIA                                            0                0     4003    5864
ki1135781-COHORTS          INDIA                                            0                1      202    5864
ki1135781-COHORTS          INDIA                                            1                0     1234    5864
ki1135781-COHORTS          INDIA                                            1                1      425    5864
ki1135781-COHORTS          PHILIPPINES                                      0                0     2141    2755
ki1135781-COHORTS          PHILIPPINES                                      0                1       88    2755
ki1135781-COHORTS          PHILIPPINES                                      1                0      399    2755
ki1135781-COHORTS          PHILIPPINES                                      1                1      127    2755
ki1148112-LCNI-5           MALAWI                                           0                0      211     249
ki1148112-LCNI-5           MALAWI                                           0                1        2     249
ki1148112-LCNI-5           MALAWI                                           1                0       32     249
ki1148112-LCNI-5           MALAWI                                           1                1        4     249
kiGH5241-JiVitA-3          BANGLADESH                                       0                0     7671   14181
kiGH5241-JiVitA-3          BANGLADESH                                       0                1     1137   14181
kiGH5241-JiVitA-3          BANGLADESH                                       1                0     3606   14181
kiGH5241-JiVitA-3          BANGLADESH                                       1                1     1767   14181
kiGH5241-JiVitA-4          BANGLADESH                                       0                0     3451    5013
kiGH5241-JiVitA-4          BANGLADESH                                       0                1      175    5013
kiGH5241-JiVitA-4          BANGLADESH                                       1                0     1035    5013
kiGH5241-JiVitA-4          BANGLADESH                                       1                1      352    5013


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1000304b-SAS-CompFeed, country: INDIA
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093-NIH-Birth, country: BANGLADESH
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1101329-Keneba, country: GAMBIA
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
* studyid: ki1148112-LCNI-5, country: MALAWI
* studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CMIN, country: BRAZIL
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU
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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/30cb0f50-bb22-4e2f-b626-3c0251238115/81a6348c-3c3f-4a66-8bda-aea9ee61b7f8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/30cb0f50-bb22-4e2f-b626-3c0251238115/81a6348c-3c3f-4a66-8bda-aea9ee61b7f8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/30cb0f50-bb22-4e2f-b626-3c0251238115/81a6348c-3c3f-4a66-8bda-aea9ee61b7f8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/30cb0f50-bb22-4e2f-b626-3c0251238115/81a6348c-3c3f-4a66-8bda-aea9ee61b7f8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0297619   0.0040124   0.0555115
ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1805556   0.0915220   0.2695891
ki1000108-IRC              INDIA                          0                    NA                0.0607477   0.0287051   0.0927902
ki1000108-IRC              INDIA                          1                    NA                0.1785714   0.1248879   0.2322550
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1223022   0.0677113   0.1768930
ki1000109-ResPak           PAKISTAN                       1                    NA                0.3456790   0.2418720   0.4494860
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0562347   0.0379052   0.0745643
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3238095   0.3039355   0.3436835
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0497512   0.0196521   0.0798504
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.3081395   0.2390440   0.3772350
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0453074   0.0220956   0.0685193
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2167488   0.1600135   0.2734841
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0214797   0.0075867   0.0353727
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1631579   0.1105739   0.2157419
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0210325   0.0087262   0.0333388
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1658291   0.1141184   0.2175399
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0184226   0.0120970   0.0247481
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3405405   0.2722354   0.4088457
ki1101329-Keneba           GAMBIA                         0                    NA                0.0368899   0.0280868   0.0456930
ki1101329-Keneba           GAMBIA                         1                    NA                0.3016627   0.2578096   0.3455158
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0513514   0.0288427   0.0738600
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4198113   0.3533200   0.4863027
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0282903   0.0168868   0.0396938
ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.2343750   0.1305338   0.3382162
ki1119695-PROBIT           BELARUS                        0                    NA                0.0007852   0.0000498   0.0015206
ki1119695-PROBIT           BELARUS                        1                    NA                0.0068611   0.0013588   0.0123634
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0303154   0.0263883   0.0342426
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1235294   0.1048332   0.1422256
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0088235   0.0017906   0.0158564
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1121495   0.0698483   0.1544508
ki1135781-COHORTS          INDIA                          0                    NA                0.0480381   0.0415740   0.0545021
ki1135781-COHORTS          INDIA                          1                    NA                0.2561784   0.2351712   0.2771856
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0394796   0.0313940   0.0475652
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2414449   0.2048655   0.2780243
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1290872   0.1208720   0.1373024
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3288666   0.3153369   0.3423962
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0482625   0.0383008   0.0582243
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2537851   0.2273375   0.2802328


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.0750000   0.0416074   0.1083926
ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2045455   0.1511224   0.2579685
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1608340   0.1401010   0.1815669
ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1689008   0.1308276   0.2069740
ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1132813   0.0858017   0.1407608
ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0656814   0.0459906   0.0853723
ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0609418   0.0434802   0.0784034
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0494277   0.0397346   0.0591208
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0879524   0.0760686   0.0998361
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1855670   0.1539560   0.2171780
ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0433295   0.0298471   0.0568120
ki1119695-PROBIT           BELARUS                        NA                   NA                0.0012159   0.0002433   0.0021885
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0433455   0.0390195   0.0476714
ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0335570   0.0217456   0.0453685
ki1135781-COHORTS          INDIA                          NA                   NA                0.1069236   0.0990137   0.1148335
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0780399   0.0680219   0.0880579
kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2047810   0.1972350   0.2123271
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1051267   0.0943582   0.1158951


### Parameter: RR


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki0047075b-MAL-ED          BANGLADESH                     1                    0                  6.066667    2.241101   16.422483
ki1000108-IRC              INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000108-IRC              INDIA                          1                    0                  2.939560    1.601810    5.394532
ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                  2.826434    1.650439    4.840368
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  5.758178    4.288815    7.730950
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  6.193605    3.248869   11.807415
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  4.783955    2.691108    8.504387
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                  7.595906    3.687553   15.646636
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  7.884422    4.062799   15.300810
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 18.484966   12.419970   27.511658
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  8.177380    6.183888   10.813510
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  8.175273    5.129717   13.029001
ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000    1.000000    1.000000
ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  8.284647    4.551345   15.080239
ki1119695-PROBIT           BELARUS                        0                    0                  1.000000    1.000000    1.000000
ki1119695-PROBIT           BELARUS                        1                    0                  8.738136    3.991889   19.127540
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  4.074801    3.338772    4.973088
ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.000000    1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                 12.710280    5.262519   30.698462
ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.000000    1.000000
ki1135781-COHORTS          INDIA                          1                    0                  5.332823    4.555349    6.242991
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  6.115689    4.740332    7.890090
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  2.547631    2.362662    2.747081
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  5.258428    4.175393    6.622387


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0452381   0.0160859   0.0743903
ki1000108-IRC              INDIA                          0                    NA                0.0563255   0.0258989   0.0867521
ki1000109-ResPak           PAKISTAN                       0                    NA                0.0822433   0.0367642   0.1277223
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1045992   0.0937240   0.1154744
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1191496   0.0820129   0.1562862
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0679738   0.0426049   0.0933427
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0442017   0.0264492   0.0619542
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0399093   0.0245163   0.0553024
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0310051   0.0231536   0.0388566
ki1101329-Keneba           GAMBIA                         0                    NA                0.0510625   0.0413868   0.0607381
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1342157   0.1048607   0.1635706
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0150392   0.0066299   0.0234486
ki1119695-PROBIT           BELARUS                        0                    NA                0.0004307   0.0000673   0.0007941
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0130300   0.0102727   0.0157874
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0247335   0.0140692   0.0353978
ki1135781-COHORTS          INDIA                          0                    NA                0.0588856   0.0522204   0.0655507
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0385603   0.0308178   0.0463029
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0756939   0.0695342   0.0818535
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0568641   0.0483285   0.0653998


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.6031746   0.1776718   0.8085066
ki1000108-IRC              INDIA                          0                    NA                0.4811137   0.1899843   0.6676077
ki1000109-ResPak           PAKISTAN                       0                    NA                0.4020783   0.1583273   0.5752383
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.6503554   0.5615139   0.7211968
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.7054410   0.4903219   0.8297651
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.6000446   0.3782778   0.7427077
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.6729714   0.4242323   0.8142520
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.6548757   0.4291256   0.7913538
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6272824   0.5081461   0.7175616
ki1101329-Keneba           GAMBIA                         0                    NA                0.5805695   0.4920789   0.6536432
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.7232733   0.5905228   0.8129867
ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.3470900   0.1614545   0.4916299
ki1119695-PROBIT           BELARUS                        0                    NA                0.3542236   0.1166729   0.5278905
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.3006087   0.2416541   0.3549802
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.7370588   0.4648135   0.8708150
ki1135781-COHORTS          INDIA                          0                    NA                0.5507255   0.4989138   0.5971799
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.4941104   0.4091750   0.5668357
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.3696331   0.3398147   0.3981047
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.5409105   0.4621971   0.6081034
