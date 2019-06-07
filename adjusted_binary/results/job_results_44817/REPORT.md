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

**Intervention Variable:** predfeed3

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid               country                        predfeed3    pers_wast   n_cell      n
------------  --------------------  -----------------------------  ----------  ----------  -------  -----
0-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    0      199    244
0-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1       10    244
0-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    0       33    244
0-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1        2    244
0-24 months   ki0047075b-MAL-ED     BRAZIL                         1                    0      117    217
0-24 months   ki0047075b-MAL-ED     BRAZIL                         1                    1        2    217
0-24 months   ki0047075b-MAL-ED     BRAZIL                         0                    0       98    217
0-24 months   ki0047075b-MAL-ED     BRAZIL                         0                    1        0    217
0-24 months   ki0047075b-MAL-ED     INDIA                          1                    0      166    238
0-24 months   ki0047075b-MAL-ED     INDIA                          1                    1       15    238
0-24 months   ki0047075b-MAL-ED     INDIA                          0                    0       51    238
0-24 months   ki0047075b-MAL-ED     INDIA                          0                    1        6    238
0-24 months   ki0047075b-MAL-ED     NEPAL                          1                    0      131    235
0-24 months   ki0047075b-MAL-ED     NEPAL                          1                    1        3    235
0-24 months   ki0047075b-MAL-ED     NEPAL                          0                    0      100    235
0-24 months   ki0047075b-MAL-ED     NEPAL                          0                    1        1    235
0-24 months   ki0047075b-MAL-ED     PERU                           1                    0      188    281
0-24 months   ki0047075b-MAL-ED     PERU                           1                    1        1    281
0-24 months   ki0047075b-MAL-ED     PERU                           0                    0       92    281
0-24 months   ki0047075b-MAL-ED     PERU                           0                    1        0    281
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    0       93    267
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1        1    267
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    0      172    267
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1        1    267
0-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    0       91    246
0-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1        0    246
0-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    0      155    246
0-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1        0    246
0-24 months   ki1000109-EE          PAKISTAN                       1                    0      328    376
0-24 months   ki1000109-EE          PAKISTAN                       1                    1       22    376
0-24 months   ki1000109-EE          PAKISTAN                       0                    0       20    376
0-24 months   ki1000109-EE          PAKISTAN                       0                    1        6    376
0-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    0      328    470
0-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    1       61    470
0-24 months   ki1113344-GMS-Nepal   NEPAL                          0                    0       67    470
0-24 months   ki1113344-GMS-Nepal   NEPAL                          0                    1       14    470
0-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    0     6620   7664
0-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    1      384   7664
0-24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    0      602   7664
0-24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    1       58   7664
0-24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    0       34     40
0-24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    1        4     40
0-24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    0        1     40
0-24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    1        1     40
0-6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    0      204    244
0-6 months    ki0047075b-MAL-ED     BANGLADESH                     1                    1        5    244
0-6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    0       33    244
0-6 months    ki0047075b-MAL-ED     BANGLADESH                     0                    1        2    244
0-6 months    ki0047075b-MAL-ED     BRAZIL                         1                    0      118    217
0-6 months    ki0047075b-MAL-ED     BRAZIL                         1                    1        1    217
0-6 months    ki0047075b-MAL-ED     BRAZIL                         0                    0       98    217
0-6 months    ki0047075b-MAL-ED     BRAZIL                         0                    1        0    217
0-6 months    ki0047075b-MAL-ED     INDIA                          1                    0      172    238
0-6 months    ki0047075b-MAL-ED     INDIA                          1                    1        9    238
0-6 months    ki0047075b-MAL-ED     INDIA                          0                    0       47    238
0-6 months    ki0047075b-MAL-ED     INDIA                          0                    1       10    238
0-6 months    ki0047075b-MAL-ED     NEPAL                          1                    0      132    235
0-6 months    ki0047075b-MAL-ED     NEPAL                          1                    1        2    235
0-6 months    ki0047075b-MAL-ED     NEPAL                          0                    0       98    235
0-6 months    ki0047075b-MAL-ED     NEPAL                          0                    1        3    235
0-6 months    ki0047075b-MAL-ED     PERU                           1                    0      189    281
0-6 months    ki0047075b-MAL-ED     PERU                           1                    1        0    281
0-6 months    ki0047075b-MAL-ED     PERU                           0                    0       92    281
0-6 months    ki0047075b-MAL-ED     PERU                           0                    1        0    281
0-6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    0       93    266
0-6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1        1    266
0-6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    0      171    266
0-6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1        1    266
0-6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    0       91    246
0-6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1        0    246
0-6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    0      155    246
0-6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1        0    246
0-6 months    ki1000109-EE          PAKISTAN                       1                    0      318    365
0-6 months    ki1000109-EE          PAKISTAN                       1                    1       21    365
0-6 months    ki1000109-EE          PAKISTAN                       0                    0       20    365
0-6 months    ki1000109-EE          PAKISTAN                       0                    1        6    365
0-6 months    ki1113344-GMS-Nepal   NEPAL                          1                    0      338    459
0-6 months    ki1113344-GMS-Nepal   NEPAL                          1                    1       43    459
0-6 months    ki1113344-GMS-Nepal   NEPAL                          0                    0       64    459
0-6 months    ki1113344-GMS-Nepal   NEPAL                          0                    1       14    459
0-6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    0       18     25
0-6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    1        2     25
0-6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    0        5     25
0-6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    1        0     25
6-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    0      199    244
6-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                    1       10    244
6-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    0       33    244
6-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                    1        2    244
6-24 months   ki0047075b-MAL-ED     BRAZIL                         1                    0      117    217
6-24 months   ki0047075b-MAL-ED     BRAZIL                         1                    1        2    217
6-24 months   ki0047075b-MAL-ED     BRAZIL                         0                    0       98    217
6-24 months   ki0047075b-MAL-ED     BRAZIL                         0                    1        0    217
6-24 months   ki0047075b-MAL-ED     INDIA                          1                    0      166    238
6-24 months   ki0047075b-MAL-ED     INDIA                          1                    1       15    238
6-24 months   ki0047075b-MAL-ED     INDIA                          0                    0       51    238
6-24 months   ki0047075b-MAL-ED     INDIA                          0                    1        6    238
6-24 months   ki0047075b-MAL-ED     NEPAL                          1                    0      131    235
6-24 months   ki0047075b-MAL-ED     NEPAL                          1                    1        3    235
6-24 months   ki0047075b-MAL-ED     NEPAL                          0                    0      100    235
6-24 months   ki0047075b-MAL-ED     NEPAL                          0                    1        1    235
6-24 months   ki0047075b-MAL-ED     PERU                           1                    0      188    281
6-24 months   ki0047075b-MAL-ED     PERU                           1                    1        1    281
6-24 months   ki0047075b-MAL-ED     PERU                           0                    0       92    281
6-24 months   ki0047075b-MAL-ED     PERU                           0                    1        0    281
6-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    0       93    267
6-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1        1    267
6-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    0      172    267
6-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1        1    267
6-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    0       91    246
6-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1        0    246
6-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    0      155    246
6-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1        0    246
6-24 months   ki1000109-EE          PAKISTAN                       1                    0      328    376
6-24 months   ki1000109-EE          PAKISTAN                       1                    1       22    376
6-24 months   ki1000109-EE          PAKISTAN                       0                    0       20    376
6-24 months   ki1000109-EE          PAKISTAN                       0                    1        6    376
6-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    0      328    470
6-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    1       61    470
6-24 months   ki1113344-GMS-Nepal   NEPAL                          0                    0       67    470
6-24 months   ki1113344-GMS-Nepal   NEPAL                          0                    1       14    470
6-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    0     6620   7664
6-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    1      384   7664
6-24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    0      602   7664
6-24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    1       58   7664
6-24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    0       34     40
6-24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                    1        4     40
6-24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    0        1     40
6-24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                    1        1     40


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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




# Results Detail

## Results Plots
![](/tmp/f92fbf80-95ab-4320-a275-2059c7e66b9d/2b8518bb-4d76-49a1-8cf3-b2daef9f1008/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f92fbf80-95ab-4320-a275-2059c7e66b9d/2b8518bb-4d76-49a1-8cf3-b2daef9f1008/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f92fbf80-95ab-4320-a275-2059c7e66b9d/2b8518bb-4d76-49a1-8cf3-b2daef9f1008/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f92fbf80-95ab-4320-a275-2059c7e66b9d/2b8518bb-4d76-49a1-8cf3-b2daef9f1008/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.0828729   0.0426249   0.1231209
0-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.1052632   0.0254249   0.1851014
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.0628571   0.0373963   0.0883180
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.2307692   0.0686043   0.3929342
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1568123   0.1206390   0.1929856
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1728395   0.0904097   0.2552694
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0548258   0.0489110   0.0607406
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0878788   0.0653889   0.1103687
0-6 months    ki0047075b-MAL-ED     INDIA        1                    NA                0.0497238   0.0179894   0.0814581
0-6 months    ki0047075b-MAL-ED     INDIA        0                    NA                0.1754386   0.0764924   0.2743848
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.0619469   0.0362508   0.0876430
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                0.2307692   0.0685978   0.3929407
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1128609   0.0810536   0.1446682
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1794872   0.0942294   0.2647449
6-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.0828729   0.0426249   0.1231209
6-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.1052632   0.0254249   0.1851014
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.0628571   0.0373963   0.0883180
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.2307692   0.0686043   0.3929342
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1568123   0.1206390   0.1929856
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1728395   0.0904097   0.2552694
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0548258   0.0489110   0.0607406
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0878788   0.0653889   0.1103687


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.0882353   0.0521245   0.1243460
0-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.0744681   0.0478968   0.1010394
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1595745   0.1264314   0.1927176
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0576722   0.0518186   0.0635258
0-6 months    ki0047075b-MAL-ED     INDIA        NA                   NA                0.0798319   0.0453258   0.1143380
0-6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.0739726   0.0470855   0.1008598
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1241830   0.0939798   0.1543862
6-24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.0882353   0.0521245   0.1243460
6-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.0744681   0.0478968   0.1010394
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1595745   0.1264314   0.1927176
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0576722   0.0518186   0.0635258


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------  --------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
0-24 months   ki0047075b-MAL-ED     INDIA        1                    1                 1.000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED     INDIA        0                    1                 1.270175   0.5160905   3.126090
0-24 months   ki1000109-EE          PAKISTAN     1                    1                 1.000000   1.0000000   1.000000
0-24 months   ki1000109-EE          PAKISTAN     0                    1                 3.671329   1.6314273   8.261879
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.102206   0.6489102   1.872151
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.602872   1.2211137   2.103981
0-6 months    ki0047075b-MAL-ED     INDIA        1                    1                 1.000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED     INDIA        0                    1                 3.528265   1.5054610   8.268998
0-6 months    ki1000109-EE          PAKISTAN     1                    1                 1.000000   1.0000000   1.000000
0-6 months    ki1000109-EE          PAKISTAN     0                    1                 3.725275   1.6472464   8.424770
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.590340   0.9154189   2.762867
6-24 months   ki0047075b-MAL-ED     INDIA        1                    1                 1.000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED     INDIA        0                    1                 1.270175   0.5160905   3.126090
6-24 months   ki1000109-EE          PAKISTAN     1                    1                 1.000000   1.0000000   1.000000
6-24 months   ki1000109-EE          PAKISTAN     0                    1                 3.671329   1.6314273   8.261879
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.102206   0.6489102   1.872151
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.602872   1.2211137   2.103981


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.0053624   -0.0160853   0.0268101
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.0116109   -0.0005313   0.0237532
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0027621   -0.0127612   0.0182855
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0028464    0.0008349   0.0048580
0-6 months    ki0047075b-MAL-ED     INDIA        1                    NA                0.0301082    0.0043016   0.0559147
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.0120257   -0.0004922   0.0245436
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0113221   -0.0043104   0.0269547
6-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.0053624   -0.0160853   0.0268101
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.0116109   -0.0005313   0.0237532
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0027621   -0.0127612   0.0182855
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0028464    0.0008349   0.0048580


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.0607735   -0.2153023   0.2741341
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.1559184   -0.0137852   0.2972143
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0173093   -0.0849023   0.1098913
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0493551    0.0141908   0.0832651
0-6 months    ki0047075b-MAL-ED     INDIA        1                    NA                0.3771445    0.0169360   0.6053675
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.1625696   -0.0137823   0.3082444
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0911728   -0.0421720   0.2074563
6-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.0607735   -0.2153023   0.2741341
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.1559184   -0.0137852   0.2972143
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0173093   -0.0849023   0.1098913
6-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0493551    0.0141908   0.0832651
