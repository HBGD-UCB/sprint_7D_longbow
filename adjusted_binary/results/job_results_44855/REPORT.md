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

**Outcome Variable:** dead

## Predictor Variables

**Intervention Variable:** ever_swasted024_noBW

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_swasted024_noBW    dead   n_cell       n
--------------------------  -----------------------------  ---------------------  -----  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                          0      249     263
ki0047075b-MAL-ED           BANGLADESH                     0                          1        2     263
ki0047075b-MAL-ED           BANGLADESH                     1                          0       12     263
ki0047075b-MAL-ED           BANGLADESH                     1                          1        0     263
ki0047075b-MAL-ED           INDIA                          0                          0      234     246
ki0047075b-MAL-ED           INDIA                          0                          1        2     246
ki0047075b-MAL-ED           INDIA                          1                          0       10     246
ki0047075b-MAL-ED           INDIA                          1                          1        0     246
ki0047075b-MAL-ED           PERU                           0                          0      297     302
ki0047075b-MAL-ED           PERU                           0                          1        2     302
ki0047075b-MAL-ED           PERU                           1                          0        3     302
ki0047075b-MAL-ED           PERU                           1                          1        0     302
ki0047075b-MAL-ED           SOUTH AFRICA                   0                          0      297     308
ki0047075b-MAL-ED           SOUTH AFRICA                   0                          1        0     308
ki0047075b-MAL-ED           SOUTH AFRICA                   1                          0       11     308
ki0047075b-MAL-ED           SOUTH AFRICA                   1                          1        0     308
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                          0      252     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                          1        3     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                          0        6     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                          1        0     261
ki1000304-VITAMIN-A         INDIA                          0                          0     3457    3606
ki1000304-VITAMIN-A         INDIA                          0                          1       38    3606
ki1000304-VITAMIN-A         INDIA                          1                          0      110    3606
ki1000304-VITAMIN-A         INDIA                          1                          1        1    3606
ki1000304b-SAS-CompFeed     INDIA                          0                          0     1308    1502
ki1000304b-SAS-CompFeed     INDIA                          0                          1       22    1502
ki1000304b-SAS-CompFeed     INDIA                          1                          0      162    1502
ki1000304b-SAS-CompFeed     INDIA                          1                          1       10    1502
ki1000304b-SAS-FoodSuppl    INDIA                          0                          0      354     397
ki1000304b-SAS-FoodSuppl    INDIA                          0                          1        3     397
ki1000304b-SAS-FoodSuppl    INDIA                          1                          0       40     397
ki1000304b-SAS-FoodSuppl    INDIA                          1                          1        0     397
ki1017093b-PROVIDE          BANGLADESH                     0                          0      663     686
ki1017093b-PROVIDE          BANGLADESH                     0                          1        4     686
ki1017093b-PROVIDE          BANGLADESH                     1                          0       19     686
ki1017093b-PROVIDE          BANGLADESH                     1                          1        0     686
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          0     2262    2384
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                          1        1    2384
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          0      121    2384
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                          1        0    2384
ki1101329-Keneba            GAMBIA                         0                          0     2406    2832
ki1101329-Keneba            GAMBIA                         0                          1       49    2832
ki1101329-Keneba            GAMBIA                         1                          0      366    2832
ki1101329-Keneba            GAMBIA                         1                          1       11    2832
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                          0     6480    6560
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                          1       30    6560
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                          0       48    6560
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                          1        2    6560
ki1113344-GMS-Nepal         NEPAL                          0                          0      469     590
ki1113344-GMS-Nepal         NEPAL                          0                          1        4     590
ki1113344-GMS-Nepal         NEPAL                          1                          0      117     590
ki1113344-GMS-Nepal         NEPAL                          1                          1        0     590
ki1126311-ZVITAMBO          ZIMBABWE                       0                          0    12275   13602
ki1126311-ZVITAMBO          ZIMBABWE                       0                          1      859   13602
ki1126311-ZVITAMBO          ZIMBABWE                       1                          0      390   13602
ki1126311-ZVITAMBO          ZIMBABWE                       1                          1       78   13602
ki1148112-iLiNS-DOSE        MALAWI                         0                          0     1778    1844
ki1148112-iLiNS-DOSE        MALAWI                         0                          1       49    1844
ki1148112-iLiNS-DOSE        MALAWI                         1                          0       16    1844
ki1148112-iLiNS-DOSE        MALAWI                         1                          1        1    1844
ki1148112-iLiNS-DYAD-M      MALAWI                         0                          0     1143    1188
ki1148112-iLiNS-DYAD-M      MALAWI                         0                          1       30    1188
ki1148112-iLiNS-DYAD-M      MALAWI                         1                          0       13    1188
ki1148112-iLiNS-DYAD-M      MALAWI                         1                          1        2    1188
kiGH5241-JiVitA-3           BANGLADESH                     0                          0    25080   26485
kiGH5241-JiVitA-3           BANGLADESH                     0                          1      460   26485
kiGH5241-JiVitA-3           BANGLADESH                     1                          0      922   26485
kiGH5241-JiVitA-3           BANGLADESH                     1                          1       23   26485
kiGH5241-JiVitA-4           BANGLADESH                     0                          0     5122    5387
kiGH5241-JiVitA-4           BANGLADESH                     0                          1       34    5387
kiGH5241-JiVitA-4           BANGLADESH                     1                          0      225    5387
kiGH5241-JiVitA-4           BANGLADESH                     1                          1        6    5387


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000304-VITAMIN-A, country: INDIA
* studyid: ki1000304b-SAS-CompFeed, country: INDIA
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1101329-Keneba, country: GAMBIA
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000304-VITAMIN-A, country: INDIA
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



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




# Results Detail

## Results Plots
![](/tmp/5ae68483-8cd3-4996-9798-61afe9b7412a/08491a29-2534-4231-8505-80287610e5c5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5ae68483-8cd3-4996-9798-61afe9b7412a/08491a29-2534-4231-8505-80287610e5c5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5ae68483-8cd3-4996-9798-61afe9b7412a/08491a29-2534-4231-8505-80287610e5c5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5ae68483-8cd3-4996-9798-61afe9b7412a/08491a29-2534-4231-8505-80287610e5c5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0165414   0.0085262   0.0245565
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0581395   0.0248414   0.0914376
ki1101329-Keneba          GAMBIA       0                    NA                0.0199593   0.0144259   0.0254927
ki1101329-Keneba          GAMBIA       1                    NA                0.0291777   0.0121855   0.0461699
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0654028   0.0611744   0.0696312
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.1666667   0.1329010   0.2004323
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0180110   0.0163986   0.0196233
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0243386   0.0138306   0.0348467
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0065943   0.0043392   0.0088493
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0259740   0.0014624   0.0504857


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0213049   0.0133015   0.0293084
ki1101329-Keneba          GAMBIA       NA                   NA                0.0211864   0.0158818   0.0264911
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0688869   0.0646306   0.0731432
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0182367   0.0166366   0.0198369
kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0074253   0.0050095   0.0098410


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 3.514799   1.7454695    7.077645
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.0000000    1.000000
ki1101329-Keneba          GAMBIA       1                    0                 1.461863   0.7669919    2.786267
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 2.548312   2.0601352    3.152169
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 1.351323   0.8697253    2.099597
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 3.938884   1.4498327   10.701104


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0047636    0.0011871   0.0083400
ki1101329-Keneba          GAMBIA       0                    NA                0.0012272   -0.0011546   0.0036089
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0034842    0.0022729   0.0046954
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0002258   -0.0001540   0.0006056
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0008310   -0.0002289   0.0018909


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.2235902    0.0330784   0.3765657
ki1101329-Keneba          GAMBIA       0                    NA                0.0579226   -0.0604632   0.1630923
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0505779    0.0330760   0.0677630
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0123802   -0.0086011   0.0329251
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.1119181   -0.0324614   0.2361077
