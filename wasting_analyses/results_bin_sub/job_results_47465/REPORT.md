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

**Outcome Variable:** ever_co

## Predictor Variables

**Intervention Variable:** predfeed3

**Adjustment Set:**

* arm
* sex
* month
* brthmon
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid               country                        predfeed3    ever_co   n_cell       n
------------  --------------------  -----------------------------  ----------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                  0      178     248
0-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                  1       35     248
0-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                  0       32     248
0-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                  1        3     248
0-24 months   ki0047075b-MAL-ED     BRAZIL                         1                  0      119     225
0-24 months   ki0047075b-MAL-ED     BRAZIL                         1                  1        2     225
0-24 months   ki0047075b-MAL-ED     BRAZIL                         0                  0      104     225
0-24 months   ki0047075b-MAL-ED     BRAZIL                         0                  1        0     225
0-24 months   ki0047075b-MAL-ED     INDIA                          1                  0      143     240
0-24 months   ki0047075b-MAL-ED     INDIA                          1                  1       40     240
0-24 months   ki0047075b-MAL-ED     INDIA                          0                  0       43     240
0-24 months   ki0047075b-MAL-ED     INDIA                          0                  1       14     240
0-24 months   ki0047075b-MAL-ED     NEPAL                          1                  0      120     235
0-24 months   ki0047075b-MAL-ED     NEPAL                          1                  1       14     235
0-24 months   ki0047075b-MAL-ED     NEPAL                          0                  0       95     235
0-24 months   ki0047075b-MAL-ED     NEPAL                          0                  1        6     235
0-24 months   ki0047075b-MAL-ED     PERU                           1                  0      188     286
0-24 months   ki0047075b-MAL-ED     PERU                           1                  1        6     286
0-24 months   ki0047075b-MAL-ED     PERU                           0                  0       87     286
0-24 months   ki0047075b-MAL-ED     PERU                           0                  1        5     286
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                  0       90     275
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                  1        5     275
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                  0      164     275
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                  1       16     275
0-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                  0       87     249
0-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                  1        5     249
0-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                  0      139     249
0-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                  1       18     249
0-24 months   ki1000109-EE          PAKISTAN                       1                  0      222     378
0-24 months   ki1000109-EE          PAKISTAN                       1                  1      130     378
0-24 months   ki1000109-EE          PAKISTAN                       0                  0       12     378
0-24 months   ki1000109-EE          PAKISTAN                       0                  1       14     378
0-24 months   ki1113344-GMS-Nepal   NEPAL                          1                  0      258     475
0-24 months   ki1113344-GMS-Nepal   NEPAL                          1                  1      134     475
0-24 months   ki1113344-GMS-Nepal   NEPAL                          0                  0       59     475
0-24 months   ki1113344-GMS-Nepal   NEPAL                          0                  1       24     475
0-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                  0    21122   25765
0-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                  1     1898   25765
0-24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                  0     2341   25765
0-24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                  1      404   25765
0-24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                  0      132     165
0-24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                  1       17     165
0-24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                  0       13     165
0-24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                  1        3     165
0-6 months    ki0047075b-MAL-ED     BANGLADESH                     1                  0      205     248
0-6 months    ki0047075b-MAL-ED     BANGLADESH                     1                  1        8     248
0-6 months    ki0047075b-MAL-ED     BANGLADESH                     0                  0       34     248
0-6 months    ki0047075b-MAL-ED     BANGLADESH                     0                  1        1     248
0-6 months    ki0047075b-MAL-ED     BRAZIL                         1                  0      121     225
0-6 months    ki0047075b-MAL-ED     BRAZIL                         1                  1        0     225
0-6 months    ki0047075b-MAL-ED     BRAZIL                         0                  0      104     225
0-6 months    ki0047075b-MAL-ED     BRAZIL                         0                  1        0     225
0-6 months    ki0047075b-MAL-ED     INDIA                          1                  0      172     240
0-6 months    ki0047075b-MAL-ED     INDIA                          1                  1       11     240
0-6 months    ki0047075b-MAL-ED     INDIA                          0                  0       50     240
0-6 months    ki0047075b-MAL-ED     INDIA                          0                  1        7     240
0-6 months    ki0047075b-MAL-ED     NEPAL                          1                  0      131     235
0-6 months    ki0047075b-MAL-ED     NEPAL                          1                  1        3     235
0-6 months    ki0047075b-MAL-ED     NEPAL                          0                  0       98     235
0-6 months    ki0047075b-MAL-ED     NEPAL                          0                  1        3     235
0-6 months    ki0047075b-MAL-ED     PERU                           1                  0      193     286
0-6 months    ki0047075b-MAL-ED     PERU                           1                  1        1     286
0-6 months    ki0047075b-MAL-ED     PERU                           0                  0       91     286
0-6 months    ki0047075b-MAL-ED     PERU                           0                  1        1     286
0-6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                  0       95     275
0-6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   1                  1        0     275
0-6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                  0      176     275
0-6 months    ki0047075b-MAL-ED     SOUTH AFRICA                   0                  1        4     275
0-6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                  0       92     249
0-6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                  1        0     249
0-6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                  0      153     249
0-6 months    ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                  1        4     249
0-6 months    ki1000109-EE          PAKISTAN                       1                  0      308     378
0-6 months    ki1000109-EE          PAKISTAN                       1                  1       44     378
0-6 months    ki1000109-EE          PAKISTAN                       0                  0       17     378
0-6 months    ki1000109-EE          PAKISTAN                       0                  1        9     378
0-6 months    ki1113344-GMS-Nepal   NEPAL                          1                  0      381     475
0-6 months    ki1113344-GMS-Nepal   NEPAL                          1                  1       11     475
0-6 months    ki1113344-GMS-Nepal   NEPAL                          0                  0       76     475
0-6 months    ki1113344-GMS-Nepal   NEPAL                          0                  1        7     475
0-6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                  0    22246   25742
0-6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                  1      760   25742
0-6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                  0     2478   25742
0-6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                  1      258   25742
0-6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                  0      149     165
0-6 months    kiGH5241-JiVitA-4     BANGLADESH                     1                  1        0     165
0-6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                  0       15     165
0-6 months    kiGH5241-JiVitA-4     BANGLADESH                     0                  1        1     165
6-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                  0      170     235
6-24 months   ki0047075b-MAL-ED     BANGLADESH                     1                  1       32     235
6-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                  0       31     235
6-24 months   ki0047075b-MAL-ED     BANGLADESH                     0                  1        2     235
6-24 months   ki0047075b-MAL-ED     BRAZIL                         1                  0      114     207
6-24 months   ki0047075b-MAL-ED     BRAZIL                         1                  1        2     207
6-24 months   ki0047075b-MAL-ED     BRAZIL                         0                  0       91     207
6-24 months   ki0047075b-MAL-ED     BRAZIL                         0                  1        0     207
6-24 months   ki0047075b-MAL-ED     INDIA                          1                  0      142     233
6-24 months   ki0047075b-MAL-ED     INDIA                          1                  1       36     233
6-24 months   ki0047075b-MAL-ED     INDIA                          0                  0       44     233
6-24 months   ki0047075b-MAL-ED     INDIA                          0                  1       11     233
6-24 months   ki0047075b-MAL-ED     NEPAL                          1                  0      120     232
6-24 months   ki0047075b-MAL-ED     NEPAL                          1                  1       12     232
6-24 months   ki0047075b-MAL-ED     NEPAL                          0                  0       96     232
6-24 months   ki0047075b-MAL-ED     NEPAL                          0                  1        4     232
6-24 months   ki0047075b-MAL-ED     PERU                           1                  0      176     268
6-24 months   ki0047075b-MAL-ED     PERU                           1                  1        6     268
6-24 months   ki0047075b-MAL-ED     PERU                           0                  0       82     268
6-24 months   ki0047075b-MAL-ED     PERU                           0                  1        4     268
6-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                  0       84     253
6-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                  1        5     253
6-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                  0      150     253
6-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                  1       14     253
6-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                  0       82     239
6-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                  1        5     239
6-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                  0      136     239
6-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                  1       16     239
6-24 months   ki1000109-EE          PAKISTAN                       1                  0      227     372
6-24 months   ki1000109-EE          PAKISTAN                       1                  1      120     372
6-24 months   ki1000109-EE          PAKISTAN                       0                  0       13     372
6-24 months   ki1000109-EE          PAKISTAN                       0                  1       12     372
6-24 months   ki1113344-GMS-Nepal   NEPAL                          1                  0      253     468
6-24 months   ki1113344-GMS-Nepal   NEPAL                          1                  1      134     468
6-24 months   ki1113344-GMS-Nepal   NEPAL                          0                  0       59     468
6-24 months   ki1113344-GMS-Nepal   NEPAL                          0                  1       22     468
6-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                  0    13911   16707
6-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                  1     1271   16707
6-24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                  0     1341   16707
6-24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                  1      184   16707
6-24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                  0      132     165
6-24 months   kiGH5241-JiVitA-4     BANGLADESH                     1                  1       17     165
6-24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                  0       14     165
6-24 months   kiGH5241-JiVitA-4     BANGLADESH                     0                  1        2     165


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
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
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




# Results Detail

## Results Plots
![](/tmp/8a3dbf83-4ed8-4904-be73-3edd8a3f80da/1b12091b-3af3-4ecd-8c1d-69c144d2de02/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8a3dbf83-4ed8-4904-be73-3edd8a3f80da/1b12091b-3af3-4ecd-8c1d-69c144d2de02/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8a3dbf83-4ed8-4904-be73-3edd8a3f80da/1b12091b-3af3-4ecd-8c1d-69c144d2de02/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8a3dbf83-4ed8-4904-be73-3edd8a3f80da/1b12091b-3af3-4ecd-8c1d-69c144d2de02/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                0.2194374   0.1591776   0.2796972
0-24 months   ki0047075b-MAL-ED     INDIA                          0                    NA                0.2376723   0.1236491   0.3516955
0-24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                0.1044776   0.0525771   0.1563781
0-24 months   ki0047075b-MAL-ED     NEPAL                          0                    NA                0.0594059   0.0132073   0.1056046
0-24 months   ki0047075b-MAL-ED     PERU                           1                    NA                0.0309278   0.0065239   0.0553318
0-24 months   ki0047075b-MAL-ED     PERU                           0                    NA                0.0543478   0.0079421   0.1007536
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.0526316   0.0076474   0.0976158
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.0888889   0.0472391   0.1305386
0-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0543478   0.0079300   0.1007657
0-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1146497   0.0647134   0.1645860
0-24 months   ki1000109-EE          PAKISTAN                       1                    NA                0.3696734   0.3190208   0.4203260
0-24 months   ki1000109-EE          PAKISTAN                       0                    NA                0.5462958   0.3261872   0.7664044
0-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.3419852   0.2950748   0.3888955
0-24 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.2938592   0.1960981   0.3916204
0-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.0844616   0.0804500   0.0884732
0-24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.1234148   0.1100011   0.1368285
0-6 months    ki0047075b-MAL-ED     INDIA                          1                    NA                0.0601093   0.0255998   0.0946188
0-6 months    ki0047075b-MAL-ED     INDIA                          0                    NA                0.1228070   0.0374230   0.2081910
0-6 months    ki1000109-EE          PAKISTAN                       1                    NA                0.1250000   0.0904052   0.1595948
0-6 months    ki1000109-EE          PAKISTAN                       0                    NA                0.3461538   0.1630451   0.5292626
0-6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.0280612   0.0116955   0.0444270
0-6 months    ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.0843373   0.0244901   0.1441846
0-6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.0351222   0.0326474   0.0375970
0-6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.0700275   0.0595943   0.0804606
6-24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                0.2031255   0.1435866   0.2626643
6-24 months   ki0047075b-MAL-ED     INDIA                          0                    NA                0.1924754   0.0850929   0.2998579
6-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                0.0561798   0.0082453   0.1041142
6-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    NA                0.0853659   0.0425157   0.1282160
6-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0574713   0.0084627   0.1064798
6-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1052632   0.0563729   0.1541534
6-24 months   ki1000109-EE          PAKISTAN                       1                    NA                0.3453230   0.2951954   0.3954505
6-24 months   ki1000109-EE          PAKISTAN                       0                    NA                0.4751289   0.2556574   0.6946004
6-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                0.3457463   0.2984039   0.3930887
6-24 months   ki1113344-GMS-Nepal   NEPAL                          0                    NA                0.2805655   0.1824117   0.3787193
6-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                0.0851869   0.0803289   0.0900449
6-24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    NA                0.1050214   0.0875638   0.1224790


### Parameter: E(Y)


agecat        studyid               country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                0.2250000   0.1720591   0.2779409
0-24 months   ki0047075b-MAL-ED     NEPAL                          NA                   NA                0.0851064   0.0493539   0.1208589
0-24 months   ki0047075b-MAL-ED     PERU                           NA                   NA                0.0384615   0.0161350   0.0607881
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                0.0763636   0.0449175   0.1078097
0-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0923695   0.0563331   0.1284058
0-24 months   ki1000109-EE          PAKISTAN                       NA                   NA                0.3809524   0.3319322   0.4299725
0-24 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.3326316   0.2902162   0.3750470
0-24 months   kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.0893460   0.0853745   0.0933175
0-6 months    ki0047075b-MAL-ED     INDIA                          NA                   NA                0.0750000   0.0416074   0.1083926
0-6 months    ki1000109-EE          PAKISTAN                       NA                   NA                0.1402116   0.1051635   0.1752598
0-6 months    ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.0378947   0.0207054   0.0550841
0-6 months    kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.0395463   0.0370065   0.0420860
6-24 months   ki0047075b-MAL-ED     INDIA                          NA                   NA                0.2017167   0.1500806   0.2533529
6-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   NA                   NA                0.0750988   0.0425592   0.1076384
6-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0878661   0.0518995   0.1238327
6-24 months   ki1000109-EE          PAKISTAN                       NA                   NA                0.3548387   0.3061520   0.4035255
6-24 months   ki1113344-GMS-Nepal   NEPAL                          NA                   NA                0.3333333   0.2905787   0.3760880
6-24 months   kiGH5241-JiVitA-3     BANGLADESH                     NA                   NA                0.0870892   0.0823628   0.0918157


### Parameter: RR


agecat        studyid               country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  --------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED     INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED     INDIA                          0                    1                 1.0830987   0.6232371   1.882274
0-24 months   ki0047075b-MAL-ED     NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED     NEPAL                          0                    1                 0.5685997   0.2259648   1.430778
0-24 months   ki0047075b-MAL-ED     PERU                           1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED     PERU                           0                    1                 1.7572464   0.5494264   5.620252
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                 1.6888889   0.6372207   4.476229
0-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 2.1095541   0.8087549   5.502555
0-24 months   ki1000109-EE          PAKISTAN                       1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000109-EE          PAKISTAN                       0                    1                 1.4777797   0.9652987   2.262339
0-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                 0.8592747   0.6002896   1.229995
0-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 1.4611940   1.3046994   1.636460
0-6 months    ki0047075b-MAL-ED     INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED     INDIA                          0                    1                 2.0430622   0.8292627   5.033511
0-6 months    ki1000109-EE          PAKISTAN                       1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1000109-EE          PAKISTAN                       0                    1                 2.7692308   1.5243435   5.030781
0-6 months    ki1113344-GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal   NEPAL                          0                    1                 3.0054765   1.1995016   7.530535
0-6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 1.9938227   1.7052843   2.331183
6-24 months   ki0047075b-MAL-ED     INDIA                          1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED     INDIA                          0                    1                 0.9475691   0.5040148   1.781470
6-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   0                    1                 1.5195122   0.5646526   4.089093
6-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   0                    1                 1.8315789   0.6936052   4.836586
6-24 months   ki1000109-EE          PAKISTAN                       1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000109-EE          PAKISTAN                       0                    1                 1.3758970   0.8476068   2.233456
6-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal   NEPAL                          0                    1                 0.8114778   0.5576739   1.180791
6-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3     BANGLADESH                     0                    1                 1.2328348   1.0374267   1.465050


### Parameter: PAR


agecat        studyid               country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0055626   -0.0246956   0.0358209
0-24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.0193712   -0.0493709   0.0106285
0-24 months   ki0047075b-MAL-ED     PERU                           1                    NA                 0.0075337   -0.0093801   0.0244475
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.0237321   -0.0164466   0.0639107
0-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0380217   -0.0051185   0.0811618
0-24 months   ki1000109-EE          PAKISTAN                       1                    NA                 0.0112790   -0.0032932   0.0258512
0-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0093536   -0.0282635   0.0095564
0-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0048844    0.0033751   0.0063937
0-6 months    ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0148907   -0.0072417   0.0370231
0-6 months    ki1000109-EE          PAKISTAN                       1                    NA                 0.0152116    0.0012041   0.0292192
0-6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.0098335   -0.0011773   0.0208444
0-6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0044241    0.0031714   0.0056768
6-24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0014087   -0.0302843   0.0274668
6-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.0189190   -0.0227938   0.0606319
6-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0303948   -0.0137279   0.0745176
6-24 months   ki1000109-EE          PAKISTAN                       1                    NA                 0.0095157   -0.0046217   0.0236531
6-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0124130   -0.0311435   0.0063175
6-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0019023    0.0002543   0.0035504


### Parameter: PAF


agecat        studyid               country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                 0.0247228   -0.1194344   0.1503158
0-24 months   ki0047075b-MAL-ED     NEPAL                          1                    NA                -0.2276119   -0.6224551   0.0711416
0-24 months   ki0047075b-MAL-ED     PERU                           1                    NA                 0.1958763   -0.3654664   0.5264512
0-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.3107769   -0.4490773   0.6721856
0-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.4116257   -0.2472577   0.7224436
0-24 months   ki1000109-EE          PAKISTAN                       1                    NA                 0.0296074   -0.0094682   0.0671704
0-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0281199   -0.0865863   0.0272005
0-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0546683    0.0378517   0.0711910
0-6 months    ki0047075b-MAL-ED     INDIA                          1                    NA                 0.1985428   -0.1413521   0.4372169
0-6 months    ki1000109-EE          PAKISTAN                       1                    NA                 0.1084906    0.0057298   0.2006307
0-6 months    ki1113344-GMS-Nepal   NEPAL                          1                    NA                 0.2594955   -0.0622319   0.4837785
0-6 months    kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.1118705    0.0810238   0.1416818
6-24 months   ki0047075b-MAL-ED     INDIA                          1                    NA                -0.0069837   -0.1607893   0.1264425
6-24 months   ki0047075b-MAL-ED     SOUTH AFRICA                   1                    NA                 0.2519219   -0.5519882   0.6394169
6-24 months   ki0047075b-MAL-ED     TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.3459223   -0.3716996   0.6881113
6-24 months   ki1000109-EE          PAKISTAN                       1                    NA                 0.0268170   -0.0138684   0.0658698
6-24 months   ki1113344-GMS-Nepal   NEPAL                          1                    NA                -0.0372389   -0.0949979   0.0174734
6-24 months   kiGH5241-JiVitA-3     BANGLADESH                     1                    NA                 0.0218436    0.0028111   0.0405129
