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

**Outcome Variable:** pers_wast

## Predictor Variables

**Intervention Variable:** hdlvry

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        hdlvry    pers_wast   n_cell      n
------------  -------------------------  -----------------------------  -------  ----------  -------  -----
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      339    370
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 1       23    370
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 0        8    370
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        0    370
0-24 months   ki1000108-IRC              INDIA                          0                 0      354    410
0-24 months   ki1000108-IRC              INDIA                          0                 1       48    410
0-24 months   ki1000108-IRC              INDIA                          1                 0        8    410
0-24 months   ki1000108-IRC              INDIA                          1                 1        0    410
0-24 months   ki1000109-EE               PAKISTAN                       0                 0      235    375
0-24 months   ki1000109-EE               PAKISTAN                       0                 1       17    375
0-24 months   ki1000109-EE               PAKISTAN                       1                 0      113    375
0-24 months   ki1000109-EE               PAKISTAN                       1                 1       10    375
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                 0       70    371
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                 1        5    371
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                 0      270    371
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                 1       26    371
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                 0       21     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                 1        3     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 0       55     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 1       15     94
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 0      469    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 1       10    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      156    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1        5    640
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      551    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 1       16    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      153    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       10    730
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0     1966   2056
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1       56   2056
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0       33   2056
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        1   2056
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                 0      118    551
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                 1       18    551
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0      352    551
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1       63    551
0-24 months   ki1135781-COHORTS          INDIA                          0                 0     2249   3931
0-24 months   ki1135781-COHORTS          INDIA                          0                 1      197   3931
0-24 months   ki1135781-COHORTS          INDIA                          1                 0     1292   3931
0-24 months   ki1135781-COHORTS          INDIA                          1                 1      193   3931
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 0       16    152
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 1        1    152
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0      126    152
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1        9    152
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 0      264   1154
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 1       24   1154
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0      797   1154
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1       69   1154
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      299    355
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 1       49    355
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 0        7    355
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        0    355
0-6 months    ki1000108-IRC              INDIA                          0                 0      331    402
0-6 months    ki1000108-IRC              INDIA                          0                 1       63    402
0-6 months    ki1000108-IRC              INDIA                          1                 0        7    402
0-6 months    ki1000108-IRC              INDIA                          1                 1        1    402
0-6 months    ki1000109-EE               PAKISTAN                       0                 0      226    364
0-6 months    ki1000109-EE               PAKISTAN                       0                 1       20    364
0-6 months    ki1000109-EE               PAKISTAN                       1                 0      111    364
0-6 months    ki1000109-EE               PAKISTAN                       1                 1        7    364
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 0      466    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 1       11    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      157    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1        3    637
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      202    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                 1        3    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 0       43    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 1        2    250
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0     1876   1956
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1       48   1956
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0       31   1956
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        1   1956
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                 0      106    507
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                 1       14    507
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                 0      341    507
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                 1       46    507
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      339    370
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 1       23    370
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 0        8    370
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        0    370
6-24 months   ki1000108-IRC              INDIA                          0                 0      354    410
6-24 months   ki1000108-IRC              INDIA                          0                 1       48    410
6-24 months   ki1000108-IRC              INDIA                          1                 0        8    410
6-24 months   ki1000108-IRC              INDIA                          1                 1        0    410
6-24 months   ki1000109-EE               PAKISTAN                       0                 0      235    375
6-24 months   ki1000109-EE               PAKISTAN                       0                 1       17    375
6-24 months   ki1000109-EE               PAKISTAN                       1                 0      113    375
6-24 months   ki1000109-EE               PAKISTAN                       1                 1       10    375
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                 0       70    371
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                 1        5    371
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                 0      270    371
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                 1       26    371
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                 0       21     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                 1        3     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 0       55     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                 1       15     94
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 0      469    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 1       10    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      156    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1        5    640
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 0      551    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                 1       16    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      153    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       10    730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0     1966   2056
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1       56   2056
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0       33   2056
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        1   2056
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                 0      118    551
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                 1       18    551
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0      352    551
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1       63    551
6-24 months   ki1135781-COHORTS          INDIA                          0                 0     2249   3931
6-24 months   ki1135781-COHORTS          INDIA                          0                 1      197   3931
6-24 months   ki1135781-COHORTS          INDIA                          1                 0     1292   3931
6-24 months   ki1135781-COHORTS          INDIA                          1                 1      193   3931
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 0       16    152
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                 1        1    152
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0      126    152
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1        9    152
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 0      264   1154
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                 1       24   1154
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 0      797   1154
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                 1       69   1154


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

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




# Results Detail

## Results Plots
![](/tmp/34a1f296-2ac9-4312-b558-fe0957ad9452/d00d072e-52c6-48ed-b9a1-560d471a527c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/34a1f296-2ac9-4312-b558-fe0957ad9452/d00d072e-52c6-48ed-b9a1-560d471a527c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/34a1f296-2ac9-4312-b558-fe0957ad9452/d00d072e-52c6-48ed-b9a1-560d471a527c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/34a1f296-2ac9-4312-b558-fe0957ad9452/d00d072e-52c6-48ed-b9a1-560d471a527c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.0674603   0.0364515   0.0984692
0-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.0813008   0.0329382   0.1296634
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0666667   0.0124892   0.1208441
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0878378   0.0479147   0.1277610
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.0208768   0.0080632   0.0336904
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.0310559   0.0042398   0.0578720
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH   0                    NA                0.0282187   0.0145789   0.0418585
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH   1                    NA                0.0613497   0.0244850   0.0982143
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.1323529   0.0753481   0.1893577
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1518072   0.1172521   0.1863623
0-24 months   ki1135781-COHORTS         INDIA        0                    NA                0.0805397   0.0697540   0.0913253
0-24 months   ki1135781-COHORTS         INDIA        1                    NA                0.1299663   0.1128613   0.1470713
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0833333   0.0484349   0.1182317
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0796767   0.0604252   0.0989281
0-6 months    ki1000109-EE              PAKISTAN     0                    NA                0.0813008   0.0471019   0.1154997
0-6 months    ki1000109-EE              PAKISTAN     1                    NA                0.0593220   0.0166412   0.1020029
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.1166667   0.0591728   0.1741606
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1188630   0.0865880   0.1511381
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.0674603   0.0364515   0.0984692
6-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.0813008   0.0329382   0.1296634
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0666667   0.0124892   0.1208441
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0878378   0.0479147   0.1277610
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.0208768   0.0080632   0.0336904
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.0310559   0.0042398   0.0578720
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH   0                    NA                0.0282187   0.0145789   0.0418585
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH   1                    NA                0.0613497   0.0244850   0.0982143
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.1323529   0.0753481   0.1893577
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.1518072   0.1172521   0.1863623
6-24 months   ki1135781-COHORTS         INDIA        0                    NA                0.0805397   0.0697540   0.0913253
6-24 months   ki1135781-COHORTS         INDIA        1                    NA                0.1299663   0.1128613   0.1470713
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0833333   0.0484349   0.1182317
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0796767   0.0604252   0.0989281


### Parameter: E(Y)


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE              PAKISTAN     NA                   NA                0.0720000   0.0458029   0.0981971
0-24 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0835580   0.0402394   0.1268765
0-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.0234375   0.0117074   0.0351676
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH   NA                   NA                0.0356164   0.0221630   0.0490699
0-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.1470054   0.1174112   0.1765996
0-24 months   ki1135781-COHORTS         INDIA        NA                   NA                0.0992114   0.0898650   0.1085578
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0805893   0.0639450   0.0972335
0-6 months    ki1000109-EE              PAKISTAN     NA                   NA                0.0741758   0.0472177   0.1011340
0-6 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.1183432   0.0901986   0.1464877
6-24 months   ki1000109-EE              PAKISTAN     NA                   NA                0.0720000   0.0458029   0.0981971
6-24 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0835580   0.0402394   0.1268765
6-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.0234375   0.0117074   0.0351676
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH   NA                   NA                0.0356164   0.0221630   0.0490699
6-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.1470054   0.1174112   0.1765996
6-24 months   ki1135781-COHORTS         INDIA        NA                   NA                0.0992114   0.0898650   0.1085578
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0805893   0.0639450   0.0972335


### Parameter: RR


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000109-EE              PAKISTAN     1                    0                 1.2051650   0.5682775   2.555833
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    0                 1.3175676   0.8798884   1.972960
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    0                 1.4875776   0.5156933   4.291091
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH   1                    0                 2.1740798   1.0054462   4.701020
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    0                 1.1469880   0.7046784   1.866924
0-24 months   ki1135781-COHORTS         INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS         INDIA        1                    0                 1.6136936   1.3374458   1.947000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.9561201   0.5856971   1.560817
0-6 months    ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1000109-EE              PAKISTAN     1                    0                 0.7296610   0.3170816   1.679080
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    0                 1.0188261   0.5804169   1.788381
6-24 months   ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000109-EE              PAKISTAN     1                    0                 1.2051650   0.5682775   2.555833
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    0                 1.3175676   0.8798884   1.972960
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    0                 1.4875776   0.5156933   4.291091
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH   1                    0                 2.1740798   1.0054462   4.701020
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    0                 1.1469880   0.7046784   1.866924
6-24 months   ki1135781-COHORTS         INDIA        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS         INDIA        1                    0                 1.6136936   1.3374458   1.947000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.9561201   0.5856971   1.560817


### Parameter: PAR


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                 0.0045397   -0.0143154   0.0233947
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.0168913    0.0032760   0.0305066
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0025607   -0.0049237   0.0100450
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH   0                    NA                 0.0073977   -0.0014360   0.0162315
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0146525   -0.0355594   0.0648644
0-24 months   ki1135781-COHORTS         INDIA        0                    NA                 0.0186717    0.0109961   0.0263474
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0027441   -0.0330553   0.0275672
0-6 months    ki1000109-EE              PAKISTAN     0                    NA                -0.0071250   -0.0248864   0.0106364
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0016765   -0.0486515   0.0520045
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                 0.0045397   -0.0143154   0.0233947
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.0168913    0.0032760   0.0305066
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0025607   -0.0049237   0.0100450
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH   0                    NA                 0.0073977   -0.0014360   0.0162315
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0146525   -0.0355594   0.0648644
6-24 months   ki1135781-COHORTS         INDIA        0                    NA                 0.0186717    0.0109961   0.0263474
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0027441   -0.0330553   0.0275672


### Parameter: PAF


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                 0.0630511   -0.2379464   0.2908634
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.2021505   -0.0923236   0.4172388
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.1092554   -0.2683734   0.3744540
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH   0                    NA                 0.2077059   -0.0672795   0.4118411
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0996732   -0.3151219   0.3836401
0-24 months   ki1135781-COHORTS         INDIA        0                    NA                 0.1882016    0.1088814   0.2604613
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0340502   -0.4875539   0.2811960
0-6 months    ki1000109-EE              PAKISTAN     0                    NA                -0.0960554   -0.3610553   0.1173486
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0141667   -0.5175618   0.3595863
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                 0.0630511   -0.2379464   0.2908634
6-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                 0.2021505   -0.0923236   0.4172388
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.1092554   -0.2683734   0.3744540
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH   0                    NA                 0.2077059   -0.0672795   0.4118411
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0996732   -0.3151219   0.3836401
6-24 months   ki1135781-COHORTS         INDIA        0                    NA                 0.1882016    0.1088814   0.2604613
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0340502   -0.4875539   0.2811960
