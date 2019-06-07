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

**Intervention Variable:** nhh

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country      nhh          ever_swasted   n_cell     n
------------  -------------------------  -----------  ----------  -------------  -------  ----
0-24 months   ki1000108-IRC              INDIA        3 or less               0       35   410
0-24 months   ki1000108-IRC              INDIA        3 or less               1       23   410
0-24 months   ki1000108-IRC              INDIA        4-5                     0      109   410
0-24 months   ki1000108-IRC              INDIA        4-5                     1       49   410
0-24 months   ki1000108-IRC              INDIA        6-7                     0       69   410
0-24 months   ki1000108-IRC              INDIA        6-7                     1       38   410
0-24 months   ki1000108-IRC              INDIA        8+                      0       57   410
0-24 months   ki1000108-IRC              INDIA        8+                      1       30   410
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less               0        7   106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less               1        2   106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                     0       34   106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                     1        7   106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                     0       30   106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                     1        7   106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                      0       14   106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                      1        5   106
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less               0       95   624
0-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less               1       20   624
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                     0      220   624
0-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                     1       43   624
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                     0      120   624
0-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                     1       21   624
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                      0       91   624
0-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                      1       14   624
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less               0      131   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less               1        9   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                     0      308   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                     1       14   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                     0      140   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                     1       11   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                      0       79   700
0-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                      1        8   700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less               0      103   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less               1       11   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                     0      310   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                     1       32   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                     0      164   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                     1       14   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                      0      115   758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                      1        9   758
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less               0      223   817
0-24 months   ki1148112-LCNI-5           MALAWI       3 or less               1        2   817
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                     0      334   817
0-24 months   ki1148112-LCNI-5           MALAWI       4-5                     1        6   817
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                     0      182   817
0-24 months   ki1148112-LCNI-5           MALAWI       6-7                     1        0   817
0-24 months   ki1148112-LCNI-5           MALAWI       8+                      0       69   817
0-24 months   ki1148112-LCNI-5           MALAWI       8+                      1        1   817
0-6 months    ki1000108-IRC              INDIA        3 or less               0       36   410
0-6 months    ki1000108-IRC              INDIA        3 or less               1       22   410
0-6 months    ki1000108-IRC              INDIA        4-5                     0      114   410
0-6 months    ki1000108-IRC              INDIA        4-5                     1       44   410
0-6 months    ki1000108-IRC              INDIA        6-7                     0       72   410
0-6 months    ki1000108-IRC              INDIA        6-7                     1       35   410
0-6 months    ki1000108-IRC              INDIA        8+                      0       62   410
0-6 months    ki1000108-IRC              INDIA        8+                      1       25   410
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less               0        9   106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        3 or less               1        0   106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                     0       39   106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        4-5                     1        2   106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                     0       36   106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        6-7                     1        1   106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                      0       19   106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        8+                      1        0   106
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less               0       99   622
0-6 months    ki1017093-NIH-Birth        BANGLADESH   3 or less               1       15   622
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                     0      240   622
0-6 months    ki1017093-NIH-Birth        BANGLADESH   4-5                     1       23   622
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                     0      131   622
0-6 months    ki1017093-NIH-Birth        BANGLADESH   6-7                     1       10   622
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                      0       96   622
0-6 months    ki1017093-NIH-Birth        BANGLADESH   8+                      1        8   622
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less               0      133   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   3 or less               1        7   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                     0      313   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   4-5                     1        9   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                     0      146   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   6-7                     1        5   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                      0       79   700
0-6 months    ki1017093b-PROVIDE         BANGLADESH   8+                      1        8   700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less               0      104   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   3 or less               1       10   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                     0      320   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   4-5                     1       22   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                     0      167   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   6-7                     1       11   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                      0      117   758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH   8+                      1        7   758
0-6 months    ki1148112-LCNI-5           MALAWI       3 or less               0       70   269
0-6 months    ki1148112-LCNI-5           MALAWI       3 or less               1        0   269
0-6 months    ki1148112-LCNI-5           MALAWI       4-5                     0      111   269
0-6 months    ki1148112-LCNI-5           MALAWI       4-5                     1        0   269
0-6 months    ki1148112-LCNI-5           MALAWI       6-7                     0       67   269
0-6 months    ki1148112-LCNI-5           MALAWI       6-7                     1        0   269
0-6 months    ki1148112-LCNI-5           MALAWI       8+                      0       21   269
0-6 months    ki1148112-LCNI-5           MALAWI       8+                      1        0   269
6-24 months   ki1000108-IRC              INDIA        3 or less               0       55   410
6-24 months   ki1000108-IRC              INDIA        3 or less               1        3   410
6-24 months   ki1000108-IRC              INDIA        4-5                     0      148   410
6-24 months   ki1000108-IRC              INDIA        4-5                     1       10   410
6-24 months   ki1000108-IRC              INDIA        6-7                     0      102   410
6-24 months   ki1000108-IRC              INDIA        6-7                     1        5   410
6-24 months   ki1000108-IRC              INDIA        8+                      0       79   410
6-24 months   ki1000108-IRC              INDIA        8+                      1        8   410
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less               0        6   103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        3 or less               1        2   103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                     0       35   103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        4-5                     1        5   103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                     0       31   103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        6-7                     1        6   103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                      0       13   103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        8+                      1        5   103
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less               0       89   541
6-24 months   ki1017093-NIH-Birth        BANGLADESH   3 or less               1        6   541
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                     0      210   541
6-24 months   ki1017093-NIH-Birth        BANGLADESH   4-5                     1       21   541
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                     0      115   541
6-24 months   ki1017093-NIH-Birth        BANGLADESH   6-7                     1       13   541
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                      0       80   541
6-24 months   ki1017093-NIH-Birth        BANGLADESH   8+                      1        7   541
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less               0      110   615
6-24 months   ki1017093b-PROVIDE         BANGLADESH   3 or less               1        2   615
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                     0      284   615
6-24 months   ki1017093b-PROVIDE         BANGLADESH   4-5                     1        5   615
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                     0      124   615
6-24 months   ki1017093b-PROVIDE         BANGLADESH   6-7                     1        6   615
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                      0       84   615
6-24 months   ki1017093b-PROVIDE         BANGLADESH   8+                      1        0   615
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less               0      104   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   3 or less               1        3   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                     0      318   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   4-5                     1       12   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                     0      173   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   6-7                     1        3   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                      0      115   730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH   8+                      1        2   730
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less               0      216   805
6-24 months   ki1148112-LCNI-5           MALAWI       3 or less               1        2   805
6-24 months   ki1148112-LCNI-5           MALAWI       4-5                     0      330   805
6-24 months   ki1148112-LCNI-5           MALAWI       4-5                     1        6   805
6-24 months   ki1148112-LCNI-5           MALAWI       6-7                     0      181   805
6-24 months   ki1148112-LCNI-5           MALAWI       6-7                     1        0   805
6-24 months   ki1148112-LCNI-5           MALAWI       8+                      0       69   805
6-24 months   ki1148112-LCNI-5           MALAWI       8+                      1        1   805


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/7132a671-41f6-4817-b178-c55620ab834e/c543c86b-d429-4ba7-940b-00c3ba523ada/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7132a671-41f6-4817-b178-c55620ab834e/c543c86b-d429-4ba7-940b-00c3ba523ada/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7132a671-41f6-4817-b178-c55620ab834e/c543c86b-d429-4ba7-940b-00c3ba523ada/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7132a671-41f6-4817-b178-c55620ab834e/c543c86b-d429-4ba7-940b-00c3ba523ada/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC           INDIA        3 or less            NA                0.3965517   0.2705042   0.5225992
0-24 months   ki1000108-IRC           INDIA        4-5                  NA                0.3101266   0.2379155   0.3823377
0-24 months   ki1000108-IRC           INDIA        6-7                  NA                0.3551402   0.2643542   0.4459262
0-24 months   ki1000108-IRC           INDIA        8+                   NA                0.3448276   0.2448282   0.4448270
0-24 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                0.1739130   0.1045822   0.2432439
0-24 months   ki1017093-NIH-Birth     BANGLADESH   4-5                  NA                0.1634981   0.1187671   0.2082291
0-24 months   ki1017093-NIH-Birth     BANGLADESH   6-7                  NA                0.1489362   0.0901239   0.2077484
0-24 months   ki1017093-NIH-Birth     BANGLADESH   8+                   NA                0.1333333   0.0682609   0.1984058
0-24 months   ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                0.0642857   0.0236298   0.1049416
0-24 months   ki1017093b-PROVIDE      BANGLADESH   4-5                  NA                0.0434783   0.0211881   0.0657685
0-24 months   ki1017093b-PROVIDE      BANGLADESH   6-7                  NA                0.0728477   0.0313663   0.1143291
0-24 months   ki1017093b-PROVIDE      BANGLADESH   8+                   NA                0.0919540   0.0311912   0.1527169
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                0.0964912   0.0422546   0.1507278
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   4-5                  NA                0.0935673   0.0626820   0.1244525
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   6-7                  NA                0.0786517   0.0390794   0.1182239
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   8+                   NA                0.0725806   0.0268853   0.1182760
0-6 months    ki1000108-IRC           INDIA        3 or less            NA                0.3793103   0.2542847   0.5043360
0-6 months    ki1000108-IRC           INDIA        4-5                  NA                0.2784810   0.2085014   0.3484606
0-6 months    ki1000108-IRC           INDIA        6-7                  NA                0.3271028   0.2381001   0.4161055
0-6 months    ki1000108-IRC           INDIA        8+                   NA                0.2873563   0.1921501   0.3825625
0-6 months    ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                0.1315789   0.0694773   0.1936806
0-6 months    ki1017093-NIH-Birth     BANGLADESH   4-5                  NA                0.0874525   0.0532834   0.1216216
0-6 months    ki1017093-NIH-Birth     BANGLADESH   6-7                  NA                0.0709220   0.0285182   0.1133258
0-6 months    ki1017093-NIH-Birth     BANGLADESH   8+                   NA                0.0769231   0.0256690   0.1281771
0-6 months    ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                0.0500000   0.0138722   0.0861278
0-6 months    ki1017093b-PROVIDE      BANGLADESH   4-5                  NA                0.0279503   0.0099339   0.0459667
0-6 months    ki1017093b-PROVIDE      BANGLADESH   6-7                  NA                0.0331126   0.0045528   0.0616723
0-6 months    ki1017093b-PROVIDE      BANGLADESH   8+                   NA                0.0919540   0.0311912   0.1527169
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                0.0877193   0.0357563   0.1396823
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   4-5                  NA                0.0643275   0.0383090   0.0903460
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   6-7                  NA                0.0617978   0.0264013   0.0971942
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   8+                   NA                0.0564516   0.0158031   0.0971001
6-24 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                0.0631579   0.0141986   0.1121172
6-24 months   ki1017093-NIH-Birth     BANGLADESH   4-5                  NA                0.0909091   0.0538025   0.1280157
6-24 months   ki1017093-NIH-Birth     BANGLADESH   6-7                  NA                0.1015625   0.0491837   0.1539413
6-24 months   ki1017093-NIH-Birth     BANGLADESH   8+                   NA                0.0804598   0.0232507   0.1376689


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC           INDIA        NA                   NA                0.3414634   0.2955068   0.3874201
0-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.1570513   0.1284803   0.1856223
0-24 months   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.0600000   0.0423945   0.0776055
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0870712   0.0669870   0.1071555
0-6 months    ki1000108-IRC           INDIA        NA                   NA                0.3073171   0.2626027   0.3520314
0-6 months    ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.0900322   0.0675202   0.1125442
0-6 months    ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.0414286   0.0266555   0.0562017
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0659631   0.0482810   0.0836451
6-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.0868762   0.0631205   0.1106318


### Parameter: RR


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-IRC           INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC           INDIA        4-5                  3 or less         0.7820583   0.5273744   1.159736
0-24 months   ki1000108-IRC           INDIA        6-7                  3 or less         0.8955709   0.5955947   1.346633
0-24 months   ki1000108-IRC           INDIA        8+                   3 or less         0.8695652   0.5655067   1.337108
0-24 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH   4-5                  3 or less         0.9401141   0.5796937   1.524623
0-24 months   ki1017093-NIH-Birth     BANGLADESH   6-7                  3 or less         0.8563830   0.4886261   1.500926
0-24 months   ki1017093-NIH-Birth     BANGLADESH   8+                   3 or less         0.7666667   0.4082524   1.439741
0-24 months   ki1017093b-PROVIDE      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE      BANGLADESH   4-5                  3 or less         0.6763285   0.2996322   1.526606
0-24 months   ki1017093b-PROVIDE      BANGLADESH   6-7                  3 or less         1.1331862   0.4838547   2.653919
0-24 months   ki1017093b-PROVIDE      BANGLADESH   8+                   3 or less         1.4303959   0.5730891   3.570182
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   4-5                  3 or less         0.9696970   0.5052937   1.860922
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   6-7                  3 or less         0.8151175   0.3833523   1.733175
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   8+                   3 or less         0.7521994   0.3234400   1.749332
0-6 months    ki1000108-IRC           INDIA        3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC           INDIA        4-5                  3 or less         0.7341772   0.4850602   1.111236
0-6 months    ki1000108-IRC           INDIA        6-7                  3 or less         0.8623619   0.5624288   1.322244
0-6 months    ki1000108-IRC           INDIA        8+                   3 or less         0.7575758   0.4747429   1.208909
0-6 months    ki1017093-NIH-Birth     BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH   4-5                  3 or less         0.6646388   0.3601536   1.226545
0-6 months    ki1017093-NIH-Birth     BANGLADESH   6-7                  3 or less         0.5390071   0.2516395   1.154543
0-6 months    ki1017093-NIH-Birth     BANGLADESH   8+                   3 or less         0.5846154   0.2583787   1.322768
0-6 months    ki1017093b-PROVIDE      BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE      BANGLADESH   4-5                  3 or less         0.5590062   0.2122732   1.472103
0-6 months    ki1017093b-PROVIDE      BANGLADESH   6-7                  3 or less         0.6622517   0.2149657   2.040220
0-6 months    ki1017093b-PROVIDE      BANGLADESH   8+                   3 or less         1.8390805   0.6908131   4.895994
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   4-5                  3 or less         0.7333333   0.3579198   1.502509
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   6-7                  3 or less         0.7044944   0.3090409   1.605976
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   8+                   3 or less         0.6435484   0.2533022   1.635022
6-24 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            3 or less         1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH   4-5                  3 or less         1.4393939   0.5993789   3.456670
6-24 months   ki1017093-NIH-Birth     BANGLADESH   6-7                  3 or less         1.6080729   0.6337915   4.080046
6-24 months   ki1017093-NIH-Birth     BANGLADESH   8+                   3 or less         1.2739464   0.4449592   3.647389


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC           INDIA        3 or less            NA                -0.0550883   -0.1712987   0.0611221
0-24 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                -0.0168618   -0.0789209   0.0451974
0-24 months   ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                -0.0042857   -0.0403647   0.0317933
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                -0.0094200   -0.0590201   0.0401802
0-6 months    ki1000108-IRC           INDIA        3 or less            NA                -0.0719933   -0.1869203   0.0429338
0-6 months    ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                -0.0415468   -0.0958582   0.0127646
0-6 months    ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                -0.0085714   -0.0402159   0.0230731
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                -0.0217562   -0.0686670   0.0251546
6-24 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                 0.0237183   -0.0223198   0.0697564


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC           INDIA        3 or less            NA                -0.1613300   -0.5569676   0.1337730
0-24 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                -0.1073647   -0.5818059   0.2247743
0-24 months   ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                -0.0714286   -0.8774745   0.3885621
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                -0.1081871   -0.8522003   0.3369623
0-6 months    ki1000108-IRC           INDIA        3 or less            NA                -0.2342638   -0.6712704   0.0884735
0-6 months    ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                -0.4614662   -1.1963663   0.0275377
0-6 months    ki1017093b-PROVIDE      BANGLADESH   3 or less            NA                -0.2068966   -1.2666263   0.3573712
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH   3 or less            NA                -0.3298246   -1.2624838   0.2183664
6-24 months   ki1017093-NIH-Birth     BANGLADESH   3 or less            NA                 0.2730123   -0.4975516   0.6470832
