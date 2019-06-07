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

**Intervention Variable:** ever_wasted024

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_wasted024    dead   n_cell       n
--------------------------  -----------------------------  ---------------  -----  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                    0      174     263
ki0047075b-MAL-ED           BANGLADESH                     0                    1        2     263
ki0047075b-MAL-ED           BANGLADESH                     1                    0       87     263
ki0047075b-MAL-ED           BANGLADESH                     1                    1        0     263
ki0047075b-MAL-ED           INDIA                          0                    0      132     251
ki0047075b-MAL-ED           INDIA                          0                    1        1     251
ki0047075b-MAL-ED           INDIA                          1                    0      117     251
ki0047075b-MAL-ED           INDIA                          1                    1        1     251
ki0047075b-MAL-ED           PERU                           0                    0      274     302
ki0047075b-MAL-ED           PERU                           0                    1        2     302
ki0047075b-MAL-ED           PERU                           1                    0       26     302
ki0047075b-MAL-ED           PERU                           1                    1        0     302
ki0047075b-MAL-ED           SOUTH AFRICA                   0                    0      251     312
ki0047075b-MAL-ED           SOUTH AFRICA                   0                    1        0     312
ki0047075b-MAL-ED           SOUTH AFRICA                   1                    0       61     312
ki0047075b-MAL-ED           SOUTH AFRICA                   1                    1        0     312
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0      226     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    1        3     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0       32     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        0     261
ki1000304-VITAMIN-A         INDIA                          0                    0     2678    3803
ki1000304-VITAMIN-A         INDIA                          0                    1       34    3803
ki1000304-VITAMIN-A         INDIA                          1                    0     1067    3803
ki1000304-VITAMIN-A         INDIA                          1                    1       24    3803
ki1000304b-SAS-CompFeed     INDIA                          0                    0      866    1513
ki1000304b-SAS-CompFeed     INDIA                          0                    1       19    1513
ki1000304b-SAS-CompFeed     INDIA                          1                    0      610    1513
ki1000304b-SAS-CompFeed     INDIA                          1                    1       18    1513
ki1000304b-SAS-FoodSuppl    INDIA                          0                    0      219     418
ki1000304b-SAS-FoodSuppl    INDIA                          0                    1        2     418
ki1000304b-SAS-FoodSuppl    INDIA                          1                    0      193     418
ki1000304b-SAS-FoodSuppl    INDIA                          1                    1        4     418
ki1017093b-PROVIDE          BANGLADESH                     0                    0      449     699
ki1017093b-PROVIDE          BANGLADESH                     0                    1        4     699
ki1017093b-PROVIDE          BANGLADESH                     1                    0      246     699
ki1017093b-PROVIDE          BANGLADESH                     1                    1        0     699
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    0     1829    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    1        1    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    0      566    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    1        0    2396
ki1101329-Keneba            GAMBIA                         0                    0     1770    2884
ki1101329-Keneba            GAMBIA                         0                    1       38    2884
ki1101329-Keneba            GAMBIA                         1                    0     1052    2884
ki1101329-Keneba            GAMBIA                         1                    1       24    2884
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                    0     5730    7157
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                    1       23    7157
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                    0     1388    7157
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                    1       16    7157
ki1113344-GMS-Nepal         NEPAL                          0                    0      242     602
ki1113344-GMS-Nepal         NEPAL                          0                    1        4     602
ki1113344-GMS-Nepal         NEPAL                          1                    0      355     602
ki1113344-GMS-Nepal         NEPAL                          1                    1        1     602
ki1126311-ZVITAMBO          ZIMBABWE                       0                    0     9979   13917
ki1126311-ZVITAMBO          ZIMBABWE                       0                    1      672   13917
ki1126311-ZVITAMBO          ZIMBABWE                       1                    0     2898   13917
ki1126311-ZVITAMBO          ZIMBABWE                       1                    1      368   13917
ki1148112-iLiNS-DOSE        MALAWI                         0                    0     1660    1854
ki1148112-iLiNS-DOSE        MALAWI                         0                    1       45    1854
ki1148112-iLiNS-DOSE        MALAWI                         1                    0      143    1854
ki1148112-iLiNS-DOSE        MALAWI                         1                    1        6    1854
ki1148112-iLiNS-DYAD-M      MALAWI                         0                    0     1058    1195
ki1148112-iLiNS-DYAD-M      MALAWI                         0                    1       29    1195
ki1148112-iLiNS-DYAD-M      MALAWI                         1                    0      102    1195
ki1148112-iLiNS-DYAD-M      MALAWI                         1                    1        6    1195
kiGH5241-JiVitA-3           BANGLADESH                     0                    0    19588   26910
kiGH5241-JiVitA-3           BANGLADESH                     0                    1      385   26910
kiGH5241-JiVitA-3           BANGLADESH                     1                    0     6769   26910
kiGH5241-JiVitA-3           BANGLADESH                     1                    1      168   26910
kiGH5241-JiVitA-4           BANGLADESH                     0                    0     3723    5434
kiGH5241-JiVitA-4           BANGLADESH                     0                    1       26    5434
kiGH5241-JiVitA-4           BANGLADESH                     1                    0     1670    5434
kiGH5241-JiVitA-4           BANGLADESH                     1                    1       15    5434


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
![](/tmp/bdca3866-6597-4f71-87ff-16f6f6e15769/dd826e38-d83b-469a-ab4e-cae2eef6b9a0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bdca3866-6597-4f71-87ff-16f6f6e15769/dd826e38-d83b-469a-ab4e-cae2eef6b9a0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/bdca3866-6597-4f71-87ff-16f6f6e15769/dd826e38-d83b-469a-ab4e-cae2eef6b9a0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bdca3866-6597-4f71-87ff-16f6f6e15769/dd826e38-d83b-469a-ab4e-cae2eef6b9a0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0125369   0.0083488   0.0167250
ki1000304-VITAMIN-A         INDIA          1                    NA                0.0219982   0.0132934   0.0307029
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.0214689   0.0109378   0.0320000
ki1000304b-SAS-CompFeed     INDIA          1                    NA                0.0286624   0.0140899   0.0432350
ki1101329-Keneba            GAMBIA         0                    NA                0.0210177   0.0144046   0.0276308
ki1101329-Keneba            GAMBIA         1                    NA                0.0223048   0.0134798   0.0311299
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0039979   0.0023672   0.0056286
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    NA                0.0113960   0.0058436   0.0169484
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0630927   0.0584752   0.0677102
ki1126311-ZVITAMBO          ZIMBABWE       1                    NA                0.1126761   0.1018315   0.1235206
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0263930   0.0187820   0.0340039
ki1148112-iLiNS-DOSE        MALAWI         1                    NA                0.0402685   0.0086945   0.0718424
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0266789   0.0170875   0.0362704
ki1148112-iLiNS-DYAD-M      MALAWI         1                    NA                0.0555556   0.0123008   0.0988103
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0192760   0.0174168   0.0211352
kiGH5241-JiVitA-3           BANGLADESH     1                    NA                0.0242180   0.0205857   0.0278502
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0069352   0.0041836   0.0096867
kiGH5241-JiVitA-4           BANGLADESH     1                    NA                0.0089021   0.0040132   0.0137910


### Parameter: E(Y)


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          NA                   NA                0.0152511   0.0113557   0.0191465
ki1000304b-SAS-CompFeed     INDIA          NA                   NA                0.0244547   0.0133604   0.0355490
ki1101329-Keneba            GAMBIA         NA                   NA                0.0214979   0.0162037   0.0267922
ki1112895-Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0054492   0.0037435   0.0071549
ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.0747287   0.0703599   0.0790976
ki1148112-iLiNS-DOSE        MALAWI         NA                   NA                0.0275081   0.0200611   0.0349551
ki1148112-iLiNS-DYAD-M      MALAWI         NA                   NA                0.0292887   0.0197168   0.0388606
kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.0205500   0.0188220   0.0222780
kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.0075451   0.0051295   0.0099606


### Parameter: RR


studyid                     country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
--------------------------  -------------  -------------------  ---------------  ---------  ----------  ---------
ki1000304-VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
ki1000304-VITAMIN-A         INDIA          1                    0                 1.754677   1.0454277   2.945103
ki1000304b-SAS-CompFeed     INDIA          0                    0                 1.000000   1.0000000   1.000000
ki1000304b-SAS-CompFeed     INDIA          1                    0                 1.335065   0.8582410   2.076805
ki1101329-Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba            GAMBIA         1                    0                 1.061241   0.6401347   1.759366
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    0                 2.850489   1.5099350   5.381218
ki1126311-ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO          ZIMBABWE       1                    0                 1.785882   1.5824934   2.015411
ki1148112-iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DOSE        MALAWI         1                    0                 1.525727   0.6616865   3.518045
ki1148112-iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DYAD-M      MALAWI         1                    0                 2.082375   0.8833160   4.909101
kiGH5241-JiVitA-3           BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-3           BANGLADESH     1                    0                 1.256377   1.0580700   1.491853
kiGH5241-JiVitA-4           BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4           BANGLADESH     1                    0                 1.283611   0.6494518   2.536997


### Parameter: PAR


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0027142   -0.0000603   0.0054888
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.0029858   -0.0019651   0.0079367
ki1101329-Keneba            GAMBIA         0                    NA                0.0004802   -0.0036343   0.0045947
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0014513    0.0003140   0.0025886
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0116361    0.0088481   0.0144241
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0011151   -0.0015007   0.0037310
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0026098   -0.0014219   0.0066414
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0012740    0.0002562   0.0022917
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0006099   -0.0011385   0.0023583


### Parameter: PAF


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.1779702   -0.0186654   0.3366487
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.1220950   -0.0915434   0.2939197
ki1101329-Keneba            GAMBIA         0                    NA                0.0223380   -0.1889789   0.1960976
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.2663315    0.0475447   0.4348612
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.1557109    0.1185810   0.1912767
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0405382   -0.0587635   0.1305264
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0891050   -0.0560757   0.2143274
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0619932    0.0117347   0.1096958
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0808346   -0.1793561   0.2836217
