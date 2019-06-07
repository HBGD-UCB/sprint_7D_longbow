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

**Outcome Variable:** pers_wast

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

agecat        studyid                   country                        earlybf    pers_wast   n_cell      n
------------  ------------------------  -----------------------------  --------  ----------  -------  -----
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                  0      144    247
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                  1        8    247
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                  0       90    247
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                  1        5    247
0-24 months   ki0047075b-MAL-ED         BRAZIL                         1                  0       98    217
0-24 months   ki0047075b-MAL-ED         BRAZIL                         1                  1        1    217
0-24 months   ki0047075b-MAL-ED         BRAZIL                         0                  0      117    217
0-24 months   ki0047075b-MAL-ED         BRAZIL                         0                  1        1    217
0-24 months   ki0047075b-MAL-ED         INDIA                          1                  0      127    241
0-24 months   ki0047075b-MAL-ED         INDIA                          1                  1       16    241
0-24 months   ki0047075b-MAL-ED         INDIA                          0                  0       93    241
0-24 months   ki0047075b-MAL-ED         INDIA                          0                  1        5    241
0-24 months   ki0047075b-MAL-ED         NEPAL                          1                  0       94    238
0-24 months   ki0047075b-MAL-ED         NEPAL                          1                  1        3    238
0-24 months   ki0047075b-MAL-ED         NEPAL                          0                  0      140    238
0-24 months   ki0047075b-MAL-ED         NEPAL                          0                  1        1    238
0-24 months   ki0047075b-MAL-ED         PERU                           1                  0      211    284
0-24 months   ki0047075b-MAL-ED         PERU                           1                  1        1    284
0-24 months   ki0047075b-MAL-ED         PERU                           0                  0       72    284
0-24 months   ki0047075b-MAL-ED         PERU                           0                  1        0    284
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                  0      166    268
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                  1        1    268
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                  0      100    268
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                  1        1    268
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                  0      210    253
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                  1        0    253
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                  0       43    253
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                  1        0    253
0-24 months   ki1000109-EE              PAKISTAN                       1                  0       64    377
0-24 months   ki1000109-EE              PAKISTAN                       1                  1        5    377
0-24 months   ki1000109-EE              PAKISTAN                       0                  0      285    377
0-24 months   ki1000109-EE              PAKISTAN                       0                  1       23    377
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                  0        7    428
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                  1        0    428
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                  0      389    428
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                  1       32    428
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                  0      607    730
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                  1       25    730
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                  0       97    730
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                  1        1    730
0-24 months   ki1113344-GMS-Nepal       NEPAL                          1                  0      139    538
0-24 months   ki1113344-GMS-Nepal       NEPAL                          1                  1       19    538
0-24 months   ki1113344-GMS-Nepal       NEPAL                          0                  0      322    538
0-24 months   ki1113344-GMS-Nepal       NEPAL                          0                  1       58    538
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                  0     4403   8276
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                  1       76   8276
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                  0     3719   8276
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                  1       78   8276
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                  0        7   7760
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                  1        3   7760
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                  0     7302   7760
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                  1      448   7760
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                  0      805   1378
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                  1       67   1378
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                  0      461   1378
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                  1       45   1378
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     1                  0      149    247
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     1                  1        3    247
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     0                  0       91    247
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     0                  1        4    247
0-6 months    ki0047075b-MAL-ED         BRAZIL                         1                  0       98    217
0-6 months    ki0047075b-MAL-ED         BRAZIL                         1                  1        1    217
0-6 months    ki0047075b-MAL-ED         BRAZIL                         0                  0      118    217
0-6 months    ki0047075b-MAL-ED         BRAZIL                         0                  1        0    217
0-6 months    ki0047075b-MAL-ED         INDIA                          1                  0      131    240
0-6 months    ki0047075b-MAL-ED         INDIA                          1                  1       12    240
0-6 months    ki0047075b-MAL-ED         INDIA                          0                  0       90    240
0-6 months    ki0047075b-MAL-ED         INDIA                          0                  1        7    240
0-6 months    ki0047075b-MAL-ED         NEPAL                          1                  0       94    237
0-6 months    ki0047075b-MAL-ED         NEPAL                          1                  1        3    237
0-6 months    ki0047075b-MAL-ED         NEPAL                          0                  0      138    237
0-6 months    ki0047075b-MAL-ED         NEPAL                          0                  1        2    237
0-6 months    ki0047075b-MAL-ED         PERU                           1                  0      212    284
0-6 months    ki0047075b-MAL-ED         PERU                           1                  1        0    284
0-6 months    ki0047075b-MAL-ED         PERU                           0                  0       72    284
0-6 months    ki0047075b-MAL-ED         PERU                           0                  1        0    284
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                  0      165    266
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                  1        1    266
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                  0       99    266
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                  1        1    266
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                  0      210    253
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                  1        0    253
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                  0       43    253
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                  1        0    253
0-6 months    ki1000109-EE              PAKISTAN                       1                  0       64    366
0-6 months    ki1000109-EE              PAKISTAN                       1                  1        4    366
0-6 months    ki1000109-EE              PAKISTAN                       0                  0      275    366
0-6 months    ki1000109-EE              PAKISTAN                       0                  1       23    366
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                  0      222    250
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                  1        3    250
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                  0       23    250
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                  1        2    250
0-6 months    ki1113344-GMS-Nepal       NEPAL                          1                  0      129    489
0-6 months    ki1113344-GMS-Nepal       NEPAL                          1                  1       17    489
0-6 months    ki1113344-GMS-Nepal       NEPAL                          0                  0      299    489
0-6 months    ki1113344-GMS-Nepal       NEPAL                          0                  1       44    489
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                  0      289    542
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                  1        6    542
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                  0      239    542
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                  1        8    542
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                  0        0     25
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                  1        0     25
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                  0       23     25
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                  1        2     25
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                  0      144    247
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                  1        8    247
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                  0       90    247
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                  1        5    247
6-24 months   ki0047075b-MAL-ED         BRAZIL                         1                  0       98    217
6-24 months   ki0047075b-MAL-ED         BRAZIL                         1                  1        1    217
6-24 months   ki0047075b-MAL-ED         BRAZIL                         0                  0      117    217
6-24 months   ki0047075b-MAL-ED         BRAZIL                         0                  1        1    217
6-24 months   ki0047075b-MAL-ED         INDIA                          1                  0      127    241
6-24 months   ki0047075b-MAL-ED         INDIA                          1                  1       16    241
6-24 months   ki0047075b-MAL-ED         INDIA                          0                  0       93    241
6-24 months   ki0047075b-MAL-ED         INDIA                          0                  1        5    241
6-24 months   ki0047075b-MAL-ED         NEPAL                          1                  0       94    238
6-24 months   ki0047075b-MAL-ED         NEPAL                          1                  1        3    238
6-24 months   ki0047075b-MAL-ED         NEPAL                          0                  0      140    238
6-24 months   ki0047075b-MAL-ED         NEPAL                          0                  1        1    238
6-24 months   ki0047075b-MAL-ED         PERU                           1                  0      211    284
6-24 months   ki0047075b-MAL-ED         PERU                           1                  1        1    284
6-24 months   ki0047075b-MAL-ED         PERU                           0                  0       72    284
6-24 months   ki0047075b-MAL-ED         PERU                           0                  1        0    284
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                  0      166    268
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                  1        1    268
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                  0      100    268
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                  1        1    268
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                  0      210    253
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                  1        0    253
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                  0       43    253
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                  1        0    253
6-24 months   ki1000109-EE              PAKISTAN                       1                  0       64    377
6-24 months   ki1000109-EE              PAKISTAN                       1                  1        5    377
6-24 months   ki1000109-EE              PAKISTAN                       0                  0      285    377
6-24 months   ki1000109-EE              PAKISTAN                       0                  1       23    377
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                  0        7    428
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                  1        0    428
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                  0      389    428
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                  1       32    428
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                  0      607    730
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                  1       25    730
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                  0       97    730
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                  1        1    730
6-24 months   ki1113344-GMS-Nepal       NEPAL                          1                  0      139    538
6-24 months   ki1113344-GMS-Nepal       NEPAL                          1                  1       19    538
6-24 months   ki1113344-GMS-Nepal       NEPAL                          0                  0      322    538
6-24 months   ki1113344-GMS-Nepal       NEPAL                          0                  1       58    538
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                  0     4403   8276
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                  1       76   8276
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                  0     3719   8276
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                  1       78   8276
6-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                  0        7   7760
6-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                  1        3   7760
6-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                  0     7302   7760
6-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                  1      448   7760
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                  0      805   1378
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                  1       67   1378
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                  0      461   1378
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                  1       45   1378


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
![](/tmp/a17ec833-bd74-4f0d-b805-1a1c3d678092/13224318-92b8-4fe4-80f4-7e4e6097cfa1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a17ec833-bd74-4f0d-b805-1a1c3d678092/13224318-92b8-4fe4-80f4-7e4e6097cfa1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a17ec833-bd74-4f0d-b805-1a1c3d678092/13224318-92b8-4fe4-80f4-7e4e6097cfa1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a17ec833-bd74-4f0d-b805-1a1c3d678092/13224318-92b8-4fe4-80f4-7e4e6097cfa1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.0526316   0.0170611   0.0882021
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0526316   0.0076381   0.0976251
0-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.1118881   0.0601145   0.1636618
0-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.0510204   0.0073650   0.0946758
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.0724638   0.0112109   0.1337166
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.0746753   0.0452795   0.1040711
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1202532   0.0694898   0.1710166
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1526316   0.1164391   0.1888241
0-24 months   ki1126311-ZVITAMBO    ZIMBABWE     1                    NA                0.0169681   0.0131855   0.0207506
0-24 months   ki1126311-ZVITAMBO    ZIMBABWE     0                    NA                0.0205425   0.0160305   0.0250546
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0768349   0.0567859   0.0968839
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0889328   0.0659536   0.1119120
0-6 months    ki0047075b-MAL-ED     INDIA        1                    NA                0.0839161   0.0383778   0.1294544
0-6 months    ki0047075b-MAL-ED     INDIA        0                    NA                0.0721649   0.0205628   0.1237671
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1164384   0.0643570   0.1685198
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1282799   0.0928546   0.1637052
0-6 months    ki1126311-ZVITAMBO    ZIMBABWE     1                    NA                0.0203390   0.0042162   0.0364618
0-6 months    ki1126311-ZVITAMBO    ZIMBABWE     0                    NA                0.0323887   0.0102909   0.0544864
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.0526316   0.0170611   0.0882021
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.0526316   0.0076381   0.0976251
6-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.1118881   0.0601145   0.1636618
6-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.0510204   0.0073650   0.0946758
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.0724638   0.0112109   0.1337166
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.0746753   0.0452795   0.1040711
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.1202532   0.0694898   0.1710166
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.1526316   0.1164391   0.1888241
6-24 months   ki1126311-ZVITAMBO    ZIMBABWE     1                    NA                0.0169681   0.0131855   0.0207506
6-24 months   ki1126311-ZVITAMBO    ZIMBABWE     0                    NA                0.0205425   0.0160305   0.0250546
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.0768349   0.0567859   0.0968839
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.0889328   0.0659536   0.1119120


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.0526316   0.0247278   0.0805354
0-24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.0871369   0.0514552   0.1228187
0-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.0742706   0.0477670   0.1007741
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1431227   0.1135034   0.1727420
0-24 months   ki1126311-ZVITAMBO    ZIMBABWE     NA                   NA                0.0186080   0.0156964   0.0215196
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0812772   0.0652971   0.0972574
0-6 months    ki0047075b-MAL-ED     INDIA        NA                   NA                0.0791667   0.0449364   0.1133970
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1247444   0.0954276   0.1540611
0-6 months    ki1126311-ZVITAMBO    ZIMBABWE     NA                   NA                0.0258303   0.0124633   0.0391972
6-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.0526316   0.0247278   0.0805354
6-24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.0871369   0.0514552   0.1228187
6-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.0742706   0.0477670   0.1007741
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.1431227   0.1135034   0.1727420
6-24 months   ki1126311-ZVITAMBO    ZIMBABWE     NA                   NA                0.0186080   0.0156964   0.0215196
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.0812772   0.0652971   0.0972574


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 1.0000000   0.3362978   2.973555
0-24 months   ki0047075b-MAL-ED     INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED     INDIA        0                    1                 0.4559949   0.1723848   1.206205
0-24 months   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000109-EE          PAKISTAN     0                    1                 1.0305195   0.4055983   2.618281
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.2692521   0.7821181   2.059792
0-24 months   ki1126311-ZVITAMBO    ZIMBABWE     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO    ZIMBABWE     0                    1                 1.2106579   0.8853381   1.655517
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1574538   0.8192839   1.635208
0-6 months    ki0047075b-MAL-ED     INDIA        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED     INDIA        0                    1                 0.8599656   0.3504552   2.110230
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1016978   0.6512792   1.863622
0-6 months    ki1126311-ZVITAMBO    ZIMBABWE     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO    ZIMBABWE     0                    1                 1.5924426   0.5595553   4.531945
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 1.0000000   0.3362978   2.973555
6-24 months   ki0047075b-MAL-ED     INDIA        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED     INDIA        0                    1                 0.4559949   0.1723848   1.206205
6-24 months   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000109-EE          PAKISTAN     0                    1                 1.0305195   0.4055983   2.618281
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.2692521   0.7821181   2.059792
6-24 months   ki1126311-ZVITAMBO    ZIMBABWE     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO    ZIMBABWE     0                    1                 1.2106579   0.8853381   1.655517
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.1574538   0.8192839   1.635208


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0000000   -0.0220599   0.0220599
0-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.0247512   -0.0525483   0.0030459
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                 0.0018068   -0.0536997   0.0573133
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0228695   -0.0211832   0.0669222
0-24 months   ki1126311-ZVITAMBO    ZIMBABWE     1                    NA                 0.0016399   -0.0010616   0.0043415
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0044424   -0.0060786   0.0149633
0-6 months    ki0047075b-MAL-ED     INDIA        1                    NA                -0.0047494   -0.0325747   0.0230759
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0083060   -0.0358780   0.0524900
0-6 months    ki1126311-ZVITAMBO    ZIMBABWE     1                    NA                 0.0054913   -0.0069848   0.0179674
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0000000   -0.0220599   0.0220599
6-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.0247512   -0.0525483   0.0030459
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                 0.0018068   -0.0536997   0.0573133
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0228695   -0.0211832   0.0669222
6-24 months   ki1126311-ZVITAMBO    ZIMBABWE     1                    NA                 0.0016399   -0.0010616   0.0043415
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0044424   -0.0060786   0.0149633


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0000000   -0.5206498    0.3423864
0-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.2840493   -0.6252463   -0.0144817
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                 0.0243271   -1.0987002    0.5464156
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.1597896   -0.2101039    0.4166174
0-24 months   ki1126311-ZVITAMBO    ZIMBABWE     1                    NA                 0.0881313   -0.0685056    0.2218061
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0546568   -0.0858870    0.1770103
0-6 months    ki0047075b-MAL-ED     INDIA        1                    NA                -0.0599926   -0.4756633    0.2385903
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0665843   -0.3638154    0.3611563
0-6 months    ki1126311-ZVITAMBO    ZIMBABWE     1                    NA                 0.2125908   -0.4318399    0.5669814
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0000000   -0.5206498    0.3423864
6-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.2840493   -0.6252463   -0.0144817
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                 0.0243271   -1.0987002    0.5464156
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.1597896   -0.2101039    0.4166174
6-24 months   ki1126311-ZVITAMBO    ZIMBABWE     1                    NA                 0.0881313   -0.0685056    0.2218061
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0546568   -0.0858870    0.1770103
