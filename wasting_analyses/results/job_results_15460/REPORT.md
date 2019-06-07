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

**Outcome Variable:** wasted

## Predictor Variables

**Intervention Variable:** earlybf

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                   country                        earlybf    wasted   n_cell       n
----------  ------------------------  -----------------------------  --------  -------  -------  ------
Birth       ki0047075b-MAL-ED         BANGLADESH                     0               0       70     240
Birth       ki0047075b-MAL-ED         BANGLADESH                     0               1       18     240
Birth       ki0047075b-MAL-ED         BANGLADESH                     1               0      130     240
Birth       ki0047075b-MAL-ED         BANGLADESH                     1               1       22     240
Birth       ki0047075b-MAL-ED         BRAZIL                         0               0      100     183
Birth       ki0047075b-MAL-ED         BRAZIL                         0               1        4     183
Birth       ki0047075b-MAL-ED         BRAZIL                         1               0       77     183
Birth       ki0047075b-MAL-ED         BRAZIL                         1               1        2     183
Birth       ki0047075b-MAL-ED         INDIA                          0               0       65     202
Birth       ki0047075b-MAL-ED         INDIA                          0               1       14     202
Birth       ki0047075b-MAL-ED         INDIA                          1               0      104     202
Birth       ki0047075b-MAL-ED         INDIA                          1               1       19     202
Birth       ki0047075b-MAL-ED         NEPAL                          0               0       83     168
Birth       ki0047075b-MAL-ED         NEPAL                          0               1        8     168
Birth       ki0047075b-MAL-ED         NEPAL                          1               0       65     168
Birth       ki0047075b-MAL-ED         NEPAL                          1               1       12     168
Birth       ki0047075b-MAL-ED         PERU                           0               0       66     279
Birth       ki0047075b-MAL-ED         PERU                           0               1        2     279
Birth       ki0047075b-MAL-ED         PERU                           1               0      207     279
Birth       ki0047075b-MAL-ED         PERU                           1               1        4     279
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0               0       81     245
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   0               1       10     245
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1               0      148     245
Birth       ki0047075b-MAL-ED         SOUTH AFRICA                   1               1        6     245
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0               0       10     118
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0               1        0     118
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1               0      106     118
Birth       ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1               1        2     118
Birth       ki1000109-EE              PAKISTAN                       0               0        0       1
Birth       ki1000109-EE              PAKISTAN                       0               1        0       1
Birth       ki1000109-EE              PAKISTAN                       1               0        1       1
Birth       ki1000109-EE              PAKISTAN                       1               1        0       1
Birth       ki1000304b-SAS-CompFeed   INDIA                          0               0      135     158
Birth       ki1000304b-SAS-CompFeed   INDIA                          0               1       10     158
Birth       ki1000304b-SAS-CompFeed   INDIA                          1               0       13     158
Birth       ki1000304b-SAS-CompFeed   INDIA                          1               1        0     158
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0               0        3      23
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     0               1        1      23
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1               0       17      23
Birth       ki1017093c-NIH-Crypto     BANGLADESH                     1               1        2      23
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0               0     4314   11513
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       0               1     1058   11513
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1               0     5320   11513
Birth       ki1126311-ZVITAMBO        ZIMBABWE                       1               1      821   11513
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0               0    14066   15648
Birth       kiGH5241-JiVitA-3         BANGLADESH                     0               1     1489   15648
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1               0       81   15648
Birth       kiGH5241-JiVitA-3         BANGLADESH                     1               1       12   15648
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0               0      194     683
Birth       kiGH5241-JiVitA-4         BANGLADESH                     0               1       14     683
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1               0      453     683
Birth       kiGH5241-JiVitA-4         BANGLADESH                     1               1       22     683
6 months    ki0047075b-MAL-ED         BANGLADESH                     0               0       90     240
6 months    ki0047075b-MAL-ED         BANGLADESH                     0               1        3     240
6 months    ki0047075b-MAL-ED         BANGLADESH                     1               0      142     240
6 months    ki0047075b-MAL-ED         BANGLADESH                     1               1        5     240
6 months    ki0047075b-MAL-ED         BRAZIL                         0               0      114     209
6 months    ki0047075b-MAL-ED         BRAZIL                         0               1        0     209
6 months    ki0047075b-MAL-ED         BRAZIL                         1               0       94     209
6 months    ki0047075b-MAL-ED         BRAZIL                         1               1        1     209
6 months    ki0047075b-MAL-ED         INDIA                          0               0       90     236
6 months    ki0047075b-MAL-ED         INDIA                          0               1        6     236
6 months    ki0047075b-MAL-ED         INDIA                          1               0      128     236
6 months    ki0047075b-MAL-ED         INDIA                          1               1       12     236
6 months    ki0047075b-MAL-ED         NEPAL                          0               0      138     236
6 months    ki0047075b-MAL-ED         NEPAL                          0               1        2     236
6 months    ki0047075b-MAL-ED         NEPAL                          1               0       94     236
6 months    ki0047075b-MAL-ED         NEPAL                          1               1        2     236
6 months    ki0047075b-MAL-ED         PERU                           0               0       71     273
6 months    ki0047075b-MAL-ED         PERU                           0               1        0     273
6 months    ki0047075b-MAL-ED         PERU                           1               0      202     273
6 months    ki0047075b-MAL-ED         PERU                           1               1        0     273
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0               0       92     250
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0               1        2     250
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1               0      151     250
6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1               1        5     250
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0               0       42     247
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0               1        0     247
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1               0      204     247
6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1               1        1     247
6 months    ki1000109-EE              PAKISTAN                       0               0      265     376
6 months    ki1000109-EE              PAKISTAN                       0               1       42     376
6 months    ki1000109-EE              PAKISTAN                       1               0       62     376
6 months    ki1000109-EE              PAKISTAN                       1               1        7     376
6 months    ki1000304b-SAS-CompFeed   INDIA                          0               0     1081    1334
6 months    ki1000304b-SAS-CompFeed   INDIA                          0               1      156    1334
6 months    ki1000304b-SAS-CompFeed   INDIA                          1               0       87    1334
6 months    ki1000304b-SAS-CompFeed   INDIA                          1               1       10    1334
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0               0       93     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0               1        3     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1               0      601     715
6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1               1       18     715
6 months    ki1113344-GMS-Nepal       NEPAL                          0               0      324     510
6 months    ki1113344-GMS-Nepal       NEPAL                          0               1       35     510
6 months    ki1113344-GMS-Nepal       NEPAL                          1               0      138     510
6 months    ki1113344-GMS-Nepal       NEPAL                          1               1       13     510
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0               0     3269    7339
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0               1      119    7339
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1               0     3832    7339
6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1               1      119    7339
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0               0    15335   16784
6 months    kiGH5241-JiVitA-3         BANGLADESH                     0               1     1413   16784
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1               0       28   16784
6 months    kiGH5241-JiVitA-3         BANGLADESH                     1               1        8   16784
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0               0     1637    4833
6 months    kiGH5241-JiVitA-4         BANGLADESH                     0               1      101    4833
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1               0     2921    4833
6 months    kiGH5241-JiVitA-4         BANGLADESH                     1               1      174    4833
24 months   ki0047075b-MAL-ED         BANGLADESH                     0               0       74     211
24 months   ki0047075b-MAL-ED         BANGLADESH                     0               1        9     211
24 months   ki0047075b-MAL-ED         BANGLADESH                     1               0      116     211
24 months   ki0047075b-MAL-ED         BANGLADESH                     1               1       12     211
24 months   ki0047075b-MAL-ED         BRAZIL                         0               0       87     169
24 months   ki0047075b-MAL-ED         BRAZIL                         0               1        2     169
24 months   ki0047075b-MAL-ED         BRAZIL                         1               0       79     169
24 months   ki0047075b-MAL-ED         BRAZIL                         1               1        1     169
24 months   ki0047075b-MAL-ED         INDIA                          0               0       85     227
24 months   ki0047075b-MAL-ED         INDIA                          0               1        8     227
24 months   ki0047075b-MAL-ED         INDIA                          1               0      115     227
24 months   ki0047075b-MAL-ED         INDIA                          1               1       19     227
24 months   ki0047075b-MAL-ED         NEPAL                          0               0      129     228
24 months   ki0047075b-MAL-ED         NEPAL                          0               1        4     228
24 months   ki0047075b-MAL-ED         NEPAL                          1               0       94     228
24 months   ki0047075b-MAL-ED         NEPAL                          1               1        1     228
24 months   ki0047075b-MAL-ED         PERU                           0               0       52     201
24 months   ki0047075b-MAL-ED         PERU                           0               1        0     201
24 months   ki0047075b-MAL-ED         PERU                           1               0      146     201
24 months   ki0047075b-MAL-ED         PERU                           1               1        3     201
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0               0       90     235
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0               1        1     235
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1               0      144     235
24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1               1        0     235
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0               0       32     214
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0               1        2     214
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1               0      178     214
24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1               1        2     214
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0               0       70     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0               1        1     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1               0      399     514
24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1               1       44     514
24 months   ki1113344-GMS-Nepal       NEPAL                          0               0      258     454
24 months   ki1113344-GMS-Nepal       NEPAL                          0               1       60     454
24 months   ki1113344-GMS-Nepal       NEPAL                          1               0      113     454
24 months   ki1113344-GMS-Nepal       NEPAL                          1               1       23     454
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0               0      135     370
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0               1       37     370
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1               0      167     370
24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1               1       31     370
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0               0     6724    8603
24 months   kiGH5241-JiVitA-3         BANGLADESH                     0               1     1878    8603
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1               0        1    8603
24 months   kiGH5241-JiVitA-3         BANGLADESH                     1               1        0    8603
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0               0     1382    4735
24 months   kiGH5241-JiVitA-4         BANGLADESH                     0               1      322    4735
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1               0     2433    4735
24 months   kiGH5241-JiVitA-4         BANGLADESH                     1               1      598    4735


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

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
![](/tmp/1d53ba42-2451-439d-b9bb-c6bbf2b200d5/cea936e8-e8ad-4ff8-b764-dcc5cdbcf404/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1d53ba42-2451-439d-b9bb-c6bbf2b200d5/cea936e8-e8ad-4ff8-b764-dcc5cdbcf404/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1d53ba42-2451-439d-b9bb-c6bbf2b200d5/cea936e8-e8ad-4ff8-b764-dcc5cdbcf404/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1d53ba42-2451-439d-b9bb-c6bbf2b200d5/cea936e8-e8ad-4ff8-b764-dcc5cdbcf404/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.2045455   0.1200923   0.2889986
Birth       ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.1447368   0.0886873   0.2007864
Birth       ki0047075b-MAL-ED         INDIA          0                    NA                0.1772152   0.0928029   0.2616275
Birth       ki0047075b-MAL-ED         INDIA          1                    NA                0.1544715   0.0904448   0.2184983
Birth       ki0047075b-MAL-ED         NEPAL          0                    NA                0.0879121   0.0295587   0.1462655
Birth       ki0047075b-MAL-ED         NEPAL          1                    NA                0.1558442   0.0745881   0.2371002
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                0.1098901   0.0455004   0.1742798
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                0.0389610   0.0083371   0.0695850
Birth       ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.1969471   0.1863119   0.2075823
Birth       ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.1336916   0.1251795   0.1422037
Birth       kiGH5241-JiVitA-3         BANGLADESH     0                    NA                0.0957248   0.0904923   0.1009574
Birth       kiGH5241-JiVitA-3         BANGLADESH     1                    NA                0.1290323   0.0481362   0.2099283
Birth       kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.0673077   0.0327433   0.1018720
Birth       kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.0463158   0.0234675   0.0691641
6 months    ki0047075b-MAL-ED         INDIA          0                    NA                0.0625000   0.0139756   0.1110244
6 months    ki0047075b-MAL-ED         INDIA          1                    NA                0.0857143   0.0392442   0.1321844
6 months    ki1000109-EE              PAKISTAN       0                    NA                0.1368078   0.0983162   0.1752995
6 months    ki1000109-EE              PAKISTAN       1                    NA                0.1014493   0.0301151   0.1727834
6 months    ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.1261116   0.0987820   0.1534411
6 months    ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.1030928   0.0556218   0.1505638
6 months    ki1113344-GMS-Nepal       NEPAL          0                    NA                0.0974930   0.0667788   0.1282072
6 months    ki1113344-GMS-Nepal       NEPAL          1                    NA                0.0860927   0.0413090   0.1308764
6 months    ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.0351240   0.0289247   0.0413233
6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.0301190   0.0247892   0.0354487
6 months    kiGH5241-JiVitA-3         BANGLADESH     0                    NA                0.0843683   0.0795754   0.0891612
6 months    kiGH5241-JiVitA-3         BANGLADESH     1                    NA                0.2222222   0.0982018   0.3462426
6 months    kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.0581128   0.0431483   0.0730773
6 months    kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.0562197   0.0456225   0.0668169
24 months   ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.1084337   0.0413836   0.1754839
24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.0937500   0.0431344   0.1443656
24 months   ki0047075b-MAL-ED         INDIA          0                    NA                0.0860215   0.0289083   0.1431348
24 months   ki0047075b-MAL-ED         INDIA          1                    NA                0.1417910   0.0825974   0.2009847
24 months   ki1113344-GMS-Nepal       NEPAL          0                    NA                0.1886792   0.1456294   0.2317291
24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                0.1691176   0.1060478   0.2321875
24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.2151163   0.1536254   0.2766072
24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.1565657   0.1058809   0.2072504
24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.1889671   0.1658292   0.2121051
24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.1972946   0.1812292   0.2133601


### Parameter: E(Y)


agecat      studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.1666667   0.1194187   0.2139146
Birth       ki0047075b-MAL-ED         INDIA          NA                   NA                0.1633663   0.1122571   0.2144755
Birth       ki0047075b-MAL-ED         NEPAL          NA                   NA                0.1190476   0.0699312   0.1681640
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   NA                   NA                0.0653061   0.0343059   0.0963063
Birth       ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.1632068   0.1564561   0.1699575
Birth       kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.0959228   0.0907196   0.1011260
Birth       kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.0527086   0.0336587   0.0717585
6 months    ki0047075b-MAL-ED         INDIA          NA                   NA                0.0762712   0.0423347   0.1102077
6 months    ki1000109-EE              PAKISTAN       NA                   NA                0.1303191   0.0962457   0.1643926
6 months    ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.1244378   0.0992652   0.1496104
6 months    ki1113344-GMS-Nepal       NEPAL          NA                   NA                0.0941176   0.0687511   0.1194842
6 months    ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0324295   0.0283765   0.0364824
6 months    kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.0846640   0.0798626   0.0894653
6 months    kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.0569005   0.0480577   0.0657432
24 months   ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.0995261   0.0590366   0.1400156
24 months   ki0047075b-MAL-ED         INDIA          NA                   NA                0.1189427   0.0767376   0.1611478
24 months   ki1113344-GMS-Nepal       NEPAL          NA                   NA                0.1828194   0.1472260   0.2184128
24 months   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.1837838   0.1442661   0.2233014
24 months   kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.1942978   0.1810880   0.2075076


### Parameter: RR


agecat      studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         BANGLADESH     1                    0                 0.7076023   0.4017428   1.2463226
Birth       ki0047075b-MAL-ED         INDIA          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         INDIA          1                    0                 0.8716609   0.4635818   1.6389615
Birth       ki0047075b-MAL-ED         NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         NEPAL          1                    0                 1.7727273   0.7622022   4.1230032
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   1                    0                 0.3545455   0.1330137   0.9450341
Birth       ki1126311-ZVITAMBO        ZIMBABWE       0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE       1                    0                 0.6788196   0.6244491   0.7379241
Birth       kiGH5241-JiVitA-3         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3         BANGLADESH     1                    0                 1.3479495   0.7165299   2.5357880
Birth       kiGH5241-JiVitA-4         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4         BANGLADESH     1                    0                 0.6881203   0.3375605   1.4027397
6 months    ki0047075b-MAL-ED         INDIA          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED         INDIA          1                    0                 1.3714286   0.5320090   3.5353092
6 months    ki1000109-EE              PAKISTAN       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE              PAKISTAN       1                    0                 0.7415459   0.3477156   1.5814371
6 months    ki1000304b-SAS-CompFeed   INDIA          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed   INDIA          1                    0                 0.8174729   0.4938733   1.3531042
6 months    ki1113344-GMS-Nepal       NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal       NEPAL          1                    0                 0.8830653   0.4807063   1.6222052
6 months    ki1126311-ZVITAMBO        ZIMBABWE       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    0                 0.8575044   0.6678722   1.1009798
6 months    kiGH5241-JiVitA-3         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3         BANGLADESH     1                    0                 2.6339545   1.5065764   4.6049552
6 months    kiGH5241-JiVitA-4         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4         BANGLADESH     1                    0                 0.9674243   0.7078186   1.3222452
24 months   ki0047075b-MAL-ED         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         BANGLADESH     1                    0                 0.8645833   0.3804535   1.9647716
24 months   ki0047075b-MAL-ED         INDIA          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED         INDIA          1                    0                 1.6483209   0.7523706   3.6112015
24 months   ki1113344-GMS-Nepal       NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal       NEPAL          1                    0                 0.8963235   0.5788867   1.3878293
24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    0                 0.7278187   0.4725691   1.1209367
24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    0                 1.0440684   0.9010614   1.2097720


### Parameter: PAR


agecat      studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH     0                    NA                -0.0378788   -0.1021775    0.0264199
Birth       ki0047075b-MAL-ED         INDIA          0                    NA                -0.0138489   -0.0783797    0.0506820
Birth       ki0047075b-MAL-ED         NEPAL          0                    NA                 0.0311355   -0.0150019    0.0772729
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                -0.0445840   -0.0896077    0.0004398
Birth       ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                -0.0337403   -0.0410292   -0.0264515
Birth       kiGH5241-JiVitA-3         BANGLADESH     0                    NA                 0.0001980   -0.0002935    0.0006894
Birth       kiGH5241-JiVitA-4         BANGLADESH     0                    NA                -0.0145991   -0.0434476    0.0142495
6 months    ki0047075b-MAL-ED         INDIA          0                    NA                 0.0137712   -0.0261121    0.0536545
6 months    ki1000109-EE              PAKISTAN       0                    NA                -0.0064887   -0.0214278    0.0084504
6 months    ki1000304b-SAS-CompFeed   INDIA          0                    NA                -0.0016738   -0.0060454    0.0026978
6 months    ki1113344-GMS-Nepal       NEPAL          0                    NA                -0.0033754   -0.0194600    0.0127093
6 months    ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                -0.0026945   -0.0070961    0.0017072
6 months    kiGH5241-JiVitA-3         BANGLADESH     0                    NA                 0.0002957    0.0000189    0.0005724
6 months    kiGH5241-JiVitA-4         BANGLADESH     0                    NA                -0.0012123   -0.0127093    0.0102847
24 months   ki0047075b-MAL-ED         BANGLADESH     0                    NA                -0.0089077   -0.0598802    0.0420649
24 months   ki0047075b-MAL-ED         INDIA          0                    NA                 0.0329212   -0.0157658    0.0816083
24 months   ki1113344-GMS-Nepal       NEPAL          0                    NA                -0.0058599   -0.0287496    0.0170299
24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                -0.0313325   -0.0740800    0.0114150
24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                 0.0053306   -0.0127386    0.0233999


### Parameter: PAF


agecat      studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED         BANGLADESH     0                    NA                -0.2272727   -0.6768282    0.1017575
Birth       ki0047075b-MAL-ED         INDIA          0                    NA                -0.0847718   -0.5605439    0.2459489
Birth       ki0047075b-MAL-ED         NEPAL          0                    NA                 0.2615385   -0.2276281    0.5557894
Birth       ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                -0.6826923   -1.4446196   -0.1582388
Birth       ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                -0.2067336   -0.2517787   -0.1633093
Birth       kiGH5241-JiVitA-3         BANGLADESH     0                    NA                 0.0020637   -0.0030751    0.0071761
Birth       kiGH5241-JiVitA-4         BANGLADESH     0                    NA                -0.2769765   -0.9743571    0.1740760
6 months    ki0047075b-MAL-ED         INDIA          0                    NA                 0.1805556   -0.5410426    0.5642631
6 months    ki1000109-EE              PAKISTAN       0                    NA                -0.0497906   -0.1703523    0.0583517
6 months    ki1000304b-SAS-CompFeed   INDIA          0                    NA                -0.0134507   -0.0480852    0.0200392
6 months    ki1113344-GMS-Nepal       NEPAL          0                    NA                -0.0358635   -0.2214158    0.1215005
6 months    ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                -0.0830874   -0.2272707    0.0441569
6 months    kiGH5241-JiVitA-3         BANGLADESH     0                    NA                 0.0034924    0.0002243    0.0067499
6 months    kiGH5241-JiVitA-4         BANGLADESH     0                    NA                -0.0213056   -0.2444963    0.1618576
24 months   ki0047075b-MAL-ED         BANGLADESH     0                    NA                -0.0895009   -0.7417621    0.3184993
24 months   ki0047075b-MAL-ED         INDIA          0                    NA                 0.2767822   -0.2569353    0.5838735
24 months   ki1113344-GMS-Nepal       NEPAL          0                    NA                -0.0320527   -0.1650735    0.0857805
24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                -0.1704856   -0.4261324    0.0393342
24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                 0.0274354   -0.0703218    0.1162641
