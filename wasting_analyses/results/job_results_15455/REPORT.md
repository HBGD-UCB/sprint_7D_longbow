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

**Outcome Variable:** wasted

## Predictor Variables

**Intervention Variable:** predfeed36

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        predfeed36    wasted   n_cell       n
----------  -------------------------  -----------------------------  -----------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  0       89     230
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  1       21     230
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  0      102     230
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  1       18     230
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  0      143     177
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  1        6     177
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  0       28     177
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  1        0     177
Birth       ki0047075b-MAL-ED          INDIA                          0                  0      148     195
Birth       ki0047075b-MAL-ED          INDIA                          0                  1       31     195
Birth       ki0047075b-MAL-ED          INDIA                          1                  0       14     195
Birth       ki0047075b-MAL-ED          INDIA                          1                  1        2     195
Birth       ki0047075b-MAL-ED          NEPAL                          0                  0      123     167
Birth       ki0047075b-MAL-ED          NEPAL                          0                  1       19     167
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0       24     167
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1        1     167
Birth       ki0047075b-MAL-ED          PERU                           0                  0      145     266
Birth       ki0047075b-MAL-ED          PERU                           0                  1        5     266
Birth       ki0047075b-MAL-ED          PERU                           1                  0      115     266
Birth       ki0047075b-MAL-ED          PERU                           1                  1        1     266
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      217     234
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       14     234
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     234
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     234
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      113     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        2     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     116
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     116
Birth       ki1000109-EE               PAKISTAN                       0                  0        1       1
Birth       ki1000109-EE               PAKISTAN                       0                  1        0       1
Birth       ki1000109-EE               PAKISTAN                       1                  0        0       1
Birth       ki1000109-EE               PAKISTAN                       1                  1        0       1
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  0     1898   11319
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  1      229   11319
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  0     8298   11319
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  1      894   11319
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  0      105     602
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  1        4     602
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  0      462     602
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  1       31     602
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0      107     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1        4     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0      125     240
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1        4     240
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      172     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       36     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        1     209
6 months    ki0047075b-MAL-ED          INDIA                          0                  0      199     236
6 months    ki0047075b-MAL-ED          INDIA                          0                  1       18     236
6 months    ki0047075b-MAL-ED          INDIA                          1                  0       19     236
6 months    ki0047075b-MAL-ED          INDIA                          1                  1        0     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      200     236
6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        4     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                  0       32     236
6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        0     236
6 months    ki0047075b-MAL-ED          PERU                           0                  0      145     271
6 months    ki0047075b-MAL-ED          PERU                           0                  1        0     271
6 months    ki0047075b-MAL-ED          PERU                           1                  0      126     271
6 months    ki0047075b-MAL-ED          PERU                           1                  1        0     271
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      244     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        7     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      244     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        1     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        2     247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     247
6 months    ki1000109-EE               PAKISTAN                       0                  0      120     371
6 months    ki1000109-EE               PAKISTAN                       0                  1       27     371
6 months    ki1000109-EE               PAKISTAN                       1                  0      202     371
6 months    ki1000109-EE               PAKISTAN                       1                  1       22     371
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  0      127     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       41     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0     168
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0       93     526
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1       10     526
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      384     526
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1       39     526
6 months    ki1148112-LCNI-5           MALAWI                         0                  0      221     272
6 months    ki1148112-LCNI-5           MALAWI                         0                  1        4     272
6 months    ki1148112-LCNI-5           MALAWI                         1                  0       47     272
6 months    ki1148112-LCNI-5           MALAWI                         1                  1        0     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0     2341   13353
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1      338   13353
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0     9877   13353
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1      797   13353
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0      839    4172
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1       78    4172
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3099    4172
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1      156    4172
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0       87     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1        7     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0      103     211
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1       14     211
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      137     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        2     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       29     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        1     169
24 months   ki0047075b-MAL-ED          INDIA                          0                  0      183     227
24 months   ki0047075b-MAL-ED          INDIA                          0                  1       26     227
24 months   ki0047075b-MAL-ED          INDIA                          1                  0       17     227
24 months   ki0047075b-MAL-ED          INDIA                          1                  1        1     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      194     228
24 months   ki0047075b-MAL-ED          NEPAL                          0                  1        4     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       29     228
24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        1     228
24 months   ki0047075b-MAL-ED          PERU                           0                  0      104     200
24 months   ki0047075b-MAL-ED          PERU                           0                  1        2     200
24 months   ki0047075b-MAL-ED          PERU                           1                  0       93     200
24 months   ki0047075b-MAL-ED          PERU                           1                  1        1     200
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      234     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        1     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      208     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        4     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        2     214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     214
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0       64     455
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       23     455
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      310     455
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1       58     455
24 months   ki1148112-LCNI-5           MALAWI                         0                  0      147     184
24 months   ki1148112-LCNI-5           MALAWI                         0                  1        3     184
24 months   ki1148112-LCNI-5           MALAWI                         1                  0       33     184
24 months   ki1148112-LCNI-5           MALAWI                         1                  1        1     184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0     1055    6672
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1      341    6672
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     4102    6672
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1     1174    6672
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0      672    4009
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1      197    4009
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     2542    4009
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1      598    4009


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/baf66d00-58c1-4c42-af5c-fe0b79f4f9e4/6cb3ea12-ea69-44db-8127-337b19d1ed6e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/baf66d00-58c1-4c42-af5c-fe0b79f4f9e4/6cb3ea12-ea69-44db-8127-337b19d1ed6e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/baf66d00-58c1-4c42-af5c-fe0b79f4f9e4/6cb3ea12-ea69-44db-8127-337b19d1ed6e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/baf66d00-58c1-4c42-af5c-fe0b79f4f9e4/6cb3ea12-ea69-44db-8127-337b19d1ed6e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.1909091   0.1173037   0.2645145
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1500000   0.0859737   0.2140263
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1076634   0.0934195   0.1219072
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0972585   0.0903107   0.1042062
6 months    ki1000109-EE          PAKISTAN     0                    NA                0.1836735   0.1209932   0.2463537
6 months    ki1000109-EE          PAKISTAN     1                    NA                0.0982143   0.0591887   0.1372399
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0970874   0.0398543   0.1543204
6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0921986   0.0646024   0.1197947
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.1261665   0.1127730   0.1395600
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0746674   0.0691415   0.0801933
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0850600   0.0660173   0.1041026
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0479263   0.0369600   0.0588925
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0744681   0.0212699   0.1276662
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.1196581   0.0607082   0.1786081
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.2643678   0.1715992   0.3571364
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1576087   0.1203396   0.1948778
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.2442693   0.2186808   0.2698579
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.2225171   0.2094815   0.2355527
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2266974   0.1925989   0.2607958
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1904459   0.1744506   0.2064411


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.1695652   0.1209635   0.2181669
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0992137   0.0929975   0.1054299
6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.1320755   0.0975770   0.1665739
6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0931559   0.0682937   0.1180181
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0849996   0.0797287   0.0902706
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0560882   0.0466363   0.0655401
24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.0995261   0.0590366   0.1400156
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1780220   0.1428346   0.2132094
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.2270683   0.2155455   0.2385912
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1983038   0.1835884   0.2130192


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED     BANGLADESH   1                    0                 0.7857143   0.4420407   1.3965839
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.9033572   0.7767324   1.0506247
6 months    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE          PAKISTAN     1                    0                 0.5347222   0.3167039   0.9028240
6 months    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 0.9496454   0.4902690   1.8394520
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.5918166   0.5216533   0.6714170
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.5634409   0.4084637   0.7772186
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 1.6068376   0.6746844   3.8268663
24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 0.5961720   0.3904828   0.9102094
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.9109496   0.8071129   1.0281451
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.8400886   0.7085405   0.9960600


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0213439   -0.0723113    0.0296236
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0084497   -0.0213761    0.0044768
6 months    ki1000109-EE          PAKISTAN     0                    NA                -0.0515980   -0.0963814   -0.0068146
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0039315   -0.0550285    0.0471655
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0411669   -0.0525424   -0.0297913
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0289718   -0.0461939   -0.0117496
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0250580   -0.0190769    0.0691929
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0863458   -0.1672969   -0.0053948
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0172010   -0.0400843    0.0056823
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0283935   -0.0575615    0.0007745


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.1258741   -0.4688666    0.1370268
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0851663   -0.2238294    0.0377859
6 months    ki1000109-EE          PAKISTAN     0                    NA                -0.3906705   -0.7632405   -0.0968240
6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0422033   -0.7639384    0.3842258
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.4843181   -0.6219527   -0.3583627
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.5165394   -0.8791115   -0.2239252
24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.2517730   -0.3354583    0.5807854
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.4850291   -1.0121484   -0.0959984
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0757525   -0.1814945    0.0205257
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.1431820   -0.2992428   -0.0058667
