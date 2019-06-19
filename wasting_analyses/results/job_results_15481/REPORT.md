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

**Outcome Variable:** swasted

## Predictor Variables

**Intervention Variable:** parity

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        parity    swasted   n_cell       n
----------  -------------------------  -----------------------------  -------  --------  -------  ------
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               0       39     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          1               1        2     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          2               0       43     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          2               1        1     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+              0       79     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          3+              1        2     166
Birth       ki1101329-Keneba           GAMBIA                         1               0      141    1292
Birth       ki1101329-Keneba           GAMBIA                         1               1        1    1292
Birth       ki1101329-Keneba           GAMBIA                         2               0      133    1292
Birth       ki1101329-Keneba           GAMBIA                         2               1        0    1292
Birth       ki1101329-Keneba           GAMBIA                         3+              0     1008    1292
Birth       ki1101329-Keneba           GAMBIA                         3+              1        9    1292
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               0     5154   12915
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1               1      407   12915
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2               0     3671   12915
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2               1      211   12915
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+              0     3299   12915
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3+              1      173   12915
Birth       ki1135781-COHORTS          GUATEMALA                      1               0       84     756
Birth       ki1135781-COHORTS          GUATEMALA                      1               1       10     756
Birth       ki1135781-COHORTS          GUATEMALA                      2               0      109     756
Birth       ki1135781-COHORTS          GUATEMALA                      2               1        9     756
Birth       ki1135781-COHORTS          GUATEMALA                      3+              0      503     756
Birth       ki1135781-COHORTS          GUATEMALA                      3+              1       41     756
Birth       ki1135781-COHORTS          INDIA                          1               0      599    3855
Birth       ki1135781-COHORTS          INDIA                          1               1       42    3855
Birth       ki1135781-COHORTS          INDIA                          2               0      941    3855
Birth       ki1135781-COHORTS          INDIA                          2               1       41    3855
Birth       ki1135781-COHORTS          INDIA                          3+              0     2138    3855
Birth       ki1135781-COHORTS          INDIA                          3+              1       94    3855
Birth       ki1135781-COHORTS          PHILIPPINES                    1               0      595    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    1               1       45    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    2               0      631    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    2               1       26    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    3+              0     1552    2899
Birth       ki1135781-COHORTS          PHILIPPINES                    3+              1       50    2899
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               0     4515   15692
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1               1       89   15692
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2               0     5455   15692
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2               1       84   15692
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+              0     5468   15692
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+              1       81   15692
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               0      381    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          1               1       11    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          2               0      293    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          2               1        9    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+              0      617    1334
6 months    ki1000304b-SAS-CompFeed    INDIA                          3+              1       23    1334
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               0       72     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1               1        0     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2               0       79     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2               1        5     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+              0      204     373
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3+              1       13     373
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               0      208     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1               1        3     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     2               0      212     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     2               1        0     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+              0      157     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+              1        2     582
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0      674    1994
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        5    1994
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               0      653    1994
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               1        4    1994
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              0      655    1994
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              1        3    1994
6 months    ki1101329-Keneba           GAMBIA                         1               0      192    1623
6 months    ki1101329-Keneba           GAMBIA                         1               1        3    1623
6 months    ki1101329-Keneba           GAMBIA                         2               0      163    1623
6 months    ki1101329-Keneba           GAMBIA                         2               1        1    1623
6 months    ki1101329-Keneba           GAMBIA                         3+              0     1242    1623
6 months    ki1101329-Keneba           GAMBIA                         3+              1       22    1623
6 months    ki1113344-GMS-Nepal        NEPAL                          1               0      153     563
6 months    ki1113344-GMS-Nepal        NEPAL                          1               1        0     563
6 months    ki1113344-GMS-Nepal        NEPAL                          2               0      144     563
6 months    ki1113344-GMS-Nepal        NEPAL                          2               1        5     563
6 months    ki1113344-GMS-Nepal        NEPAL                          3+              0      259     563
6 months    ki1113344-GMS-Nepal        NEPAL                          3+              1        2     563
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               0     3265    8263
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1               1       20    8263
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2               0     2484    8263
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2               1       30    8263
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+              0     2435    8263
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3+              1       29    8263
6 months    ki1135781-COHORTS          GUATEMALA                      1               0      131     963
6 months    ki1135781-COHORTS          GUATEMALA                      1               1        1     963
6 months    ki1135781-COHORTS          GUATEMALA                      2               0      138     963
6 months    ki1135781-COHORTS          GUATEMALA                      2               1        1     963
6 months    ki1135781-COHORTS          GUATEMALA                      3+              0      688     963
6 months    ki1135781-COHORTS          GUATEMALA                      3+              1        4     963
6 months    ki1135781-COHORTS          INDIA                          1               0      722    4285
6 months    ki1135781-COHORTS          INDIA                          1               1       19    4285
6 months    ki1135781-COHORTS          INDIA                          2               0     1073    4285
6 months    ki1135781-COHORTS          INDIA                          2               1       20    4285
6 months    ki1135781-COHORTS          INDIA                          3+              0     2356    4285
6 months    ki1135781-COHORTS          INDIA                          3+              1       95    4285
6 months    ki1135781-COHORTS          PHILIPPINES                    1               0      569    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    1               1        5    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    2               0      605    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    2               1        2    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    3+              0     1497    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    3+              1       28    2706
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               0     6298   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1               1       92   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2               0     5611   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2               1       74   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+              0     4638   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+              1       63   16776
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               0      209     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1               1        2     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     2               0      210     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     2               1        3     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+              0      150     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+              1        4     578
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2               1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+              1        0       6
24 months   ki1101329-Keneba           GAMBIA                         1               0      137    1376
24 months   ki1101329-Keneba           GAMBIA                         1               1        0    1376
24 months   ki1101329-Keneba           GAMBIA                         2               0      137    1376
24 months   ki1101329-Keneba           GAMBIA                         2               1        2    1376
24 months   ki1101329-Keneba           GAMBIA                         3+              0     1080    1376
24 months   ki1101329-Keneba           GAMBIA                         3+              1       20    1376
24 months   ki1113344-GMS-Nepal        NEPAL                          1               0      132     498
24 months   ki1113344-GMS-Nepal        NEPAL                          1               1        4     498
24 months   ki1113344-GMS-Nepal        NEPAL                          2               0      125     498
24 months   ki1113344-GMS-Nepal        NEPAL                          2               1        5     498
24 months   ki1113344-GMS-Nepal        NEPAL                          3+              0      226     498
24 months   ki1113344-GMS-Nepal        NEPAL                          3+              1        6     498
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               0      149     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1               1       11     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2               0      114     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2               1        7     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+              0      129     422
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3+              1       12     422
24 months   ki1135781-COHORTS          GUATEMALA                      1               0      167    1076
24 months   ki1135781-COHORTS          GUATEMALA                      1               1        0    1076
24 months   ki1135781-COHORTS          GUATEMALA                      2               0      151    1076
24 months   ki1135781-COHORTS          GUATEMALA                      2               1        0    1076
24 months   ki1135781-COHORTS          GUATEMALA                      3+              0      754    1076
24 months   ki1135781-COHORTS          GUATEMALA                      3+              1        4    1076
24 months   ki1135781-COHORTS          INDIA                          1               0      558    3354
24 months   ki1135781-COHORTS          INDIA                          1               1        3    3354
24 months   ki1135781-COHORTS          INDIA                          2               0      831    3354
24 months   ki1135781-COHORTS          INDIA                          2               1        6    3354
24 months   ki1135781-COHORTS          INDIA                          3+              0     1929    3354
24 months   ki1135781-COHORTS          INDIA                          3+              1       27    3354
24 months   ki1135781-COHORTS          PHILIPPINES                    1               0      520    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    1               1        3    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    2               0      540    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    2               1        4    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    3+              0     1364    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    3+              1       18    2449
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               0     3045    8595
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1               1      113    8595
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2               0     2786    8595
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2               1      123    8595
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+              0     2431    8595
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+              1       97    8595


The following strata were considered:

* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/9b2581bd-24f6-46c4-9ce0-585dbbef269b/24345784-261e-4e78-9ecd-06c96af0c19e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9b2581bd-24f6-46c4-9ce0-585dbbef269b/24345784-261e-4e78-9ecd-06c96af0c19e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9b2581bd-24f6-46c4-9ce0-585dbbef269b/24345784-261e-4e78-9ecd-06c96af0c19e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9b2581bd-24f6-46c4-9ce0-585dbbef269b/24345784-261e-4e78-9ecd-06c96af0c19e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                0.0731883   0.0663428   0.0800338
Birth       ki1126311-ZVITAMBO        ZIMBABWE      2                    NA                0.0543534   0.0472214   0.0614855
Birth       ki1126311-ZVITAMBO        ZIMBABWE      3+                   NA                0.0498272   0.0425893   0.0570650
Birth       ki1135781-COHORTS         GUATEMALA     1                    NA                0.1063830   0.0440119   0.1687541
Birth       ki1135781-COHORTS         GUATEMALA     2                    NA                0.0762712   0.0283479   0.1241945
Birth       ki1135781-COHORTS         GUATEMALA     3+                   NA                0.0753676   0.0531697   0.0975656
Birth       ki1135781-COHORTS         INDIA         1                    NA                0.0655226   0.0463644   0.0846809
Birth       ki1135781-COHORTS         INDIA         2                    NA                0.0417515   0.0292396   0.0542634
Birth       ki1135781-COHORTS         INDIA         3+                   NA                0.0421147   0.0337811   0.0504483
Birth       ki1135781-COHORTS         PHILIPPINES   1                    NA                0.0703125   0.0505010   0.0901240
Birth       ki1135781-COHORTS         PHILIPPINES   2                    NA                0.0395738   0.0246639   0.0544838
Birth       ki1135781-COHORTS         PHILIPPINES   3+                   NA                0.0312110   0.0226945   0.0397275
Birth       kiGH5241-JiVitA-3         BANGLADESH    1                    NA                0.0193310   0.0146704   0.0239917
Birth       kiGH5241-JiVitA-3         BANGLADESH    2                    NA                0.0151652   0.0115989   0.0187315
Birth       kiGH5241-JiVitA-3         BANGLADESH    3+                   NA                0.0145972   0.0111143   0.0180802
6 months    ki1000304b-SAS-CompFeed   INDIA         1                    NA                0.0280612   0.0140579   0.0420646
6 months    ki1000304b-SAS-CompFeed   INDIA         2                    NA                0.0298013   0.0154373   0.0441654
6 months    ki1000304b-SAS-CompFeed   INDIA         3+                   NA                0.0359375   0.0218263   0.0500487
6 months    ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                0.0060883   0.0034280   0.0087486
6 months    ki1126311-ZVITAMBO        ZIMBABWE      2                    NA                0.0119332   0.0076883   0.0161780
6 months    ki1126311-ZVITAMBO        ZIMBABWE      3+                   NA                0.0117695   0.0075109   0.0160280
6 months    ki1135781-COHORTS         INDIA         1                    NA                0.0256410   0.0142591   0.0370230
6 months    ki1135781-COHORTS         INDIA         2                    NA                0.0182983   0.0103516   0.0262449
6 months    ki1135781-COHORTS         INDIA         3+                   NA                0.0387597   0.0311172   0.0464022
6 months    kiGH5241-JiVitA-3         BANGLADESH    1                    NA                0.0143975   0.0108050   0.0179899
6 months    kiGH5241-JiVitA-3         BANGLADESH    2                    NA                0.0130167   0.0097097   0.0163237
6 months    kiGH5241-JiVitA-3         BANGLADESH    3+                   NA                0.0134014   0.0100039   0.0167989
24 months   ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                0.0687500   0.0294970   0.1080030
24 months   ki1126311-ZVITAMBO        ZIMBABWE      2                    NA                0.0578512   0.0162040   0.0994985
24 months   ki1126311-ZVITAMBO        ZIMBABWE      3+                   NA                0.0851064   0.0389937   0.1312190
24 months   kiGH5241-JiVitA-3         BANGLADESH    1                    NA                0.0357821   0.0291228   0.0424415
24 months   kiGH5241-JiVitA-3         BANGLADESH    2                    NA                0.0422826   0.0339183   0.0506468
24 months   kiGH5241-JiVitA-3         BANGLADESH    3+                   NA                0.0383703   0.0306122   0.0461283


### Parameter: E(Y)


agecat      studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0612466   0.0571111   0.0653822
Birth       ki1135781-COHORTS         GUATEMALA     NA                   NA                0.0793651   0.0600839   0.0986462
Birth       ki1135781-COHORTS         INDIA         NA                   NA                0.0459144   0.0393065   0.0525222
Birth       ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.0417385   0.0344572   0.0490198
Birth       kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0161866   0.0138216   0.0185515
6 months    ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.0322339   0.0235219   0.0409459
6 months    ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0095607   0.0074624   0.0116590
6 months    ki1135781-COHORTS         INDIA         NA                   NA                0.0312719   0.0260599   0.0364838
6 months    kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0136505   0.0115778   0.0157231
24 months   ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0710900   0.0465431   0.0956370
24 months   kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0387435   0.0344172   0.0430697


### Parameter: RR


agecat      studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO        ZIMBABWE      1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE      2                    1                 0.7426521   0.6321253   0.8725044
Birth       ki1126311-ZVITAMBO        ZIMBABWE      3+                   1                 0.6808084   0.5727868   0.8092017
Birth       ki1135781-COHORTS         GUATEMALA     1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS         GUATEMALA     2                    1                 0.7169492   0.3035745   1.6932122
Birth       ki1135781-COHORTS         GUATEMALA     3+                   1                 0.7084559   0.3675932   1.3653943
Birth       ki1135781-COHORTS         INDIA         1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS         INDIA         2                    1                 0.6372078   0.4192258   0.9685325
Birth       ki1135781-COHORTS         INDIA         3+                   1                 0.6427505   0.4515567   0.9148976
Birth       ki1135781-COHORTS         PHILIPPINES   1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS         PHILIPPINES   2                    1                 0.5628277   0.3516036   0.9009436
Birth       ki1135781-COHORTS         PHILIPPINES   3+                   1                 0.4438896   0.2998677   0.6570829
Birth       kiGH5241-JiVitA-3         BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH    2                    1                 0.7845005   0.5610148   1.0970139
Birth       kiGH5241-JiVitA-3         BANGLADESH    3+                   1                 0.7551194   0.5507635   1.0352996
6 months    ki1000304b-SAS-CompFeed   INDIA         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA         2                    1                 1.0620108   0.6052683   1.8634168
6 months    ki1000304b-SAS-CompFeed   INDIA         3+                   1                 1.2806818   0.6228782   2.6331726
6 months    ki1126311-ZVITAMBO        ZIMBABWE      1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE      2                    1                 1.9600236   1.1157406   3.4431771
6 months    ki1126311-ZVITAMBO        ZIMBABWE      3+                   1                 1.9331369   1.0961762   3.4091401
6 months    ki1135781-COHORTS         INDIA         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS         INDIA         2                    1                 0.7136322   0.3835092   1.3279238
6 months    ki1135781-COHORTS         INDIA         3+                   1                 1.5116279   0.9300370   2.4569119
6 months    kiGH5241-JiVitA-3         BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH    2                    1                 0.9040954   0.6405163   1.2761403
6 months    kiGH5241-JiVitA-3         BANGLADESH    3+                   1                 0.9308149   0.6505758   1.3317686
24 months   ki1126311-ZVITAMBO        ZIMBABWE      1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE      2                    1                 0.8414726   0.3357357   2.1090285
24 months   ki1126311-ZVITAMBO        ZIMBABWE      3+                   1                 1.2379110   0.5634392   2.7197677
24 months   kiGH5241-JiVitA-3         BANGLADESH    1                    1                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3         BANGLADESH    2                    1                 1.1816669   0.9032678   1.5458723
24 months   kiGH5241-JiVitA-3         BANGLADESH    3+                   1                 1.0723297   0.8131046   1.4141982


### Parameter: PAR


agecat      studyid                   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                -0.0119417   -0.0168005   -0.0070828
Birth       ki1135781-COHORTS         GUATEMALA     1                    NA                -0.0270179   -0.0844158    0.0303800
Birth       ki1135781-COHORTS         INDIA         1                    NA                -0.0196082   -0.0365977   -0.0026188
Birth       ki1135781-COHORTS         PHILIPPINES   1                    NA                -0.0285740   -0.0450729   -0.0120751
Birth       kiGH5241-JiVitA-3         BANGLADESH    1                    NA                -0.0031444   -0.0067388    0.0004500
6 months    ki1000304b-SAS-CompFeed   INDIA         1                    NA                 0.0041727   -0.0094235    0.0177689
6 months    ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                 0.0034724    0.0010532    0.0058917
6 months    ki1135781-COHORTS         INDIA         1                    NA                 0.0056309   -0.0049478    0.0162095
6 months    kiGH5241-JiVitA-3         BANGLADESH    1                    NA                -0.0007470   -0.0033843    0.0018902
24 months   ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                 0.0023400   -0.0288845    0.0335646
24 months   kiGH5241-JiVitA-3         BANGLADESH    1                    NA                 0.0029613   -0.0025173    0.0084400


### Parameter: PAF


agecat      studyid                   country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                -0.1949767   -0.2760114   -0.1190882
Birth       ki1135781-COHORTS         GUATEMALA     1                    NA                -0.3404255   -1.2928794    0.2163824
Birth       ki1135781-COHORTS         INDIA         1                    NA                -0.4270605   -0.8437543   -0.1045406
Birth       ki1135781-COHORTS         PHILIPPINES   1                    NA                -0.6845945   -1.1103485   -0.3447346
Birth       kiGH5241-JiVitA-3         BANGLADESH    1                    NA                -0.1942611   -0.4340124    0.0054064
6 months    ki1000304b-SAS-CompFeed   INDIA         1                    NA                 0.1294495   -0.4000328    0.4586853
6 months    ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                 0.3631967    0.0712412    0.5633759
6 months    ki1135781-COHORTS         INDIA         1                    NA                 0.1800612   -0.2367681    0.4564061
6 months    kiGH5241-JiVitA-3         BANGLADESH    1                    NA                -0.0547266   -0.2654535    0.1209095
24 months   ki1126311-ZVITAMBO        ZIMBABWE      1                    NA                 0.0329167   -0.5228379    0.3858505
24 months   kiGH5241-JiVitA-3         BANGLADESH    1                    NA                 0.0764339   -0.0757538    0.2070915