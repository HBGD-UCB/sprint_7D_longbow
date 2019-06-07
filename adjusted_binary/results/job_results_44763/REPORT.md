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

**Outcome Variable:** ever_swasted

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

agecat                        studyid                    country                        hdlvry    ever_swasted   n_cell      n
----------------------------  -------------------------  -----------------------------  -------  -------------  -------  -----
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0      303    365
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1       54    365
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0        7    365
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        1    365
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    0      326    409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    1       75    409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    0        6    409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    1        2    409
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    0      220    375
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0                    1       32    375
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                    0      105    375
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       1                    1       18    375
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    0       71    395
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          0                    1        6    395
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                    0      269    395
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          1                    1       49    395
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0       22    100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0                    1        1    100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       65    100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1       12    100
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    0      500    687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                    1       13    687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                    0      168    687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                    1        6    687
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      573    754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1       14    754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      161    754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1        6    754
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     2110   2262
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1      112   2262
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       36   2262
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1        4   2262
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    0      123    550
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          0                    1       13    550
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                    0      319    550
0-24 months (no birth wast)   ki1113344-GMS-Nepal        NEPAL                          1                    1       95    550
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    0     2910   4892
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          0                    1      114   4892
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                    0     1737   4892
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          1                    1      131   4892
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0       16    160
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    1        2    160
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0      133    160
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    1        9    160
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    0      284   1173
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                    1       10   1173
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    0      838   1173
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                    1       41   1173
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0      310    347
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                    1       30    347
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0        7    347
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        0    347
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    0      326    390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    1       56    390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                    0        7    390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                    1        1    390
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    0      235    371
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0                    1       13    371
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                    0      120    371
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       1                    1        3    371
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    0       76    388
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          0                    1        1    388
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                    0      297    388
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          1                    1       14    388
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0       22     89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0                    1        0     89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       67     89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1        0     89
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    0      504    683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                    1        5    683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                    0      173    683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                    1        1    683
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      583    749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                    1        1    749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      165    749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1        0    749
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     2175   2254
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1       39   2254
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       39   2254
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1        1   2254
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    0      125    529
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          0                    1        3    529
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                    0      389    529
0-6 months (no birth wast)    ki1113344-GMS-Nepal        NEPAL                          1                    1       12    529
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    0     2690   4414
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          0                    1       43   4414
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                    0     1644   4414
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          1                    1       37   4414
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    0       17    157
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    1        1    157
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    0      133    157
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    1        6    157
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    0      281   1122
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                    1        2   1122
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    0      837   1122
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                    1        2   1122
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0      333    370
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                    1       29    370
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0        7    370
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1        1    370
6-24 months                   ki1000108-IRC              INDIA                          0                    0      377    410
6-24 months                   ki1000108-IRC              INDIA                          0                    1       25    410
6-24 months                   ki1000108-IRC              INDIA                          1                    0        7    410
6-24 months                   ki1000108-IRC              INDIA                          1                    1        1    410
6-24 months                   ki1000109-EE               PAKISTAN                       0                    0      230    373
6-24 months                   ki1000109-EE               PAKISTAN                       0                    1       21    373
6-24 months                   ki1000109-EE               PAKISTAN                       1                    0      105    373
6-24 months                   ki1000109-EE               PAKISTAN                       1                    1       17    373
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    0       71    374
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          0                    1        5    374
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                    0      260    374
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          1                    1       38    374
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0       23    103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0                    1        2    103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0       62    103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          1                    1       16    103
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    0      451    615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                    1        8    615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                    0      151    615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                    1        5    615
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0      553    730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                    1       14    730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0      157    730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1        6    730
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0     1805   1912
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    1       76   1912
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0       28   1912
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1        3   1912
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    0      122    549
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          0                    1       14    549
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                    0      323    549
6-24 months                   ki1113344-GMS-Nepal        NEPAL                          1                    1       90    549
6-24 months                   ki1135781-COHORTS          INDIA                          0                    0     2841   4742
6-24 months                   ki1135781-COHORTS          INDIA                          0                    1       83   4742
6-24 months                   ki1135781-COHORTS          INDIA                          1                    0     1716   4742
6-24 months                   ki1135781-COHORTS          INDIA                          1                    1      102   4742
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    0       16    159
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    1        1    159
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    0      139    159
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    1        3    159
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    0      286   1180
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                    1       10   1180
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    0      842   1180
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                    1       42   1180


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
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/c34e92d1-8026-42b8-81e8-d53da7235ad2/2e535fc3-9515-4033-8bf0-f166695cb961/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c34e92d1-8026-42b8-81e8-d53da7235ad2/2e535fc3-9515-4033-8bf0-f166695cb961/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c34e92d1-8026-42b8-81e8-d53da7235ad2/2e535fc3-9515-4033-8bf0-f166695cb961/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c34e92d1-8026-42b8-81e8-d53da7235ad2/2e535fc3-9515-4033-8bf0-f166695cb961/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN     0                    NA                0.1269841   0.0858205   0.1681477
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN     1                    NA                0.1463415   0.0837952   0.2088877
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0779221   0.0300223   0.1258219
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.1540881   0.1233429   0.1848332
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.0253411   0.0117315   0.0389507
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.0344828   0.0073514   0.0616141
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH   0                    NA                0.0238501   0.0114986   0.0362016
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH   1                    NA                0.0359281   0.0076826   0.0641737
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.0955882   0.0461277   0.1450488
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.2294686   0.1889271   0.2700101
0-24 months (no birth wast)   ki1135781-COHORTS         INDIA        0                    NA                0.0376984   0.0309092   0.0444876
0-24 months (no birth wast)   ki1135781-COHORTS         INDIA        1                    NA                0.0701285   0.0585470   0.0817099
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0340136   0.0092911   0.0587361
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0466439   0.0322578   0.0610300
0-6 months (no birth wast)    ki1135781-COHORTS         INDIA        0                    NA                0.0157336   0.0110676   0.0203997
0-6 months (no birth wast)    ki1135781-COHORTS         INDIA        1                    NA                0.0220107   0.0149962   0.0290252
6-24 months                   ki1000109-EE              PAKISTAN     0                    NA                0.0836653   0.0493653   0.1179653
6-24 months                   ki1000109-EE              PAKISTAN     1                    NA                0.1393443   0.0778109   0.2008776
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0657895   0.0127067   0.1188722
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.1275168   0.0880027   0.1670308
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.0174292   0.0054476   0.0294108
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.0320513   0.0043890   0.0597136
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH   0                    NA                0.0246914   0.0119094   0.0374733
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH   1                    NA                0.0368098   0.0078837   0.0657359
6-24 months                   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.1029412   0.0518225   0.1540598
6-24 months                   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.2179177   0.1780665   0.2577689
6-24 months                   ki1135781-COHORTS         INDIA        0                    NA                0.0283858   0.0223657   0.0344059
6-24 months                   ki1135781-COHORTS         INDIA        1                    NA                0.0561056   0.0455262   0.0666850
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0337838   0.0121802   0.0553874
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.0475113   0.0335638   0.0614588


### Parameter: E(Y)


agecat                        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN     NA                   NA                0.1333333   0.0988819   0.1677848
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.1392405   0.1077456   0.1707354
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.0276565   0.0153851   0.0399279
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH   NA                   NA                0.0265252   0.0150478   0.0380026
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.1963636   0.1631343   0.2295930
0-24 months (no birth wast)   ki1135781-COHORTS         INDIA        NA                   NA                0.0500818   0.0439691   0.0561945
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0434783   0.0311518   0.0558047
0-6 months (no birth wast)    ki1135781-COHORTS         INDIA        NA                   NA                0.0181242   0.0141883   0.0220600
6-24 months                   ki1000109-EE              PAKISTAN     NA                   NA                0.1018767   0.0711382   0.1326151
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.1149733   0.0834811   0.1464654
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.0211382   0.0097604   0.0325160
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH   NA                   NA                0.0273973   0.0155476   0.0392469
6-24 months                   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.1894353   0.1566272   0.2222435
6-24 months                   ki1135781-COHORTS         INDIA        NA                   NA                0.0390131   0.0335015   0.0445247
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.0440678   0.0321994   0.0559362


### Parameter: RR


agecat                        studyid                   country      intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------------------------  ------------------------  -----------  -------------------  ---------------  ---------  ----------  ---------
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN     0                    0                 1.000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN     1                    0                 1.152439   0.6739869   1.970536
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        1                    0                 1.977463   0.9225766   4.238522
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   1                    0                 1.360743   0.5248752   3.527735
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH   1                    0                 1.506416   0.5876161   3.861855
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        0                    0                 1.000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        1                    0                 2.400594   1.3895105   4.147399
0-24 months (no birth wast)   ki1135781-COHORTS         INDIA        0                    0                 1.000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS         INDIA        1                    0                 1.860250   1.4569741   2.375149
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 1.371331   0.6198896   3.033683
0-6 months (no birth wast)    ki1135781-COHORTS         INDIA        0                    0                 1.000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1135781-COHORTS         INDIA        1                    0                 1.398960   0.9051990   2.162053
6-24 months                   ki1000109-EE              PAKISTAN     0                    0                 1.000000   1.0000000   1.000000
6-24 months                   ki1000109-EE              PAKISTAN     1                    0                 1.665496   0.9117083   3.042504
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.000000   1.0000000   1.000000
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        1                    0                 1.938255   0.6702179   5.605390
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   1                    0                 1.838942   0.6100618   5.543223
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH   1                    0                 1.490797   0.5817579   3.820279
6-24 months                   ki1113344-GMS-Nepal       NEPAL        0                    0                 1.000000   1.0000000   1.000000
6-24 months                   ki1113344-GMS-Nepal       NEPAL        1                    0                 2.116915   1.2470438   3.593560
6-24 months                   ki1135781-COHORTS         INDIA        0                    0                 1.000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS         INDIA        1                    0                 1.976540   1.4881925   2.625137
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 1.406335   0.6999368   2.825652


### Parameter: PAR


agecat                        studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  ------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN     0                    NA                0.0063492   -0.0182275   0.0309259
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0613184   -0.0000988   0.1227357
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.0023153   -0.0053782   0.0100089
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH   0                    NA                0.0026751   -0.0041623   0.0095125
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.1007754    0.0523945   0.1491563
0-24 months (no birth wast)   ki1135781-COHORTS         INDIA        0                    NA                0.0123834    0.0072382   0.0175285
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0094647   -0.0121246   0.0310539
0-6 months (no birth wast)    ki1135781-COHORTS         INDIA        0                    NA                0.0023905   -0.0008191   0.0056002
6-24 months                   ki1000109-EE              PAKISTAN     0                    NA                0.0182113   -0.0049828   0.0414055
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.0491838   -0.0198764   0.1182439
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.0037090   -0.0039542   0.0113723
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH   0                    NA                0.0027059   -0.0043649   0.0097767
6-24 months                   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.0864942    0.0375571   0.1354312
6-24 months                   ki1135781-COHORTS         INDIA        0                    NA                0.0106273    0.0059449   0.0153097
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.0102840   -0.0087568   0.0293248


### Parameter: PAF


agecat                        studyid                   country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  ------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-EE              PAKISTAN     0                    NA                0.0476190   -0.1553998   0.2149648
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.4403778   -0.1138724   0.7188394
0-24 months (no birth wast)   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.0837181   -0.2381152   0.3218946
0-24 months (no birth wast)   ki1017093c-NIH-Crypto     BANGLADESH   0                    NA                0.1008518   -0.1929625   0.3223027
0-24 months (no birth wast)   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.5132080    0.2120644   0.6992566
0-24 months (no birth wast)   ki1135781-COHORTS         INDIA        0                    NA                0.2472627    0.1419473   0.3396519
0-24 months (no birth wast)   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.2176871   -0.4815676   0.5869149
0-6 months (no birth wast)    ki1135781-COHORTS         INDIA        0                    NA                0.1318972   -0.0617896   0.2902525
6-24 months                   ki1000109-EE              PAKISTAN     0                    NA                0.1787586   -0.0766814   0.3735961
6-24 months                   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.4277846   -0.4409505   0.7727677
6-24 months                   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.1754650   -0.2612591   0.4609689
6-24 months                   ki1017093c-NIH-Crypto     BANGLADESH   0                    NA                0.0987654   -0.1955788   0.3206439
6-24 months                   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.4565894    0.1405111   0.6564294
6-24 months                   ki1135781-COHORTS         INDIA        0                    NA                0.2724036    0.1489076   0.3779800
6-24 months                   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.2333680   -0.3460382   0.5633670
