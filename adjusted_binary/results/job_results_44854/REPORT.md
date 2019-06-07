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

**Intervention Variable:** ever_wasted024_noBW

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_wasted024_noBW    dead   n_cell       n
--------------------------  -----------------------------  --------------------  -----  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                         0      203     263
ki0047075b-MAL-ED           BANGLADESH                     0                         1        2     263
ki0047075b-MAL-ED           BANGLADESH                     1                         0       58     263
ki0047075b-MAL-ED           BANGLADESH                     1                         1        0     263
ki0047075b-MAL-ED           INDIA                          0                         0      155     246
ki0047075b-MAL-ED           INDIA                          0                         1        2     246
ki0047075b-MAL-ED           INDIA                          1                         0       89     246
ki0047075b-MAL-ED           INDIA                          1                         1        0     246
ki0047075b-MAL-ED           PERU                           0                         0      280     302
ki0047075b-MAL-ED           PERU                           0                         1        2     302
ki0047075b-MAL-ED           PERU                           1                         0       20     302
ki0047075b-MAL-ED           PERU                           1                         1        0     302
ki0047075b-MAL-ED           SOUTH AFRICA                   0                         0      264     308
ki0047075b-MAL-ED           SOUTH AFRICA                   0                         1        0     308
ki0047075b-MAL-ED           SOUTH AFRICA                   1                         0       44     308
ki0047075b-MAL-ED           SOUTH AFRICA                   1                         1        0     308
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                         0      228     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                         1        3     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                         0       30     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                         1        0     261
ki1000304-VITAMIN-A         INDIA                          0                         0     2965    3606
ki1000304-VITAMIN-A         INDIA                          0                         1       35    3606
ki1000304-VITAMIN-A         INDIA                          1                         0      602    3606
ki1000304-VITAMIN-A         INDIA                          1                         1        4    3606
ki1000304b-SAS-CompFeed     INDIA                          0                         0      939    1502
ki1000304b-SAS-CompFeed     INDIA                          0                         1       20    1502
ki1000304b-SAS-CompFeed     INDIA                          1                         0      531    1502
ki1000304b-SAS-CompFeed     INDIA                          1                         1       12    1502
ki1000304b-SAS-FoodSuppl    INDIA                          0                         0      252     397
ki1000304b-SAS-FoodSuppl    INDIA                          0                         1        2     397
ki1000304b-SAS-FoodSuppl    INDIA                          1                         0      142     397
ki1000304b-SAS-FoodSuppl    INDIA                          1                         1        1     397
ki1017093b-PROVIDE          BANGLADESH                     0                         0      560     686
ki1017093b-PROVIDE          BANGLADESH                     0                         1        4     686
ki1017093b-PROVIDE          BANGLADESH                     1                         0      122     686
ki1017093b-PROVIDE          BANGLADESH                     1                         1        0     686
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         0     1909    2384
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                         1        1    2384
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         0      474    2384
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                         1        0    2384
ki1101329-Keneba            GAMBIA                         0                         0     1821    2832
ki1101329-Keneba            GAMBIA                         0                         1       43    2832
ki1101329-Keneba            GAMBIA                         1                         0      951    2832
ki1101329-Keneba            GAMBIA                         1                         1       17    2832
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                         0     6128    6560
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                         1       26    6560
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                         0      400    6560
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                         1        6    6560
ki1113344-GMS-Nepal         NEPAL                          0                         0      274     590
ki1113344-GMS-Nepal         NEPAL                          0                         1        4     590
ki1113344-GMS-Nepal         NEPAL                          1                         0      312     590
ki1113344-GMS-Nepal         NEPAL                          1                         1        0     590
ki1126311-ZVITAMBO          ZIMBABWE                       0                         0    11465   13602
ki1126311-ZVITAMBO          ZIMBABWE                       0                         1      782   13602
ki1126311-ZVITAMBO          ZIMBABWE                       1                         0     1200   13602
ki1126311-ZVITAMBO          ZIMBABWE                       1                         1      155   13602
ki1148112-iLiNS-DOSE        MALAWI                         0                         0     1673    1844
ki1148112-iLiNS-DOSE        MALAWI                         0                         1       46    1844
ki1148112-iLiNS-DOSE        MALAWI                         1                         0      121    1844
ki1148112-iLiNS-DOSE        MALAWI                         1                         1        4    1844
ki1148112-iLiNS-DYAD-M      MALAWI                         0                         0     1095    1188
ki1148112-iLiNS-DYAD-M      MALAWI                         0                         1       29    1188
ki1148112-iLiNS-DYAD-M      MALAWI                         1                         0       61    1188
ki1148112-iLiNS-DYAD-M      MALAWI                         1                         1        3    1188
kiGH5241-JiVitA-3           BANGLADESH                     0                         0    21592   26485
kiGH5241-JiVitA-3           BANGLADESH                     0                         1      413   26485
kiGH5241-JiVitA-3           BANGLADESH                     1                         0     4410   26485
kiGH5241-JiVitA-3           BANGLADESH                     1                         1       70   26485
kiGH5241-JiVitA-4           BANGLADESH                     0                         0     3971    5387
kiGH5241-JiVitA-4           BANGLADESH                     0                         1       29    5387
kiGH5241-JiVitA-4           BANGLADESH                     1                         0     1376    5387
kiGH5241-JiVitA-4           BANGLADESH                     1                         1       11    5387


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
![](/tmp/4bfd1a09-32dd-4314-8f54-33cdef9f45c5/2fa17f92-2c16-4bf5-b3dc-2343e72a0e3c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4bfd1a09-32dd-4314-8f54-33cdef9f45c5/2fa17f92-2c16-4bf5-b3dc-2343e72a0e3c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4bfd1a09-32dd-4314-8f54-33cdef9f45c5/2fa17f92-2c16-4bf5-b3dc-2343e72a0e3c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4bfd1a09-32dd-4314-8f54-33cdef9f45c5/2fa17f92-2c16-4bf5-b3dc-2343e72a0e3c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.0208551   0.0101101   0.0316001
ki1000304b-SAS-CompFeed     INDIA          1                    NA                0.0220994   0.0143717   0.0298272
ki1101329-Keneba            GAMBIA         0                    NA                0.0230687   0.0162524   0.0298849
ki1101329-Keneba            GAMBIA         1                    NA                0.0175620   0.0092859   0.0258381
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0042249   0.0026042   0.0058456
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    NA                0.0147783   0.0030402   0.0265164
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0638524   0.0595222   0.0681826
ki1126311-ZVITAMBO          ZIMBABWE       1                    NA                0.1143911   0.0974434   0.1313389
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0187685   0.0170350   0.0205019
kiGH5241-JiVitA-3           BANGLADESH     1                    NA                0.0156250   0.0119893   0.0192607
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0072500   0.0045220   0.0099780
kiGH5241-JiVitA-4           BANGLADESH     1                    NA                0.0079308   0.0027590   0.0131026


### Parameter: E(Y)


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304b-SAS-CompFeed     INDIA          NA                   NA                0.0213049   0.0133015   0.0293084
ki1101329-Keneba            GAMBIA         NA                   NA                0.0211864   0.0158818   0.0264911
ki1112895-Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0048780   0.0031919   0.0065642
ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.0688869   0.0646306   0.0731432
kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.0182367   0.0166366   0.0198369
kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.0074253   0.0050095   0.0098410


### Parameter: RR


studyid                     country        intervention_level   baseline_level     estimate    ci_lower   ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ---------
ki1000304b-SAS-CompFeed     INDIA          0                    0                 1.0000000   1.0000000   1.000000
ki1000304b-SAS-CompFeed     INDIA          1                    0                 1.0596685   0.6115785   1.836064
ki1101329-Keneba            GAMBIA         0                    0                 1.0000000   1.0000000   1.000000
ki1101329-Keneba            GAMBIA         1                    0                 0.7612916   0.4365021   1.327748
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    0                 1.0000000   1.0000000   1.000000
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    0                 3.4979159   1.4478946   8.450487
ki1126311-ZVITAMBO          ZIMBABWE       0                    0                 1.0000000   1.0000000   1.000000
ki1126311-ZVITAMBO          ZIMBABWE       1                    0                 1.7914940   1.5221299   2.108526
kiGH5241-JiVitA-3           BANGLADESH     0                    0                 1.0000000   1.0000000   1.000000
kiGH5241-JiVitA-3           BANGLADESH     1                    0                 0.8325138   0.6515962   1.063664
kiGH5241-JiVitA-4           BANGLADESH     0                    0                 1.0000000   1.0000000   1.000000
kiGH5241-JiVitA-4           BANGLADESH     1                    0                 1.0939015   0.5139347   2.328351


### Parameter: PAR


studyid                     country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
ki1000304b-SAS-CompFeed     INDIA          0                    NA                 0.0004499   -0.0037536   0.0046533
ki1101329-Keneba            GAMBIA         0                    NA                -0.0018822   -0.0055483   0.0017838
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                 0.0006532   -0.0000828   0.0013891
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                 0.0050346    0.0032736   0.0067956
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                -0.0005317   -0.0011967   0.0001333
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                 0.0001753   -0.0013351   0.0016857


### Parameter: PAF


studyid                     country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
ki1000304b-SAS-CompFeed     INDIA          0                    NA                 0.0211157   -0.2024922   0.2031430
ki1101329-Keneba            GAMBIA         0                    NA                -0.0888412   -0.2747831   0.0699789
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                 0.1338967   -0.0223614   0.2662722
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                 0.0730843    0.0475211   0.0979616
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                -0.0291567   -0.0663668   0.0067549
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                 0.0236062   -0.2018522   0.2067704
