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

**Outcome Variable:** ever_co

## Predictor Variables

**Intervention Variable:** earlybf

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* vagbrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_vagbrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                   country                        earlybf    ever_co   n_cell       n
------------  ------------------------  -----------------------------  --------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                0      140     262
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                1       21     262
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                0       84     262
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                1       17     262
0-24 months   ki0047075b-MAL-ED         BRAZIL                         1                0      108     233
0-24 months   ki0047075b-MAL-ED         BRAZIL                         1                1        0     233
0-24 months   ki0047075b-MAL-ED         BRAZIL                         0                0      123     233
0-24 months   ki0047075b-MAL-ED         BRAZIL                         0                1        2     233
0-24 months   ki0047075b-MAL-ED         INDIA                          1                0      115     250
0-24 months   ki0047075b-MAL-ED         INDIA                          1                1       33     250
0-24 months   ki0047075b-MAL-ED         INDIA                          0                0       81     250
0-24 months   ki0047075b-MAL-ED         INDIA                          0                1       21     250
0-24 months   ki0047075b-MAL-ED         NEPAL                          1                0       89     240
0-24 months   ki0047075b-MAL-ED         NEPAL                          1                1        9     240
0-24 months   ki0047075b-MAL-ED         NEPAL                          0                0      130     240
0-24 months   ki0047075b-MAL-ED         NEPAL                          0                1       12     240
0-24 months   ki0047075b-MAL-ED         PERU                           1                0      214     302
0-24 months   ki0047075b-MAL-ED         PERU                           1                1       11     302
0-24 months   ki0047075b-MAL-ED         PERU                           0                0       76     302
0-24 months   ki0047075b-MAL-ED         PERU                           0                1        1     302
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                0      170     297
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                1       11     297
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                0      105     297
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                1       11     297
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                0      197     261
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                1       19     261
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                0       41     261
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                1        4     261
0-24 months   ki1000109-EE              PAKISTAN                       1                0       47     379
0-24 months   ki1000109-EE              PAKISTAN                       1                1       22     379
0-24 months   ki1000109-EE              PAKISTAN                       0                0      188     379
0-24 months   ki1000109-EE              PAKISTAN                       0                1      122     379
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                0       81    1472
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                1       22    1472
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                0     1042    1472
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                1      327    1472
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                0      591     758
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                1       66     758
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                0       96     758
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                1        5     758
0-24 months   ki1113344-GMS-Nepal       NEPAL                          1                0      128     548
0-24 months   ki1113344-GMS-Nepal       NEPAL                          1                1       35     548
0-24 months   ki1113344-GMS-Nepal       NEPAL                          0                0      247     548
0-24 months   ki1113344-GMS-Nepal       NEPAL                          0                1      138     548
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                0     6346   12404
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                1      237   12404
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                0     5540   12404
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                1      281   12404
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                0      137   26844
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                1       29   26844
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                0    24325   26844
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                1     2353   26844
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                0     2898    5442
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                1      536    5442
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                0     1666    5442
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                1      342    5442
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     1                0      155     262
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     1                1        6     262
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     0                0       98     262
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     0                1        3     262
0-6 months    ki0047075b-MAL-ED         BRAZIL                         1                0      108     233
0-6 months    ki0047075b-MAL-ED         BRAZIL                         1                1        0     233
0-6 months    ki0047075b-MAL-ED         BRAZIL                         0                0      125     233
0-6 months    ki0047075b-MAL-ED         BRAZIL                         0                1        0     233
0-6 months    ki0047075b-MAL-ED         INDIA                          1                0      138     250
0-6 months    ki0047075b-MAL-ED         INDIA                          1                1       10     250
0-6 months    ki0047075b-MAL-ED         INDIA                          0                0       94     250
0-6 months    ki0047075b-MAL-ED         INDIA                          0                1        8     250
0-6 months    ki0047075b-MAL-ED         NEPAL                          1                0       96     240
0-6 months    ki0047075b-MAL-ED         NEPAL                          1                1        2     240
0-6 months    ki0047075b-MAL-ED         NEPAL                          0                0      137     240
0-6 months    ki0047075b-MAL-ED         NEPAL                          0                1        5     240
0-6 months    ki0047075b-MAL-ED         PERU                           1                0      223     302
0-6 months    ki0047075b-MAL-ED         PERU                           1                1        2     302
0-6 months    ki0047075b-MAL-ED         PERU                           0                0       77     302
0-6 months    ki0047075b-MAL-ED         PERU                           0                1        0     302
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                0      180     297
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                1        1     297
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                0      112     297
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                1        4     297
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                0      213     261
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                1        3     261
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                0       44     261
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                1        1     261
0-6 months    ki1000109-EE              PAKISTAN                       1                0       58     379
0-6 months    ki1000109-EE              PAKISTAN                       1                1       11     379
0-6 months    ki1000109-EE              PAKISTAN                       0                0      268     379
0-6 months    ki1000109-EE              PAKISTAN                       0                1       42     379
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          1                0       95    1463
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          1                1        7    1463
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          0                0     1264    1463
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          0                1       97    1463
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                0      643     758
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                1       14     758
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                0       98     758
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                1        3     758
0-6 months    ki1113344-GMS-Nepal       NEPAL                          1                0      159     548
0-6 months    ki1113344-GMS-Nepal       NEPAL                          1                1        4     548
0-6 months    ki1113344-GMS-Nepal       NEPAL                          0                0      368     548
0-6 months    ki1113344-GMS-Nepal       NEPAL                          0                1       17     548
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                0     6489   12320
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                1       56   12320
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                0     5686   12320
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                1       89   12320
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                0      137   26738
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                1       27   26738
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                0    25547   26738
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                1     1027   26738
0-6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                0     3311    5092
0-6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                1       74    5092
0-6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                0     1646    5092
0-6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                1       61    5092
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                0      127     238
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                1       19     238
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                0       77     238
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                1       15     238
6-24 months   ki0047075b-MAL-ED         BRAZIL                         1                0       95     207
6-24 months   ki0047075b-MAL-ED         BRAZIL                         1                1        0     207
6-24 months   ki0047075b-MAL-ED         BRAZIL                         0                0      110     207
6-24 months   ki0047075b-MAL-ED         BRAZIL                         0                1        2     207
6-24 months   ki0047075b-MAL-ED         INDIA                          1                0      109     235
6-24 months   ki0047075b-MAL-ED         INDIA                          1                1       30     235
6-24 months   ki0047075b-MAL-ED         INDIA                          0                0       79     235
6-24 months   ki0047075b-MAL-ED         INDIA                          0                1       17     235
6-24 months   ki0047075b-MAL-ED         NEPAL                          1                0       87     235
6-24 months   ki0047075b-MAL-ED         NEPAL                          1                1        8     235
6-24 months   ki0047075b-MAL-ED         NEPAL                          0                0      132     235
6-24 months   ki0047075b-MAL-ED         NEPAL                          0                1        8     235
6-24 months   ki0047075b-MAL-ED         PERU                           1                0      191     270
6-24 months   ki0047075b-MAL-ED         PERU                           1                1       10     270
6-24 months   ki0047075b-MAL-ED         PERU                           0                0       68     270
6-24 months   ki0047075b-MAL-ED         PERU                           0                1        1     270
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                0      147     255
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                1       11     255
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                0       89     255
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                1        8     255
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                0      185     245
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                1       18     245
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                0       39     245
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                1        3     245
6-24 months   ki1000109-EE              PAKISTAN                       1                0       49     373
6-24 months   ki1000109-EE              PAKISTAN                       1                1       19     373
6-24 months   ki1000109-EE              PAKISTAN                       0                0      192     373
6-24 months   ki1000109-EE              PAKISTAN                       0                1      113     373
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                0       81    1389
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                1       20    1389
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                0      994    1389
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                1      294    1389
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                0      571     730
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                1       61     730
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                0       96     730
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                1        2     730
6-24 months   ki1113344-GMS-Nepal       NEPAL                          1                0      122     536
6-24 months   ki1113344-GMS-Nepal       NEPAL                          1                1       35     536
6-24 months   ki1113344-GMS-Nepal       NEPAL                          0                0      244     536
6-24 months   ki1113344-GMS-Nepal       NEPAL                          0                1      135     536
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                0     4937    9509
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                1      190    9509
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                0     4183    9509
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                1      199    9509
6-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                0       32   17279
6-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                1        3   17279
6-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                0    15745   17279
6-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                1     1499   17279
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                0     2930    5429
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                1      498    5429
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                0     1697    5429
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                1      304    5429


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
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/315cf496-fa23-4917-b3d6-19596e630776/29861107-7a22-4998-9bf1-0df10c24fcb2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/315cf496-fa23-4917-b3d6-19596e630776/29861107-7a22-4998-9bf1-0df10c24fcb2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/315cf496-fa23-4917-b3d6-19596e630776/29861107-7a22-4998-9bf1-0df10c24fcb2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/315cf496-fa23-4917-b3d6-19596e630776/29861107-7a22-4998-9bf1-0df10c24fcb2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.1316598   0.0788695   0.1844502
0-24 months   ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.1658280   0.0938982   0.2377577
0-24 months   ki0047075b-MAL-ED         INDIA          1                    NA                0.2205503   0.1540208   0.2870799
0-24 months   ki0047075b-MAL-ED         INDIA          0                    NA                0.1931953   0.1172463   0.2691444
0-24 months   ki0047075b-MAL-ED         NEPAL          1                    NA                0.0918367   0.0345397   0.1491337
0-24 months   ki0047075b-MAL-ED         NEPAL          0                    NA                0.0845070   0.0386628   0.1303513
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                0.0568087   0.0217151   0.0919022
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                0.0842460   0.0299695   0.1385226
0-24 months   ki1000109-EE              PAKISTAN       1                    NA                0.2988885   0.1889134   0.4088636
0-24 months   ki1000109-EE              PAKISTAN       0                    NA                0.3973995   0.3428065   0.4519925
0-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.2390724   0.1210346   0.3571102
0-24 months   ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.2383331   0.1953451   0.2813211
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                0.1004566   0.0774553   0.1234579
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                0.0495050   0.0071725   0.0918374
0-24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                0.2162351   0.1502720   0.2821983
0-24 months   ki1113344-GMS-Nepal       NEPAL          0                    NA                0.3625648   0.3146182   0.4105114
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.0411933   0.0364067   0.0459798
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.0434509   0.0382855   0.0486163
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                0.1543566   0.1395588   0.1691544
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     0                    NA                0.0882712   0.0842802   0.0922622
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.1567891   0.1427462   0.1708321
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.1682556   0.1509379   0.1855733
0-6 months    ki0047075b-MAL-ED         INDIA          1                    NA                0.0675676   0.0270479   0.1080872
0-6 months    ki0047075b-MAL-ED         INDIA          0                    NA                0.0784314   0.0261524   0.1307104
0-6 months    ki1000109-EE              PAKISTAN       1                    NA                0.1415450   0.0581030   0.2249870
0-6 months    ki1000109-EE              PAKISTAN       0                    NA                0.1408646   0.1015215   0.1802076
0-6 months    ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.0686275   0.0186437   0.1186112
0-6 months    ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.0712711   0.0481167   0.0944255
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.0086445   0.0064145   0.0108745
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.0150577   0.0119401   0.0181753
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     1                    NA                0.1643110   0.1490713   0.1795508
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     0                    NA                0.0386519   0.0360981   0.0412058
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.0243359   0.0183858   0.0302861
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.0301759   0.0216426   0.0387092
6-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.1339517   0.0801392   0.1877642
6-24 months   ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.1651740   0.0894795   0.2408686
6-24 months   ki0047075b-MAL-ED         INDIA          1                    NA                0.2187477   0.1505836   0.2869119
6-24 months   ki0047075b-MAL-ED         INDIA          0                    NA                0.1762335   0.1001170   0.2523500
6-24 months   ki0047075b-MAL-ED         NEPAL          1                    NA                0.0842105   0.0282485   0.1401725
6-24 months   ki0047075b-MAL-ED         NEPAL          0                    NA                0.0571429   0.0186115   0.0956742
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                0.0696203   0.0298580   0.1093825
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                0.0824742   0.0276233   0.1373251
6-24 months   ki1000109-EE              PAKISTAN       1                    NA                0.2778103   0.1654765   0.3901441
6-24 months   ki1000109-EE              PAKISTAN       0                    NA                0.3724917   0.3181933   0.4267901
6-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.2047060   0.0882877   0.3211243
6-24 months   ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.2278824   0.1902459   0.2655189
6-24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                0.2273175   0.1594182   0.2952169
6-24 months   ki1113344-GMS-Nepal       NEPAL          0                    NA                0.3586425   0.3103582   0.4069268
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.0396005   0.0341795   0.0450215
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.0436386   0.0375053   0.0497719
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.1450311   0.1315671   0.1584951
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.1512234   0.1345645   0.1678823


### Parameter: E(Y)


agecat        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.1450382   0.1023171   0.1877593
0-24 months   ki0047075b-MAL-ED         INDIA          NA                   NA                0.2160000   0.1648868   0.2671132
0-24 months   ki0047075b-MAL-ED         NEPAL          NA                   NA                0.0875000   0.0516764   0.1233236
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   NA                   NA                0.0740741   0.0442393   0.1039089
0-24 months   ki1000109-EE              PAKISTAN       NA                   NA                0.3799472   0.3310169   0.4288776
0-24 months   ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.2370924   0.1969570   0.2772278
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   ki1113344-GMS-Nepal       NEPAL          NA                   NA                0.3156934   0.2767430   0.3546439
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0417607   0.0382402   0.0452812
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.0887349   0.0848433   0.0926265
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.1613377   0.1500062   0.1726692
0-6 months    ki0047075b-MAL-ED         INDIA          NA                   NA                0.0720000   0.0398938   0.1041062
0-6 months    ki1000109-EE              PAKISTAN       NA                   NA                0.1398417   0.1048786   0.1748048
0-6 months    ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.0710868   0.0489978   0.0931759
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0117695   0.0098650   0.0136739
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.0394196   0.0369302   0.0419089
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.0265122   0.0211694   0.0318550
6-24 months   ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.1428571   0.0983068   0.1874075
6-24 months   ki0047075b-MAL-ED         INDIA          NA                   NA                0.2000000   0.1487493   0.2512507
6-24 months   ki0047075b-MAL-ED         NEPAL          NA                   NA                0.0680851   0.0358110   0.1003592
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   NA                   NA                0.0745098   0.0422157   0.1068040
6-24 months   ki1000109-EE              PAKISTAN       NA                   NA                0.3538874   0.3052956   0.4024792
6-24 months   ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.2260619   0.1909133   0.2612105
6-24 months   ki1113344-GMS-Nepal       NEPAL          NA                   NA                0.3171642   0.2777301   0.3565982
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0409086   0.0369272   0.0448901
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.1477252   0.1371297   0.1583206


### Parameter: RR


agecat        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         BANGLADESH     0                    1                 1.2595181   0.6963558   2.2781255
0-24 months   ki0047075b-MAL-ED         INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         INDIA          0                    1                 0.8759693   0.5382899   1.4254813
0-24 months   ki0047075b-MAL-ED         NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         NEPAL          0                    1                 0.9201878   0.4025457   2.1034771
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   0                    1                 1.4829778   0.6048865   3.6357617
0-24 months   ki1000109-EE              PAKISTAN       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE              PAKISTAN       0                    1                 1.3295911   0.8983032   1.9679463
0-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA          0                    1                 0.9969078   0.5815983   1.7087827
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     0                    1                 0.4927993   0.2033366   1.1943305
0-24 months   ki1113344-GMS-Nepal       NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal       NEPAL          0                    1                 1.6767155   1.2031218   2.3367333
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    1                 1.0548069   0.8978136   1.2392523
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     0                    1                 0.5718652   0.5135230   0.6368359
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    1                 1.0731331   0.9411722   1.2235961
0-6 months    ki0047075b-MAL-ED         INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED         INDIA          0                    1                 1.1607843   0.4735377   2.8454338
0-6 months    ki1000109-EE              PAKISTAN       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE              PAKISTAN       0                    1                 0.9951929   0.5188216   1.9089583
0-6 months    ki1000304b-SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed   INDIA          0                    1                 1.0385221   0.4797340   2.2481797
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       0                    1                 1.7418808   1.2540809   2.4194203
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     0                    1                 0.2352364   0.2091177   0.2646173
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     0                    1                 1.2399740   0.8880147   1.7314301
6-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED         BANGLADESH     0                    1                 1.2330865   0.6756727   2.2503534
6-24 months   ki0047075b-MAL-ED         INDIA          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED         INDIA          0                    1                 0.8056473   0.4753809   1.3653631
6-24 months   ki0047075b-MAL-ED         NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED         NEPAL          0                    1                 0.6785714   0.2632902   1.7488658
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   0                    1                 1.1846298   0.4930162   2.8464536
6-24 months   ki1000109-EE              PAKISTAN       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE              PAKISTAN       0                    1                 1.3408131   0.8726289   2.0601880
6-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA          0                    1                 1.1132181   0.6041076   2.0513807
6-24 months   ki1113344-GMS-Nepal       NEPAL          1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal       NEPAL          0                    1                 1.5777161   1.1379351   2.1874606
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    1                 1.1019698   0.9068837   1.3390223
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    1                 1.0426964   0.9042157   1.2023854


### Parameter: PAR


agecat        studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                 0.0133783   -0.0221762    0.0489328
0-24 months   ki0047075b-MAL-ED         INDIA          1                    NA                -0.0045503   -0.0449134    0.0358127
0-24 months   ki0047075b-MAL-ED         NEPAL          1                    NA                -0.0043367   -0.0477557    0.0390822
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                 0.0172654   -0.0081856    0.0427164
0-24 months   ki1000109-EE              PAKISTAN       1                    NA                 0.0810587   -0.0195965    0.1817140
0-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.0019800   -0.1230519    0.1190919
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                -0.0067891   -0.0133260   -0.0002522
0-24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                 0.0994583    0.0408139    0.1581026
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                 0.0005675   -0.0028550    0.0039899
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                -0.0656217   -0.0807195   -0.0505239
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                 0.0045486   -0.0033762    0.0124734
0-6 months    ki0047075b-MAL-ED         INDIA          1                    NA                 0.0044324   -0.0225622    0.0314270
0-6 months    ki1000109-EE              PAKISTAN       1                    NA                -0.0017033   -0.0767749    0.0733682
0-6 months    ki1000304b-SAS-CompFeed   INDIA          1                    NA                 0.0024594   -0.0470533    0.0519720
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                 0.0031250    0.0013183    0.0049317
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     1                    NA                -0.1248915   -0.1401387   -0.1096443
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     1                    NA                 0.0021762   -0.0009261    0.0052785
6-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                 0.0089054   -0.0268981    0.0447090
6-24 months   ki0047075b-MAL-ED         INDIA          1                    NA                -0.0187477   -0.0600672    0.0225717
6-24 months   ki0047075b-MAL-ED         NEPAL          1                    NA                -0.0161254   -0.0566386    0.0243877
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                 0.0048896   -0.0208923    0.0306714
6-24 months   ki1000109-EE              PAKISTAN       1                    NA                 0.0760771   -0.0273672    0.1795214
6-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                 0.0213559   -0.0979447    0.1406566
6-24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                 0.0898467    0.0298099    0.1498835
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                 0.0013081   -0.0026169    0.0052330
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                 0.0026941   -0.0051360    0.0105241


### Parameter: PAF


agecat        studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                 0.0922401   -0.1876172    0.3061500
0-24 months   ki0047075b-MAL-ED         INDIA          1                    NA                -0.0210664   -0.2259364    0.1495672
0-24 months   ki0047075b-MAL-ED         NEPAL          1                    NA                -0.0495627   -0.6834445    0.3456382
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                 0.2330827   -0.1907663    0.5060642
0-24 months   ki1000109-EE              PAKISTAN       1                    NA                 0.2133421   -0.1019549    0.4384246
0-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                -0.0083512   -0.6737707    0.3925260
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                -0.0724805   -0.1430392   -0.0062774
0-24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                 0.3150471    0.1030753    0.4769232
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                 0.0135883   -0.0718133    0.0921852
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                -0.7395252   -0.9287552   -0.5688604
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                 0.0281930   -0.0223003    0.0761925
0-6 months    ki0047075b-MAL-ED         INDIA          1                    NA                 0.0615616   -0.3980327    0.3700672
0-6 months    ki1000109-EE              PAKISTAN       1                    NA                -0.0121804   -0.7201778    0.4044167
0-6 months    ki1000304b-SAS-CompFeed   INDIA          1                    NA                 0.0345965   -0.9819848    0.5297624
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                 0.2655153    0.1022526    0.3990874
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     1                    NA                -3.1682625   -3.6437443   -2.7414662
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     1                    NA                 0.0820841   -0.0424770    0.1917620
6-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                 0.0623381   -0.2230040    0.2811063
6-24 months   ki0047075b-MAL-ED         INDIA          1                    NA                -0.0937387   -0.3206830    0.0942078
6-24 months   ki0047075b-MAL-ED         NEPAL          1                    NA                -0.2368421   -0.9869236    0.2300769
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                 0.0656229   -0.3517250    0.3541138
6-24 months   ki1000109-EE              PAKISTAN       1                    NA                 0.2149754   -0.1394629    0.4591631
6-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                 0.0944695   -0.6161838    0.4926409
6-24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                 0.2832813    0.0676917    0.4490173
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                 0.0319758   -0.0687343    0.1231957
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                 0.0182370   -0.0363053    0.0699087
