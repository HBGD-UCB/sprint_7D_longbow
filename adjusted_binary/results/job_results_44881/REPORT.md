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

**Intervention Variable:** ever_sunderweight06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                         ever_sunderweight06   pers_wasted624   n_cell       n
-------------------------  -----------------------------  --------------------  ---------------  -------  ------
ki0047075b-MAL-ED          BANGLADESH                                        0                0      213     240
ki0047075b-MAL-ED          BANGLADESH                                        0                1       15     240
ki0047075b-MAL-ED          BANGLADESH                                        1                0        9     240
ki0047075b-MAL-ED          BANGLADESH                                        1                1        3     240
ki0047075b-MAL-ED          BRAZIL                                            0                0      200     202
ki0047075b-MAL-ED          BRAZIL                                            0                1        2     202
ki0047075b-MAL-ED          BRAZIL                                            1                0        0     202
ki0047075b-MAL-ED          BRAZIL                                            1                1        0     202
ki0047075b-MAL-ED          INDIA                                             0                0      188     234
ki0047075b-MAL-ED          INDIA                                             0                1       17     234
ki0047075b-MAL-ED          INDIA                                             1                0       18     234
ki0047075b-MAL-ED          INDIA                                             1                1       11     234
ki0047075b-MAL-ED          NEPAL                                             0                0      224     234
ki0047075b-MAL-ED          NEPAL                                             0                1        1     234
ki0047075b-MAL-ED          NEPAL                                             1                0        8     234
ki0047075b-MAL-ED          NEPAL                                             1                1        1     234
ki0047075b-MAL-ED          PERU                                              0                0      255     264
ki0047075b-MAL-ED          PERU                                              0                1        2     264
ki0047075b-MAL-ED          PERU                                              1                0        7     264
ki0047075b-MAL-ED          PERU                                              1                1        0     264
ki0047075b-MAL-ED          SOUTH AFRICA                                      0                0      249     258
ki0047075b-MAL-ED          SOUTH AFRICA                                      0                1        2     258
ki0047075b-MAL-ED          SOUTH AFRICA                                      1                0        7     258
ki0047075b-MAL-ED          SOUTH AFRICA                                      1                1        0     258
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF                      0                0      237     244
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF                      0                1        0     244
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF                      1                0        7     244
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF                      1                1        0     244
ki1000108-CMC-V-BCS-2002   INDIA                                             0                0      290     368
ki1000108-CMC-V-BCS-2002   INDIA                                             0                1       14     368
ki1000108-CMC-V-BCS-2002   INDIA                                             1                0       50     368
ki1000108-CMC-V-BCS-2002   INDIA                                             1                1       14     368
ki1000108-IRC              INDIA                                             0                0      311     410
ki1000108-IRC              INDIA                                             0                1       39     410
ki1000108-IRC              INDIA                                             1                0       51     410
ki1000108-IRC              INDIA                                             1                1        9     410
ki1000109-EE               PAKISTAN                                          0                0      218     370
ki1000109-EE               PAKISTAN                                          0                1       11     370
ki1000109-EE               PAKISTAN                                          1                0      110     370
ki1000109-EE               PAKISTAN                                          1                1       31     370
ki1000109-ResPak           PAKISTAN                                          0                0      150     220
ki1000109-ResPak           PAKISTAN                                          0                1       33     220
ki1000109-ResPak           PAKISTAN                                          1                0       25     220
ki1000109-ResPak           PAKISTAN                                          1                1       12     220
ki1000304b-SAS-CompFeed    INDIA                                             0                0     1033    1343
ki1000304b-SAS-CompFeed    INDIA                                             0                1      129    1343
ki1000304b-SAS-CompFeed    INDIA                                             1                0       94    1343
ki1000304b-SAS-CompFeed    INDIA                                             1                1       87    1343
ki1000304b-SAS-FoodSuppl   INDIA                                             0                0      268     373
ki1000304b-SAS-FoodSuppl   INDIA                                             0                1       33     373
ki1000304b-SAS-FoodSuppl   INDIA                                             1                0       42     373
ki1000304b-SAS-FoodSuppl   INDIA                                             1                1       30     373
ki1017093-NIH-Birth        BANGLADESH                                        0                0      415     512
ki1017093-NIH-Birth        BANGLADESH                                        0                1       40     512
ki1017093-NIH-Birth        BANGLADESH                                        1                0       39     512
ki1017093-NIH-Birth        BANGLADESH                                        1                1       18     512
ki1017093b-PROVIDE         BANGLADESH                                        0                0      545     609
ki1017093b-PROVIDE         BANGLADESH                                        0                1       26     609
ki1017093b-PROVIDE         BANGLADESH                                        1                0       24     609
ki1017093b-PROVIDE         BANGLADESH                                        1                1       14     609
ki1017093c-NIH-Crypto      BANGLADESH                                        0                0      651     722
ki1017093c-NIH-Crypto      BANGLADESH                                        0                1       33     722
ki1017093c-NIH-Crypto      BANGLADESH                                        1                0       27     722
ki1017093c-NIH-Crypto      BANGLADESH                                        1                1       11     722
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF                      0                0     1803    1922
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF                      0                1       77    1922
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF                      1                0       24    1922
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF                      1                1       18    1922
ki1101329-Keneba           GAMBIA                                            0                0     1921    2183
ki1101329-Keneba           GAMBIA                                            0                1      137    2183
ki1101329-Keneba           GAMBIA                                            1                0       70    2183
ki1101329-Keneba           GAMBIA                                            1                1       55    2183
ki1112895-Guatemala BSC    GUATEMALA                                         0                0      224     235
ki1112895-Guatemala BSC    GUATEMALA                                         0                1        2     235
ki1112895-Guatemala BSC    GUATEMALA                                         1                0        7     235
ki1112895-Guatemala BSC    GUATEMALA                                         1                1        2     235
ki1113344-GMS-Nepal        NEPAL                                             0                0      446     582
ki1113344-GMS-Nepal        NEPAL                                             0                1       71     582
ki1113344-GMS-Nepal        NEPAL                                             1                0       28     582
ki1113344-GMS-Nepal        NEPAL                                             1                1       37     582
ki1114097-CMIN             BANGLADESH                                        0                0      197     251
ki1114097-CMIN             BANGLADESH                                        0                1       11     251
ki1114097-CMIN             BANGLADESH                                        1                0       30     251
ki1114097-CMIN             BANGLADESH                                        1                1       13     251
ki1114097-CMIN             BRAZIL                                            0                0      117     119
ki1114097-CMIN             BRAZIL                                            0                1        0     119
ki1114097-CMIN             BRAZIL                                            1                0        2     119
ki1114097-CMIN             BRAZIL                                            1                1        0     119
ki1114097-CMIN             GUINEA-BISSAU                                     0                0      827     877
ki1114097-CMIN             GUINEA-BISSAU                                     0                1       34     877
ki1114097-CMIN             GUINEA-BISSAU                                     1                0       12     877
ki1114097-CMIN             GUINEA-BISSAU                                     1                1        4     877
ki1114097-CMIN             PERU                                              0                0      609     629
ki1114097-CMIN             PERU                                              0                1        1     629
ki1114097-CMIN             PERU                                              1                0       18     629
ki1114097-CMIN             PERU                                              1                1        1     629
ki1114097-CONTENT          PERU                                              0                0      212     215
ki1114097-CONTENT          PERU                                              0                1        0     215
ki1114097-CONTENT          PERU                                              1                0        3     215
ki1114097-CONTENT          PERU                                              1                1        0     215
ki1119695-PROBIT           BELARUS                                           0                0    16308   16449
ki1119695-PROBIT           BELARUS                                           0                1       20   16449
ki1119695-PROBIT           BELARUS                                           1                0      121   16449
ki1119695-PROBIT           BELARUS                                           1                1        0   16449
ki1126311-ZVITAMBO         ZIMBABWE                                          0                0     7903    8513
ki1126311-ZVITAMBO         ZIMBABWE                                          0                1      318    8513
ki1126311-ZVITAMBO         ZIMBABWE                                          1                0      241    8513
ki1126311-ZVITAMBO         ZIMBABWE                                          1                1       51    8513
ki1135781-COHORTS          GUATEMALA                                         0                0      812     894
ki1135781-COHORTS          GUATEMALA                                         0                1       19     894
ki1135781-COHORTS          GUATEMALA                                         1                0       52     894
ki1135781-COHORTS          GUATEMALA                                         1                1       11     894
ki1135781-COHORTS          INDIA                                             0                0     4964    5864
ki1135781-COHORTS          INDIA                                             0                1      467    5864
ki1135781-COHORTS          INDIA                                             1                0      273    5864
ki1135781-COHORTS          INDIA                                             1                1      160    5864
ki1135781-COHORTS          PHILIPPINES                                       0                0     2449    2755
ki1135781-COHORTS          PHILIPPINES                                       0                1      169    2755
ki1135781-COHORTS          PHILIPPINES                                       1                0       91    2755
ki1135781-COHORTS          PHILIPPINES                                       1                1       46    2755
ki1148112-LCNI-5           MALAWI                                            0                0      239     249
ki1148112-LCNI-5           MALAWI                                            0                1        5     249
ki1148112-LCNI-5           MALAWI                                            1                0        4     249
ki1148112-LCNI-5           MALAWI                                            1                1        1     249
kiGH5241-JiVitA-3          BANGLADESH                                        0                0    10453   14181
kiGH5241-JiVitA-3          BANGLADESH                                        0                1     2342   14181
kiGH5241-JiVitA-3          BANGLADESH                                        1                0      824   14181
kiGH5241-JiVitA-3          BANGLADESH                                        1                1      562   14181
kiGH5241-JiVitA-4          BANGLADESH                                        0                0     4298    5013
kiGH5241-JiVitA-4          BANGLADESH                                        0                1      436    5013
kiGH5241-JiVitA-4          BANGLADESH                                        1                0      188    5013
kiGH5241-JiVitA-4          BANGLADESH                                        1                1       91    5013


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

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* studyid: ki1114097-CMIN, country: BRAZIL
* studyid: ki1114097-CMIN, country: GUINEA-BISSAU
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
![](/tmp/47e6d9cd-85d7-4880-bb12-03b244a41e6a/fad38655-dd3f-4837-ba39-cb703236356d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/47e6d9cd-85d7-4880-bb12-03b244a41e6a/fad38655-dd3f-4837-ba39-cb703236356d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/47e6d9cd-85d7-4880-bb12-03b244a41e6a/fad38655-dd3f-4837-ba39-cb703236356d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/47e6d9cd-85d7-4880-bb12-03b244a41e6a/fad38655-dd3f-4837-ba39-cb703236356d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0829268   0.0450956   0.1207581
ki0047075b-MAL-ED          INDIA                          1                    NA                0.3793103   0.2023346   0.5562861
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0460526   0.0224592   0.0696461
ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2187500   0.1173313   0.3201687
ki1000108-IRC              INDIA                          0                    NA                0.1114286   0.0784229   0.1444343
ki1000108-IRC              INDIA                          1                    NA                0.1500000   0.0595397   0.2404603
ki1000109-EE               PAKISTAN                       0                    NA                0.0480349   0.0203013   0.0757686
ki1000109-EE               PAKISTAN                       1                    NA                0.2198582   0.1514064   0.2883099
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1803279   0.1244984   0.2361573
ki1000109-ResPak           PAKISTAN                       1                    NA                0.3243243   0.1731440   0.4755047
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1110155   0.0924345   0.1295965
ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4806630   0.4118888   0.5494371
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1096346   0.0742914   0.1449777
ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.4166667   0.3026371   0.5306963
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0879121   0.0618680   0.1139562
ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.3157895   0.1950001   0.4365789
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0455342   0.0284208   0.0626475
ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3684211   0.2149243   0.5219178
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0482456   0.0321757   0.0643155
ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2894737   0.1451785   0.4337689
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0409574   0.0319673   0.0499476
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4285714   0.2977181   0.5594248
ki1101329-Keneba           GAMBIA                         0                    NA                0.0665695   0.0557973   0.0773417
ki1101329-Keneba           GAMBIA                         1                    NA                0.4400000   0.3529612   0.5270388
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1373308   0.1076358   0.1670257
ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5692308   0.4487462   0.6897153
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0528846   0.0224092   0.0833600
ki1114097-CMIN             BANGLADESH                     1                    NA                0.3023256   0.1647807   0.4398705
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0386814   0.0345128   0.0428501
ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1746575   0.1311071   0.2182080
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0228640   0.0126958   0.0330322
ki1135781-COHORTS          GUATEMALA                      1                    NA                0.1746032   0.0808085   0.2683979
ki1135781-COHORTS          INDIA                          0                    NA                0.0859878   0.0785313   0.0934444
ki1135781-COHORTS          INDIA                          1                    NA                0.3695150   0.3240482   0.4149818
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0645531   0.0551383   0.0739679
ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.3357664   0.2566720   0.4148608
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1830403   0.1753094   0.1907711
kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4054834   0.3785213   0.4324455
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0920997   0.0815507   0.1026487
kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3261649   0.2666376   0.3856922


### Parameter: E(Y)


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1196581   0.0779840   0.1613323
ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0760870   0.0489610   0.1032130
ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
ki1000109-EE               PAKISTAN                       NA                   NA                0.1135135   0.0811471   0.1458799
ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2045455   0.1511224   0.2579685
ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1608340   0.1401010   0.1815669
ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1689008   0.1308276   0.2069740
ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1132813   0.0858017   0.1407608
ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0656814   0.0459906   0.0853723
ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0609418   0.0434802   0.0784034
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0494277   0.0397346   0.0591208
ki1101329-Keneba           GAMBIA                         NA                   NA                0.0879524   0.0760686   0.0998361
ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1855670   0.1539560   0.2171780
ki1114097-CMIN             BANGLADESH                     NA                   NA                0.0956175   0.0591654   0.1320697
ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0433455   0.0390195   0.0476714
ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0335570   0.0217456   0.0453685
ki1135781-COHORTS          INDIA                          NA                   NA                0.1069236   0.0990137   0.1148335
ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0780399   0.0680219   0.0880579
kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2047810   0.1972350   0.2123271
kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1051267   0.0943582   0.1158951


### Parameter: RR


studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000   1.0000000    1.000000
ki0047075b-MAL-ED          INDIA                          1                    0                  4.574037   2.3817990    8.784037
ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000   1.0000000    1.000000
ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  4.750000   2.3802135    9.479191
ki1000108-IRC              INDIA                          0                    0                  1.000000   1.0000000    1.000000
ki1000108-IRC              INDIA                          1                    0                  1.346154   0.6875415    2.635666
ki1000109-EE               PAKISTAN                       0                    0                  1.000000   1.0000000    1.000000
ki1000109-EE               PAKISTAN                       1                    0                  4.577047   2.3752265    8.819942
ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000   1.0000000    1.000000
ki1000109-ResPak           PAKISTAN                       1                    0                  1.798526   1.0277583    3.147331
ki1000304b-SAS-CompFeed    INDIA                          0                    0                  1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed    INDIA                          1                    0                  4.329693   3.4232931    5.476084
ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000   1.0000000    1.000000
ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  3.800505   2.4899506    5.800853
ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000   1.0000000    1.000000
ki1017093-NIH-Birth        BANGLADESH                     1                    0                  3.592105   2.2142846    5.827264
ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000   1.0000000    1.000000
ki1017093b-PROVIDE         BANGLADESH                     1                    0                  8.091093   4.6166103   14.180488
ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                  1.000000   1.0000000    1.000000
ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                  6.000000   3.2944569   10.927446
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000   1.0000000    1.000000
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 10.463822   7.1842234   15.240557
ki1101329-Keneba           GAMBIA                         0                    0                  1.000000   1.0000000    1.000000
ki1101329-Keneba           GAMBIA                         1                    0                  6.609635   5.1189948    8.534346
ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000   1.0000000    1.000000
ki1113344-GMS-Nepal        NEPAL                          1                    0                  4.144962   3.0627449    5.609579
ki1114097-CMIN             BANGLADESH                     0                    0                  1.000000   1.0000000    1.000000
ki1114097-CMIN             BANGLADESH                     1                    0                  5.716702   2.7433582   11.912655
ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  4.515282   3.4412239    5.924569
ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000   1.0000000    1.000000
ki1135781-COHORTS          GUATEMALA                      1                    0                  7.636591   3.8021337   15.338106
ki1135781-COHORTS          INDIA                          0                    0                  1.000000   1.0000000    1.000000
ki1135781-COHORTS          INDIA                          1                    0                  4.297293   3.6967491    4.995397
ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000   1.0000000    1.000000
ki1135781-COHORTS          PHILIPPINES                    1                    0                  5.201399   3.9427151    6.861910
kiGH5241-JiVitA-3          BANGLADESH                     0                    0                  1.000000   1.0000000    1.000000
kiGH5241-JiVitA-3          BANGLADESH                     1                    0                  2.215269   2.0443576    2.400469
kiGH5241-JiVitA-4          BANGLADESH                     0                    0                  1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4          BANGLADESH                     1                    0                  3.541432   2.8592589    4.386362


### Parameter: PAR


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.0367313    0.0110355   0.0624271
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0300343    0.0107267   0.0493420
ki1000108-IRC              INDIA                          0                    NA                0.0056446   -0.0085089   0.0197981
ki1000109-EE               PAKISTAN                       0                    NA                0.0654786    0.0360736   0.0948835
ki1000109-ResPak           PAKISTAN                       0                    NA                0.0242176   -0.0038095   0.0522446
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.0498185    0.0357676   0.0638694
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.0592663    0.0331384   0.0853941
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0253692    0.0102742   0.0404641
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0201473    0.0086838   0.0316108
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0126962    0.0041026   0.0212898
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0084702    0.0043261   0.0126144
ki1101329-Keneba           GAMBIA                         0                    NA                0.0213829    0.0151802   0.0275855
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0482363    0.0305041   0.0659684
ki1114097-CMIN             BANGLADESH                     0                    NA                0.0427329    0.0159332   0.0695326
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0046640    0.0030740   0.0062541
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0106930    0.0035734   0.0178127
ki1135781-COHORTS          INDIA                          0                    NA                0.0209358    0.0170400   0.0248315
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0134868    0.0089550   0.0180187
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0217408    0.0187563   0.0247253
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0130270    0.0091279   0.0169260


### Parameter: PAF


studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
-------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED          INDIA                          0                    NA                0.3069686    0.0858243   0.4746169
ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.3947368    0.1354783   0.5762472
ki1000108-IRC              INDIA                          0                    NA                0.0482143   -0.0801150   0.1612966
ki1000109-EE               PAKISTAN                       0                    NA                0.5768351    0.3093044   0.7407418
ki1000109-ResPak           PAKISTAN                       0                    NA                0.1183971   -0.0276046   0.2436549
ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.3097509    0.2288709   0.3821478
ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.3508938    0.1958744   0.4760286
ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.2239485    0.0894263   0.3385972
ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3067426    0.1379207   0.4425039
ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2083333    0.0680155   0.3275252
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1713662    0.0899357   0.2455105
ki1101329-Keneba           GAMBIA                         0                    NA                0.2431188    0.1767111   0.3041700
ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.2599398    0.1659352   0.3433495
ki1114097-CMIN             BANGLADESH                     0                    NA                0.4469151    0.1616344   0.6351199
ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1076017    0.0716889   0.1421252
ki1135781-COHORTS          GUATEMALA                      0                    NA                0.3186522    0.1103660   0.4781733
ki1135781-COHORTS          INDIA                          0                    NA                0.1958011    0.1610404   0.2291215
ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1728197    0.1166930   0.2253799
kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.1061661    0.0914759   0.1206187
kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.1239169    0.0869097   0.1594241
