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

**Intervention Variable:** ever_sunderweight024

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        ever_sunderweight024    dead   n_cell       n
-------------------------  -----------------------------  ---------------------  -----  -------  ------
ki0047075b-MAL-ED          BANGLADESH                     0                          0      223     263
ki0047075b-MAL-ED          BANGLADESH                     0                          1        1     263
ki0047075b-MAL-ED          BANGLADESH                     1                          0       38     263
ki0047075b-MAL-ED          BANGLADESH                     1                          1        1     263
ki0047075b-MAL-ED          INDIA                          0                          0      200     251
ki0047075b-MAL-ED          INDIA                          0                          1        1     251
ki0047075b-MAL-ED          INDIA                          1                          0       49     251
ki0047075b-MAL-ED          INDIA                          1                          1        1     251
ki0047075b-MAL-ED          PERU                           0                          0      288     302
ki0047075b-MAL-ED          PERU                           0                          1        2     302
ki0047075b-MAL-ED          PERU                           1                          0       12     302
ki0047075b-MAL-ED          PERU                           1                          1        0     302
ki0047075b-MAL-ED          SOUTH AFRICA                   0                          0      290     312
ki0047075b-MAL-ED          SOUTH AFRICA                   0                          1        0     312
ki0047075b-MAL-ED          SOUTH AFRICA                   1                          0       22     312
ki0047075b-MAL-ED          SOUTH AFRICA                   1                          1        0     312
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                          0      224     261
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                          1        2     261
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                          0       34     261
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                          1        1     261
ki1000304b-SAS-CompFeed    INDIA                          0                          0     1119    1512
ki1000304b-SAS-CompFeed    INDIA                          0                          1       20    1512
ki1000304b-SAS-CompFeed    INDIA                          1                          0      356    1512
ki1000304b-SAS-CompFeed    INDIA                          1                          1       17    1512
ki1000304b-SAS-FoodSuppl   INDIA                          0                          0      231     414
ki1000304b-SAS-FoodSuppl   INDIA                          0                          1        2     414
ki1000304b-SAS-FoodSuppl   INDIA                          1                          0      179     414
ki1000304b-SAS-FoodSuppl   INDIA                          1                          1        2     414
ki1017093b-PROVIDE         BANGLADESH                     0                          0      620     699
ki1017093b-PROVIDE         BANGLADESH                     0                          1        4     699
ki1017093b-PROVIDE         BANGLADESH                     1                          0       75     699
ki1017093b-PROVIDE         BANGLADESH                     1                          1        0     699
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                          0     2263    2395
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                          1        1    2395
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                          0      131    2395
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                          1        0    2395
ki1101329-Keneba           GAMBIA                         0                          0     2380    2880
ki1101329-Keneba           GAMBIA                         0                          1       42    2880
ki1101329-Keneba           GAMBIA                         1                          0      439    2880
ki1101329-Keneba           GAMBIA                         1                          1       19    2880
ki1113344-GMS-Nepal        NEPAL                          0                          0      392     602
ki1113344-GMS-Nepal        NEPAL                          0                          1        2     602
ki1113344-GMS-Nepal        NEPAL                          1                          0      205     602
ki1113344-GMS-Nepal        NEPAL                          1                          1        3     602
ki1126311-ZVITAMBO         ZIMBABWE                       0                          0    12152   13908
ki1126311-ZVITAMBO         ZIMBABWE                       0                          1      800   13908
ki1126311-ZVITAMBO         ZIMBABWE                       1                          0      723   13908
ki1126311-ZVITAMBO         ZIMBABWE                       1                          1      233   13908
kiGH5241-JiVitA-3          BANGLADESH                     0                          0    22371   26821
kiGH5241-JiVitA-3          BANGLADESH                     0                          1      370   26821
kiGH5241-JiVitA-3          BANGLADESH                     1                          0     3917   26821
kiGH5241-JiVitA-3          BANGLADESH                     1                          1      163   26821
kiGH5241-JiVitA-4          BANGLADESH                     0                          0     4604    5429
kiGH5241-JiVitA-4          BANGLADESH                     0                          1       27    5429
kiGH5241-JiVitA-4          BANGLADESH                     1                          0      785    5429
kiGH5241-JiVitA-4          BANGLADESH                     1                          1       13    5429


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
![](/tmp/f82e9981-4838-4722-9a7b-582ffa91fb13/8227cf5f-7a49-48a7-875e-3efea1dc634f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f82e9981-4838-4722-9a7b-582ffa91fb13/8227cf5f-7a49-48a7-875e-3efea1dc634f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f82e9981-4838-4722-9a7b-582ffa91fb13/8227cf5f-7a49-48a7-875e-3efea1dc634f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f82e9981-4838-4722-9a7b-582ffa91fb13/8227cf5f-7a49-48a7-875e-3efea1dc634f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0175593   0.0087313   0.0263872
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0455764   0.0234188   0.0677340
ki1101329-Keneba          GAMBIA       0                    NA                0.0173410   0.0121414   0.0225407
ki1101329-Keneba          GAMBIA       1                    NA                0.0414847   0.0232191   0.0597503
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0617665   0.0576205   0.0659125
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.2437238   0.2165079   0.2709398
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0162702   0.0145902   0.0179502
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0399510   0.0338018   0.0461002
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0058303   0.0035331   0.0081274
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0162907   0.0067447   0.0258368


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0244709   0.0133812   0.0355606
ki1101329-Keneba          GAMBIA       NA                   NA                0.0211806   0.0159210   0.0264401
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0742738   0.0699158   0.0786318
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0198725   0.0181763   0.0215687
kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0073678   0.0049728   0.0097628


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate   ci_lower   ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ---------  ---------
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000   1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 2.595576   1.734279   3.884621
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.000000   1.000000
ki1101329-Keneba          GAMBIA       1                    0                 2.392285   1.404313   4.075323
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.000000   1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 3.945889   3.463867   4.494988
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.000000   1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 2.455474   2.035893   2.961527
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.000000   1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 2.794161   1.371794   5.691336


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0069116   0.0024833   0.0113400
ki1101329-Keneba          GAMBIA       0                    NA                0.0038395   0.0008022   0.0068768
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0125073   0.0104661   0.0145484
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0036023   0.0026246   0.0045800
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0015376   0.0000888   0.0029863


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.2824431   0.1320854   0.4067528
ki1101329-Keneba          GAMBIA       0                    NA                0.1812755   0.0328359   0.3069326
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.1683942   0.1420900   0.1938919
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1812715   0.1330443   0.2268158
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.2086860   0.0029919   0.3719431
