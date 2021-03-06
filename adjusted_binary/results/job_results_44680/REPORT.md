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

**Outcome Variable:** wast_rec90d

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

agecat        studyid                    country                        nchldlt5    wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  ---------  ------------  -------  -----
0-24 months   ki1000108-IRC              INDIA                          1                     0       39    295
0-24 months   ki1000108-IRC              INDIA                          1                     1       56    295
0-24 months   ki1000108-IRC              INDIA                          2+                    0       79    295
0-24 months   ki1000108-IRC              INDIA                          2+                    1      121    295
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     0       87    231
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     1      137    231
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                    0        5    231
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                    1        2    231
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0       73    213
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1      137    213
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                    0        1    213
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                    1        2    213
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      186    523
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      315    523
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    0        8    523
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    1       14    523
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     0       55    106
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     1        0    106
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                    0       51    106
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                    1        0    106
0-24 months   ki1148112-LCNI-5           MALAWI                         1                     0       25     37
0-24 months   ki1148112-LCNI-5           MALAWI                         1                     1        6     37
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                    0        5     37
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                    1        1     37
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0     1365   2557
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1     1095   2557
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                    0       62   2557
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                    1       35   2557
0-6 months    ki1000108-IRC              INDIA                          1                     0       20    170
0-6 months    ki1000108-IRC              INDIA                          1                     1       37    170
0-6 months    ki1000108-IRC              INDIA                          2+                    0       40    170
0-6 months    ki1000108-IRC              INDIA                          2+                    1       73    170
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     0       25    144
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     1      115    144
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                    0        2    144
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                    1        2    144
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                     0       14    141
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                     1      125    141
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                    0        0    141
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                    1        2    141
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0       66    251
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      170    251
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    0        6    251
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    1        9    251
0-6 months    ki1148112-LCNI-5           MALAWI                         1                     0        1      1
0-6 months    ki1148112-LCNI-5           MALAWI                         1                     1        0      1
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                    0        0      1
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                    1        0      1
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     0      493   1645
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     1     1095   1645
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                    0       22   1645
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                    1       35   1645
6-24 months   ki1000108-IRC              INDIA                          1                     0       19    125
6-24 months   ki1000108-IRC              INDIA                          1                     1       19    125
6-24 months   ki1000108-IRC              INDIA                          2+                    0       39    125
6-24 months   ki1000108-IRC              INDIA                          2+                    1       48    125
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     0       62     87
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     1       22     87
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                    0        3     87
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                    1        0     87
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0       59     72
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1       12     72
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                    0        1     72
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                    1        0     72
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0      120    272
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      145    272
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    0        2    272
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    1        5    272
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     0       55    106
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     1        0    106
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                    0       51    106
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                    1        0    106
6-24 months   ki1148112-LCNI-5           MALAWI                         1                     0       24     36
6-24 months   ki1148112-LCNI-5           MALAWI                         1                     1        6     36
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                    0        5     36
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                    1        1     36
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0      872    912
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1        0    912
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                    0       40    912
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                    1        0    912


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
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
![](/tmp/f6f76097-e0e2-4613-ad24-4cac5519e309/b9847f7b-75e7-4715-a757-c7ea85f6a181/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f6f76097-e0e2-4613-ad24-4cac5519e309/b9847f7b-75e7-4715-a757-c7ea85f6a181/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f6f76097-e0e2-4613-ad24-4cac5519e309/b9847f7b-75e7-4715-a757-c7ea85f6a181/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f6f76097-e0e2-4613-ad24-4cac5519e309/b9847f7b-75e7-4715-a757-c7ea85f6a181/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.5894737   0.4870771   0.6918702
0-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.6050000   0.5312541   0.6787459
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6287425   0.5840238   0.6734612
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.6363636   0.4056097   0.8671176
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4451220   0.4254788   0.4647651
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.3608247   0.2662941   0.4553554
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.6491228   0.5237022   0.7745434
0-6 months    ki1000108-IRC              INDIA                          2+                   NA                0.6460177   0.5550733   0.7369621
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7203390   0.6621405   0.7785374
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.6000000   0.3454906   0.8545094
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.6895466   0.6667833   0.7123099
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.6140351   0.4876158   0.7404543
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.5000000   0.3272935   0.6727065
6-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.5517241   0.4406315   0.6628168


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.6000000   0.5401100   0.6598900
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6290631   0.5851444   0.6729818
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4419241   0.4226765   0.4611718
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.6470588   0.5734270   0.7206907
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7131474   0.6562470   0.7700478
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.6869301   0.6645133   0.7093469
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5360000   0.4424375   0.6295625


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA                          2+                   1                 1.0263393   0.8300716   1.269014
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.0121212   0.6994313   1.464603
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.8106200   0.6214923   1.057301
0-6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA                          2+                   1                 0.9952165   0.7835842   1.264007
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.8329412   0.5408570   1.282762
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.8904911   0.7228925   1.096947
6-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA                          2+                   1                 1.1034483   0.7397377   1.645986


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0105263   -0.0750722   0.0961249
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0003206   -0.0095522   0.0101934
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0031978   -0.0069267   0.0005311
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0020640   -0.1050569   0.1009289
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0071916   -0.0232105   0.0088274
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0026165   -0.0071172   0.0018842
6-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0360000   -0.1068824   0.1788824


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0175439   -0.1359265   0.1502795
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0005096   -0.0153076   0.0160805
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0072361   -0.0157121   0.0011691
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0031898   -0.1756922   0.1440023
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0100843   -0.0328613   0.0121904
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0038090   -0.0103864   0.0027256
6-24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0671642   -0.2421253   0.2994405
