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

**Intervention Variable:** ever_co024

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        ever_co024    dead   n_cell       n
--------------------------  -----------------------------  -----------  -----  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                0      222     263
ki0047075b-MAL-ED           BANGLADESH                     0                1        2     263
ki0047075b-MAL-ED           BANGLADESH                     1                0       39     263
ki0047075b-MAL-ED           BANGLADESH                     1                1        0     263
ki0047075b-MAL-ED           INDIA                          0                0      195     251
ki0047075b-MAL-ED           INDIA                          0                1        2     251
ki0047075b-MAL-ED           INDIA                          1                0       54     251
ki0047075b-MAL-ED           INDIA                          1                1        0     251
ki0047075b-MAL-ED           PERU                           0                0      288     302
ki0047075b-MAL-ED           PERU                           0                1        2     302
ki0047075b-MAL-ED           PERU                           1                0       12     302
ki0047075b-MAL-ED           PERU                           1                1        0     302
ki0047075b-MAL-ED           SOUTH AFRICA                   0                0      290     312
ki0047075b-MAL-ED           SOUTH AFRICA                   0                1        0     312
ki0047075b-MAL-ED           SOUTH AFRICA                   1                0       22     312
ki0047075b-MAL-ED           SOUTH AFRICA                   1                1        0     312
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                0      235     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                1        3     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                0       23     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                1        0     261
ki1000304-VITAMIN-A         INDIA                          0                0     3171    3802
ki1000304-VITAMIN-A         INDIA                          0                1       42    3802
ki1000304-VITAMIN-A         INDIA                          1                0      573    3802
ki1000304-VITAMIN-A         INDIA                          1                1       16    3802
ki1000304b-SAS-CompFeed     INDIA                          0                0     1139    1513
ki1000304b-SAS-CompFeed     INDIA                          0                1       22    1513
ki1000304b-SAS-CompFeed     INDIA                          1                0      337    1513
ki1000304b-SAS-CompFeed     INDIA                          1                1       15    1513
ki1000304b-SAS-FoodSuppl    INDIA                          0                0      259     418
ki1000304b-SAS-FoodSuppl    INDIA                          0                1        3     418
ki1000304b-SAS-FoodSuppl    INDIA                          1                0      153     418
ki1000304b-SAS-FoodSuppl    INDIA                          1                1        3     418
ki1017093b-PROVIDE          BANGLADESH                     0                0      605     699
ki1017093b-PROVIDE          BANGLADESH                     0                1        4     699
ki1017093b-PROVIDE          BANGLADESH                     1                0       90     699
ki1017093b-PROVIDE          BANGLADESH                     1                1        0     699
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                0     2276    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                1        1    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                0      119    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                1        0    2396
ki1101329-Keneba            GAMBIA                         0                0     2412    2877
ki1101329-Keneba            GAMBIA                         0                1       46    2877
ki1101329-Keneba            GAMBIA                         1                0      403    2877
ki1101329-Keneba            GAMBIA                         1                1       16    2877
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                0     6310    7154
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                1       31    7154
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                0      805    7154
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                1        8    7154
ki1113344-GMS-Nepal         NEPAL                          0                0      405     602
ki1113344-GMS-Nepal         NEPAL                          0                1        4     602
ki1113344-GMS-Nepal         NEPAL                          1                0      192     602
ki1113344-GMS-Nepal         NEPAL                          1                1        1     602
ki1126311-ZVITAMBO          ZIMBABWE                       0                0    12424   13913
ki1126311-ZVITAMBO          ZIMBABWE                       0                1      895   13913
ki1126311-ZVITAMBO          ZIMBABWE                       1                0      453   13913
ki1126311-ZVITAMBO          ZIMBABWE                       1                1      141   13913
ki1148112-iLiNS-DOSE        MALAWI                         0                0     1708    1854
ki1148112-iLiNS-DOSE        MALAWI                         0                1       45    1854
ki1148112-iLiNS-DOSE        MALAWI                         1                0       95    1854
ki1148112-iLiNS-DOSE        MALAWI                         1                1        6    1854
ki1148112-iLiNS-DYAD-M      MALAWI                         0                0     1112    1195
ki1148112-iLiNS-DYAD-M      MALAWI                         0                1       30    1195
ki1148112-iLiNS-DYAD-M      MALAWI                         1                0       48    1195
ki1148112-iLiNS-DYAD-M      MALAWI                         1                1        5    1195
kiGH5241-JiVitA-3           BANGLADESH                     0                0    24026   26878
kiGH5241-JiVitA-3           BANGLADESH                     0                1      453   26878
kiGH5241-JiVitA-3           BANGLADESH                     1                0     2307   26878
kiGH5241-JiVitA-3           BANGLADESH                     1                1       92   26878
kiGH5241-JiVitA-4           BANGLADESH                     0                0     4525    5433
kiGH5241-JiVitA-4           BANGLADESH                     0                1       32    5433
kiGH5241-JiVitA-4           BANGLADESH                     1                0      867    5433
kiGH5241-JiVitA-4           BANGLADESH                     1                1        9    5433


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
![](/tmp/643c44ed-29e1-445f-872b-b15a83d719e1/d05f7a93-a915-4866-825c-302cf60e1e89/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/643c44ed-29e1-445f-872b-b15a83d719e1/d05f7a93-a915-4866-825c-302cf60e1e89/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/643c44ed-29e1-445f-872b-b15a83d719e1/d05f7a93-a915-4866-825c-302cf60e1e89/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/643c44ed-29e1-445f-872b-b15a83d719e1/d05f7a93-a915-4866-825c-302cf60e1e89/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0130719   0.0091440   0.0169998
ki1000304-VITAMIN-A         INDIA          1                    NA                0.0271647   0.0140345   0.0402948
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.0189492   0.0090769   0.0288215
ki1000304b-SAS-CompFeed     INDIA          1                    NA                0.0426136   0.0248624   0.0603649
ki1101329-Keneba            GAMBIA         0                    NA                0.0187144   0.0133562   0.0240726
ki1101329-Keneba            GAMBIA         1                    NA                0.0381862   0.0198328   0.0565395
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0048888   0.0031719   0.0066057
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    NA                0.0098401   0.0030545   0.0166257
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0671972   0.0629452   0.0714493
ki1126311-ZVITAMBO          ZIMBABWE       1                    NA                0.2373737   0.2031567   0.2715908
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0256703   0.0182650   0.0330756
ki1148112-iLiNS-DOSE        MALAWI         1                    NA                0.0594059   0.0132932   0.1055186
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0262697   0.0169821   0.0355573
ki1148112-iLiNS-DYAD-M      MALAWI         1                    NA                0.0943396   0.0155470   0.1731322
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0185057   0.0168067   0.0202046
kiGH5241-JiVitA-3           BANGLADESH     1                    NA                0.0383493   0.0303806   0.0463180
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0070222   0.0044157   0.0096286
kiGH5241-JiVitA-4           BANGLADESH     1                    NA                0.0102740   0.0038233   0.0167247


### Parameter: E(Y)


studyid                     country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A         INDIA          NA                   NA                0.0152551   0.0113587   0.0191516
ki1000304b-SAS-CompFeed     INDIA          NA                   NA                0.0244547   0.0133604   0.0355490
ki1101329-Keneba            GAMBIA         NA                   NA                0.0215502   0.0162432   0.0268572
ki1112895-Burkina Faso Zn   BURKINA FASO   NA                   NA                0.0054515   0.0037451   0.0071579
ki1126311-ZVITAMBO          ZIMBABWE       NA                   NA                0.0744627   0.0701004   0.0788251
ki1148112-iLiNS-DOSE        MALAWI         NA                   NA                0.0275081   0.0200611   0.0349551
ki1148112-iLiNS-DYAD-M      MALAWI         NA                   NA                0.0292887   0.0197168   0.0388606
kiGH5241-JiVitA-3           BANGLADESH     NA                   NA                0.0202768   0.0185700   0.0219836
kiGH5241-JiVitA-4           BANGLADESH     NA                   NA                0.0075465   0.0051309   0.0099620


### Parameter: RR


studyid                     country        intervention_level   baseline_level    estimate    ci_lower   ci_upper
--------------------------  -------------  -------------------  ---------------  ---------  ----------  ---------
ki1000304-VITAMIN-A         INDIA          0                    0                 1.000000   1.0000000   1.000000
ki1000304-VITAMIN-A         INDIA          1                    0                 2.078098   1.1762269   3.671480
ki1000304b-SAS-CompFeed     INDIA          0                    0                 1.000000   1.0000000   1.000000
ki1000304b-SAS-CompFeed     INDIA          1                    0                 2.248838   1.6204533   3.120899
ki1101329-Keneba            GAMBIA         0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba            GAMBIA         1                    0                 2.040469   1.1661812   3.570212
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    0                 1.000000   1.0000000   1.000000
ki1112895-Burkina Faso Zn   BURKINA FASO   1                    0                 2.012776   0.9283550   4.363922
ki1126311-ZVITAMBO          ZIMBABWE       0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO          ZIMBABWE       1                    0                 3.532493   3.0179514   4.134760
ki1148112-iLiNS-DOSE        MALAWI         0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DOSE        MALAWI         1                    0                 2.314191   1.0110185   5.297116
ki1148112-iLiNS-DYAD-M      MALAWI         0                    0                 1.000000   1.0000000   1.000000
ki1148112-iLiNS-DYAD-M      MALAWI         1                    0                 3.591195   1.4499595   8.894511
kiGH5241-JiVitA-3           BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-3           BANGLADESH     1                    0                 2.072302   1.6501211   2.602497
kiGH5241-JiVitA-4           BANGLADESH     0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4           BANGLADESH     1                    0                 1.463078   0.7040608   3.040358


### Parameter: PAR


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.0021832    0.0000539   0.0043126
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.0055055    0.0025324   0.0084787
ki1101329-Keneba            GAMBIA         0                    NA                0.0028358    0.0000400   0.0056316
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.0005627   -0.0002336   0.0013589
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0072655    0.0056863   0.0088447
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0018378   -0.0007302   0.0044058
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.0030190   -0.0005886   0.0066266
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0017711    0.0010379   0.0025044
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0005243   -0.0005994   0.0016481


### Parameter: PAF


studyid                     country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
--------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A         INDIA          0                    NA                0.1431147   -0.0029168   0.2678830
ki1000304b-SAS-CompFeed     INDIA          0                    NA                0.2251321    0.1062099   0.3282313
ki1101329-Keneba            GAMBIA         0                    NA                0.1315914   -0.0037562   0.2486886
ki1112895-Burkina Faso Zn   BURKINA FASO   0                    NA                0.1032151   -0.0512090   0.2349541
ki1126311-ZVITAMBO          ZIMBABWE       0                    NA                0.0975722    0.0767977   0.1178793
ki1148112-iLiNS-DOSE        MALAWI         0                    NA                0.0668098   -0.0295258   0.1541311
ki1148112-iLiNS-DYAD-M      MALAWI         0                    NA                0.1030773   -0.0238760   0.2142893
kiGH5241-JiVitA-3           BANGLADESH     0                    NA                0.0873485    0.0514180   0.1219180
kiGH5241-JiVitA-4           BANGLADESH     0                    NA                0.0694777   -0.0924980   0.2074385
