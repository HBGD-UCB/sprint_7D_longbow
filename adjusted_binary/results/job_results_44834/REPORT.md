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

**Intervention Variable:** nchldlt5

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        nchldlt5    ever_co   n_cell       n
------------  -------------------------  -----------------------------  ---------  --------  -------  ------
0-24 months   ki1000108-IRC              INDIA                          1                 0       69     291
0-24 months   ki1000108-IRC              INDIA                          1                 1       20     291
0-24 months   ki1000108-IRC              INDIA                          2+                0      165     291
0-24 months   ki1000108-IRC              INDIA                          2+                1       37     291
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      447     524
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1       65     524
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                0       11     524
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                1        1     524
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      496     547
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       45     547
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                0        6     547
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                1        0     547
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0     1552    1716
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1       85    1716
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                0       77    1716
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                1        2    1716
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                 0      956    1916
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                 1      117    1916
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                0      714    1916
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                1      129    1916
0-24 months   ki1148112-LCNI-5           MALAWI                         1                 0      376     454
0-24 months   ki1148112-LCNI-5           MALAWI                         1                 1       15     454
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                0       60     454
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                1        3     454
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0    15663   17829
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1     1535   17829
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                0      578   17829
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                1       53   17829
0-6 months    ki1000108-IRC              INDIA                          1                 0       79     290
0-6 months    ki1000108-IRC              INDIA                          1                 1       10     290
0-6 months    ki1000108-IRC              INDIA                          2+                0      192     290
0-6 months    ki1000108-IRC              INDIA                          2+                1        9     290
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      491     524
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1       21     524
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                0       11     524
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                1        1     524
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      531     547
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       10     547
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                0        6     547
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                1        0     547
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0     1622    1716
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1       15    1716
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                0       79    1716
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                1        0    1716
0-6 months    ki1148112-LCNI-5           MALAWI                         1                 0      122     145
0-6 months    ki1148112-LCNI-5           MALAWI                         1                 1        0     145
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                0       23     145
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                1        0     145
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 0    16387   17741
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                 1      725   17741
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                0      606   17741
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                1       23   17741
6-24 months   ki1000108-IRC              INDIA                          1                 0       73     291
6-24 months   ki1000108-IRC              INDIA                          1                 1       16     291
6-24 months   ki1000108-IRC              INDIA                          2+                0      169     291
6-24 months   ki1000108-IRC              INDIA                          2+                1       33     291
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      396     458
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1       52     458
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                0        9     458
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                1        1     458
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 0      481     525
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                 1       39     525
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                0        5     525
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                1        0     525
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0     1303    1447
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1       80    1447
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                0       62    1447
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                1        2    1447
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                 0      956    1916
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                 1      117    1916
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                0      714    1916
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                1      129    1916
6-24 months   ki1148112-LCNI-5           MALAWI                         1                 0      369     446
6-24 months   ki1148112-LCNI-5           MALAWI                         1                 1       15     446
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                0       59     446
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                1        3     446
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 0    10266   11565
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                 1      924   11565
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                0      340   11565
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                1       35   11565


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
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/2ceacd3d-3c92-41e5-afe0-1864e366db21/c649acbd-e0dc-48e3-aeac-2b4ca070465b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2ceacd3d-3c92-41e5-afe0-1864e366db21/c649acbd-e0dc-48e3-aeac-2b4ca070465b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2ceacd3d-3c92-41e5-afe0-1864e366db21/c649acbd-e0dc-48e3-aeac-2b4ca070465b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2ceacd3d-3c92-41e5-afe0-1864e366db21/c649acbd-e0dc-48e3-aeac-2b4ca070465b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC          INDIA          1                    NA                0.2247191   0.1378530   0.3115852
0-24 months   ki1000108-IRC          INDIA          2+                   NA                0.1831683   0.1297351   0.2366015
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    NA                0.1090401   0.0803629   0.1377172
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   2+                   NA                0.1530249   0.1222146   0.1838352
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     1                    NA                0.0892546   0.0845779   0.0939312
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     2+                   NA                0.0839937   0.0618397   0.1061476
0-6 months    ki1000108-IRC          INDIA          1                    NA                0.1123596   0.0466351   0.1780840
0-6 months    ki1000108-IRC          INDIA          2+                   NA                0.0447761   0.0161359   0.0734163
0-6 months    kiGH5241-JiVitA-3      BANGLADESH     1                    NA                0.0423679   0.0392115   0.0455243
0-6 months    kiGH5241-JiVitA-3      BANGLADESH     2+                   NA                0.0365660   0.0210018   0.0521301
6-24 months   ki1000108-IRC          INDIA          1                    NA                0.1797753   0.0998596   0.2596910
6-24 months   ki1000108-IRC          INDIA          2+                   NA                0.1633663   0.1122960   0.2144367
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    NA                0.1090401   0.0803629   0.1377172
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   2+                   NA                0.1530249   0.1222146   0.1838352
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     1                    NA                0.0825737   0.0768585   0.0882890
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     2+                   NA                0.0933333   0.0620395   0.1246271


### Parameter: E(Y)


agecat        studyid                country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC          INDIA          NA                   NA                0.1958763   0.1501989   0.2415537
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   NA                   NA                0.1283925   0.1061546   0.1506304
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     NA                   NA                0.0890684   0.0844497   0.0936870
0-6 months    ki1000108-IRC          INDIA          NA                   NA                0.0655172   0.0369898   0.0940447
0-6 months    kiGH5241-JiVitA-3      BANGLADESH     NA                   NA                0.0421622   0.0390671   0.0452573
6-24 months   ki1000108-IRC          INDIA          NA                   NA                0.1683849   0.1253162   0.2114536
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   NA                   NA                0.1283925   0.1061546   0.1506304
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     NA                   NA                0.0829226   0.0772615   0.0885837


### Parameter: RR


agecat        studyid                country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ---------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC          INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC          INDIA          2+                   1                 0.8150990   0.5022180   1.3229043
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   2+                   1                 1.4033823   1.0157328   1.9389763
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     2+                   1                 0.9410573   0.7211005   1.2281073
0-6 months    ki1000108-IRC          INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC          INDIA          2+                   1                 0.3985075   0.1674954   0.9481349
0-6 months    kiGH5241-JiVitA-3      BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3      BANGLADESH     2+                   1                 0.8630579   0.5602437   1.3295445
6-24 months   ki1000108-IRC          INDIA          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC          INDIA          2+                   1                 0.9087252   0.5277360   1.5647628
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   2+                   1                 1.4033823   1.0157328   1.9389763
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     2+                   1                 1.1303030   0.8046235   1.5878047


### Parameter: PAR


agecat        studyid                country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ---------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC          INDIA          1                    NA                -0.0288428   -0.0996704   0.0419848
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    NA                 0.0193524    0.0013734   0.0373314
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     1                    NA                -0.0001862   -0.0009796   0.0006072
0-6 months    ki1000108-IRC          INDIA          1                    NA                -0.0468423   -0.0966631   0.0029785
0-6 months    kiGH5241-JiVitA-3      BANGLADESH     1                    NA                -0.0002057   -0.0007692   0.0003578
6-24 months   ki1000108-IRC          INDIA          1                    NA                -0.0113904   -0.0772304   0.0544496
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    NA                 0.0193524    0.0013734   0.0373314
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     1                    NA                 0.0003489   -0.0006765   0.0013742


### Parameter: PAF


agecat        studyid                country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ---------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC          INDIA          1                    NA                -0.1472501   -0.5713313    0.1623772
0-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    NA                 0.1507285   -0.0045333    0.2819929
0-24 months   kiGH5241-JiVitA-3      BANGLADESH     1                    NA                -0.0020904   -0.0110404    0.0067803
0-6 months    ki1000108-IRC          INDIA          1                    NA                -0.7149615   -1.5950707   -0.1333383
0-6 months    kiGH5241-JiVitA-3      BANGLADESH     1                    NA                -0.0048789   -0.0183306    0.0083951
6-24 months   ki1000108-IRC          INDIA          1                    NA                -0.0676450   -0.5395444    0.2596083
6-24 months   ki1112895-iLiNS-Zinc   BURKINA FASO   1                    NA                 0.1507285   -0.0045333    0.2819929
6-24 months   kiGH5241-JiVitA-3      BANGLADESH     1                    NA                 0.0042074   -0.0082273    0.0164887
