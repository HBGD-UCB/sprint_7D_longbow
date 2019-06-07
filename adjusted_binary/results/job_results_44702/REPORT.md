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

**Outcome Variable:** wast_rec90d

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

agecat        studyid                   country                        earlybf    wast_rec90d   n_cell      n
------------  ------------------------  -----------------------------  --------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    0       26    122
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1       46    122
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    0       18    122
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1       32    122
0-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    0        3     23
0-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    1        5     23
0-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    0        3     23
0-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    1       12     23
0-24 months   ki0047075b-MAL-ED         INDIA                          1                    0       44    178
0-24 months   ki0047075b-MAL-ED         INDIA                          1                    1       62    178
0-24 months   ki0047075b-MAL-ED         INDIA                          0                    0       27    178
0-24 months   ki0047075b-MAL-ED         INDIA                          0                    1       45    178
0-24 months   ki0047075b-MAL-ED         NEPAL                          1                    0        9     93
0-24 months   ki0047075b-MAL-ED         NEPAL                          1                    1       33     93
0-24 months   ki0047075b-MAL-ED         NEPAL                          0                    0       11     93
0-24 months   ki0047075b-MAL-ED         NEPAL                          0                    1       40     93
0-24 months   ki0047075b-MAL-ED         PERU                           1                    0        5     34
0-24 months   ki0047075b-MAL-ED         PERU                           1                    1       25     34
0-24 months   ki0047075b-MAL-ED         PERU                           0                    0        1     34
0-24 months   ki0047075b-MAL-ED         PERU                           0                    1        3     34
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0        8     80
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1       42     80
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0        6     80
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1       24     80
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0        6     45
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1       35     45
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0        2     45
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1        2     45
0-24 months   ki1000109-EE              PAKISTAN                       1                    0       23    257
0-24 months   ki1000109-EE              PAKISTAN                       1                    1       14    257
0-24 months   ki1000109-EE              PAKISTAN                       0                    0      127    257
0-24 months   ki1000109-EE              PAKISTAN                       0                    1       93    257
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                    0        4    242
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                    1        3    242
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                    0      158    242
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                    1       77    242
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    0      104    311
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1      171    311
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    0       13    311
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1       23    311
0-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    0       58    505
0-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    1       75    505
0-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    0      183    505
0-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    1      189    505
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    0      752   3236
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1      821   3236
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    0      713   3236
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1      950   3236
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    0       23   3830
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    1        4   3830
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    0     2178   3830
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    1     1625   3830
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    0      273    568
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    1      107    568
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    0      143    568
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    1       45    568
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    0        7     62
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    1       30     62
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    0        6     62
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    1       19     62
0-6 months    ki0047075b-MAL-ED         BRAZIL                         1                    0        1     14
0-6 months    ki0047075b-MAL-ED         BRAZIL                         1                    1        4     14
0-6 months    ki0047075b-MAL-ED         BRAZIL                         0                    0        0     14
0-6 months    ki0047075b-MAL-ED         BRAZIL                         0                    1        9     14
0-6 months    ki0047075b-MAL-ED         INDIA                          1                    0       14     83
0-6 months    ki0047075b-MAL-ED         INDIA                          1                    1       33     83
0-6 months    ki0047075b-MAL-ED         INDIA                          0                    0       12     83
0-6 months    ki0047075b-MAL-ED         INDIA                          0                    1       24     83
0-6 months    ki0047075b-MAL-ED         NEPAL                          1                    0        5     43
0-6 months    ki0047075b-MAL-ED         NEPAL                          1                    1       15     43
0-6 months    ki0047075b-MAL-ED         NEPAL                          0                    0        4     43
0-6 months    ki0047075b-MAL-ED         NEPAL                          0                    1       19     43
0-6 months    ki0047075b-MAL-ED         PERU                           1                    0        0     11
0-6 months    ki0047075b-MAL-ED         PERU                           1                    1        9     11
0-6 months    ki0047075b-MAL-ED         PERU                           0                    0        0     11
0-6 months    ki0047075b-MAL-ED         PERU                           0                    1        2     11
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0        3     30
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1       14     30
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0        2     30
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1       11     30
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0        1     12
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1       10     12
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0        0     12
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1        1     12
0-6 months    ki1000109-EE              PAKISTAN                       1                    0        8    108
0-6 months    ki1000109-EE              PAKISTAN                       1                    1        8    108
0-6 months    ki1000109-EE              PAKISTAN                       0                    0       39    108
0-6 months    ki1000109-EE              PAKISTAN                       0                    1       53    108
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    0        4    107
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    1        2    107
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    0       56    107
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    1       45    107
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    0       13    198
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    1      155    198
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    0        8    198
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    1       22    198
0-6 months    ki1113344-GMS-Nepal       NEPAL                          1                    0       22    164
0-6 months    ki1113344-GMS-Nepal       NEPAL                          1                    1       20    164
0-6 months    ki1113344-GMS-Nepal       NEPAL                          0                    0       50    164
0-6 months    ki1113344-GMS-Nepal       NEPAL                          0                    1       72    164
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    0      273   2288
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    1      772   2288
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    0      308   2288
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    1      935   2288
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    0       21   2417
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    1        4   2417
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    0      767   2417
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    1     1625   2417
0-6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    0       38    147
0-6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    1       59    147
0-6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    0       27    147
0-6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    1       23    147
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    0       19     60
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1       16     60
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    0       12     60
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1       13     60
6-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    0        2      9
6-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    1        1      9
6-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    0        3      9
6-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    1        3      9
6-24 months   ki0047075b-MAL-ED         INDIA                          1                    0       30     95
6-24 months   ki0047075b-MAL-ED         INDIA                          1                    1       29     95
6-24 months   ki0047075b-MAL-ED         INDIA                          0                    0       15     95
6-24 months   ki0047075b-MAL-ED         INDIA                          0                    1       21     95
6-24 months   ki0047075b-MAL-ED         NEPAL                          1                    0        4     50
6-24 months   ki0047075b-MAL-ED         NEPAL                          1                    1       18     50
6-24 months   ki0047075b-MAL-ED         NEPAL                          0                    0        7     50
6-24 months   ki0047075b-MAL-ED         NEPAL                          0                    1       21     50
6-24 months   ki0047075b-MAL-ED         PERU                           1                    0        5     23
6-24 months   ki0047075b-MAL-ED         PERU                           1                    1       16     23
6-24 months   ki0047075b-MAL-ED         PERU                           0                    0        1     23
6-24 months   ki0047075b-MAL-ED         PERU                           0                    1        1     23
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0        5     50
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1       28     50
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0        4     50
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1       13     50
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0        5     33
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1       25     33
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0        2     33
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1        1     33
6-24 months   ki1000109-EE              PAKISTAN                       1                    0       15    149
6-24 months   ki1000109-EE              PAKISTAN                       1                    1        6    149
6-24 months   ki1000109-EE              PAKISTAN                       0                    0       88    149
6-24 months   ki1000109-EE              PAKISTAN                       0                    1       40    149
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                    0        0    135
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                    1        1    135
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                    0      102    135
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                    1       32    135
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    0       91    113
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1       16    113
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    0        5    113
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1        1    113
6-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    0       36    341
6-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    1       55    341
6-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    0      133    341
6-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    1      117    341
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    0      479    948
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1       49    948
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    0      405    948
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1       15    948
6-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    0        2   1413
6-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    1        0   1413
6-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    0     1411   1413
6-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    1        0   1413
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    0      235    421
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    1       48    421
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    0      116    421
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    1       22    421


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
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
![](/tmp/5057ed12-0996-4143-b508-0aba7ca538db/9a9bea6f-5f7d-4126-b421-61e48f7f5874/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5057ed12-0996-4143-b508-0aba7ca538db/9a9bea6f-5f7d-4126-b421-61e48f7f5874/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5057ed12-0996-4143-b508-0aba7ca538db/9a9bea6f-5f7d-4126-b421-61e48f7f5874/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5057ed12-0996-4143-b508-0aba7ca538db/9a9bea6f-5f7d-4126-b421-61e48f7f5874/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH     1                    NA                0.6388889   0.5260667   0.7517111
0-24 months   ki0047075b-MAL-ED       BANGLADESH     0                    NA                0.6400000   0.5033508   0.7766492
0-24 months   ki0047075b-MAL-ED       INDIA          1                    NA                0.5849057   0.4818334   0.6879779
0-24 months   ki0047075b-MAL-ED       INDIA          0                    NA                0.6250000   0.4991100   0.7508900
0-24 months   ki0047075b-MAL-ED       NEPAL          1                    NA                0.7857143   0.6655613   0.9058673
0-24 months   ki0047075b-MAL-ED       NEPAL          0                    NA                0.7843137   0.6765475   0.8920799
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   1                    NA                0.8400000   0.7318211   0.9481789
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   0                    NA                0.8000000   0.6657395   0.9342605
0-24 months   ki1000109-EE            PAKISTAN       1                    NA                0.3783784   0.2062576   0.5504991
0-24 months   ki1000109-EE            PAKISTAN       0                    NA                0.4227273   0.3522484   0.4932061
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                0.6218182   0.5653577   0.6782786
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                0.6388889   0.4605429   0.8172349
0-24 months   ki1113344-GMS-Nepal     NEPAL          1                    NA                0.5639098   0.4685686   0.6592509
0-24 months   ki1113344-GMS-Nepal     NEPAL          0                    NA                0.5080645   0.4534457   0.5626833
0-24 months   ki1126311-ZVITAMBO      ZIMBABWE       1                    NA                0.5219326   0.4971580   0.5467072
0-24 months   ki1126311-ZVITAMBO      ZIMBABWE       0                    NA                0.5712568   0.5471759   0.5953376
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     1                    NA                0.2815789   0.2368158   0.3263421
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     0                    NA                0.2393617   0.1741126   0.3046108
0-6 months    ki0047075b-MAL-ED       BANGLADESH     1                    NA                0.8108108   0.6847315   0.9368901
0-6 months    ki0047075b-MAL-ED       BANGLADESH     0                    NA                0.7600000   0.5939976   0.9260024
0-6 months    ki0047075b-MAL-ED       INDIA          1                    NA                0.7021277   0.5683870   0.8358683
0-6 months    ki0047075b-MAL-ED       INDIA          0                    NA                0.6666667   0.5061820   0.8271513
0-6 months    ki1000109-EE            PAKISTAN       1                    NA                0.5000000   0.2418553   0.7581447
0-6 months    ki1000109-EE            PAKISTAN       0                    NA                0.5760870   0.4734543   0.6787196
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                0.9226190   0.8817191   0.9635190
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     0                    NA                0.7333333   0.5730670   0.8935997
0-6 months    ki1113344-GMS-Nepal     NEPAL          1                    NA                0.4761905   0.3248431   0.6275378
0-6 months    ki1113344-GMS-Nepal     NEPAL          0                    NA                0.5901639   0.5023101   0.6780178
0-6 months    ki1126311-ZVITAMBO      ZIMBABWE       1                    NA                0.7387560   0.7121574   0.7653545
0-6 months    ki1126311-ZVITAMBO      ZIMBABWE       0                    NA                0.7522124   0.7282062   0.7762186
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     1                    NA                0.6082474   0.5107730   0.7057218
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     0                    NA                0.4600000   0.3213815   0.5986185
6-24 months   ki0047075b-MAL-ED       BANGLADESH     1                    NA                0.4571429   0.2911813   0.6231045
6-24 months   ki0047075b-MAL-ED       BANGLADESH     0                    NA                0.5200000   0.3060179   0.7339821
6-24 months   ki0047075b-MAL-ED       INDIA          1                    NA                0.4915254   0.3502250   0.6328259
6-24 months   ki0047075b-MAL-ED       INDIA          0                    NA                0.5833333   0.3895024   0.7771642
6-24 months   ki1000109-EE            PAKISTAN       1                    NA                0.2857143   0.0885683   0.4828603
6-24 months   ki1000109-EE            PAKISTAN       0                    NA                0.3125000   0.2313361   0.3936639
6-24 months   ki1113344-GMS-Nepal     NEPAL          1                    NA                0.6043956   0.4936075   0.7151837
6-24 months   ki1113344-GMS-Nepal     NEPAL          0                    NA                0.4680000   0.4004392   0.5355608
6-24 months   ki1126311-ZVITAMBO      ZIMBABWE       1                    NA                0.0928030   0.0685822   0.1170238
6-24 months   ki1126311-ZVITAMBO      ZIMBABWE       0                    NA                0.0357143   0.0174526   0.0539760
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     1                    NA                0.1696113   0.1280255   0.2111972
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     0                    NA                0.1594203   0.0974377   0.2214028


### Parameter: E(Y)


agecat        studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH     NA                   NA                0.6393443   0.5524803   0.7262082
0-24 months   ki0047075b-MAL-ED       INDIA          NA                   NA                0.6011236   0.5212729   0.6809743
0-24 months   ki0047075b-MAL-ED       NEPAL          NA                   NA                0.7849462   0.7049947   0.8648978
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.8250000   0.7407860   0.9092140
0-24 months   ki1000109-EE            PAKISTAN       NA                   NA                0.4163424   0.3511349   0.4815500
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.6237942   0.5698223   0.6777662
0-24 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.5227723   0.4753649   0.5701796
0-24 months   ki1126311-ZVITAMBO      ZIMBABWE       NA                   NA                0.5472806   0.5299898   0.5645714
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.2676056   0.2306743   0.3045370
0-6 months    ki0047075b-MAL-ED       BANGLADESH     NA                   NA                0.7903226   0.6894772   0.8911679
0-6 months    ki0047075b-MAL-ED       INDIA          NA                   NA                0.6867470   0.5837430   0.7897510
0-6 months    ki1000109-EE            PAKISTAN       NA                   NA                0.5648148   0.4692893   0.6603404
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.8939394   0.8505280   0.9373508
0-6 months    ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.5609756   0.4845156   0.6374356
0-6 months    ki1126311-ZVITAMBO      ZIMBABWE       NA                   NA                0.7460664   0.7282412   0.7638917
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.5578231   0.4772634   0.6383828
6-24 months   ki0047075b-MAL-ED       BANGLADESH     NA                   NA                0.4833333   0.3508378   0.6158289
6-24 months   ki0047075b-MAL-ED       INDIA          NA                   NA                0.5263158   0.4116286   0.6410029
6-24 months   ki1000109-EE            PAKISTAN       NA                   NA                0.3087248   0.2336906   0.3837591
6-24 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.5043988   0.4461732   0.5626244
6-24 months   ki1126311-ZVITAMBO      ZIMBABWE       NA                   NA                0.0675105   0.0516864   0.0833347
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     NA                   NA                0.1662708   0.1317213   0.2008203


### Parameter: RR


agecat        studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       BANGLADESH     0                    1                 1.0017391   0.7589724   1.3221578
0-24 months   ki0047075b-MAL-ED       INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       INDIA          0                    1                 1.0685484   0.8176361   1.3964595
0-24 months   ki0047075b-MAL-ED       NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       NEPAL          0                    1                 0.9982175   0.8121387   1.2269310
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   0                    1                 0.9523810   0.7706578   1.1769549
0-24 months   ki1000109-EE            PAKISTAN       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE            PAKISTAN       0                    1                 1.1172078   0.6882773   1.8134453
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     0                    1                 1.0274529   0.7658822   1.3783574
0-24 months   ki1113344-GMS-Nepal     NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal     NEPAL          0                    1                 0.9009677   0.7373498   1.1008925
0-24 months   ki1126311-ZVITAMBO      ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO      ZIMBABWE       0                    1                 1.0945029   1.0271681   1.1662518
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     0                    1                 0.8500696   0.6200219   1.1654723
0-6 months    ki0047075b-MAL-ED       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED       BANGLADESH     0                    1                 0.9373333   0.7168762   1.2255865
0-6 months    ki0047075b-MAL-ED       INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED       INDIA          0                    1                 0.9494949   0.6985062   1.2906696
0-6 months    ki1000109-EE            PAKISTAN       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE            PAKISTAN       0                    1                 1.1521739   0.6673022   1.9893607
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     0                    1                 0.7948387   0.6359650   0.9934016
0-6 months    ki1113344-GMS-Nepal     NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal     NEPAL          0                    1                 1.2393443   0.8725114   1.7604058
0-6 months    ki1126311-ZVITAMBO      ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO      ZIMBABWE       0                    1                 1.0182150   0.9703857   1.0684017
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     0                    1                 0.7562712   0.5375886   1.0639103
6-24 months   ki0047075b-MAL-ED       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED       BANGLADESH     0                    1                 1.1375000   0.6572162   1.9687681
6-24 months   ki0047075b-MAL-ED       INDIA          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED       INDIA          0                    1                 1.1867816   0.7648402   1.8414966
6-24 months   ki1000109-EE            PAKISTAN       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE            PAKISTAN       0                    1                 1.0937500   0.5231204   2.2868333
6-24 months   ki1113344-GMS-Nepal     NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal     NEPAL          0                    1                 0.7743273   0.6131173   0.9779251
6-24 months   ki1126311-ZVITAMBO      ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO      ZIMBABWE       0                    1                 0.3848397   0.2167505   0.6832812
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     0                    1                 0.9399155   0.5935144   1.4884914


### Parameter: PAR


agecat        studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH     1                    NA                 0.0004554   -0.0722971    0.0732079
0-24 months   ki0047075b-MAL-ED       INDIA          1                    NA                 0.0162179   -0.0496483    0.0820842
0-24 months   ki0047075b-MAL-ED       NEPAL          1                    NA                -0.0007680   -0.0895672    0.0880311
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   1                    NA                -0.0150000   -0.0795179    0.0495179
0-24 months   ki1000109-EE            PAKISTAN       1                    NA                 0.0379640   -0.1212697    0.1971977
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                 0.0019760   -0.0197759    0.0237280
0-24 months   ki1113344-GMS-Nepal     NEPAL          1                    NA                -0.0411375   -0.1223194    0.0400444
0-24 months   ki1126311-ZVITAMBO      ZIMBABWE       1                    NA                 0.0253480    0.0075431    0.0431529
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     1                    NA                -0.0139733   -0.0402533    0.0123067
0-6 months    ki0047075b-MAL-ED       BANGLADESH     1                    NA                -0.0204882   -0.1046649    0.0636884
0-6 months    ki0047075b-MAL-ED       INDIA          1                    NA                -0.0153807   -0.1061789    0.0754175
0-6 months    ki1000109-EE            PAKISTAN       1                    NA                 0.0648148   -0.1718685    0.3014982
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                -0.0286797   -0.0555072   -0.0018521
0-6 months    ki1113344-GMS-Nepal     NEPAL          1                    NA                 0.0847851   -0.0454768    0.2150471
0-6 months    ki1126311-ZVITAMBO      ZIMBABWE       1                    NA                 0.0073105   -0.0121571    0.0267780
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     1                    NA                -0.0504243   -0.1091785    0.0083299
6-24 months   ki0047075b-MAL-ED       BANGLADESH     1                    NA                 0.0261905   -0.0867165    0.1390975
6-24 months   ki0047075b-MAL-ED       INDIA          1                    NA                 0.0347904   -0.0564970    0.1260777
6-24 months   ki1000109-EE            PAKISTAN       1                    NA                 0.0230105   -0.1601382    0.2061593
6-24 months   ki1113344-GMS-Nepal     NEPAL          1                    NA                -0.0999968   -0.1958003   -0.0041933
6-24 months   ki1126311-ZVITAMBO      ZIMBABWE       1                    NA                -0.0252925   -0.0388699   -0.0117151
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     1                    NA                -0.0033405   -0.0278290    0.0211480


### Parameter: PAF


agecat        studyid                 country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH     1                    NA                 0.0007123   -0.1198113    0.1082640
0-24 months   ki0047075b-MAL-ED       INDIA          1                    NA                 0.0269794   -0.0890312    0.1306318
0-24 months   ki0047075b-MAL-ED       NEPAL          1                    NA                -0.0009785   -0.1207455    0.1059898
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA   1                    NA                -0.0181818   -0.0994081    0.0570433
0-24 months   ki1000109-EE            PAKISTAN       1                    NA                 0.0911846   -0.3847583    0.4035455
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                 0.0031678   -0.0322968    0.0374140
0-24 months   ki1113344-GMS-Nepal     NEPAL          1                    NA                -0.0786910   -0.2456361    0.0658794
0-24 months   ki1126311-ZVITAMBO      ZIMBABWE       1                    NA                 0.0463162    0.0131930    0.0783277
0-24 months   kiGH5241-JiVitA-4       BANGLADESH     1                    NA                -0.0522161   -0.1556454    0.0419564
0-6 months    ki0047075b-MAL-ED       BANGLADESH     1                    NA                -0.0259239   -0.1385086    0.0755276
0-6 months    ki0047075b-MAL-ED       INDIA          1                    NA                -0.0223964   -0.1637871    0.1018165
0-6 months    ki1000109-EE            PAKISTAN       1                    NA                 0.1147541   -0.4229150    0.4492571
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH     1                    NA                -0.0320823   -0.0632092   -0.0018667
0-6 months    ki1113344-GMS-Nepal     NEPAL          1                    NA                 0.1511387   -0.1172566    0.3550582
0-6 months    ki1126311-ZVITAMBO      ZIMBABWE       1                    NA                 0.0097987   -0.0166466    0.0355561
0-6 months    kiGH5241-JiVitA-4       BANGLADESH     1                    NA                -0.0903948   -0.2025283    0.0112825
6-24 months   ki0047075b-MAL-ED       BANGLADESH     1                    NA                 0.0541872   -0.2096393    0.2604722
6-24 months   ki0047075b-MAL-ED       INDIA          1                    NA                 0.0661017   -0.1239559    0.2240211
6-24 months   ki1000109-EE            PAKISTAN       1                    NA                 0.0745342   -0.7570615    0.5125458
6-24 months   ki1113344-GMS-Nepal     NEPAL          1                    NA                -0.1982494   -0.4063801   -0.0209201
6-24 months   ki1126311-ZVITAMBO      ZIMBABWE       1                    NA                -0.3746449   -0.5771076   -0.1981736
6-24 months   kiGH5241-JiVitA-4       BANGLADESH     1                    NA                -0.0200909   -0.1787851    0.1172391
