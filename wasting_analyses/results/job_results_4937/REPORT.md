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

agecat        studyid                   country                        earlybf    wast_rec90d   n_cell       n
------------  ------------------------  -----------------------------  --------  ------------  -------  ------
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    0       18     122
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1       32     122
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    0       26     122
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1       46     122
0-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    0        3      23
0-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    1       12      23
0-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    0        3      23
0-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    1        5      23
0-24 months   ki0047075b-MAL-ED         INDIA                          0                    0       27     178
0-24 months   ki0047075b-MAL-ED         INDIA                          0                    1       45     178
0-24 months   ki0047075b-MAL-ED         INDIA                          1                    0       44     178
0-24 months   ki0047075b-MAL-ED         INDIA                          1                    1       62     178
0-24 months   ki0047075b-MAL-ED         NEPAL                          0                    0       11      93
0-24 months   ki0047075b-MAL-ED         NEPAL                          0                    1       40      93
0-24 months   ki0047075b-MAL-ED         NEPAL                          1                    0        9      93
0-24 months   ki0047075b-MAL-ED         NEPAL                          1                    1       33      93
0-24 months   ki0047075b-MAL-ED         PERU                           0                    0        1      34
0-24 months   ki0047075b-MAL-ED         PERU                           0                    1        3      34
0-24 months   ki0047075b-MAL-ED         PERU                           1                    0        5      34
0-24 months   ki0047075b-MAL-ED         PERU                           1                    1       25      34
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0        6      80
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1       24      80
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0        8      80
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1       42      80
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0        2      45
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1        2      45
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0        6      45
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1       35      45
0-24 months   ki1000109-EE              PAKISTAN                       0                    0      254     514
0-24 months   ki1000109-EE              PAKISTAN                       0                    1      186     514
0-24 months   ki1000109-EE              PAKISTAN                       1                    0       46     514
0-24 months   ki1000109-EE              PAKISTAN                       1                    1       28     514
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                    0      467     810
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                    1      281     810
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                    0       33     810
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                    1       29     810
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    0       13     311
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1       23     311
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    0      104     311
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1      171     311
0-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    0      366    1010
0-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    1      378    1010
0-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    0      116    1010
0-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    1      150    1010
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    0      713    3236
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1      950    3236
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    0      752    3236
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1      821    3236
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    0     8642   15126
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    1     6372   15126
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    0       86   15126
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    1       26   15126
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    0     1084    4059
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    1      349    4059
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    0     1912    4059
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    1      714    4059
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    0        6      62
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    1       19      62
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    0        7      62
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    1       30      62
0-6 months    ki0047075b-MAL-ED         BRAZIL                         0                    0        0      14
0-6 months    ki0047075b-MAL-ED         BRAZIL                         0                    1        9      14
0-6 months    ki0047075b-MAL-ED         BRAZIL                         1                    0        1      14
0-6 months    ki0047075b-MAL-ED         BRAZIL                         1                    1        4      14
0-6 months    ki0047075b-MAL-ED         INDIA                          0                    0       12      83
0-6 months    ki0047075b-MAL-ED         INDIA                          0                    1       24      83
0-6 months    ki0047075b-MAL-ED         INDIA                          1                    0       14      83
0-6 months    ki0047075b-MAL-ED         INDIA                          1                    1       33      83
0-6 months    ki0047075b-MAL-ED         NEPAL                          0                    0        4      43
0-6 months    ki0047075b-MAL-ED         NEPAL                          0                    1       19      43
0-6 months    ki0047075b-MAL-ED         NEPAL                          1                    0        5      43
0-6 months    ki0047075b-MAL-ED         NEPAL                          1                    1       15      43
0-6 months    ki0047075b-MAL-ED         PERU                           0                    0        0      11
0-6 months    ki0047075b-MAL-ED         PERU                           0                    1        2      11
0-6 months    ki0047075b-MAL-ED         PERU                           1                    0        0      11
0-6 months    ki0047075b-MAL-ED         PERU                           1                    1        9      11
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0        2      30
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1       11      30
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0        3      30
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1       14      30
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0        0      12
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1        1      12
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0        1      12
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1       10      12
0-6 months    ki1000109-EE              PAKISTAN                       0                    0       78     216
0-6 months    ki1000109-EE              PAKISTAN                       0                    1      106     216
0-6 months    ki1000109-EE              PAKISTAN                       1                    0       16     216
0-6 months    ki1000109-EE              PAKISTAN                       1                    1       16     216
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    0      150     337
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    1      157     337
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    0       12     337
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    1       18     337
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    0        8     198
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    1       22     198
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    0       13     198
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    1      155     198
0-6 months    ki1113344-GMS-Nepal       NEPAL                          0                    0      100     328
0-6 months    ki1113344-GMS-Nepal       NEPAL                          0                    1      144     328
0-6 months    ki1113344-GMS-Nepal       NEPAL                          1                    0       44     328
0-6 months    ki1113344-GMS-Nepal       NEPAL                          1                    1       40     328
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    0      308    2288
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    1      935    2288
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    0      273    2288
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    1      772    2288
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    0     2984    9458
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    1     6372    9458
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    0       76    9458
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    1       26    9458
0-6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    0      184    1106
0-6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    1      204    1106
0-6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    0      304    1106
0-6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    1      414    1106
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    0       12      60
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1       13      60
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    0       19      60
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1       16      60
6-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    0        3       9
6-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    1        3       9
6-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    0        2       9
6-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    1        1       9
6-24 months   ki0047075b-MAL-ED         INDIA                          0                    0       15      95
6-24 months   ki0047075b-MAL-ED         INDIA                          0                    1       21      95
6-24 months   ki0047075b-MAL-ED         INDIA                          1                    0       30      95
6-24 months   ki0047075b-MAL-ED         INDIA                          1                    1       29      95
6-24 months   ki0047075b-MAL-ED         NEPAL                          0                    0        7      50
6-24 months   ki0047075b-MAL-ED         NEPAL                          0                    1       21      50
6-24 months   ki0047075b-MAL-ED         NEPAL                          1                    0        4      50
6-24 months   ki0047075b-MAL-ED         NEPAL                          1                    1       18      50
6-24 months   ki0047075b-MAL-ED         PERU                           0                    0        1      23
6-24 months   ki0047075b-MAL-ED         PERU                           0                    1        1      23
6-24 months   ki0047075b-MAL-ED         PERU                           1                    0        5      23
6-24 months   ki0047075b-MAL-ED         PERU                           1                    1       16      23
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0        4      50
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1       13      50
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0        5      50
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1       28      50
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0        2      33
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1        1      33
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0        5      33
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1       25      33
6-24 months   ki1000109-EE              PAKISTAN                       0                    0      176     298
6-24 months   ki1000109-EE              PAKISTAN                       0                    1       80     298
6-24 months   ki1000109-EE              PAKISTAN                       1                    0       30     298
6-24 months   ki1000109-EE              PAKISTAN                       1                    1       12     298
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                    0      317     473
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                    1      124     473
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                    0       21     473
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                    1       11     473
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    0        5     113
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1        1     113
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    0       91     113
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1       16     113
6-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    0      266     682
6-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    1      234     682
6-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    0       72     682
6-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    1      110     682
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    0      405     948
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1       15     948
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    0      479     948
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1       49     948
6-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    0     5658    5668
6-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    1        0    5668
6-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    0       10    5668
6-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    1        0    5668
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    0      900    2953
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    1      145    2953
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    0     1608    2953
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    1      300    2953


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
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/662ecd7a-9cf8-44fe-a52e-69d504b52c74/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/662ecd7a-9cf8-44fe-a52e-69d504b52c74/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/662ecd7a-9cf8-44fe-a52e-69d504b52c74/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/662ecd7a-9cf8-44fe-a52e-69d504b52c74/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.7516548   0.6199060   0.8834035
0-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.6985407   0.5890993   0.8079821
0-24 months   ki0047075b-MAL-ED         INDIA          0                    NA                0.6250000   0.4991100   0.7508900
0-24 months   ki0047075b-MAL-ED         INDIA          1                    NA                0.5849057   0.4818334   0.6879779
0-24 months   ki0047075b-MAL-ED         NEPAL          0                    NA                0.7843137   0.6765475   0.8920799
0-24 months   ki0047075b-MAL-ED         NEPAL          1                    NA                0.7857143   0.6655613   0.9058673
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                0.8000000   0.6657395   0.9342605
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                0.8400000   0.7318211   0.9481789
0-24 months   ki1000109-EE              PAKISTAN       0                    NA                0.4213897   0.3512965   0.4914829
0-24 months   ki1000109-EE              PAKISTAN       1                    NA                0.3270362   0.1680885   0.4859839
0-24 months   ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.3771389   0.3407817   0.4134962
0-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.4411894   0.3263396   0.5560393
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                0.6137913   0.4486323   0.7789502
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                0.6263736   0.5704826   0.6822645
0-24 months   ki1113344-GMS-Nepal       NEPAL          0                    NA                0.4971980   0.4432393   0.5511566
0-24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                0.4867654   0.4000050   0.5735258
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.5620638   0.5415470   0.5825806
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.5534530   0.5325369   0.5743691
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     0                    NA                0.4244191   0.4132523   0.4355859
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                0.1603069   0.0892534   0.2313604
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.2498279   0.2222332   0.2774226
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.2797879   0.2575531   0.3020228
0-6 months    ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.7600000   0.5939976   0.9260024
0-6 months    ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.8108108   0.6847315   0.9368901
0-6 months    ki0047075b-MAL-ED         INDIA          0                    NA                0.6666788   0.5062001   0.8271575
0-6 months    ki0047075b-MAL-ED         INDIA          1                    NA                0.7021189   0.5683779   0.8358600
0-6 months    ki1000109-EE              PAKISTAN       0                    NA                0.5768770   0.4745023   0.6792517
0-6 months    ki1000109-EE              PAKISTAN       1                    NA                0.4962300   0.2464513   0.7460087
0-6 months    ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.5123537   0.4561904   0.5685170
0-6 months    ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.5903962   0.4192645   0.7615278
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                0.7333333   0.5730670   0.8935997
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                0.9226190   0.8817191   0.9635190
0-6 months    ki1113344-GMS-Nepal       NEPAL          0                    NA                0.5901079   0.5022635   0.6779523
0-6 months    ki1113344-GMS-Nepal       NEPAL          1                    NA                0.4763611   0.3252212   0.6275010
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.7538929   0.7326260   0.7751597
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.7353833   0.7126060   0.7581606
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     0                    NA                0.6810457   0.6676936   0.6943977
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     1                    NA                0.1805908   0.0959393   0.2652424
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.4960859   0.4403039   0.5518679
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.5991401   0.5555157   0.6427644
6-24 months   ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.5213518   0.3086932   0.7340105
6-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.4574964   0.2931380   0.6218547
6-24 months   ki0047075b-MAL-ED         INDIA          0                    NA                0.5070232   0.3280117   0.6860347
6-24 months   ki0047075b-MAL-ED         INDIA          1                    NA                0.4453053   0.3129056   0.5777049
6-24 months   ki1000109-EE              PAKISTAN       0                    NA                0.3251591   0.2446923   0.4056258
6-24 months   ki1000109-EE              PAKISTAN       1                    NA                0.1754143   0.0974339   0.2533948
6-24 months   ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.2810790   0.2379292   0.3242289
6-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.1356263   0.0301828   0.2410699
6-24 months   ki1113344-GMS-Nepal       NEPAL          0                    NA                0.4575738   0.3907714   0.5243761
6-24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                0.5198506   0.4138819   0.6258192
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.0382488   0.0208636   0.0556341
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.0975692   0.0741628   0.1209757
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.1380677   0.1102759   0.1658595
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.1573701   0.1361640   0.1785763


### Parameter: E(Y)


agecat        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.6393443   0.5524803   0.7262082
0-24 months   ki0047075b-MAL-ED         INDIA          NA                   NA                0.6011236   0.5212729   0.6809743
0-24 months   ki0047075b-MAL-ED         NEPAL          NA                   NA                0.7849462   0.7049947   0.8648978
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   NA                   NA                0.8250000   0.7407860   0.9092140
0-24 months   ki1000109-EE              PAKISTAN       NA                   NA                0.4163424   0.3511349   0.4815500
0-24 months   ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.3827160   0.3474971   0.4179350
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     NA                   NA                0.6237942   0.5698223   0.6777662
0-24 months   ki1113344-GMS-Nepal       NEPAL          NA                   NA                0.5227723   0.4753649   0.5701796
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.5472806   0.5299898   0.5645714
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.4229803   0.4118532   0.4341074
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.2618872   0.2425585   0.2812158
0-6 months    ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.7903226   0.6894772   0.8911679
0-6 months    ki0047075b-MAL-ED         INDIA          NA                   NA                0.6867470   0.5837430   0.7897510
0-6 months    ki1000109-EE              PAKISTAN       NA                   NA                0.5648148   0.4692893   0.6603404
0-6 months    ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.5192878   0.4654446   0.5731311
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     NA                   NA                0.8939394   0.8505280   0.9373508
0-6 months    ki1113344-GMS-Nepal       NEPAL          NA                   NA                0.5609756   0.4845156   0.6374356
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.7460664   0.7282412   0.7638917
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.6764644   0.6631306   0.6897982
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.5587703   0.5173487   0.6001920
6-24 months   ki0047075b-MAL-ED         BANGLADESH     NA                   NA                0.4833333   0.3508378   0.6158289
6-24 months   ki0047075b-MAL-ED         INDIA          NA                   NA                0.5263158   0.4116286   0.6410029
6-24 months   ki1000109-EE              PAKISTAN       NA                   NA                0.3087248   0.2336906   0.3837591
6-24 months   ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.2854123   0.2436284   0.3271961
6-24 months   ki1113344-GMS-Nepal       NEPAL          NA                   NA                0.5043988   0.4461732   0.5626244
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.0675105   0.0516864   0.0833347
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.1506942   0.1331077   0.1682807


### Parameter: RR


agecat        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    0                 0.9293372   0.7319773   1.1799103
0-24 months   ki0047075b-MAL-ED         INDIA          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         INDIA          1                    0                 0.9358491   0.7160967   1.2230380
0-24 months   ki0047075b-MAL-ED         NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         NEPAL          1                    0                 1.0017857   0.8150417   1.2313168
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   1                    0                 1.0500000   0.8496502   1.2975928
0-24 months   ki1000109-EE              PAKISTAN       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE              PAKISTAN       1                    0                 0.7760897   0.4649348   1.2954834
0-24 months   ki1000304b-SAS-CompFeed   INDIA          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    0                 1.1698326   0.8894999   1.5385143
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     1                    0                 1.0204994   0.7704784   1.3516525
0-24 months   ki1113344-GMS-Nepal       NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal       NEPAL          1                    0                 0.9790173   0.7946548   1.2061524
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    0                 0.9846801   0.9413209   1.0300365
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     1                    0                 0.3777090   0.2422867   0.5888234
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    0                 1.1199229   0.9892643   1.2678384
0-6 months    ki0047075b-MAL-ED         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED         BANGLADESH     1                    0                 1.0668563   0.8159358   1.3949411
0-6 months    ki0047075b-MAL-ED         INDIA          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED         INDIA          1                    0                 1.0531592   0.7747780   1.4315641
0-6 months    ki1000109-EE              PAKISTAN       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE              PAKISTAN       1                    0                 0.8602008   0.5058827   1.4626817
0-6 months    ki1000304b-SAS-CompFeed   INDIA          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed   INDIA          1                    0                 1.1523214   0.8465035   1.5686228
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     1                    0                 1.2581169   1.0066423   1.5724137
0-6 months    ki1113344-GMS-Nepal       NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal       NEPAL          1                    0                 0.8072440   0.5686670   1.1459129
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    0                 0.9754480   0.9393175   1.0129684
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     1                    0                 0.2651670   0.1658776   0.4238880
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     1                    0                 1.2077345   1.0847194   1.3447003
6-24 months   ki0047075b-MAL-ED         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    0                 0.8775194   0.5109090   1.5071967
6-24 months   ki0047075b-MAL-ED         INDIA          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED         INDIA          1                    0                 0.8782738   0.5512344   1.3993411
6-24 months   ki1000109-EE              PAKISTAN       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE              PAKISTAN       1                    0                 0.5394723   0.3213188   0.9057371
6-24 months   ki1000304b-SAS-CompFeed   INDIA          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    0                 0.4825202   0.2189398   1.0634236
6-24 months   ki1113344-GMS-Nepal       NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal       NEPAL          1                    0                 1.1361022   0.8865221   1.4559459
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    0                 2.5509065   1.5271492   4.2609615
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    0                 1.1398041   0.8945575   1.4522862


### Parameter: PAR


agecat        studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     0                    NA                -0.1123105   -0.2167159   -0.0079051
0-24 months   ki0047075b-MAL-ED         INDIA          0                    NA                -0.0238764   -0.1208814    0.0731286
0-24 months   ki0047075b-MAL-ED         NEPAL          0                    NA                 0.0006325   -0.0725325    0.0737975
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                 0.0250000   -0.0833539    0.1333539
0-24 months   ki1000109-EE              PAKISTAN       0                    NA                -0.0050473   -0.0315228    0.0214282
0-24 months   ki1000304b-SAS-CompFeed   INDIA          0                    NA                 0.0055771   -0.0040797    0.0152339
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                 0.0100030   -0.1418333    0.1618392
0-24 months   ki1113344-GMS-Nepal       NEPAL          0                    NA                 0.0255743   -0.0031759    0.0543244
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                -0.0147832   -0.0272160   -0.0023503
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     0                    NA                -0.0014388   -0.0024138   -0.0004638
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                 0.0120593   -0.0085878    0.0327064
0-6 months    ki0047075b-MAL-ED         BANGLADESH     0                    NA                 0.0303226   -0.0943770    0.1550222
0-6 months    ki0047075b-MAL-ED         INDIA          0                    NA                 0.0200682   -0.0981933    0.1383297
0-6 months    ki1000109-EE              PAKISTAN       0                    NA                -0.0120622   -0.0525530    0.0284286
0-6 months    ki1000304b-SAS-CompFeed   INDIA          0                    NA                 0.0069341   -0.0096374    0.0235056
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                 0.1606061    0.0199418    0.3012703
0-6 months    ki1113344-GMS-Nepal       NEPAL          0                    NA                -0.0291323   -0.0746713    0.0164066
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                -0.0078264   -0.0209751    0.0053222
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     0                    NA                -0.0045813   -0.0063764   -0.0027862
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     0                    NA                 0.0626844    0.0270346    0.0983342
6-24 months   ki0047075b-MAL-ED         BANGLADESH     0                    NA                -0.0380185   -0.1946486    0.1186116
6-24 months   ki0047075b-MAL-ED         INDIA          0                    NA                 0.0192925   -0.1230781    0.1616632
6-24 months   ki1000109-EE              PAKISTAN       0                    NA                -0.0164342   -0.0567500    0.0238815
6-24 months   ki1000304b-SAS-CompFeed   INDIA          0                    NA                 0.0043332   -0.0077385    0.0164050
6-24 months   ki1113344-GMS-Nepal       NEPAL          0                    NA                 0.0468251    0.0121767    0.0814735
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                 0.0292617    0.0128152    0.0457082
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                 0.0126265   -0.0096666    0.0349196


### Parameter: PAF


agecat        studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     0                    NA                -0.1756652   -0.3544701   -0.0204644
0-24 months   ki0047075b-MAL-ED         INDIA          0                    NA                -0.0397196   -0.2143655    0.1098093
0-24 months   ki0047075b-MAL-ED         NEPAL          0                    NA                 0.0008058   -0.0968894    0.0897997
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                 0.0303030   -0.1102301    0.1530474
0-24 months   ki1000109-EE              PAKISTAN       0                    NA                -0.0121230   -0.0778073    0.0495585
0-24 months   ki1000304b-SAS-CompFeed   INDIA          0                    NA                 0.0145724   -0.0109983    0.0394965
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                 0.0160357   -0.2602694    0.2317629
0-24 months   ki1113344-GMS-Nepal       NEPAL          0                    NA                 0.0489205   -0.0076055    0.1022755
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                -0.0270121   -0.0500651   -0.0044652
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     0                    NA                -0.0034015   -0.0057112   -0.0010971
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                 0.0460477   -0.0360433    0.1216342
0-6 months    ki0047075b-MAL-ED         BANGLADESH     0                    NA                 0.0383673   -0.1336084    0.1842533
0-6 months    ki0047075b-MAL-ED         INDIA          0                    NA                 0.0292221   -0.1595167    0.1872392
0-6 months    ki1000109-EE              PAKISTAN       0                    NA                -0.0213560   -0.0958600    0.0480827
0-6 months    ki1000304b-SAS-CompFeed   INDIA          0                    NA                 0.0133531   -0.0190961    0.0447691
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                 0.1796610    0.0024658    0.3253805
0-6 months    ki1113344-GMS-Nepal       NEPAL          0                    NA                -0.0519315   -0.1368790    0.0266687
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                -0.0104903   -0.0282915    0.0070028
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     0                    NA                -0.0067724   -0.0094406   -0.0041113
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     0                    NA                 0.1121828    0.0450796    0.1745705
6-24 months   ki0047075b-MAL-ED         BANGLADESH     0                    NA                -0.0786590   -0.4554321    0.2005775
6-24 months   ki0047075b-MAL-ED         INDIA          0                    NA                 0.0366558   -0.2753556    0.2723347
6-24 months   ki1000109-EE              PAKISTAN       0                    NA                -0.0532326   -0.1948567    0.0716051
6-24 months   ki1000304b-SAS-CompFeed   INDIA          0                    NA                 0.0151823   -0.0280275    0.0565759
6-24 months   ki1113344-GMS-Nepal       NEPAL          0                    NA                 0.0928334    0.0209406    0.1594471
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                 0.4334390    0.1630222    0.6164876
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                 0.0837889   -0.0766429    0.2203146
