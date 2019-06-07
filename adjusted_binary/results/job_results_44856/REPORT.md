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

**Intervention Variable:** ever_underweight06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        ever_underweight06    dead   n_cell       n
-------------------------  -----------------------------  -------------------  -----  -------  ------
ki0047075b-MAL-ED          BANGLADESH                     0                        0      182     263
ki0047075b-MAL-ED          BANGLADESH                     0                        1        1     263
ki0047075b-MAL-ED          BANGLADESH                     1                        0       79     263
ki0047075b-MAL-ED          BANGLADESH                     1                        1        1     263
ki0047075b-MAL-ED          INDIA                          0                        0      155     251
ki0047075b-MAL-ED          INDIA                          0                        1        1     251
ki0047075b-MAL-ED          INDIA                          1                        0       94     251
ki0047075b-MAL-ED          INDIA                          1                        1        1     251
ki0047075b-MAL-ED          PERU                           0                        0      258     302
ki0047075b-MAL-ED          PERU                           0                        1        2     302
ki0047075b-MAL-ED          PERU                           1                        0       42     302
ki0047075b-MAL-ED          PERU                           1                        1        0     302
ki0047075b-MAL-ED          SOUTH AFRICA                   0                        0      268     312
ki0047075b-MAL-ED          SOUTH AFRICA                   0                        1        0     312
ki0047075b-MAL-ED          SOUTH AFRICA                   1                        0       44     312
ki0047075b-MAL-ED          SOUTH AFRICA                   1                        1        0     312
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        0      218     261
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                        1        2     261
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        0       40     261
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                        1        1     261
ki1000304b-SAS-CompFeed    INDIA                          0                        0      896    1500
ki1000304b-SAS-CompFeed    INDIA                          0                        1       16    1500
ki1000304b-SAS-CompFeed    INDIA                          1                        0      568    1500
ki1000304b-SAS-CompFeed    INDIA                          1                        1       20    1500
ki1000304b-SAS-FoodSuppl   INDIA                          0                        0      211     401
ki1000304b-SAS-FoodSuppl   INDIA                          0                        1        2     401
ki1000304b-SAS-FoodSuppl   INDIA                          1                        0      186     401
ki1000304b-SAS-FoodSuppl   INDIA                          1                        1        2     401
ki1017093b-PROVIDE         BANGLADESH                     0                        0      480     699
ki1017093b-PROVIDE         BANGLADESH                     0                        1        3     699
ki1017093b-PROVIDE         BANGLADESH                     1                        0      215     699
ki1017093b-PROVIDE         BANGLADESH                     1                        1        1     699
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                        0     2164    2395
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                        1        1    2395
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                        0      230    2395
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                        1        0    2395
ki1101329-Keneba           GAMBIA                         0                        0     1913    2404
ki1101329-Keneba           GAMBIA                         0                        1       33    2404
ki1101329-Keneba           GAMBIA                         1                        0      435    2404
ki1101329-Keneba           GAMBIA                         1                        1       23    2404
ki1113344-GMS-Nepal        NEPAL                          0                        0      382     600
ki1113344-GMS-Nepal        NEPAL                          0                        1        2     600
ki1113344-GMS-Nepal        NEPAL                          1                        0      213     600
ki1113344-GMS-Nepal        NEPAL                          1                        1        3     600
ki1126311-ZVITAMBO         ZIMBABWE                       0                        0    11262   13813
ki1126311-ZVITAMBO         ZIMBABWE                       0                        1      661   13813
ki1126311-ZVITAMBO         ZIMBABWE                       1                        0     1524   13813
ki1126311-ZVITAMBO         ZIMBABWE                       1                        1      366   13813
kiGH5241-JiVitA-3          BANGLADESH                     0                        0    15734   26675
kiGH5241-JiVitA-3          BANGLADESH                     0                        1      240   26675
kiGH5241-JiVitA-3          BANGLADESH                     1                        0    10413   26675
kiGH5241-JiVitA-3          BANGLADESH                     1                        1      288   26675
kiGH5241-JiVitA-4          BANGLADESH                     0                        0     3658    5076
kiGH5241-JiVitA-4          BANGLADESH                     0                        1       15    5076
kiGH5241-JiVitA-4          BANGLADESH                     1                        0     1385    5076
kiGH5241-JiVitA-4          BANGLADESH                     1                        1       18    5076


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000304b-SAS-CompFeed, country: INDIA
* studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1101329-Keneba, country: GAMBIA
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
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
![](/tmp/6feae284-589f-44fe-a8b9-77b045e356f2/ede335a9-0938-42fc-95f0-469624e6087d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6feae284-589f-44fe-a8b9-77b045e356f2/ede335a9-0938-42fc-95f0-469624e6087d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6feae284-589f-44fe-a8b9-77b045e356f2/ede335a9-0938-42fc-95f0-469624e6087d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6feae284-589f-44fe-a8b9-77b045e356f2/ede335a9-0938-42fc-95f0-469624e6087d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0175439   0.0100783   0.0250094
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0340136   0.0145778   0.0534494
ki1101329-Keneba          GAMBIA       0                    NA                0.0169579   0.0112202   0.0226956
ki1101329-Keneba          GAMBIA       1                    NA                0.0502183   0.0302129   0.0702238
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0554391   0.0513314   0.0595467
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.1936508   0.1758350   0.2114665
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0150244   0.0130949   0.0169539
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0269134   0.0238627   0.0299640
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0040839   0.0015843   0.0065834
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0128297   0.0063598   0.0192995


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0240000   0.0131656   0.0348344
ki1101329-Keneba          GAMBIA       NA                   NA                0.0232945   0.0172636   0.0293254
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0743502   0.0699752   0.0787253
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0197938   0.0180985   0.0214891
kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0065012   0.0039868   0.0090155


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate   ci_lower   ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ---------  ---------
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000   1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 1.938775   1.155881   3.251936
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.000000   1.000000
ki1101329-Keneba          GAMBIA       1                    0                 2.961360   1.755902   4.994388
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.000000   1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 3.493038   3.103859   3.931015
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.000000   1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 1.791309   1.509870   2.125209
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.000000   1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 3.141554   1.407881   7.010082


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0064561   -0.0004415   0.0133538
ki1101329-Keneba          GAMBIA       0                    NA                0.0063366    0.0023374   0.0103359
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0189112    0.0162871   0.0215352
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0047694    0.0033245   0.0062143
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0024173    0.0004860   0.0043487


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.2690058   0.0187007   0.4554643
ki1101329-Keneba          GAMBIA       0                    NA                0.2720232   0.0966562   0.4133460
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.2543526   0.2212599   0.2860391
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.2409541   0.1669010   0.3084246
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.3718288   0.0272469   0.5943482
