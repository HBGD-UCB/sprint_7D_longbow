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

**Intervention Variable:** vagbrth

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid                    country                        vagbrth    ever_swasted   n_cell       n
----------------------------  -------------------------  -----------------------------  --------  -------------  -------  ------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                     0       20     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                     1        5     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                     0      293     368
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                     1       50     368
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                     0       55     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                     1       15     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                     0      277     409
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                     1       62     409
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                     0      158     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0                     1        1     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                     0      510     687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     1                     1       18     687
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                     0      198     496
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0                     1        4     496
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      284     496
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1       10     496
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0      195    2355
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1       17    2355
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0     2039    2355
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      104    2355
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                     0      835    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                     1       12    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                     0     7196    8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                     1       70    8113
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                     0     1007   12356
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                     1       31   12356
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                     0    10886   12356
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                     1      432   12356
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                     0      724   12953
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                     1       17   12953
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                     0    11736   12953
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                     1      476   12953
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                     0       82    1180
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0                     1        1    1180
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                     0     1047    1180
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     1                     1       50    1180
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                     0       20     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          0                     1        3     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                     0      300     350
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          1                     1       27     350
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                     0       55     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                     1       12     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                     0      278     390
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                     1       45     390
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                     0      157     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0                     1        1     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                     0      520     683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     1                     1        5     683
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                     0      202     493
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0                     1        0     493
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      291     493
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     1                     1        0     493
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0      205    2347
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1        6    2347
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0     2100    2347
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1       36    2347
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                     0      828    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                     1       11    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                     0     7076    7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                     1       64    7979
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                     0      970   11355
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       0                     1        4   11355
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                     0    10255   11355
0-6 months (no birth wast)    ki1126311-ZVITAMBO         ZIMBABWE                       1                     1      126   11355
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                     0      719   12798
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                     1        8   12798
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                     0    11844   12798
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                     1      227   12798
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                     0       79    1129
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0                     1        0    1129
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                     0     1046    1129
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     1                     1        4    1129
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                     0       23     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          0                     1        2     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                     0      320     373
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          1                     1       28     373
6-24 months                   ki1000108-IRC              INDIA                          0                     0       66     410
6-24 months                   ki1000108-IRC              INDIA                          0                     1        4     410
6-24 months                   ki1000108-IRC              INDIA                          1                     0      318     410
6-24 months                   ki1000108-IRC              INDIA                          1                     1       22     410
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                     0      143     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0                     1        0     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                     0      459     615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     1                     1       13     615
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                     0      190     472
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0                     1        4     472
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      267     472
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1       11     472
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     0      175    1996
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                     1       11    1996
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0     1738    1996
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1       72    1996
6-24 months                   ki1119695-PROBIT           BELARUS                        0                     0      835    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        0                     1        1    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        1                     0     7132    7975
6-24 months                   ki1119695-PROBIT           BELARUS                        1                     1        7    7975
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                     0      877   10605
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                     1       27   10605
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                     0     9385   10605
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                     1      316   10605
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                     0      531    8516
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                     1        9    8516
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                     0     7705    8516
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                     1      271    8516
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                     0       82    1187
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0                     1        1    1187
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                     0     1053    1187
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     1                     1       51    1187


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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
![](/tmp/4f9ca220-6534-4737-85cc-c5cbd6cd615f/d8379008-c8c9-4790-af64-cdd9ba7609dc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4f9ca220-6534-4737-85cc-c5cbd6cd615f/d8379008-c8c9-4790-af64-cdd9ba7609dc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4f9ca220-6534-4737-85cc-c5cbd6cd615f/d8379008-c8c9-4790-af64-cdd9ba7609dc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4f9ca220-6534-4737-85cc-c5cbd6cd615f/d8379008-c8c9-4790-af64-cdd9ba7609dc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2000000   0.0429894   0.3570106
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1457726   0.1083773   0.1831679
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    NA                0.2142857   0.1180448   0.3105266
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    NA                0.1828909   0.1416891   0.2240926
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0801887   0.0436226   0.1167547
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0485301   0.0394303   0.0576299
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    NA                0.0141677   0.0069844   0.0213509
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                    NA                0.0096339   0.0061785   0.0130894
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0298651   0.0195098   0.0402205
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0381693   0.0346392   0.0416994
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0229420   0.0097798   0.0361041
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0389781   0.0349534   0.0430027
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    NA                0.1791045   0.0871728   0.2710362
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                    NA                0.1393189   0.1015068   0.1771310
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0284360   0.0060039   0.0508681
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0168539   0.0113938   0.0223140
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    NA                0.0131108   0.0062476   0.0199741
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                    NA                0.0089636   0.0050175   0.0129097
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0110041   0.0022478   0.0197605
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0188054   0.0158966   0.0217143
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0591398   0.0252317   0.0930478
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0397790   0.0307730   0.0487850
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0298673   0.0187705   0.0409641
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0325740   0.0290413   0.0361066
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.0166667   0.0022538   0.0310795
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.0339769   0.0294996   0.0384543


### Parameter: E(Y)


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1494565   0.1129794   0.1859337
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          NA                   NA                0.1882641   0.1503318   0.2261964
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0513800   0.0424616   0.0602985
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0101072   0.0069537   0.0132608
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0374717   0.0341229   0.0408204
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0380607   0.0342582   0.0418631
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          NA                   NA                0.1461538   0.1110489   0.1812588
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0178952   0.0125307   0.0232597
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0093997   0.0058450   0.0129543
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0183622   0.0155854   0.0211391
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0415832   0.0328230   0.0503433
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0323432   0.0289761   0.0357104
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0328793   0.0286184   0.0371402


### Parameter: RR


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.7288630   0.3191248   1.6646817
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          1                    0                 0.8534907   0.5163975   1.4106310
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.6051989   0.3696326   0.9908911
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        1                    0                 0.6799936   0.3618497   1.2778544
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.2780555   0.8926862   1.8297873
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.6989846   0.9404395   3.0693613
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          1                    0                 0.7778638   0.4352533   1.3901609
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.5926966   0.2526208   1.3905792
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        1                    0                 0.6836771   0.3371783   1.3862529
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.7089408   0.7567499   3.8592392
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.6726268   0.3631281   1.2459153
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.0906245   0.7406023   1.6060736
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 2.0386157   0.8464296   4.9099816


### Parameter: PAR


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0505435   -0.2009875   0.0999006
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    NA                -0.0260217   -0.1128012   0.0607579
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0288086   -0.0630998   0.0054825
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0040604   -0.0112927   0.0031719
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0076065   -0.0024150   0.0176281
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0151187    0.0018410   0.0283965
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    NA                -0.0329506   -0.1152912   0.0493899
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0105408   -0.0315527   0.0104710
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0037112   -0.0109991   0.0035768
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0073581   -0.0014173   0.0161335
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0175566   -0.0493719   0.0142587
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0024760   -0.0081769   0.0131288
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.0162126    0.0019582   0.0304670


### Parameter: PAF


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.3381818   -1.8354235    0.3684433
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          0                    NA                -0.1382189   -0.7058900    0.2405476
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5606970   -1.3844507   -0.0215247
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        0                    NA                -0.4017335   -1.4016111    0.1818588
0-24 months (no birth wast)   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.2029946   -0.1139815    0.4297773
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.3972265   -0.0669600    0.6594662
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          0                    NA                -0.2254517   -0.9382973    0.2252314
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.5890318   -2.3006805    0.2349995
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        0                    NA                -0.3948192   -1.5484619    0.2365902
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.4007200   -0.3166493    0.7272344
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.4222049   -1.4277873    0.1668681
6-24 months                   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0765532   -0.3190784    0.3535229
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.4930952   -0.1864679    0.7834307
