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

**Intervention Variable:** ever_sstunted024

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_sstunted024    dead   n_cell       n
--------------------------  -----------------------------  -----------------  -----  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                      0      206     263
ki0047075b-MAL-ED           BANGLADESH                     0                      1        1     263
ki0047075b-MAL-ED           BANGLADESH                     1                      0       55     263
ki0047075b-MAL-ED           BANGLADESH                     1                      1        1     263
ki0047075b-MAL-ED           INDIA                          0                      0      193     251
ki0047075b-MAL-ED           INDIA                          0                      1        2     251
ki0047075b-MAL-ED           INDIA                          1                      0       56     251
ki0047075b-MAL-ED           INDIA                          1                      1        0     251
ki0047075b-MAL-ED           PERU                           0                      0      239     302
ki0047075b-MAL-ED           PERU                           0                      1        2     302
ki0047075b-MAL-ED           PERU                           1                      0       61     302
ki0047075b-MAL-ED           PERU                           1                      1        0     302
ki0047075b-MAL-ED           SOUTH AFRICA                   0                      0      241     312
ki0047075b-MAL-ED           SOUTH AFRICA                   0                      1        0     312
ki0047075b-MAL-ED           SOUTH AFRICA                   1                      0       71     312
ki0047075b-MAL-ED           SOUTH AFRICA                   1                      1        0     312
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      0      127     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                      1        2     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      0      131     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                      1        1     261
ki1000304-VITAMIN-A         INDIA                          0                      0     2901    3803
ki1000304-VITAMIN-A         INDIA                          0                      1       39    3803
ki1000304-VITAMIN-A         INDIA                          1                      0      844    3803
ki1000304-VITAMIN-A         INDIA                          1                      1       19    3803
ki1000304b-SAS-CompFeed     INDIA                          0                      0     1009    1513
ki1000304b-SAS-CompFeed     INDIA                          0                      1       23    1513
ki1000304b-SAS-CompFeed     INDIA                          1                      0      467    1513
ki1000304b-SAS-CompFeed     INDIA                          1                      1       14    1513
ki1000304b-SAS-FoodSuppl    INDIA                          0                      0      215     418
ki1000304b-SAS-FoodSuppl    INDIA                          0                      1        3     418
ki1000304b-SAS-FoodSuppl    INDIA                          1                      0      197     418
ki1000304b-SAS-FoodSuppl    INDIA                          1                      1        3     418
ki1017093b-PROVIDE          BANGLADESH                     0                      0      603     699
ki1017093b-PROVIDE          BANGLADESH                     0                      1        4     699
ki1017093b-PROVIDE          BANGLADESH                     1                      0       92     699
ki1017093b-PROVIDE          BANGLADESH                     1                      1        0     699
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                      0     2157    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                      1        1    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                      0      238    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                      1        0    2396
ki1101329-Keneba            GAMBIA                         0                      0     2235    2884
ki1101329-Keneba            GAMBIA                         0                      1       41    2884
ki1101329-Keneba            GAMBIA                         1                      0      587    2884
ki1101329-Keneba            GAMBIA                         1                      1       21    2884
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                      0     6264    7157
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                      1       34    7157
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                      0      854    7157
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                      1        5    7157
ki1113344-GMS-Nepal         NEPAL                          0                      0      445     602
ki1113344-GMS-Nepal         NEPAL                          0                      1        2     602
ki1113344-GMS-Nepal         NEPAL                          1                      0      152     602
ki1113344-GMS-Nepal         NEPAL                          1                      1        3     602
ki1126311-ZVITAMBO          ZIMBABWE                       0                      0    11157   13917
ki1126311-ZVITAMBO          ZIMBABWE                       0                      1      807   13917
ki1126311-ZVITAMBO          ZIMBABWE                       1                      0     1720   13917
ki1126311-ZVITAMBO          ZIMBABWE                       1                      1      233   13917
ki1148112-iLiNS-DOSE        MALAWI                         0                      0     1487    1854
ki1148112-iLiNS-DOSE        MALAWI                         0                      1       40    1854
ki1148112-iLiNS-DOSE        MALAWI                         1                      0      316    1854
ki1148112-iLiNS-DOSE        MALAWI                         1                      1       11    1854
ki1148112-iLiNS-DYAD-M      MALAWI                         0                      0      985    1195
ki1148112-iLiNS-DYAD-M      MALAWI                         0                      1       29    1195
ki1148112-iLiNS-DYAD-M      MALAWI                         1                      0      175    1195
ki1148112-iLiNS-DYAD-M      MALAWI                         1                      1        6    1195
kiGH5241-JiVitA-3           BANGLADESH                     0                      0    22425   26910
kiGH5241-JiVitA-3           BANGLADESH                     0                      1      395   26910
kiGH5241-JiVitA-3           BANGLADESH                     1                      0     3932   26910
kiGH5241-JiVitA-3           BANGLADESH                     1                      1      158   26910
kiGH5241-JiVitA-4           BANGLADESH                     0                      0     4427    5434
kiGH5241-JiVitA-4           BANGLADESH                     0                      1       28    5434
kiGH5241-JiVitA-4           BANGLADESH                     1                      0      966    5434
kiGH5241-JiVitA-4           BANGLADESH                     1                      1       13    5434


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
![](/tmp/d1b7a612-8a85-498d-b597-7fe9aad603ea/a164fe15-c8a7-4d92-839f-95e2cc147612/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d1b7a612-8a85-498d-b597-7fe9aad603ea/a164fe15-c8a7-4d92-839f-95e2cc147612/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d1b7a612-8a85-498d-b597-7fe9aad603ea/a164fe15-c8a7-4d92-839f-95e2cc147612/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d1b7a612-8a85-498d-b597-7fe9aad603ea/a164fe15-c8a7-4d92-839f-95e2cc147612/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0132653   0.0091292   0.0174014
ki1000304-VITAMIN-A         INDIA          1                    NA                0.0220162   0.0122250   0.0318074
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.0222868   0.0114780   0.0330956
ki1000304b-SAS-CompFeed     INDIA          1                    NA                0.0291060   0.0137491   0.0444629
ki1101329-Keneba            GAMBIA         0                    NA                0.0180141   0.0125490   0.0234791
ki1101329-Keneba            GAMBIA         1                    NA                0.0345395   0.0200218   0.0490571
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0053985   0.0035887   0.0072084
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    NA                0.0058207   0.0007332   0.0109082
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0674524   0.0629581   0.0719466
ki1126311-ZVITAMBO          ZIMBABWE       1                    NA                0.1193036   0.1049272   0.1336801
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0261952   0.0181822   0.0342081
ki1148112-iLiNS-DOSE        MALAWI         1                    NA                0.0336391   0.0140920   0.0531863
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0285996   0.0183278   0.0388714
ki1148112-iLiNS-DYAD-M      MALAWI         1                    NA                0.0331492   0.0070354   0.0592630
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0173094   0.0155760   0.0190427
kiGH5241-JiVitA-3           BANGLADESH     1                    NA                0.0386308   0.0326654   0.0445963
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0062851   0.0037978   0.0087723
kiGH5241-JiVitA-4           BANGLADESH     1                    NA                0.0132789   0.0061259   0.0204319


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
ki1000304-VITAMIN-A         INDIA          1                    0                 1.659685   0.9641464   2.856986
ki1000304b-SAS-CompFeed     INDIA          0                    0                 1.000000   1.0000000   1.000000
ki1000304b-SAS-CompFeed     INDIA          1                    0                 1.305975   0.8535210   1.998276
ki1101329-Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba            GAMBIA         1                    0                 1.917362   1.1417702   3.219805
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    0                 1.078203   0.4228145   2.749485
ki1126311-ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO          ZIMBABWE       1                    0                 1.768710   1.5411877   2.029820
ki1148112-iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DOSE        MALAWI         1                    0                 1.284174   0.6659341   2.476377
ki1148112-iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DYAD-M      MALAWI         1                    0                 1.159078   0.4876518   2.754961
kiGH5241-JiVitA-3           BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-3           BANGLADESH     1                    0                 2.231785   1.8551370   2.684903
kiGH5241-JiVitA-4           BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4           BANGLADESH     1                    0                 2.112761   1.0824972   4.123575


### Parameter: PAR


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0019858   -0.0004290   0.0044006
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.0021679   -0.0014333   0.0057691
ki1101329-Keneba            GAMBIA         0                    NA                0.0034839    0.0002044   0.0067634
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0000507   -0.0005974   0.0006988
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0072764    0.0051416   0.0094112
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0013129   -0.0024154   0.0050412
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0006891   -0.0035622   0.0049404
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0032406    0.0022870   0.0041942
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0012600   -0.0001039   0.0026239


### Parameter: PAF


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.1302076   -0.0393424   0.2720986
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.0886497   -0.0661974   0.2210079
ki1101329-Keneba            GAMBIA         0                    NA                0.1620557    0.0008535   0.2972495
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0092988   -0.1170309   0.1213414
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0973707    0.0688503   0.1250176
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0477291   -0.0972522   0.1735539
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0235278   -0.1327451   0.1582413
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.1576937    0.1118050   0.2012116
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.1669979   -0.0294440   0.3259541
