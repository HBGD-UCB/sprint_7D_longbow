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
![](/tmp/1a9d28bf-3158-47c0-a242-10304be54ac5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1a9d28bf-3158-47c0-a242-10304be54ac5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1a9d28bf-3158-47c0-a242-10304be54ac5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1a9d28bf-3158-47c0-a242-10304be54ac5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.6369250   0.5029019   0.7709480
0-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.6411943   0.5322900   0.7500987
0-24 months   ki0047075b-MAL-ED         INDIA          0                    NA                0.6241879   0.5008158   0.7475601
0-24 months   ki0047075b-MAL-ED         INDIA          1                    NA                0.5849494   0.4835414   0.6863573
0-24 months   ki0047075b-MAL-ED         NEPAL          0                    NA                0.7843137   0.6765475   0.8920799
0-24 months   ki0047075b-MAL-ED         NEPAL          1                    NA                0.7857143   0.6655613   0.9058673
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                0.8000000   0.6657395   0.9342605
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                0.8400000   0.7318211   0.9481789
0-24 months   ki1000109-EE              PAKISTAN       0                    NA                0.4210098   0.3519634   0.4900561
0-24 months   ki1000109-EE              PAKISTAN       1                    NA                0.3129273   0.1830884   0.4427662
0-24 months   ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.3772301   0.3408966   0.4135636
0-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.4391038   0.3257827   0.5524249
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                0.6128712   0.4469487   0.7787938
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                0.6264154   0.5705115   0.6823193
0-24 months   ki1113344-GMS-Nepal       NEPAL          0                    NA                0.5082486   0.4536404   0.5628567
0-24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                0.5634024   0.4681896   0.6586152
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.5620128   0.5416383   0.5823874
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.5545514   0.5337965   0.5753064
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     0                    NA                0.4244296   0.4132640   0.4355952
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                0.1751727   0.0913198   0.2590255
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.2491039   0.2211252   0.2770826
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.2792302   0.2569007   0.3015598
0-6 months    ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.7600000   0.5939976   0.9260024
0-6 months    ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.8108108   0.6847315   0.9368901
0-6 months    ki0047075b-MAL-ED         INDIA          0                    NA                0.6698293   0.5124334   0.8272251
0-6 months    ki0047075b-MAL-ED         INDIA          1                    NA                0.7009210   0.5686351   0.8332068
0-6 months    ki1000109-EE              PAKISTAN       0                    NA                0.5769404   0.4745845   0.6792964
0-6 months    ki1000109-EE              PAKISTAN       1                    NA                0.4959280   0.2467875   0.7450685
0-6 months    ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.5125539   0.4564304   0.5686774
0-6 months    ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.5883076   0.4186317   0.7579836
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                0.7333333   0.5730670   0.8935997
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                0.9226190   0.8817191   0.9635190
0-6 months    ki1113344-GMS-Nepal       NEPAL          0                    NA                0.5941174   0.5074819   0.6807529
0-6 months    ki1113344-GMS-Nepal       NEPAL          1                    NA                0.4997707   0.3626947   0.6368468
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.7526715   0.7312305   0.7741124
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.7347815   0.7116999   0.7578630
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     0                    NA                0.6810572   0.6677052   0.6944093
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     1                    NA                0.2566514   0.1586535   0.3546494
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.5535470   0.5008113   0.6062828
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.6146877   0.5715360   0.6578393
6-24 months   ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.4560330   0.2422408   0.6698253
6-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.4248110   0.2595660   0.5900561
6-24 months   ki0047075b-MAL-ED         INDIA          0                    NA                0.5092748   0.3316121   0.6869375
6-24 months   ki0047075b-MAL-ED         INDIA          1                    NA                0.4491754   0.3142481   0.5841027
6-24 months   ki1000109-EE              PAKISTAN       0                    NA                0.3205539   0.2415810   0.3995269
6-24 months   ki1000109-EE              PAKISTAN       1                    NA                0.1586753   0.0795522   0.2377985
6-24 months   ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.2810042   0.2378176   0.3241909
6-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.1321497   0.0295344   0.2347650
6-24 months   ki1113344-GMS-Nepal       NEPAL          0                    NA                0.4520374   0.3867452   0.5173296
6-24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                0.5191152   0.4291712   0.6090593
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.0381558   0.0209602   0.0553514
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.0985268   0.0753059   0.1217476
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.1379812   0.1097074   0.1662550
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.1572383   0.1358827   0.1785939


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
0-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    0                 1.0067031   0.7681566   1.3193288
0-24 months   ki0047075b-MAL-ED         INDIA          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         INDIA          1                    0                 0.9371366   0.7236047   1.2136807
0-24 months   ki0047075b-MAL-ED         NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         NEPAL          1                    0                 1.0017857   0.8150417   1.2313168
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   1                    0                 1.0500000   0.8496502   1.2975928
0-24 months   ki1000109-EE              PAKISTAN       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE              PAKISTAN       1                    0                 0.7432780   0.4765561   1.1592806
0-24 months   ki1000304b-SAS-CompFeed   INDIA          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    0                 1.1640212   0.8873365   1.5269803
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     1                    0                 1.0220996   0.7704036   1.3560263
0-24 months   ki1113344-GMS-Nepal       NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal       NEPAL          1                    0                 1.1085174   0.9073864   1.3542310
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    0                 0.9867238   0.9440160   1.0313637
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     1                    0                 0.4127249   0.2555426   0.6665890
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    0                 1.1209389   0.9885661   1.2710368
0-6 months    ki0047075b-MAL-ED         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED         BANGLADESH     1                    0                 1.0668563   0.8159358   1.3949411
0-6 months    ki0047075b-MAL-ED         INDIA          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED         INDIA          1                    0                 1.0464174   0.7765488   1.4100713
0-6 months    ki1000109-EE              PAKISTAN       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE              PAKISTAN       1                    0                 0.8595827   0.5061043   1.4599408
0-6 months    ki1000304b-SAS-CompFeed   INDIA          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed   INDIA          1                    0                 1.1477966   0.8445864   1.5598607
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     1                    0                 1.2581169   1.0066423   1.5724137
0-6 months    ki1113344-GMS-Nepal       NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal       NEPAL          1                    0                 0.8411986   0.6171492   1.1465868
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    0                 0.9762313   0.9398457   1.0140256
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     1                    0                 0.3768427   0.2571198   0.5523123
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     1                    0                 1.1104524   1.0136142   1.2165424
6-24 months   ki0047075b-MAL-ED         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    0                 0.9315356   0.5063940   1.7136037
6-24 months   ki0047075b-MAL-ED         INDIA          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED         INDIA          1                    0                 0.8819903   0.5537528   1.4047907
6-24 months   ki1000109-EE              PAKISTAN       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE              PAKISTAN       1                    0                 0.4950035   0.2820417   0.8687669
6-24 months   ki1000304b-SAS-CompFeed   INDIA          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    0                 0.4702766   0.2135528   1.0356226
6-24 months   ki1113344-GMS-Nepal       NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal       NEPAL          1                    0                 1.1483900   0.9167292   1.4385922
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    0                 2.5822218   1.5537099   4.2915793
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    0                 1.1395632   0.8911536   1.4572171


### Parameter: PAR


agecat        studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     0                    NA                 0.0024193   -0.1000157    0.1048543
0-24 months   ki0047075b-MAL-ED         INDIA          0                    NA                -0.0230643   -0.1168355    0.0707068
0-24 months   ki0047075b-MAL-ED         NEPAL          0                    NA                 0.0006325   -0.0725325    0.0737975
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                 0.0250000   -0.0833539    0.1333539
0-24 months   ki1000109-EE              PAKISTAN       0                    NA                -0.0046674   -0.0308266    0.0214919
0-24 months   ki1000304b-SAS-CompFeed   INDIA          0                    NA                 0.0054860   -0.0041069    0.0150788
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                 0.0109230   -0.1416563    0.1635023
0-24 months   ki1113344-GMS-Nepal       NEPAL          0                    NA                 0.0145237   -0.0143239    0.0433713
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                -0.0147322   -0.0269860   -0.0024785
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     0                    NA                -0.0014493   -0.0024276   -0.0004710
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                 0.0127833   -0.0081214    0.0336880
0-6 months    ki0047075b-MAL-ED         BANGLADESH     0                    NA                 0.0303226   -0.0943770    0.1550222
0-6 months    ki0047075b-MAL-ED         INDIA          0                    NA                 0.0169177   -0.0979807    0.1318161
0-6 months    ki1000109-EE              PAKISTAN       0                    NA                -0.0121256   -0.0525378    0.0282866
0-6 months    ki1000304b-SAS-CompFeed   INDIA          0                    NA                 0.0067339   -0.0098003    0.0232682
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                 0.1606061    0.0199418    0.3012703
0-6 months    ki1113344-GMS-Nepal       NEPAL          0                    NA                -0.0331418   -0.0780846    0.0118010
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                -0.0066050   -0.0197206    0.0065105
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     0                    NA                -0.0045929   -0.0063892   -0.0027966
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     0                    NA                 0.0052233   -0.0266737    0.0371203
6-24 months   ki0047075b-MAL-ED         BANGLADESH     0                    NA                 0.0273003   -0.1303049    0.1849055
6-24 months   ki0047075b-MAL-ED         INDIA          0                    NA                 0.0170410   -0.1228393    0.1569213
6-24 months   ki1000109-EE              PAKISTAN       0                    NA                -0.0118291   -0.0497251    0.0260669
6-24 months   ki1000304b-SAS-CompFeed   INDIA          0                    NA                 0.0044080   -0.0077517    0.0165677
6-24 months   ki1113344-GMS-Nepal       NEPAL          0                    NA                 0.0523614    0.0175078    0.0872151
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                 0.0293547    0.0129877    0.0457218
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                 0.0127130   -0.0099365    0.0353626


### Parameter: PAF


agecat        studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     0                    NA                 0.0037840   -0.1700363    0.1517817
0-24 months   ki0047075b-MAL-ED         INDIA          0                    NA                -0.0383687   -0.2067650    0.1065290
0-24 months   ki0047075b-MAL-ED         NEPAL          0                    NA                 0.0008058   -0.0968894    0.0897997
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                 0.0303030   -0.1102301    0.1530474
0-24 months   ki1000109-EE              PAKISTAN       0                    NA                -0.0112104   -0.0761530    0.0498131
0-24 months   ki1000304b-SAS-CompFeed   INDIA          0                    NA                 0.0143343   -0.0110634    0.0390939
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                 0.0175106   -0.2603915    0.2341384
0-24 months   ki1113344-GMS-Nepal       NEPAL          0                    NA                 0.0277821   -0.0289617    0.0813966
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                -0.0269190   -0.0496412   -0.0046887
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     0                    NA                -0.0034264   -0.0057442   -0.0011140
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                 0.0488122   -0.0344098    0.1253386
0-6 months    ki0047075b-MAL-ED         BANGLADESH     0                    NA                 0.0383673   -0.1336084    0.1842533
0-6 months    ki0047075b-MAL-ED         INDIA          0                    NA                 0.0246346   -0.1581066    0.1785405
0-6 months    ki1000109-EE              PAKISTAN       0                    NA                -0.0214683   -0.0958236    0.0478418
0-6 months    ki1000304b-SAS-CompFeed   INDIA          0                    NA                 0.0129676   -0.0194035    0.0443108
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                 0.1796610    0.0024658    0.3253805
0-6 months    ki1113344-GMS-Nepal       NEPAL          0                    NA                -0.0590788   -0.1431898    0.0188436
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                -0.0088531   -0.0266019    0.0085888
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     0                    NA                -0.0067895   -0.0094595   -0.0041266
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     0                    NA                 0.0093478   -0.0494309    0.0648344
6-24 months   ki0047075b-MAL-ED         BANGLADESH     0                    NA                 0.0564834   -0.3352870    0.3333092
6-24 months   ki0047075b-MAL-ED         INDIA          0                    NA                 0.0323779   -0.2732670    0.2646534
6-24 months   ki1000109-EE              PAKISTAN       0                    NA                -0.0383160   -0.1705313    0.0789651
6-24 months   ki1000304b-SAS-CompFeed   INDIA          0                    NA                 0.0154444   -0.0280910    0.0571362
6-24 months   ki1113344-GMS-Nepal       NEPAL          0                    NA                 0.1038096    0.0319445    0.1703396
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                 0.4348170    0.1674472    0.6163225
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                 0.0843630   -0.0790248    0.2230103
