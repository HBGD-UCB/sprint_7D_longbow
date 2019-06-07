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

**Intervention Variable:** ever_underweight024

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        ever_underweight024    dead   n_cell       n
-------------------------  -----------------------------  --------------------  -----  -------  ------
ki0047075b-MAL-ED          BANGLADESH                     0                         0      126     263
ki0047075b-MAL-ED          BANGLADESH                     0                         1        1     263
ki0047075b-MAL-ED          BANGLADESH                     1                         0      135     263
ki0047075b-MAL-ED          BANGLADESH                     1                         1        1     263
ki0047075b-MAL-ED          INDIA                          0                         0      105     251
ki0047075b-MAL-ED          INDIA                          0                         1        1     251
ki0047075b-MAL-ED          INDIA                          1                         0      144     251
ki0047075b-MAL-ED          INDIA                          1                         1        1     251
ki0047075b-MAL-ED          PERU                           0                         0      236     302
ki0047075b-MAL-ED          PERU                           0                         1        2     302
ki0047075b-MAL-ED          PERU                           1                         0       64     302
ki0047075b-MAL-ED          PERU                           1                         1        0     302
ki0047075b-MAL-ED          SOUTH AFRICA                   0                         0      228     312
ki0047075b-MAL-ED          SOUTH AFRICA                   0                         1        0     312
ki0047075b-MAL-ED          SOUTH AFRICA                   1                         0       84     312
ki0047075b-MAL-ED          SOUTH AFRICA                   1                         1        0     312
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                         0      146     261
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                         1        2     261
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                         0      112     261
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                         1        1     261
ki1000304b-SAS-CompFeed    INDIA                          0                         0      611    1512
ki1000304b-SAS-CompFeed    INDIA                          0                         1       14    1512
ki1000304b-SAS-CompFeed    INDIA                          1                         0      864    1512
ki1000304b-SAS-CompFeed    INDIA                          1                         1       23    1512
ki1000304b-SAS-FoodSuppl   INDIA                          0                         0       74     414
ki1000304b-SAS-FoodSuppl   INDIA                          0                         1        2     414
ki1000304b-SAS-FoodSuppl   INDIA                          1                         0      336     414
ki1000304b-SAS-FoodSuppl   INDIA                          1                         1        2     414
ki1017093b-PROVIDE         BANGLADESH                     0                         0      391     699
ki1017093b-PROVIDE         BANGLADESH                     0                         1        3     699
ki1017093b-PROVIDE         BANGLADESH                     1                         0      304     699
ki1017093b-PROVIDE         BANGLADESH                     1                         1        1     699
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                         0     1886    2395
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                         1        1    2395
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                         0      508    2395
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                         1        0    2395
ki1101329-Keneba           GAMBIA                         0                         0     1629    2880
ki1101329-Keneba           GAMBIA                         0                         1       29    2880
ki1101329-Keneba           GAMBIA                         1                         0     1190    2880
ki1101329-Keneba           GAMBIA                         1                         1       32    2880
ki1113344-GMS-Nepal        NEPAL                          0                         0      180     602
ki1113344-GMS-Nepal        NEPAL                          0                         1        2     602
ki1113344-GMS-Nepal        NEPAL                          1                         0      417     602
ki1113344-GMS-Nepal        NEPAL                          1                         1        3     602
ki1126311-ZVITAMBO         ZIMBABWE                       0                         0    10288   13908
ki1126311-ZVITAMBO         ZIMBABWE                       0                         1      575   13908
ki1126311-ZVITAMBO         ZIMBABWE                       1                         0     2587   13908
ki1126311-ZVITAMBO         ZIMBABWE                       1                         1      458   13908
kiGH5241-JiVitA-3          BANGLADESH                     0                         0    13496   26821
kiGH5241-JiVitA-3          BANGLADESH                     0                         1      229   26821
kiGH5241-JiVitA-3          BANGLADESH                     1                         0    12792   26821
kiGH5241-JiVitA-3          BANGLADESH                     1                         1      304   26821
kiGH5241-JiVitA-4          BANGLADESH                     0                         0     2660    5429
kiGH5241-JiVitA-4          BANGLADESH                     0                         1       11    5429
kiGH5241-JiVitA-4          BANGLADESH                     1                         0     2729    5429
kiGH5241-JiVitA-4          BANGLADESH                     1                         1       29    5429


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
![](/tmp/22a90da4-ca40-4f21-8c60-88fbd9bb4ee7/d9a5aab4-3ead-44d3-bda1-6108431cf38f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/22a90da4-ca40-4f21-8c60-88fbd9bb4ee7/d9a5aab4-3ead-44d3-bda1-6108431cf38f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/22a90da4-ca40-4f21-8c60-88fbd9bb4ee7/d9a5aab4-3ead-44d3-bda1-6108431cf38f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/22a90da4-ca40-4f21-8c60-88fbd9bb4ee7/d9a5aab4-3ead-44d3-bda1-6108431cf38f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0224000   0.0127024   0.0320976
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0259301   0.0093153   0.0425449
ki1101329-Keneba          GAMBIA       0                    NA                0.0174910   0.0111798   0.0238021
ki1101329-Keneba          GAMBIA       1                    NA                0.0261866   0.0172316   0.0351416
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0529320   0.0487214   0.0571425
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.1504105   0.1377131   0.1631079
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0166849   0.0144891   0.0188807
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0232132   0.0205941   0.0258323
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0041183   0.0014150   0.0068216
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0105149   0.0065781   0.0144517


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0244709   0.0133812   0.0355606
ki1101329-Keneba          GAMBIA       NA                   NA                0.0211806   0.0159210   0.0264401
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0742738   0.0699158   0.0786318
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0198725   0.0181763   0.0215687
kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0073678   0.0049728   0.0097628


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000   1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 1.157594   0.5630142   2.380088
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.0000000   1.000000
ki1101329-Keneba          GAMBIA       1                    0                 1.497150   0.9106802   2.461301
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.0000000   1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 2.841582   2.5303793   3.191057
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 1.391271   1.1686872   1.656247
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 2.553201   1.1951732   5.454300


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0020709   -0.0085310   0.0126728
ki1101329-Keneba          GAMBIA       0                    NA                0.0036896   -0.0009615   0.0083407
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0213418    0.0183374   0.0243463
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0031876    0.0015108   0.0048645
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0032495    0.0008129   0.0056862


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0846270   -0.4346818   0.4159627
ki1101329-Keneba          GAMBIA       0                    NA                0.1741976   -0.0719649   0.3638322
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.2873399    0.2491419   0.3235947
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1604029    0.0727232   0.2397920
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.4410427    0.0313300   0.6774616
