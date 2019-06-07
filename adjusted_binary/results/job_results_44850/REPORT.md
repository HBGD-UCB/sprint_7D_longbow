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

**Intervention Variable:** ever_stunted024

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_stunted024    dead   n_cell       n
--------------------------  -----------------------------  ----------------  -----  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                     0      104     263
ki0047075b-MAL-ED           BANGLADESH                     0                     1        0     263
ki0047075b-MAL-ED           BANGLADESH                     1                     0      157     263
ki0047075b-MAL-ED           BANGLADESH                     1                     1        2     263
ki0047075b-MAL-ED           INDIA                          0                     0      100     251
ki0047075b-MAL-ED           INDIA                          0                     1        1     251
ki0047075b-MAL-ED           INDIA                          1                     0      149     251
ki0047075b-MAL-ED           INDIA                          1                     1        1     251
ki0047075b-MAL-ED           PERU                           0                     0      114     302
ki0047075b-MAL-ED           PERU                           0                     1        1     302
ki0047075b-MAL-ED           PERU                           1                     0      186     302
ki0047075b-MAL-ED           PERU                           1                     1        1     302
ki0047075b-MAL-ED           SOUTH AFRICA                   0                     0      142     312
ki0047075b-MAL-ED           SOUTH AFRICA                   0                     1        0     312
ki0047075b-MAL-ED           SOUTH AFRICA                   1                     0      170     312
ki0047075b-MAL-ED           SOUTH AFRICA                   1                     1        0     312
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     0       40     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                     1        1     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     0      218     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                     1        2     261
ki1000304-VITAMIN-A         INDIA                          0                     0     1700    3803
ki1000304-VITAMIN-A         INDIA                          0                     1       25    3803
ki1000304-VITAMIN-A         INDIA                          1                     0     2045    3803
ki1000304-VITAMIN-A         INDIA                          1                     1       33    3803
ki1000304b-SAS-CompFeed     INDIA                          0                     0      467    1513
ki1000304b-SAS-CompFeed     INDIA                          0                     1       11    1513
ki1000304b-SAS-CompFeed     INDIA                          1                     0     1009    1513
ki1000304b-SAS-CompFeed     INDIA                          1                     1       26    1513
ki1000304b-SAS-FoodSuppl    INDIA                          0                     0       71     418
ki1000304b-SAS-FoodSuppl    INDIA                          0                     1        2     418
ki1000304b-SAS-FoodSuppl    INDIA                          1                     0      341     418
ki1000304b-SAS-FoodSuppl    INDIA                          1                     1        4     418
ki1017093b-PROVIDE          BANGLADESH                     0                     0      392     699
ki1017093b-PROVIDE          BANGLADESH                     0                     1        4     699
ki1017093b-PROVIDE          BANGLADESH                     1                     0      303     699
ki1017093b-PROVIDE          BANGLADESH                     1                     1        0     699
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                     0     1568    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                     1        1    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                     0      827    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                     1        0    2396
ki1101329-Keneba            GAMBIA                         0                     0     1391    2884
ki1101329-Keneba            GAMBIA                         0                     1       27    2884
ki1101329-Keneba            GAMBIA                         1                     0     1431    2884
ki1101329-Keneba            GAMBIA                         1                     1       35    2884
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                     0     4566    7157
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                     1       23    7157
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                     0     2552    7157
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                     1       16    7157
ki1113344-GMS-Nepal         NEPAL                          0                     0      194     602
ki1113344-GMS-Nepal         NEPAL                          0                     1        2     602
ki1113344-GMS-Nepal         NEPAL                          1                     0      403     602
ki1113344-GMS-Nepal         NEPAL                          1                     1        3     602
ki1126311-ZVITAMBO          ZIMBABWE                       0                     0     8114   13917
ki1126311-ZVITAMBO          ZIMBABWE                       0                     1      570   13917
ki1126311-ZVITAMBO          ZIMBABWE                       1                     0     4763   13917
ki1126311-ZVITAMBO          ZIMBABWE                       1                     1      470   13917
ki1148112-iLiNS-DOSE        MALAWI                         0                     0      903    1854
ki1148112-iLiNS-DOSE        MALAWI                         0                     1       23    1854
ki1148112-iLiNS-DOSE        MALAWI                         1                     0      900    1854
ki1148112-iLiNS-DOSE        MALAWI                         1                     1       28    1854
ki1148112-iLiNS-DYAD-M      MALAWI                         0                     0      625    1195
ki1148112-iLiNS-DYAD-M      MALAWI                         0                     1       19    1195
ki1148112-iLiNS-DYAD-M      MALAWI                         1                     0      535    1195
ki1148112-iLiNS-DYAD-M      MALAWI                         1                     1       16    1195
kiGH5241-JiVitA-3           BANGLADESH                     0                     0    13937   26910
kiGH5241-JiVitA-3           BANGLADESH                     0                     1      250   26910
kiGH5241-JiVitA-3           BANGLADESH                     1                     0    12420   26910
kiGH5241-JiVitA-3           BANGLADESH                     1                     1      303   26910
kiGH5241-JiVitA-4           BANGLADESH                     0                     0     2333    5434
kiGH5241-JiVitA-4           BANGLADESH                     0                     1       14    5434
kiGH5241-JiVitA-4           BANGLADESH                     1                     0     3060    5434
kiGH5241-JiVitA-4           BANGLADESH                     1                     1       27    5434


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
![](/tmp/ae2d7996-9ac7-42f2-a953-a4dde13238a2/df09e7c4-8a60-442a-ab65-7dc3ad5fdc69/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ae2d7996-9ac7-42f2-a953-a4dde13238a2/df09e7c4-8a60-442a-ab65-7dc3ad5fdc69/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ae2d7996-9ac7-42f2-a953-a4dde13238a2/df09e7c4-8a60-442a-ab65-7dc3ad5fdc69/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ae2d7996-9ac7-42f2-a953-a4dde13238a2/df09e7c4-8a60-442a-ab65-7dc3ad5fdc69/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0144928   0.0088523   0.0201332
ki1000304-VITAMIN-A         INDIA          1                    NA                0.0158807   0.0105049   0.0212564
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.0230126   0.0132403   0.0327848
ki1000304b-SAS-CompFeed     INDIA          1                    NA                0.0251208   0.0099770   0.0402645
ki1101329-Keneba            GAMBIA         0                    NA                0.0190409   0.0119262   0.0261556
ki1101329-Keneba            GAMBIA         1                    NA                0.0238745   0.0160586   0.0316903
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0050120   0.0029687   0.0070553
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    NA                0.0062305   0.0031869   0.0092741
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0656380   0.0604291   0.0708468
ki1126311-ZVITAMBO          ZIMBABWE       1                    NA                0.0898146   0.0820678   0.0975615
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0248380   0.0148113   0.0348647
ki1148112-iLiNS-DOSE        MALAWI         1                    NA                0.0301724   0.0191635   0.0411813
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0295031   0.0164182   0.0425880
ki1148112-iLiNS-DYAD-M      MALAWI         1                    NA                0.0290381   0.0150002   0.0430760
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0176218   0.0153746   0.0198689
kiGH5241-JiVitA-3           BANGLADESH     1                    NA                0.0238151   0.0211962   0.0264341
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0059651   0.0022268   0.0097034
kiGH5241-JiVitA-4           BANGLADESH     1                    NA                0.0087464   0.0055442   0.0119485


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


studyid                     country        intervention_level   baseline_level     estimate    ci_lower   ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ---------
ki1000304-VITAMIN-A         INDIA          0                    0                 1.0000000   1.0000000   1.000000
ki1000304-VITAMIN-A         INDIA          1                    0                 1.0957652   0.6541898   1.835402
ki1000304b-SAS-CompFeed     INDIA          0                    0                 1.0000000   1.0000000   1.000000
ki1000304b-SAS-CompFeed     INDIA          1                    0                 1.0916118   0.5408392   2.203273
ki1101329-Keneba            GAMBIA         0                    0                 1.0000000   1.0000000   1.000000
ki1101329-Keneba            GAMBIA         1                    0                 1.2538527   0.7629544   2.060604
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    0                 1.0000000   1.0000000   1.000000
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    0                 1.2431261   0.6579430   2.348779
ki1126311-ZVITAMBO          ZIMBABWE       0                    0                 1.0000000   1.0000000   1.000000
ki1126311-ZVITAMBO          ZIMBABWE       1                    0                 1.3683339   1.2169988   1.538488
ki1148112-iLiNS-DOSE        MALAWI         0                    0                 1.0000000   1.0000000   1.000000
ki1148112-iLiNS-DOSE        MALAWI         1                    0                 1.2147676   0.7049801   2.093194
ki1148112-iLiNS-DYAD-M      MALAWI         0                    0                 1.0000000   1.0000000   1.000000
ki1148112-iLiNS-DYAD-M      MALAWI         1                    0                 0.9842392   0.5107166   1.896799
kiGH5241-JiVitA-3           BANGLADESH     0                    0                 1.0000000   1.0000000   1.000000
kiGH5241-JiVitA-3           BANGLADESH     1                    0                 1.3514614   1.1432627   1.597575
kiGH5241-JiVitA-4           BANGLADESH     0                    0                 1.0000000   1.0000000   1.000000
kiGH5241-JiVitA-4           BANGLADESH     1                    0                 1.4662641   0.7063062   3.043907


### Parameter: PAR


studyid                     country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                 0.0007584   -0.0034993   0.0050160
ki1000304b-SAS-CompFeed     INDIA          0                    NA                 0.0014422   -0.0103387   0.0132230
ki1101329-Keneba            GAMBIA         0                    NA                 0.0024570   -0.0029162   0.0078302
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                 0.0004372   -0.0008782   0.0017526
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                 0.0090908    0.0055752   0.0126064
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                 0.0026701   -0.0047842   0.0101244
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                -0.0002144   -0.0090630   0.0086342
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                 0.0029282    0.0013063   0.0045501
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                 0.0015800   -0.0012351   0.0043952


### Parameter: PAF


studyid                     country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                 0.0497251   -0.2744032   0.2914155
ki1000304b-SAS-CompFeed     INDIA          0                    NA                 0.0589732   -0.5427065   0.4259884
ki1101329-Keneba            GAMBIA         0                    NA                 0.1142909   -0.1724581   0.3309095
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                 0.0802365   -0.1941152   0.2915550
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                 0.1216506    0.0738126   0.1670177
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                 0.0970652   -0.2173427   0.3302697
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                -0.0073203   -0.3596189   0.2536922
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                 0.1424923    0.0601545   0.2176167
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                 0.2094111   -0.2786945   0.5111961
