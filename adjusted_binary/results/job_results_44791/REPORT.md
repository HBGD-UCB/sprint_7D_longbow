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

**Intervention Variable:** vagbrth

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        vagbrth    pers_wast   n_cell      n
------------  -------------------------  -----------------------------  --------  ----------  -------  -----
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       24    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        1    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0      326    373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1       22    373
0-24 months   ki1000108-IRC              INDIA                          0                  0       62    410
0-24 months   ki1000108-IRC              INDIA                          0                  1        8    410
0-24 months   ki1000108-IRC              INDIA                          1                  0      300    410
0-24 months   ki1000108-IRC              INDIA                          1                  1       40    410
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      146    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1        2    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0      479    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1       13    640
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                  0      191    472
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                  1        3    472
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                  0      261    472
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                  1       17    472
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0      192   2140
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1        6   2140
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0     1890   2140
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1       52   2140
0-24 months   ki1119695-PROBIT           BELARUS                        0                  0      830   7972
0-24 months   ki1119695-PROBIT           BELARUS                        0                  1        6   7972
0-24 months   ki1119695-PROBIT           BELARUS                        1                  0     7047   7972
0-24 months   ki1119695-PROBIT           BELARUS                        1                  1       89   7972
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                  0      797   9256
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                  1        8   9256
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                  0     8296   9256
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                  1      155   9256
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0      459   7742
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1       24   7742
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     6834   7742
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1      425   7742
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0       76   1160
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1        4   1160
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0      991   1160
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1       89   1160
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       18    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        7    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0      290    358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1       43    358
0-6 months    ki1000108-IRC              INDIA                          0                  0       57    402
0-6 months    ki1000108-IRC              INDIA                          0                  1       11    402
0-6 months    ki1000108-IRC              INDIA                          1                  0      281    402
0-6 months    ki1000108-IRC              INDIA                          1                  1       53    402
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  0      144    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  1        4    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0      479    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1       10    637
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                  0       96    249
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                  1        0    249
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                  0      148    249
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                  1        5    249
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0      182   2035
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1        5   2035
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0     1801   2035
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1       47   2035
0-6 months    ki1119695-PROBIT           BELARUS                        0                  0      645   6657
0-6 months    ki1119695-PROBIT           BELARUS                        0                  1       62   6657
0-6 months    ki1119695-PROBIT           BELARUS                        1                  0     5385   6657
0-6 months    ki1119695-PROBIT           BELARUS                        1                  1      565   6657
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                  0       49    607
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                  1        0    607
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                  0      544    607
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                  1       14    607
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0        0     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1        0     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0       23     25
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1        2     25
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       24    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        1    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0      326    373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1       22    373
6-24 months   ki1000108-IRC              INDIA                          0                  0       62    410
6-24 months   ki1000108-IRC              INDIA                          0                  1        8    410
6-24 months   ki1000108-IRC              INDIA                          1                  0      300    410
6-24 months   ki1000108-IRC              INDIA                          1                  1       40    410
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      146    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1        2    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0      479    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1       13    640
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                  0      191    472
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                  1        3    472
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                  0      261    472
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                  1       17    472
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0      192   2140
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1        6   2140
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0     1890   2140
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1       52   2140
6-24 months   ki1119695-PROBIT           BELARUS                        0                  0      830   7972
6-24 months   ki1119695-PROBIT           BELARUS                        0                  1        6   7972
6-24 months   ki1119695-PROBIT           BELARUS                        1                  0     7047   7972
6-24 months   ki1119695-PROBIT           BELARUS                        1                  1       89   7972
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                  0      797   9256
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                  1        8   9256
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                  0     8296   9256
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                  1      155   9256
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0      459   7742
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1       24   7742
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     6834   7742
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1      425   7742
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0       76   1160
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1        4   1160
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0      991   1160
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1       89   1160


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/edcae972-7fbb-49e9-9883-07ccdd3e22bc/78375200-2088-40b6-9ed5-7922f3c701e0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/edcae972-7fbb-49e9-9883-07ccdd3e22bc/78375200-2088-40b6-9ed5-7922f3c701e0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/edcae972-7fbb-49e9-9883-07ccdd3e22bc/78375200-2088-40b6-9ed5-7922f3c701e0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/edcae972-7fbb-49e9-9883-07ccdd3e22bc/78375200-2088-40b6-9ed5-7922f3c701e0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          0                    NA                0.1142857   0.0396628   0.1889086
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.1176471   0.0833584   0.1519357
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0303030   0.0064206   0.0541854
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0267765   0.0195951   0.0339579
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0071770   0.0011518   0.0132022
0-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.0124720   0.0045438   0.0204001
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0099379   0.0030853   0.0167904
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0183410   0.0154801   0.0212020
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0496894   0.0287613   0.0706176
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0585480   0.0525827   0.0645133
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2800000   0.1037493   0.4562507
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1291291   0.0930611   0.1651972
0-6 months    ki1000108-IRC              INDIA                          0                    NA                0.1617647   0.0741334   0.2493960
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.1586826   0.1194488   0.1979164
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0267380   0.0036113   0.0498646
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0254329   0.0182532   0.0326126
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0876945   0.0436308   0.1317582
0-6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.0949580   0.0447186   0.1451974
6-24 months   ki1000108-IRC              INDIA                          0                    NA                0.1142857   0.0396628   0.1889086
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.1176471   0.0833584   0.1519357
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0303030   0.0064206   0.0541854
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0267765   0.0195951   0.0339579
6-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.0071770   0.0011518   0.0132022
6-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.0124720   0.0045438   0.0204001
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0099379   0.0030853   0.0167904
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0183410   0.0154801   0.0212020
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0496894   0.0287613   0.0706176
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0585480   0.0525827   0.0645133


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0271028   0.0202213   0.0339843
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0119167   0.0046062   0.0192272
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0176102   0.0149305   0.0202899
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0579954   0.0521753   0.0638154
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1396648   0.1037072   0.1756225
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1592040   0.1233945   0.1950135
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0255528   0.0186952   0.0324104
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0941866   0.0454872   0.1428859
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0271028   0.0202213   0.0339843
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0119167   0.0046062   0.0192272
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0176102   0.0149305   0.0202899
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0579954   0.0521753   0.0638154


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          1                    0                 1.0294118   0.5035574   2.1044047
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8836251   0.3843408   2.0315133
0-24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.7377616   0.6864034   4.3994759
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.8455656   0.9101236   3.7424724
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.1782787   0.7681335   1.8074211
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.4611755   0.2316258   0.9182174
0-6 months    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          1                    0                 0.9809472   0.5407959   1.7793357
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9511905   0.3829381   2.3626880
0-6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        1                    0                 1.0828273   0.7662088   1.5302813
6-24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          1                    0                 1.0294118   0.5035574   2.1044047
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8836251   0.3843408   2.0315133
6-24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.7377616   0.6864034   4.3994759
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.8455656   0.9101236   3.7424724
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.1782787   0.7681335   1.8074211


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0027875   -0.0653152   0.0708901
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0032002   -0.0258316   0.0194312
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0047397   -0.0031599   0.0126393
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0076723    0.0008922   0.0144524
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0083059   -0.0117920   0.0284038
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1403352   -0.3077229   0.0270526
0-6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0025607   -0.0823330   0.0772115
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0011851   -0.0231755   0.0208052
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0064921   -0.0221775   0.0351617
6-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0027875   -0.0653152   0.0708901
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0032002   -0.0258316   0.0194312
6-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0047397   -0.0031599   0.0126393
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0076723    0.0008922   0.0144524
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0083059   -0.0117920   0.0284038


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0238095   -0.7714072    0.4620391
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1180773   -1.3584262    0.4699445
0-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.3977336   -0.4412895    0.7483331
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.4356743   -0.1053313    0.7118841
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1432168   -0.2843599    0.4284488
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -1.0048000   -2.6272555   -0.1080617
0-6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0160846   -0.6637702    0.3794649
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0463801   -1.3814109    0.5402258
0-6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0689279   -0.2715410    0.3182326
6-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0238095   -0.7714072    0.4620391
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1180773   -1.3584262    0.4699445
6-24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.3977336   -0.4412895    0.7483331
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.4356743   -0.1053313    0.7118841
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1432168   -0.2843599    0.4284488
