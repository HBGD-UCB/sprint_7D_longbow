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

**Intervention Variable:** pers_wasted06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                     country                        pers_wasted06    dead   n_cell       n
--------------------------  -----------------------------  --------------  -----  -------  ------
ki0047075b-MAL-ED           BANGLADESH                     0                   0      252     263
ki0047075b-MAL-ED           BANGLADESH                     0                   1        2     263
ki0047075b-MAL-ED           BANGLADESH                     1                   0        9     263
ki0047075b-MAL-ED           BANGLADESH                     1                   1        0     263
ki0047075b-MAL-ED           INDIA                          0                   0      228     251
ki0047075b-MAL-ED           INDIA                          0                   1        2     251
ki0047075b-MAL-ED           INDIA                          1                   0       21     251
ki0047075b-MAL-ED           INDIA                          1                   1        0     251
ki0047075b-MAL-ED           PERU                           0                   0      300     302
ki0047075b-MAL-ED           PERU                           0                   1        2     302
ki0047075b-MAL-ED           PERU                           1                   0        0     302
ki0047075b-MAL-ED           PERU                           1                   1        0     302
ki0047075b-MAL-ED           SOUTH AFRICA                   0                   0      306     312
ki0047075b-MAL-ED           SOUTH AFRICA                   0                   1        0     312
ki0047075b-MAL-ED           SOUTH AFRICA                   1                   0        6     312
ki0047075b-MAL-ED           SOUTH AFRICA                   1                   1        0     312
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   0      258     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   0                   1        3     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   0        0     261
ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1                   1        0     261
ki1000304-VITAMIN-A         INDIA                          0                   0     2504    2993
ki1000304-VITAMIN-A         INDIA                          0                   1       37    2993
ki1000304-VITAMIN-A         INDIA                          1                   0      433    2993
ki1000304-VITAMIN-A         INDIA                          1                   1       19    2993
ki1000304b-SAS-CompFeed     INDIA                          0                   0     1325    1505
ki1000304b-SAS-CompFeed     INDIA                          0                   1       24    1505
ki1000304b-SAS-CompFeed     INDIA                          1                   0      144    1505
ki1000304b-SAS-CompFeed     INDIA                          1                   1       12    1505
ki1000304b-SAS-FoodSuppl    INDIA                          0                   0      338     418
ki1000304b-SAS-FoodSuppl    INDIA                          0                   1        2     418
ki1000304b-SAS-FoodSuppl    INDIA                          1                   0       74     418
ki1000304b-SAS-FoodSuppl    INDIA                          1                   1        4     418
ki1017093b-PROVIDE          BANGLADESH                     0                   0      669     699
ki1017093b-PROVIDE          BANGLADESH                     0                   1        4     699
ki1017093b-PROVIDE          BANGLADESH                     1                   0       26     699
ki1017093b-PROVIDE          BANGLADESH                     1                   1        0     699
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                   0     2330    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   0                   1        1    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                   0       65    2396
ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1                   1        0    2396
ki1101329-Keneba            GAMBIA                         0                   0     2284    2408
ki1101329-Keneba            GAMBIA                         0                   1       53    2408
ki1101329-Keneba            GAMBIA                         1                   0       67    2408
ki1101329-Keneba            GAMBIA                         1                   1        4    2408
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                   0       41      46
ki1112895-Burkina Faso Zn   BURKINA FASO                   0                   1        0      46
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                   0        5      46
ki1112895-Burkina Faso Zn   BURKINA FASO                   1                   1        0      46
ki1113344-GMS-Nepal         NEPAL                          0                   0      524     602
ki1113344-GMS-Nepal         NEPAL                          0                   1        4     602
ki1113344-GMS-Nepal         NEPAL                          1                   0       73     602
ki1113344-GMS-Nepal         NEPAL                          1                   1        1     602
ki1126311-ZVITAMBO          ZIMBABWE                       0                   0    11900   13826
ki1126311-ZVITAMBO          ZIMBABWE                       0                   1      839   13826
ki1126311-ZVITAMBO          ZIMBABWE                       1                   0      892   13826
ki1126311-ZVITAMBO          ZIMBABWE                       1                   1      195   13826
ki1148112-iLiNS-DOSE        MALAWI                         0                   0     1112    1155
ki1148112-iLiNS-DOSE        MALAWI                         0                   1       28    1155
ki1148112-iLiNS-DOSE        MALAWI                         1                   0       13    1155
ki1148112-iLiNS-DOSE        MALAWI                         1                   1        2    1155
ki1148112-iLiNS-DYAD-M      MALAWI                         0                   0     1057    1130
ki1148112-iLiNS-DYAD-M      MALAWI                         0                   1       31    1130
ki1148112-iLiNS-DYAD-M      MALAWI                         1                   0       39    1130
ki1148112-iLiNS-DYAD-M      MALAWI                         1                   1        3    1130
kiGH5241-JiVitA-3           BANGLADESH                     0                   0    24451   26813
kiGH5241-JiVitA-3           BANGLADESH                     0                   1      433   26813
kiGH5241-JiVitA-3           BANGLADESH                     1                   0     1814   26813
kiGH5241-JiVitA-3           BANGLADESH                     1                   1      115   26813
kiGH5241-JiVitA-4           BANGLADESH                     0                   0     4516    5088
kiGH5241-JiVitA-4           BANGLADESH                     0                   1       26    5088
kiGH5241-JiVitA-4           BANGLADESH                     1                   0      538    5088
kiGH5241-JiVitA-4           BANGLADESH                     1                   1        8    5088


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
* studyid: ki1101329-Keneba, country: GAMBIA
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




# Results Detail

## Results Plots
![](/tmp/7e7e91d8-f2a6-4f28-b8d6-b00f3254c7d9/0c273177-7af7-4c15-957f-f18dc79a6f68/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7e7e91d8-f2a6-4f28-b8d6-b00f3254c7d9/0c273177-7af7-4c15-957f-f18dc79a6f68/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7e7e91d8-f2a6-4f28-b8d6-b00f3254c7d9/0c273177-7af7-4c15-957f-f18dc79a6f68/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7e7e91d8-f2a6-4f28-b8d6-b00f3254c7d9/0c273177-7af7-4c15-957f-f18dc79a6f68/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0145612   0.0099029   0.0192195
ki1000304-VITAMIN-A       INDIA        1                    NA                0.0420354   0.0235328   0.0605380
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0177910   0.0099149   0.0256671
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0769231   0.0300368   0.1238094
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0658607   0.0615533   0.0701681
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.1793928   0.1565831   0.2022025
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0174007   0.0158126   0.0189889
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0596164   0.0484204   0.0708123
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0057244   0.0032618   0.0081869
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0146520   0.0025624   0.0267416


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304-VITAMIN-A       INDIA        NA                   NA                0.0187103   0.0138551   0.0235655
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0239203   0.0131430   0.0346975
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0747866   0.0704018   0.0791714
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0204378   0.0187099   0.0221658
kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0066824   0.0041425   0.0092222


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate   ci_lower   ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ---------  ---------
ki1000304-VITAMIN-A       INDIA        0                    0                 1.000000   1.000000   1.000000
ki1000304-VITAMIN-A       INDIA        1                    0                 2.886809   1.675325   4.974360
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000   1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 4.323718   2.496408   7.488575
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.000000   1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 2.723820   2.360921   3.142501
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.000000   1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 3.426083   2.795746   4.198538
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.000000   1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 2.559594   1.005182   6.517749


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.0041491    0.0012462   0.0070521
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0061293    0.0006985   0.0115601
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0089259    0.0070312   0.0108206
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0030371    0.0022264   0.0038478
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0009580   -0.0003768   0.0022929


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304-VITAMIN-A       INDIA        0                    NA                0.2217561    0.0630599   0.3535727
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.2562392    0.0707242   0.4047191
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.1193514    0.0945152   0.1435064
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1486021    0.1113027   0.1843361
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.1433678   -0.0687214   0.3133676
