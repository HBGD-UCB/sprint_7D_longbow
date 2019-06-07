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

**Intervention Variable:** nchldlt5

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        nchldlt5    ever_swasted   n_cell      n
------------  -------------------------  -----------------------------  ---------  -------------  -------  -----
0-24 months   ki1000108-IRC              INDIA                          1                      0       52    291
0-24 months   ki1000108-IRC              INDIA                          1                      1       37    291
0-24 months   ki1000108-IRC              INDIA                          2+                     0      143    291
0-24 months   ki1000108-IRC              INDIA                          2+                     1       59    291
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      0      481    524
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      1       31    524
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                     0       11    524
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                     1        1    524
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                      0      491    547
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                      1       50    547
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                     0        6    547
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                     1        0    547
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0     1525   1716
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1      112   1716
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     0       74   1716
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     1        5   1716
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                      0      254    481
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                      1        8    481
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                     0      205    481
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                     1       14    481
0-24 months   ki1148112-LCNI-5           MALAWI                         1                      0      387    454
0-24 months   ki1148112-LCNI-5           MALAWI                         1                      1        4    454
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                     0       63    454
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                     1        0    454
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     7931   8807
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1      564   8807
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                     0      290   8807
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                     1       22   8807
0-6 months    ki1000108-IRC              INDIA                          1                      0       55    291
0-6 months    ki1000108-IRC              INDIA                          1                      1       34    291
0-6 months    ki1000108-IRC              INDIA                          2+                     0      149    291
0-6 months    ki1000108-IRC              INDIA                          2+                     1       53    291
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                      0      488    524
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                      1       24    524
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                     0       11    524
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                     1        1    524
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                      0      502    547
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                      1       39    547
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                     0        6    547
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                     1        0    547
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0     1580   1716
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1       57   1716
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     0       78   1716
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     1        1   1716
0-6 months    ki1148112-LCNI-5           MALAWI                         1                      0      122    145
0-6 months    ki1148112-LCNI-5           MALAWI                         1                      1        0    145
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                     0       23    145
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                     1        0    145
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      0     8060   8765
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      1      394   8765
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                     0      296   8765
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                     1       15   8765
6-24 months   ki1000108-IRC              INDIA                          1                      0       83    291
6-24 months   ki1000108-IRC              INDIA                          1                      1        6    291
6-24 months   ki1000108-IRC              INDIA                          2+                     0      190    291
6-24 months   ki1000108-IRC              INDIA                          2+                     1       12    291
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      0      441    458
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      1        7    458
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                     0       10    458
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                     1        0    458
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                      0      505    525
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                      1       15    525
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                     0        5    525
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                     1        0    525
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0     1324   1447
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1       59   1447
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     0       60   1447
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                     1        4   1447
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                      0      254    481
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                      1        8    481
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                     0      205    481
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                     1       14    481
6-24 months   ki1148112-LCNI-5           MALAWI                         1                      0      380    446
6-24 months   ki1148112-LCNI-5           MALAWI                         1                      1        4    446
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                     0       62    446
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                     1        0    446
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     5347   5714
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1      176   5714
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                     0      184   5714
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                     1        7   5714


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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




# Results Detail

## Results Plots
![](/tmp/78092970-f48c-4ae9-ae77-2eb1b1915383/81f64278-c633-47c7-b6b5-e93197c8ab4a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/78092970-f48c-4ae9-ae77-2eb1b1915383/81f64278-c633-47c7-b6b5-e93197c8ab4a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/78092970-f48c-4ae9-ae77-2eb1b1915383/81f64278-c633-47c7-b6b5-e93197c8ab4a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/78092970-f48c-4ae9-ae77-2eb1b1915383/81f64278-c633-47c7-b6b5-e93197c8ab4a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.4157303   0.3131620   0.5182986
0-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.2920792   0.2292643   0.3548941
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0684178   0.0561845   0.0806512
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0632911   0.0095836   0.1169986
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.0305344   0.0080277   0.0530410
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.0639269   0.0320563   0.0957976
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0663920   0.0604736   0.0723104
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.0705128   0.0420704   0.0989553
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.3820225   0.2809038   0.4831411
0-6 months    ki1000108-IRC              INDIA                          2+                   NA                0.2623762   0.2016048   0.3231477
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0466052   0.0416356   0.0515747
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.0482315   0.0257719   0.0706911
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.0674157   0.0152332   0.1195983
6-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.0594059   0.0267520   0.0920599
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.0305344   0.0080277   0.0530410
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.0639269   0.0320563   0.0957976
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0318667   0.0265215   0.0372120
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.0366492   0.0113816   0.0619168


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.3298969   0.2757830   0.3840108
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0681818   0.0562525   0.0801111
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0457380   0.0213238   0.0701523
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0665380   0.0606900   0.0723860
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2989691   0.2462788   0.3516594
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0466629   0.0417375   0.0515883
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.0618557   0.0341305   0.0895808
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0457380   0.0213238   0.0701523
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0320266   0.0267736   0.0372796


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          2+                   1                 0.7025689   0.5064622   0.9746099
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.9250678   0.3886407   2.2019062
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 2.0936073   1.0107042   4.3367700
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 1.0620681   0.7059307   1.5978744
0-6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          2+                   1                 0.6868084   0.4831519   0.9763095
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 1.0348964   0.6476428   1.6537057
6-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          2+                   1                 0.8811881   0.3410101   2.2770363
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 2.0936073   1.0107042   4.3367700
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 1.1500773   0.5679298   2.3289463


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0858334   -0.1695801   -0.0020868
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0002360   -0.0027724    0.0023004
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0152037    0.0000409    0.0303665
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0001460   -0.0008711    0.0011631
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0830534   -0.1651923   -0.0009145
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0000577   -0.0007429    0.0008584
6-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0055601   -0.0482927    0.0371725
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0152037    0.0000409    0.0303665
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0001599   -0.0006976    0.0010173


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.2601826   -0.5424709   -0.0295560
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0034616   -0.0413557    0.0330536
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.3324080   -0.0479834    0.5747270
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0021940   -0.0132078    0.0173617
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.2777993   -0.5847974   -0.0302712
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0012367   -0.0160669    0.0182456
6-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0898876   -1.0524163    0.4212407
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.3324080   -0.0479834    0.5747270
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0049915   -0.0221815    0.0314422
