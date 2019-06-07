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

**Outcome Variable:** ever_swasted

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

agecat                        studyid               country                        predfeed3    ever_swasted   n_cell       n
----------------------------  --------------------  -----------------------------  ----------  -------------  -------  ------
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH                     1                       0      203     248
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH                     1                       1       10     248
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH                     0                       0       34     248
0-24 months (no birth wast)   ki0047075b-MAL-ED     BANGLADESH                     0                       1        1     248
0-24 months (no birth wast)   ki0047075b-MAL-ED     BRAZIL                         1                       0      117     224
0-24 months (no birth wast)   ki0047075b-MAL-ED     BRAZIL                         1                       1        3     224
0-24 months (no birth wast)   ki0047075b-MAL-ED     BRAZIL                         0                       0      104     224
0-24 months (no birth wast)   ki0047075b-MAL-ED     BRAZIL                         0                       1        0     224
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          1                       0      173     235
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          1                       1        8     235
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          0                       0       52     235
0-24 months (no birth wast)   ki0047075b-MAL-ED     INDIA                          0                       1        2     235
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          1                       0      131     234
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          1                       1        2     234
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          0                       0      100     234
0-24 months (no birth wast)   ki0047075b-MAL-ED     NEPAL                          0                       1        1     234
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           1                       0      191     286
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           1                       1        3     286
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           0                       0       92     286
0-24 months (no birth wast)   ki0047075b-MAL-ED     PERU                           0                       1        0     286
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   1                       0       92     275
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   1                       1        3     275
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   0                       0      172     275
0-24 months (no birth wast)   ki0047075b-MAL-ED     SOUTH AFRICA                   0                       1        8     275
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                       0       91     249
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                       1        1     249
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                       0      152     249
0-24 months (no birth wast)   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                       1        5     249
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       1                       0      306     376
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       1                       1       44     376
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       0                       0       19     376
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN                       0                       1        7     376
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          1                       0      299     466
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          1                       1       85     466
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          0                       0       70     466
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL                          0                       1       12     466
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     1                       0    10821   12571
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     1                       1      416   12571
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     0                       0     1275   12571
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH                     0                       1       59   12571
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH                     1                       0       37      40
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH                     1                       1        1      40
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH                     0                       0        2      40
0-24 months (no birth wast)   kiGH5241-JiVitA-4     BANGLADESH                     0                       1        0      40
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH                     1                       0      205     247
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH                     1                       1        7     247
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH                     0                       0       35     247
0-6 months (no birth wast)    ki0047075b-MAL-ED     BANGLADESH                     0                       1        0     247
0-6 months (no birth wast)    ki0047075b-MAL-ED     BRAZIL                         1                       0      118     224
0-6 months (no birth wast)    ki0047075b-MAL-ED     BRAZIL                         1                       1        2     224
0-6 months (no birth wast)    ki0047075b-MAL-ED     BRAZIL                         0                       0      104     224
0-6 months (no birth wast)    ki0047075b-MAL-ED     BRAZIL                         0                       1        0     224
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          1                       0      177     234
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          1                       1        4     234
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          0                       0       52     234
0-6 months (no birth wast)    ki0047075b-MAL-ED     INDIA                          0                       1        1     234
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          1                       0      133     232
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          1                       1        0     232
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          0                       0       98     232
0-6 months (no birth wast)    ki0047075b-MAL-ED     NEPAL                          0                       1        1     232
0-6 months (no birth wast)    ki0047075b-MAL-ED     PERU                           1                       0      193     286
0-6 months (no birth wast)    ki0047075b-MAL-ED     PERU                           1                       1        1     286
0-6 months (no birth wast)    ki0047075b-MAL-ED     PERU                           0                       0       92     286
0-6 months (no birth wast)    ki0047075b-MAL-ED     PERU                           0                       1        0     286
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   1                       0       94     274
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   1                       1        0     274
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   0                       0      177     274
0-6 months (no birth wast)    ki0047075b-MAL-ED     SOUTH AFRICA                   0                       1        3     274
0-6 months (no birth wast)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                       0       91     249
0-6 months (no birth wast)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                       1        1     249
0-6 months (no birth wast)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                       0      156     249
0-6 months (no birth wast)    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                       1        1     249
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       1                       0      334     372
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       1                       1       13     372
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       0                       0       22     372
0-6 months (no birth wast)    ki1000109-EE          PAKISTAN                       0                       1        3     372
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          1                       0      360     448
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          1                       1       11     448
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          0                       0       75     448
0-6 months (no birth wast)    ki1113344-GMS-Nepal   NEPAL                          0                       1        2     448
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     1                       0    10962   12467
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     1                       1      192   12467
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     0                       0     1281   12467
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH                     0                       1       32   12467
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH                     1                       0       38      40
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH                     1                       1        0      40
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH                     0                       0        2      40
0-6 months (no birth wast)    kiGH5241-JiVitA-4     BANGLADESH                     0                       1        0      40
6-24 months                   ki0047075b-MAL-ED     BANGLADESH                     1                       0      199     236
6-24 months                   ki0047075b-MAL-ED     BANGLADESH                     1                       1        3     236
6-24 months                   ki0047075b-MAL-ED     BANGLADESH                     0                       0       33     236
6-24 months                   ki0047075b-MAL-ED     BANGLADESH                     0                       1        1     236
6-24 months                   ki0047075b-MAL-ED     BRAZIL                         1                       0      114     207
6-24 months                   ki0047075b-MAL-ED     BRAZIL                         1                       1        2     207
6-24 months                   ki0047075b-MAL-ED     BRAZIL                         0                       0       91     207
6-24 months                   ki0047075b-MAL-ED     BRAZIL                         0                       1        0     207
6-24 months                   ki0047075b-MAL-ED     INDIA                          1                       0      174     233
6-24 months                   ki0047075b-MAL-ED     INDIA                          1                       1        4     233
6-24 months                   ki0047075b-MAL-ED     INDIA                          0                       0       54     233
6-24 months                   ki0047075b-MAL-ED     INDIA                          0                       1        1     233
6-24 months                   ki0047075b-MAL-ED     NEPAL                          1                       0      130     232
6-24 months                   ki0047075b-MAL-ED     NEPAL                          1                       1        2     232
6-24 months                   ki0047075b-MAL-ED     NEPAL                          0                       0      100     232
6-24 months                   ki0047075b-MAL-ED     NEPAL                          0                       1        0     232
6-24 months                   ki0047075b-MAL-ED     PERU                           1                       0      180     268
6-24 months                   ki0047075b-MAL-ED     PERU                           1                       1        2     268
6-24 months                   ki0047075b-MAL-ED     PERU                           0                       0       86     268
6-24 months                   ki0047075b-MAL-ED     PERU                           0                       1        0     268
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   1                       0       85     253
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   1                       1        4     253
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   0                       0      159     253
6-24 months                   ki0047075b-MAL-ED     SOUTH AFRICA                   0                       1        5     253
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                       0       87     239
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                       1        0     239
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                       0      148     239
6-24 months                   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                       1        4     239
6-24 months                   ki1000109-EE          PAKISTAN                       1                       0      314     374
6-24 months                   ki1000109-EE          PAKISTAN                       1                       1       34     374
6-24 months                   ki1000109-EE          PAKISTAN                       0                       0       21     374
6-24 months                   ki1000109-EE          PAKISTAN                       0                       1        5     374
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          1                       0      303     468
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          1                       1       84     468
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          0                       0       69     468
6-24 months                   ki1113344-GMS-Nepal   NEPAL                          0                       1       12     468
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     1                       0     7311    8294
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     1                       1      243    8294
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     0                       0      710    8294
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH                     0                       1       30    8294
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH                     1                       0       37      41
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH                     1                       1        2      41
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH                     0                       0        2      41
6-24 months                   kiGH5241-JiVitA-4     BANGLADESH                     0                       1        0      41


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/7e8b7320-608a-4db0-a64b-67274f9cacd3/914be3b5-add8-47e9-9fcf-b70176a9b1aa/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7e8b7320-608a-4db0-a64b-67274f9cacd3/914be3b5-add8-47e9-9fcf-b70176a9b1aa/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7e8b7320-608a-4db0-a64b-67274f9cacd3/914be3b5-add8-47e9-9fcf-b70176a9b1aa/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7e8b7320-608a-4db0-a64b-67274f9cacd3/914be3b5-add8-47e9-9fcf-b70176a9b1aa/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                0.1257143   0.0909357   0.1604928
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    NA                0.2692308   0.0985077   0.4399538
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.2213542   0.1797858   0.2629225
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1463415   0.0697583   0.2229247
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0370206   0.0329303   0.0411108
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0442279   0.0323009   0.0561549
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0172136   0.0143220   0.0201051
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0243717   0.0163165   0.0324268
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                0.0977012   0.0664645   0.1289378
6-24 months                   ki1000109-EE          PAKISTAN     0                    NA                0.1923077   0.0406152   0.3440002
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.2170543   0.1759386   0.2581699
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1481481   0.0707019   0.2255944
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0321684   0.0277179   0.0366188
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0405405   0.0237146   0.0573665


### Parameter: E(Y)


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     NA                   NA                0.1356383   0.1009829   0.1702937
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.2081545   0.1712538   0.2450552
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0377854   0.0338756   0.0416952
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0179674   0.0151816   0.0207533
6-24 months                   ki1000109-EE          PAKISTAN     NA                   NA                0.1042781   0.0732627   0.1352934
6-24 months                   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.2051282   0.1685055   0.2417509
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0329154   0.0285602   0.0372706


### Parameter: RR


agecat                        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     0                    1                 2.1416084   1.0722110   4.277597
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        0                    1                 0.6611191   0.3791536   1.152774
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.1946845   0.8959788   1.592974
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.4158416   0.9896759   2.025519
6-24 months                   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1000109-EE          PAKISTAN     0                    1                 1.9683257   0.8403400   4.610403
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   ki1113344-GMS-Nepal   NEPAL        0                    1                 0.6825397   0.3914263   1.190161
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.2602603   0.8166580   1.944824


### Parameter: PAR


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                 0.0099240   -0.0026748   0.0225228
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0131997   -0.0287511   0.0023518
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0007648   -0.0005617   0.0020913
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0007539   -0.0001226   0.0016304
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                 0.0065769   -0.0044632   0.0176171
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0119261   -0.0272851   0.0034330
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0007470   -0.0008038   0.0022977


### Parameter: PAF


agecat                        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-EE          PAKISTAN     1                    NA                 0.0731653   -0.0230498   0.1603315
0-24 months (no birth wast)   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0634128   -0.1404098   0.0083856
0-24 months (no birth wast)   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0202412   -0.0155000   0.0547245
0-6 months (no birth wast)    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0419580   -0.0083090   0.0897191
6-24 months                   ki1000109-EE          PAKISTAN     1                    NA                 0.0630710   -0.0475520   0.1620121
6-24 months                   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0581395   -0.1353765   0.0138432
6-24 months                   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0226937   -0.0253076   0.0684478
