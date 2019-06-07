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

**Outcome Variable:** ever_wasted

## Predictor Variables

**Intervention Variable:** hdlvry

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid                    country                        hdlvry    ever_wasted   n_cell      n
----------------------------  -------------------------  -----------------------------  -------  ------------  -------  -----
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                   0      196    365
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                   1      161    365
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        5    365
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        3    365
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                   0      190    409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                   1      211    409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                   0        6    409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                   1        2    409
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                   0      143    375
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                   1      109    375
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                   0       68    375
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                   1       55    375
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                   0       57    395
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                   1       20    395
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                   0      198    395
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                   1      120    395
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                   0       17    100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                   1        6    100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0       43    100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1       34    100
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                   0      427    687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                   1       86    687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                   0      138    687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                   1       36    687
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                   0      513    754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                   1       74    754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                   0      133    754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                   1       34    754
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0     1776   2262
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1      446   2262
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0       33   2262
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        7   2262
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                   0       75    550
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                   1       61    550
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                   0      184    550
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                   1      230    550
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                   0     2507   4892
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                   1      517   4892
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                   0     1417   4892
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                   1      451   4892
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                   0       14    160
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                   1        4    160
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                   0      104    160
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                   1       38    160
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                   0      217   1173
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                   1       77   1173
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                   0      629   1173
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                   1      250   1173
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                   0      234    347
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                   1      106    347
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        5    347
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        2    347
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                   0      251    390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                   1      131    390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                   0        6    390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                   1        2    390
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                   0      198    371
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                   1       50    371
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                   0      102    371
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                   1       21    371
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                   0       68    388
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                   1        9    388
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                   0      257    388
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                   1       54    388
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                   0       22     89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                   1        0     89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                   0       67     89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                   1        0     89
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                   0      482    683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                   1       27    683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                   0      165    683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                   1        9    683
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                   0      571    749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                   1       13    749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                   0      158    749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                   1        7    749
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0     2023   2254
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1      191   2254
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0       36   2254
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        4   2254
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                   0      111    529
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                   1       17    529
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                   0      343    529
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                   1       58    529
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                   0     2504   4414
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                   1      229   4414
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                   0     1527   4414
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                   1      154   4414
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                   0       14    157
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                   1        4    157
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                   0      123    157
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                   1       16    157
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                   0      274   1122
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                   1        9   1122
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                   0      818   1122
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                   1       21   1122
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                   0      268    370
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                   1       94    370
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0        5    370
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        3    370
6-24 months                   ki1000108-IRC              INDIA                          0                   0      276    410
6-24 months                   ki1000108-IRC              INDIA                          0                   1      126    410
6-24 months                   ki1000108-IRC              INDIA                          1                   0        7    410
6-24 months                   ki1000108-IRC              INDIA                          1                   1        1    410
6-24 months                   ki1000109-EE               PAKISTAN                       0                   0      171    373
6-24 months                   ki1000109-EE               PAKISTAN                       0                   1       80    373
6-24 months                   ki1000109-EE               PAKISTAN                       1                   0       79    373
6-24 months                   ki1000109-EE               PAKISTAN                       1                   1       43    373
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                   0       61    374
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                   1       15    374
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                   0      213    374
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                   1       85    374
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                   0       19    103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                   1        6    103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                   0       44    103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                   1       34    103
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                   0      390    615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                   1       69    615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                   0      126    615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                   1       30    615
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                   0      502    730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                   1       65    730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                   0      132    730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                   1       31    730
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0     1575   1912
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1      306   1912
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0       27   1912
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        4   1912
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                   0       79    549
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                   1       57    549
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                   0      211    549
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                   1      202    549
6-24 months                   ki1135781-COHORTS          INDIA                          0                   0     2609   4742
6-24 months                   ki1135781-COHORTS          INDIA                          0                   1      315   4742
6-24 months                   ki1135781-COHORTS          INDIA                          1                   0     1504   4742
6-24 months                   ki1135781-COHORTS          INDIA                          1                   1      314   4742
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                   0       17    159
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                   1        0    159
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                   0      114    159
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                   1       28    159
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                   0      225   1180
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                   1       71   1180
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                   0      645   1180
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                   1      239   1180


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

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
![](/tmp/0577ba13-bb04-44cd-88ba-03200f93a275/6fe7c777-47f6-4910-b6b1-e7a803504ffe/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0577ba13-bb04-44cd-88ba-03200f93a275/6fe7c777-47f6-4910-b6b1-e7a803504ffe/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0577ba13-bb04-44cd-88ba-03200f93a275/6fe7c777-47f6-4910-b6b1-e7a803504ffe/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0577ba13-bb04-44cd-88ba-03200f93a275/6fe7c777-47f6-4910-b6b1-e7a803504ffe/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    NA                0.4325397   0.3712894   0.4937900
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                    NA                0.4471545   0.3591700   0.5351389
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.2597403   0.1702849   0.3491956
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3773585   0.2881061   0.4666109
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.2608696   0.0805101   0.4412290
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.4415584   0.3300859   0.5530310
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1676413   0.1352930   0.1999896
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2068966   0.1466640   0.2671291
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1260647   0.0991956   0.1529339
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2035928   0.1424808   0.2647049
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2007201   0.1839373   0.2175028
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1750000   0.0916918   0.2583082
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4485294   0.3648670   0.5321918
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5555556   0.5076467   0.6034644
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    NA                0.1709656   0.1575459   0.1843853
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                    NA                0.2414347   0.2220258   0.2608436
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2619048   0.1969679   0.3268416
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2844141   0.2492925   0.3195357
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    NA                0.2016129   0.1516124   0.2516134
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                    NA                0.1707317   0.1041452   0.2373182
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1168831   0.0558102   0.1779561
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.1736334   0.1056138   0.2416531
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0530452   0.0335604   0.0725299
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0517241   0.0187931   0.0846552
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0222603   0.0102871   0.0342334
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0424242   0.0116498   0.0731987
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1328125   0.0739647   0.1916603
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1446384   0.1101793   0.1790975
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    NA                0.0837907   0.0734017   0.0941797
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                    NA                0.0916121   0.0778202   0.1054041
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.0318021   0.0099397   0.0536646
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.0250298   0.0130886   0.0369710
6-24 months                   ki1000109-EE               PAKISTAN                       0                    NA                0.3187251   0.2610002   0.3764500
6-24 months                   ki1000109-EE               PAKISTAN                       1                    NA                0.3524590   0.2675724   0.4373456
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.1973684   0.1321634   0.2625735
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.2852349   0.2317288   0.3387410
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.2400000   0.0717678   0.4082322
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.4358974   0.3253139   0.5464810
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1503268   0.1176048   0.1830488
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1923077   0.1304120   0.2542034
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1146384   0.0883975   0.1408794
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1901840   0.1298959   0.2504722
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4191177   0.3361160   0.5021193
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4891041   0.4408498   0.5373584
6-24 months                   ki1135781-COHORTS          INDIA                          0                    NA                0.1077291   0.0964903   0.1189679
6-24 months                   ki1135781-COHORTS          INDIA                          1                    NA                0.1727173   0.1553396   0.1900950
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2398649   0.1751487   0.3045810
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2703620   0.2368172   0.3039068


### Parameter: E(Y)


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       NA                   NA                0.4373333   0.3870592   0.4876074
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3544304   0.2614867   0.4473741
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4000000   0.3034980   0.4965020
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2002653   0.1837694   0.2167611
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5290909   0.4873371   0.5708447
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          NA                   NA                0.1978741   0.1867089   0.2090392
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2787724   0.2485492   0.3089955
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       NA                   NA                0.1913747   0.1512914   0.2314579
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1623711   0.0945196   0.2302227
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0527086   0.0359384   0.0694789
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0267023   0.0151493   0.0382553
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1417769   0.1120237   0.1715302
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          NA                   NA                0.0867694   0.0784641   0.0950747
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0267380   0.0164185   0.0370574
6-24 months                   ki1000109-EE               PAKISTAN                       NA                   NA                0.3297587   0.2819849   0.3775326
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2673797   0.2109177   0.3238416
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3883495   0.2937670   0.4829321
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4717668   0.4299709   0.5135628
6-24 months                   ki1135781-COHORTS          INDIA                          NA                   NA                0.1326445   0.1229894   0.1422995
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2627119   0.2334227   0.2920010


### Parameter: RR


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                    0                 1.0337883   0.8112387   1.317391
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.4528302   1.0010320   2.108540
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.6926407   0.8107974   3.533598
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.2341620   0.8703371   1.750076
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.6149862   1.1176011   2.333731
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8718610   0.5376976   1.413697
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.2386157   1.0085346   1.521186
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                    0                 1.4121828   1.2621053   1.580106
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.0859448   0.8194195   1.439160
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                    0                 0.8468293   0.5334253   1.344368
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.4855305   1.0496639   2.102388
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.9750958   0.4675489   2.033609
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.9058275   0.7724891   4.701916
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.0890421   0.6585074   1.801062
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                    0                 1.0933448   0.8996137   1.328796
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 0.7870481   0.3355969   1.845800
6-24 months                   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1000109-EE               PAKISTAN                       1                    0                 1.1058402   0.8181293   1.494730
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.4451902   0.9765840   2.138653
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.8162393   0.8618322   3.827573
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.2792642   0.8673888   1.886717
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.6589901   1.1221029   2.452759
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.1669853   0.9353548   1.455977
6-24 months                   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS          INDIA                          1                    0                 1.6032549   1.3869388   1.853309
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.1271429   0.8345815   1.522261


### Parameter: PAR


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    NA                 0.0047937   -0.0303764   0.0399637
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0946901   -0.0173233   0.2067036
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.1391304   -0.0248164   0.3030773
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0099424   -0.0074210   0.0273057
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0171713    0.0022077   0.0321350
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0004548   -0.0025840   0.0016743
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0805615    0.0078892   0.1532337
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    NA                 0.0269085    0.0178473   0.0359697
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0168676   -0.0395336   0.0732688
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    NA                -0.0102382   -0.0378848   0.0174083
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0454880   -0.0001435   0.0911195
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0003365   -0.0100846   0.0094115
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0044420   -0.0028570   0.0117410
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0089644   -0.0427311   0.0606600
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    NA                 0.0029787   -0.0035981   0.0095555
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.0050642   -0.0240161   0.0138878
6-24 months                   ki1000109-EE               PAKISTAN                       0                    NA                 0.0110336   -0.0225808   0.0446480
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0700113   -0.0187445   0.1587670
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.1483495   -0.0049771   0.3016761
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0106488   -0.0071692   0.0284669
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0168684    0.0020103   0.0317265
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0526492   -0.0196205   0.1249189
6-24 months                   ki1135781-COHORTS          INDIA                          0                    NA                 0.0249153    0.0169303   0.0329003
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0228470   -0.0326064   0.0783004


### Parameter: PAF


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    NA                 0.0109611   -0.0728239   0.0882027
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.2671614   -0.0695164   0.4978549
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.3478261   -0.2205462   0.6515242
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0559870   -0.0467580   0.1486470
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1198814    0.0106385   0.2170619
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0022711   -0.0129474   0.0082927
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.1522640    0.0025991   0.2794709
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    NA                 0.1359879    0.0893503   0.1802370
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0605068   -0.1656732   0.2428002
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    NA                -0.0534984   -0.2080851   0.0813074
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.2801484   -0.0152697   0.4896073
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0063851   -0.2094002   0.1625511
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1663527   -0.1444437   0.3927462
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0632292   -0.3822911   0.3651557
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    NA                 0.0343285   -0.0444590   0.1071728
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                -0.1893993   -1.1610982   0.3453927
6-24 months                   ki1000109-EE               PAKISTAN                       0                    NA                 0.0334597   -0.0740399   0.1301997
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.2618421   -0.1039997   0.5064518
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.3820000   -0.1662167   0.6725103
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0661517   -0.0508966   0.1701632
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1282701    0.0097770   0.2325840
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.1116000   -0.0558123   0.2524670
6-24 months                   ki1135781-COHORTS          INDIA                          0                    NA                 0.1878353    0.1266177   0.2447621
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0869660   -0.1517466   0.2762027
