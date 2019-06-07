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

**Intervention Variable:** pers_wasted024

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        pers_wasted024    dead   n_cell       n
--------------------------  -----------------------------  ---------------  -----  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                    0      246     263
ki0047075b-MAL-ED           BANGLADESH                     0                    1        2     263
ki0047075b-MAL-ED           BANGLADESH                     1                    0       15     263
ki0047075b-MAL-ED           BANGLADESH                     1                    1        0     263
ki0047075b-MAL-ED           INDIA                          0                    0      226     251
ki0047075b-MAL-ED           INDIA                          0                    1        2     251
ki0047075b-MAL-ED           INDIA                          1                    0       23     251
ki0047075b-MAL-ED           INDIA                          1                    1        0     251
ki0047075b-MAL-ED           PERU                           0                    0      299     302
ki0047075b-MAL-ED           PERU                           0                    1        2     302
ki0047075b-MAL-ED           PERU                           1                    0        1     302
ki0047075b-MAL-ED           PERU                           1                    1        0     302
ki0047075b-MAL-ED           SOUTH AFRICA                   0                    0      306     312
ki0047075b-MAL-ED           SOUTH AFRICA                   0                    1        0     312
ki0047075b-MAL-ED           SOUTH AFRICA                   1                    0        6     312
ki0047075b-MAL-ED           SOUTH AFRICA                   1                    1        0     312
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0      258     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    1        3     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0        0     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        0     261
ki1000304-VITAMIN-A         INDIA                          0                    0     3179    3803
ki1000304-VITAMIN-A         INDIA                          0                    1       35    3803
ki1000304-VITAMIN-A         INDIA                          1                    0      566    3803
ki1000304-VITAMIN-A         INDIA                          1                    1       23    3803
ki1000304b-SAS-CompFeed     INDIA                          0                    0     1355    1513
ki1000304b-SAS-CompFeed     INDIA                          0                    1       22    1513
ki1000304b-SAS-CompFeed     INDIA                          1                    0      121    1513
ki1000304b-SAS-CompFeed     INDIA                          1                    1       15    1513
ki1000304b-SAS-FoodSuppl    INDIA                          0                    0      338     418
ki1000304b-SAS-FoodSuppl    INDIA                          0                    1        2     418
ki1000304b-SAS-FoodSuppl    INDIA                          1                    0       74     418
ki1000304b-SAS-FoodSuppl    INDIA                          1                    1        4     418
ki1017093b-PROVIDE          BANGLADESH                     0                    0      668     699
ki1017093b-PROVIDE          BANGLADESH                     0                    1        4     699
ki1017093b-PROVIDE          BANGLADESH                     1                    0       27     699
ki1017093b-PROVIDE          BANGLADESH                     1                    1        0     699
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    0     2324    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    1        1    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    0       71    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    1        0    2396
ki1101329-Keneba            GAMBIA                         0                    0     2644    2884
ki1101329-Keneba            GAMBIA                         0                    1       55    2884
ki1101329-Keneba            GAMBIA                         1                    0      178    2884
ki1101329-Keneba            GAMBIA                         1                    1        7    2884
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                    0     6018    7157
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                    1       25    7157
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                    0     1100    7157
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                    1       14    7157
ki1113344-GMS-Nepal         NEPAL                          0                    0      512     602
ki1113344-GMS-Nepal         NEPAL                          0                    1        4     602
ki1113344-GMS-Nepal         NEPAL                          1                    0       85     602
ki1113344-GMS-Nepal         NEPAL                          1                    1        1     602
ki1126311-ZVITAMBO          ZIMBABWE                       0                    0    12329   13917
ki1126311-ZVITAMBO          ZIMBABWE                       0                    1      820   13917
ki1126311-ZVITAMBO          ZIMBABWE                       1                    0      548   13917
ki1126311-ZVITAMBO          ZIMBABWE                       1                    1      220   13917
ki1148112-iLiNS-DOSE        MALAWI                         0                    0     1744    1854
ki1148112-iLiNS-DOSE        MALAWI                         0                    1       47    1854
ki1148112-iLiNS-DOSE        MALAWI                         1                    0       59    1854
ki1148112-iLiNS-DOSE        MALAWI                         1                    1        4    1854
ki1148112-iLiNS-DYAD-M      MALAWI                         0                    0     1138    1195
ki1148112-iLiNS-DYAD-M      MALAWI                         0                    1       30    1195
ki1148112-iLiNS-DYAD-M      MALAWI                         1                    0       22    1195
ki1148112-iLiNS-DYAD-M      MALAWI                         1                    1        5    1195
kiGH5241-JiVitA-3           BANGLADESH                     0                    0    24582   26910
kiGH5241-JiVitA-3           BANGLADESH                     0                    1      433   26910
kiGH5241-JiVitA-3           BANGLADESH                     1                    0     1775   26910
kiGH5241-JiVitA-3           BANGLADESH                     1                    1      120   26910
kiGH5241-JiVitA-4           BANGLADESH                     0                    0     4954    5434
kiGH5241-JiVitA-4           BANGLADESH                     0                    1       33    5434
kiGH5241-JiVitA-4           BANGLADESH                     1                    0      439    5434
kiGH5241-JiVitA-4           BANGLADESH                     1                    1        8    5434


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
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1148112-iLiNS-DOSE, country: MALAWI

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
![](/tmp/545bf3a5-d2df-44fa-ab7e-f8fbc6bc798a/2f9a6f06-69b7-4326-81e3-22e1e5fa6fb8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/545bf3a5-d2df-44fa-ab7e-f8fbc6bc798a/2f9a6f06-69b7-4326-81e3-22e1e5fa6fb8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/545bf3a5-d2df-44fa-ab7e-f8fbc6bc798a/2f9a6f06-69b7-4326-81e3-22e1e5fa6fb8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/545bf3a5-d2df-44fa-ab7e-f8fbc6bc798a/2f9a6f06-69b7-4326-81e3-22e1e5fa6fb8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0108899   0.0073013   0.0144784
ki1000304-VITAMIN-A         INDIA          1                    NA                0.0390492   0.0234032   0.0546953
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.0159768   0.0088330   0.0231205
ki1000304b-SAS-CompFeed     INDIA          1                    NA                0.1102941   0.0437220   0.1768662
ki1101329-Keneba            GAMBIA         0                    NA                0.0203779   0.0150466   0.0257092
ki1101329-Keneba            GAMBIA         1                    NA                0.0378378   0.0103383   0.0653373
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0041370   0.0025186   0.0057555
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    NA                0.0125673   0.0060253   0.0191093
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0623622   0.0582289   0.0664954
ki1126311-ZVITAMBO          ZIMBABWE       1                    NA                0.2864583   0.2544824   0.3184343
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0256849   0.0165790   0.0347909
ki1148112-iLiNS-DYAD-M      MALAWI         1                    NA                0.1851852   0.0525984   0.3177719
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0173096   0.0157423   0.0188769
kiGH5241-JiVitA-3           BANGLADESH     1                    NA                0.0633245   0.0517885   0.0748605
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0066172   0.0042418   0.0089926
kiGH5241-JiVitA-4           BANGLADESH     1                    NA                0.0178971   0.0051980   0.0305962


### Parameter: E(Y)


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          NA                   NA                0.0152511   0.0113557   0.0191465
ki1000304b-SAS-CompFeed     INDIA          NA                   NA                0.0244547   0.0133604   0.0355490
ki1101329-Keneba            GAMBIA         NA                   NA                0.0214979   0.0162037   0.0267922
ki1112895-Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0054492   0.0037435   0.0071549
ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.0747287   0.0703599   0.0790976
ki1148112-iLiNS-DYAD-M      MALAWI         NA                   NA                0.0292887   0.0197168   0.0388606
kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.0205500   0.0188220   0.0222780
kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.0075451   0.0051295   0.0099606


### Parameter: RR


studyid                     country        intervention_level   baseline_level    estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ---------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000    1.000000
ki1000304-VITAMIN-A         INDIA          1                    0                 3.585836   2.1344620    6.024102
ki1000304b-SAS-CompFeed     INDIA          0                    0                 1.000000   1.0000000    1.000000
ki1000304b-SAS-CompFeed     INDIA          1                    0                 6.903409   4.1853036   11.386762
ki1101329-Keneba            GAMBIA         0                    0                 1.000000   1.0000000    1.000000
ki1101329-Keneba            GAMBIA         1                    0                 1.856806   0.8576414    4.020011
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000    1.000000
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    0                 3.037774   1.5840013    5.825797
ki1126311-ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000    1.000000
ki1126311-ZVITAMBO          ZIMBABWE       1                    0                 4.593464   4.0342289    5.230222
ki1148112-iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000    1.000000
ki1148112-iLiNS-DYAD-M      MALAWI         1                    0                 7.209877   3.2430534   16.028820
kiGH5241-JiVitA-3           BANGLADESH     0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-3           BANGLADESH     1                    0                 3.658345   3.0022888    4.457761
kiGH5241-JiVitA-4           BANGLADESH     0                    0                 1.000000   1.0000000    1.000000
kiGH5241-JiVitA-4           BANGLADESH     1                    0                 2.704630   1.2207963    5.992010


### Parameter: PAR


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0043613    0.0018541   0.0068684
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.0084780    0.0018616   0.0150943
ki1101329-Keneba            GAMBIA         0                    NA                0.0011200   -0.0006836   0.0029236
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0013122    0.0002608   0.0023636
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0123666    0.0103947   0.0143385
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0036038    0.0000192   0.0071884
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0032404    0.0024188   0.0040619
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0009279   -0.0001363   0.0019920


### Parameter: PAF


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.2859633    0.1219100   0.4193666
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.3466800    0.1453804   0.5005649
ki1101329-Keneba            GAMBIA         0                    NA                0.0520981   -0.0345920   0.1315244
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.2408042    0.0405364   0.3992702
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.1654864    0.1403081   0.1899273
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.1230431   -0.0012177   0.2318819
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.1576822    0.1204927   0.1932993
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.1229783   -0.0244931   0.2492218
