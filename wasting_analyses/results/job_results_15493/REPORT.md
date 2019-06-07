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

**Outcome Variable:** swasted

## Predictor Variables

**Intervention Variable:** predfeed6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        predfeed6    swasted   n_cell       n
----------  -------------------------  -----------------------------  ----------  --------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  0       98     219
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  1        7     219
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  0      113     219
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  1        1     219
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  0      142     168
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  1        0     168
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  0       26     168
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  1        0     168
Birth       ki0047075b-MAL-ED          INDIA                          0                  0      166     187
Birth       ki0047075b-MAL-ED          INDIA                          0                  1        6     187
Birth       ki0047075b-MAL-ED          INDIA                          1                  0       15     187
Birth       ki0047075b-MAL-ED          INDIA                          1                  1        0     187
Birth       ki0047075b-MAL-ED          NEPAL                          0                  0      139     165
Birth       ki0047075b-MAL-ED          NEPAL                          0                  1        4     165
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0       22     165
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1        0     165
Birth       ki0047075b-MAL-ED          PERU                           0                  0      145     249
Birth       ki0047075b-MAL-ED          PERU                           0                  1        0     249
Birth       ki0047075b-MAL-ED          PERU                           1                  0      104     249
Birth       ki0047075b-MAL-ED          PERU                           1                  1        0     249
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      205     209
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        1     209
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     209
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     209
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      113     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        1     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        1     115
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     115
Birth       ki1000109-EE               PAKISTAN                       0                  0        1       1
Birth       ki1000109-EE               PAKISTAN                       0                  1        0       1
Birth       ki1000109-EE               PAKISTAN                       1                  0        0       1
Birth       ki1000109-EE               PAKISTAN                       1                  1        0       1
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  0     2979   15420
Birth       kiGH5241-JiVitA-3          BANGLADESH                     0                  1       46   15420
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  0    12192   15420
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                  1      203   15420
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  0      112     633
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0                  1        0     633
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  0      516     633
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1                  1        5     633
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0      111     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1        1     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0      122     235
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1        1     235
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      174     209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        0     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       35     209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        0     209
6 months    ki0047075b-MAL-ED          INDIA                          0                  0      209     232
6 months    ki0047075b-MAL-ED          INDIA                          0                  1        5     232
6 months    ki0047075b-MAL-ED          INDIA                          1                  0       18     232
6 months    ki0047075b-MAL-ED          INDIA                          1                  1        0     232
6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      206     235
6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        0     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                  0       29     235
6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        0     235
6 months    ki0047075b-MAL-ED          PERU                           0                  0      156     269
6 months    ki0047075b-MAL-ED          PERU                           0                  1        0     269
6 months    ki0047075b-MAL-ED          PERU                           1                  0      113     269
6 months    ki0047075b-MAL-ED          PERU                           1                  1        0     269
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      236     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        3     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     242
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     242
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      242     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        0     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        2     244
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     244
6 months    ki1000109-EE               PAKISTAN                       0                  0      149     376
6 months    ki1000109-EE               PAKISTAN                       0                  1        7     376
6 months    ki1000109-EE               PAKISTAN                       1                  0      218     376
6 months    ki1000109-EE               PAKISTAN                       1                  1        2     376
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  0      156     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                  1       12     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  0        0     168
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                  1        0     168
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0      142     546
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1        0     546
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      397     546
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1        7     546
6 months    ki1148112-LCNI-5           MALAWI                         0                  0      225     272
6 months    ki1148112-LCNI-5           MALAWI                         0                  1        0     272
6 months    ki1148112-LCNI-5           MALAWI                         1                  0       47     272
6 months    ki1148112-LCNI-5           MALAWI                         1                  1        0     272
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  0     3401   16655
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                  1       68   16655
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  0    13024   16655
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                  1      162   16655
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  0      919    4260
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                  1       10    4260
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3312    4260
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                  1       19    4260
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0       97     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1        0     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0      112     209
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1        0     209
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      140     169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        0     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       28     169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        1     169
24 months   ki0047075b-MAL-ED          INDIA                          0                  0      205     224
24 months   ki0047075b-MAL-ED          INDIA                          0                  1        2     224
24 months   ki0047075b-MAL-ED          INDIA                          1                  0       17     224
24 months   ki0047075b-MAL-ED          INDIA                          1                  1        0     224
24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      199     227
24 months   ki0047075b-MAL-ED          NEPAL                          0                  1        0     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       28     227
24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        0     227
24 months   ki0047075b-MAL-ED          PERU                           0                  0      114     198
24 months   ki0047075b-MAL-ED          PERU                           0                  1        0     198
24 months   ki0047075b-MAL-ED          PERU                           1                  0       83     198
24 months   ki0047075b-MAL-ED          PERU                           1                  1        1     198
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      224     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        0     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        3     227
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0     227
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      210     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        0     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        2     212
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0     212
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0      111     479
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1        9     479
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      353     479
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1        6     479
24 months   ki1148112-LCNI-5           MALAWI                         0                  0      150     184
24 months   ki1148112-LCNI-5           MALAWI                         0                  1        0     184
24 months   ki1148112-LCNI-5           MALAWI                         1                  0       34     184
24 months   ki1148112-LCNI-5           MALAWI                         1                  1        0     184
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  0     1773    8513
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                  1       87    8513
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  0     6406    8513
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                  1      247    8513
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  0      858    4159
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                  1       26    4159
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  0     3194    4159
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                  1       81    4159


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
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
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/670602c0-9ac3-4939-96ec-c2649b70e1d9/20102c02-e2c1-471c-a806-fd67d26397a2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/670602c0-9ac3-4939-96ec-c2649b70e1d9/20102c02-e2c1-471c-a806-fd67d26397a2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/670602c0-9ac3-4939-96ec-c2649b70e1d9/20102c02-e2c1-471c-a806-fd67d26397a2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/670602c0-9ac3-4939-96ec-c2649b70e1d9/20102c02-e2c1-471c-a806-fd67d26397a2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0152066   0.0108748   0.0195385
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0163776   0.0136851   0.0190701
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0196022   0.0140974   0.0251070
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0122858   0.0101858   0.0143857
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0107643   0.0054305   0.0160981
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0057040   0.0005124   0.0108956
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.0750000   0.0278249   0.1221751
24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.0167131   0.0034384   0.0299877
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.0467742   0.0365173   0.0570311
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.0371261   0.0323005   0.0419517
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0294118   0.0182004   0.0406232
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0247328   0.0181655   0.0313001


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0161479   0.0137874   0.0185083
6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0138097   0.0117159   0.0159035
6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0068075   0.0025982   0.0110168
24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.0313152   0.0157016   0.0469288
24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.0392341   0.0348275   0.0436407
24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0257273   0.0200920   0.0313626


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3     BANGLADESH   1                    0                 1.0770033   0.7800945   1.4869176
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.6267543   0.4566545   0.8602148
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.5299009   0.1874013   1.4983621
24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 0.2228412   0.0809066   0.6137723
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.7937306   0.6161318   1.0225218
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.8409160   0.5255660   1.3454824


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0009412   -0.0030769    0.0049594
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0057925   -0.0103319   -0.0012532
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0039568   -0.0098004    0.0018869
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0436848   -0.0804843   -0.0068852
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.0075401   -0.0163486    0.0012684
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0036844   -0.0140280    0.0066592


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0582894   -0.2249767    0.2760524
6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.4194543   -0.7744820   -0.1354584
6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.5812331   -2.1244515    0.1997642
24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -1.3949999   -2.6148418   -0.5867982
24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                -0.1921818   -0.4377220    0.0114241
24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.1432106   -0.6317305    0.1990525
