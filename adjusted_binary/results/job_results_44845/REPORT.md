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

**Intervention Variable:** ever_stunted06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_stunted06    dead   n_cell       n
--------------------------  -----------------------------  ---------------  -----  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                    0      172     263
ki0047075b-MAL-ED           BANGLADESH                     0                    1        0     263
ki0047075b-MAL-ED           BANGLADESH                     1                    0       89     263
ki0047075b-MAL-ED           BANGLADESH                     1                    1        2     263
ki0047075b-MAL-ED           INDIA                          0                    0      164     251
ki0047075b-MAL-ED           INDIA                          0                    1        1     251
ki0047075b-MAL-ED           INDIA                          1                    0       85     251
ki0047075b-MAL-ED           INDIA                          1                    1        1     251
ki0047075b-MAL-ED           PERU                           0                    0      174     302
ki0047075b-MAL-ED           PERU                           0                    1        1     302
ki0047075b-MAL-ED           PERU                           1                    0      126     302
ki0047075b-MAL-ED           PERU                           1                    1        1     302
ki0047075b-MAL-ED           SOUTH AFRICA                   0                    0      200     312
ki0047075b-MAL-ED           SOUTH AFRICA                   0                    1        0     312
ki0047075b-MAL-ED           SOUTH AFRICA                   1                    0      112     312
ki0047075b-MAL-ED           SOUTH AFRICA                   1                    1        0     312
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    0      155     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                    1        1     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    0      103     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                    1        2     261
ki1000304-VITAMIN-A         INDIA                          0                    0     2119    2993
ki1000304-VITAMIN-A         INDIA                          0                    1       27    2993
ki1000304-VITAMIN-A         INDIA                          1                    0      818    2993
ki1000304-VITAMIN-A         INDIA                          1                    1       29    2993
ki1000304b-SAS-CompFeed     INDIA                          0                    0      887    1505
ki1000304b-SAS-CompFeed     INDIA                          0                    1       14    1505
ki1000304b-SAS-CompFeed     INDIA                          1                    0      582    1505
ki1000304b-SAS-CompFeed     INDIA                          1                    1       22    1505
ki1000304b-SAS-FoodSuppl    INDIA                          0                    0      252     418
ki1000304b-SAS-FoodSuppl    INDIA                          0                    1        2     418
ki1000304b-SAS-FoodSuppl    INDIA                          1                    0      160     418
ki1000304b-SAS-FoodSuppl    INDIA                          1                    1        4     418
ki1017093b-PROVIDE          BANGLADESH                     0                    0      529     699
ki1017093b-PROVIDE          BANGLADESH                     0                    1        4     699
ki1017093b-PROVIDE          BANGLADESH                     1                    0      166     699
ki1017093b-PROVIDE          BANGLADESH                     1                    1        0     699
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    0     1930    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                    1        1    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    0      465    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                    1        0    2396
ki1101329-Keneba            GAMBIA                         0                    0     1632    2408
ki1101329-Keneba            GAMBIA                         0                    1       24    2408
ki1101329-Keneba            GAMBIA                         1                    0      719    2408
ki1101329-Keneba            GAMBIA                         1                    1       33    2408
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                    0       41      46
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                    1        0      46
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                    0        5      46
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                    1        0      46
ki1113344-GMS-Nepal         NEPAL                          0                    0      433     602
ki1113344-GMS-Nepal         NEPAL                          0                    1        2     602
ki1113344-GMS-Nepal         NEPAL                          1                    0      164     602
ki1113344-GMS-Nepal         NEPAL                          1                    1        3     602
ki1126311-ZVITAMBO          ZIMBABWE                       0                    0     9959   13826
ki1126311-ZVITAMBO          ZIMBABWE                       0                    1      655   13826
ki1126311-ZVITAMBO          ZIMBABWE                       1                    0     2833   13826
ki1126311-ZVITAMBO          ZIMBABWE                       1                    1      379   13826
ki1148112-iLiNS-DOSE        MALAWI                         0                    0      802    1155
ki1148112-iLiNS-DOSE        MALAWI                         0                    1       16    1155
ki1148112-iLiNS-DOSE        MALAWI                         1                    0      323    1155
ki1148112-iLiNS-DOSE        MALAWI                         1                    1       14    1155
ki1148112-iLiNS-DYAD-M      MALAWI                         0                    0      944    1130
ki1148112-iLiNS-DYAD-M      MALAWI                         0                    1       26    1130
ki1148112-iLiNS-DYAD-M      MALAWI                         1                    0      152    1130
ki1148112-iLiNS-DYAD-M      MALAWI                         1                    1        8    1130
kiGH5241-JiVitA-3           BANGLADESH                     0                    0    16286   26813
kiGH5241-JiVitA-3           BANGLADESH                     0                    1      267   26813
kiGH5241-JiVitA-3           BANGLADESH                     1                    0     9979   26813
kiGH5241-JiVitA-3           BANGLADESH                     1                    1      281   26813
kiGH5241-JiVitA-4           BANGLADESH                     0                    0     3459    5088
kiGH5241-JiVitA-4           BANGLADESH                     0                    1       19    5088
kiGH5241-JiVitA-4           BANGLADESH                     1                    0     1595    5088
kiGH5241-JiVitA-4           BANGLADESH                     1                    1       15    5088


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
* studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
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




# Results Detail

## Results Plots
![](/tmp/727266b6-45ef-4e8c-85c2-375c0f5a6c49/707ba60e-898f-4128-a28d-352498cdb93f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/727266b6-45ef-4e8c-85c2-375c0f5a6c49/707ba60e-898f-4128-a28d-352498cdb93f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/727266b6-45ef-4e8c-85c2-375c0f5a6c49/707ba60e-898f-4128-a28d-352498cdb93f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/727266b6-45ef-4e8c-85c2-375c0f5a6c49/707ba60e-898f-4128-a28d-352498cdb93f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0125815   0.0078650   0.0172981
ki1000304-VITAMIN-A       INDIA        1                    NA                0.0342385   0.0219903   0.0464867
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0155383   0.0091112   0.0219654
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0364238   0.0162505   0.0565972
ki1101329-Keneba          GAMBIA       0                    NA                0.0144928   0.0087355   0.0202500
ki1101329-Keneba          GAMBIA       1                    NA                0.0438830   0.0292399   0.0585261
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0617109   0.0571330   0.0662889
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.1179950   0.1068381   0.1291519
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0195599   0.0100658   0.0290540
ki1148112-iLiNS-DOSE      MALAWI       1                    NA                0.0415430   0.0202294   0.0628566
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0268041   0.0166268   0.0369815
ki1148112-iLiNS-DYAD-M    MALAWI       1                    NA                0.0500000   0.0161848   0.0838152
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0161300   0.0141465   0.0181135
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0273879   0.0243360   0.0304398
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0054629   0.0025516   0.0083742
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0093168   0.0042907   0.0143428


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        NA                   NA                0.0187103   0.0138551   0.0235655
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0239203   0.0131430   0.0346975
ki1101329-Keneba          GAMBIA       NA                   NA                0.0236711   0.0175979   0.0297443
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0747866   0.0704018   0.0791714
ki1148112-iLiNS-DOSE      MALAWI       NA                   NA                0.0259740   0.0167970   0.0351510
ki1148112-iLiNS-DYAD-M    MALAWI       NA                   NA                0.0300885   0.0201150   0.0400620
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0204378   0.0187099   0.0221658
kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0066824   0.0041425   0.0092222


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
ki1000304-VITAMIN-A       INDIA        0                    0                 1.000000   1.0000000   1.000000
ki1000304-VITAMIN-A       INDIA        1                    0                 2.721326   1.6208405   4.568996
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000   1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 2.344134   1.4693657   3.739686
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba          GAMBIA       1                    0                 3.027925   1.8023273   5.086941
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 1.912060   1.6955360   2.156234
ki1148112-iLiNS-DOSE      MALAWI       0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DOSE      MALAWI       1                    0                 2.123887   1.0480986   4.303886
ki1148112-iLiNS-DYAD-M    MALAWI       0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DYAD-M    MALAWI       1                    0                 1.865385   0.8588754   4.051414
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 1.697948   1.4426526   1.998421
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 1.705459   0.7969426   3.649688


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0061288    0.0023981   0.0098595
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0083820    0.0013288   0.0154352
ki1101329-Keneba          GAMBIA       0                    NA                0.0091783    0.0042346   0.0141221
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0130757    0.0102462   0.0159052
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.0064141   -0.0004181   0.0132463
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.0032844   -0.0017380   0.0083068
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0043078    0.0029365   0.0056792
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0012195   -0.0006241   0.0030630


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.3275612    0.1200185   0.4861552
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.3504131    0.1315835   0.5141006
ki1101329-Keneba          GAMBIA       0                    NA                0.3877447    0.1725200   0.5469902
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.1748399    0.1374042   0.2106509
ki1148112-iLiNS-DOSE      MALAWI       0                    NA                0.2469438   -0.0478329   0.4587938
ki1148112-iLiNS-DYAD-M    MALAWI       0                    NA                0.1091571   -0.0699163   0.2582587
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.2107776    0.1419936   0.2740474
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.1824916   -0.1436014   0.4156006
