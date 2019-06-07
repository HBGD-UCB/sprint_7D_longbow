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

**Intervention Variable:** ever_sunderweight06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        ever_sunderweight06    dead   n_cell       n
-------------------------  -----------------------------  --------------------  -----  -------  ------
ki0047075b-MAL-ED          BANGLADESH                     0                         0      247     263
ki0047075b-MAL-ED          BANGLADESH                     0                         1        1     263
ki0047075b-MAL-ED          BANGLADESH                     1                         0       14     263
ki0047075b-MAL-ED          BANGLADESH                     1                         1        1     263
ki0047075b-MAL-ED          INDIA                          0                         0      219     251
ki0047075b-MAL-ED          INDIA                          0                         1        1     251
ki0047075b-MAL-ED          INDIA                          1                         0       30     251
ki0047075b-MAL-ED          INDIA                          1                         1        1     251
ki0047075b-MAL-ED          PERU                           0                         0      293     302
ki0047075b-MAL-ED          PERU                           0                         1        2     302
ki0047075b-MAL-ED          PERU                           1                         0        7     302
ki0047075b-MAL-ED          PERU                           1                         1        0     302
ki0047075b-MAL-ED          SOUTH AFRICA                   0                         0      304     312
ki0047075b-MAL-ED          SOUTH AFRICA                   0                         1        0     312
ki0047075b-MAL-ED          SOUTH AFRICA                   1                         0        8     312
ki0047075b-MAL-ED          SOUTH AFRICA                   1                         1        0     312
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                         0      251     261
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                         1        2     261
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                         0        7     261
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                         1        1     261
ki1000304b-SAS-CompFeed    INDIA                          0                         0     1268    1500
ki1000304b-SAS-CompFeed    INDIA                          0                         1       23    1500
ki1000304b-SAS-CompFeed    INDIA                          1                         0      196    1500
ki1000304b-SAS-CompFeed    INDIA                          1                         1       13    1500
ki1000304b-SAS-FoodSuppl   INDIA                          0                         0      322     401
ki1000304b-SAS-FoodSuppl   INDIA                          0                         1        2     401
ki1000304b-SAS-FoodSuppl   INDIA                          1                         0       75     401
ki1000304b-SAS-FoodSuppl   INDIA                          1                         1        2     401
ki1017093b-PROVIDE         BANGLADESH                     0                         0      652     699
ki1017093b-PROVIDE         BANGLADESH                     0                         1        4     699
ki1017093b-PROVIDE         BANGLADESH                     1                         0       43     699
ki1017093b-PROVIDE         BANGLADESH                     1                         1        0     699
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                         0     2347    2395
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                         1        1    2395
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                         0       47    2395
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                         1        0    2395
ki1101329-Keneba           GAMBIA                         0                         0     2219    2404
ki1101329-Keneba           GAMBIA                         0                         1       42    2404
ki1101329-Keneba           GAMBIA                         1                         0      129    2404
ki1101329-Keneba           GAMBIA                         1                         1       14    2404
ki1113344-GMS-Nepal        NEPAL                          0                         0      531     600
ki1113344-GMS-Nepal        NEPAL                          0                         1        2     600
ki1113344-GMS-Nepal        NEPAL                          1                         0       64     600
ki1113344-GMS-Nepal        NEPAL                          1                         1        3     600
ki1126311-ZVITAMBO         ZIMBABWE                       0                         0    12443   13813
ki1126311-ZVITAMBO         ZIMBABWE                       0                         1      879   13813
ki1126311-ZVITAMBO         ZIMBABWE                       1                         0      343   13813
ki1126311-ZVITAMBO         ZIMBABWE                       1                         1      148   13813
kiGH5241-JiVitA-3          BANGLADESH                     0                         0    23233   26675
kiGH5241-JiVitA-3          BANGLADESH                     0                         1      379   26675
kiGH5241-JiVitA-3          BANGLADESH                     1                         0     2914   26675
kiGH5241-JiVitA-3          BANGLADESH                     1                         1      149   26675
kiGH5241-JiVitA-4          BANGLADESH                     0                         0     4764    5076
kiGH5241-JiVitA-4          BANGLADESH                     0                         1       24    5076
kiGH5241-JiVitA-4          BANGLADESH                     1                         0      279    5076
kiGH5241-JiVitA-4          BANGLADESH                     1                         1        9    5076


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
![](/tmp/26ae93ab-21a5-4769-b1ef-b66de99c4384/a1a1acbc-7749-4eb2-86b2-b900d2720191/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/26ae93ab-21a5-4769-b1ef-b66de99c4384/a1a1acbc-7749-4eb2-86b2-b900d2720191/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/26ae93ab-21a5-4769-b1ef-b66de99c4384/a1a1acbc-7749-4eb2-86b2-b900d2720191/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/26ae93ab-21a5-4769-b1ef-b66de99c4384/a1a1acbc-7749-4eb2-86b2-b900d2720191/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0178156   0.0082875   0.0273438
ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.0622010   0.0289594   0.0954425
ki1101329-Keneba          GAMBIA       0                    NA                0.0185759   0.0130092   0.0241425
ki1101329-Keneba          GAMBIA       1                    NA                0.0979021   0.0491837   0.1466205
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0659811   0.0617654   0.0701968
ki1126311-ZVITAMBO        ZIMBABWE     1                    NA                0.3014257   0.2608356   0.3420157
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0160512   0.0144210   0.0176814
kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.0486451   0.0408781   0.0564121
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0050125   0.0027903   0.0072348
kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0312500   0.0063344   0.0561656


### Parameter: E(Y)


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.0240000   0.0131656   0.0348344
ki1101329-Keneba          GAMBIA       NA                   NA                0.0232945   0.0172636   0.0293254
ki1126311-ZVITAMBO        ZIMBABWE     NA                   NA                0.0743502   0.0699752   0.0787253
kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.0197938   0.0180985   0.0214891
kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0065012   0.0039868   0.0090155


### Parameter: RR


studyid                   country      intervention_level   baseline_level    estimate   ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ---------  ---------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.000000    1.000000
ki1000304b-SAS-CompFeed   INDIA        1                    0                 3.491367   1.974816    6.172546
ki1101329-Keneba          GAMBIA       0                    0                 1.000000   1.000000    1.000000
ki1101329-Keneba          GAMBIA       1                    0                 5.270396   2.948266    9.421496
ki1126311-ZVITAMBO        ZIMBABWE     0                    0                 1.000000   1.000000    1.000000
ki1126311-ZVITAMBO        ZIMBABWE     1                    0                 4.568365   3.935770    5.302637
kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.000000   1.000000    1.000000
kiGH5241-JiVitA-3         BANGLADESH   1                    0                 3.030629   2.504581    3.667166
kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.000000    1.000000
kiGH5241-JiVitA-4         BANGLADESH   1                    0                 6.234375   2.478575   15.681364


### Parameter: PAR


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0061844   0.0015784   0.0107903
ki1101329-Keneba          GAMBIA       0                    NA                0.0047187   0.0017069   0.0077304
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.0083692   0.0067466   0.0099917
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.0037427   0.0028254   0.0046599
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0014887   0.0000502   0.0029271


### Parameter: PAF


studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.2576814   0.0663690   0.4097915
ki1101329-Keneba          GAMBIA       0                    NA                0.2025652   0.0746703   0.3127831
ki1126311-ZVITAMBO        ZIMBABWE     0                    NA                0.1125641   0.0913712   0.1332626
kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.1890820   0.1443111   0.2315105
kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.2289815   0.0068761   0.4014146
