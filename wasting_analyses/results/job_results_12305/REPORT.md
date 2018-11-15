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
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    0       18    122
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1       32    122
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    0       26    122
0-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1       46    122
0-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    0        3     23
0-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    1       12     23
0-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    0        3     23
0-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    1        5     23
0-24 months   ki0047075b-MAL-ED         INDIA                          0                    0       27    178
0-24 months   ki0047075b-MAL-ED         INDIA                          0                    1       45    178
0-24 months   ki0047075b-MAL-ED         INDIA                          1                    0       44    178
0-24 months   ki0047075b-MAL-ED         INDIA                          1                    1       62    178
0-24 months   ki0047075b-MAL-ED         NEPAL                          0                    0       11     93
0-24 months   ki0047075b-MAL-ED         NEPAL                          0                    1       40     93
0-24 months   ki0047075b-MAL-ED         NEPAL                          1                    0        9     93
0-24 months   ki0047075b-MAL-ED         NEPAL                          1                    1       33     93
0-24 months   ki0047075b-MAL-ED         PERU                           0                    0        1     34
0-24 months   ki0047075b-MAL-ED         PERU                           0                    1        3     34
0-24 months   ki0047075b-MAL-ED         PERU                           1                    0        5     34
0-24 months   ki0047075b-MAL-ED         PERU                           1                    1       25     34
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0        6     80
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1       24     80
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0        8     80
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1       42     80
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0        2     45
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1        2     45
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0        6     45
0-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1       35     45
0-24 months   ki1000109-EE              PAKISTAN                       0                    0      127    257
0-24 months   ki1000109-EE              PAKISTAN                       0                    1       93    257
0-24 months   ki1000109-EE              PAKISTAN                       1                    0       23    257
0-24 months   ki1000109-EE              PAKISTAN                       1                    1       14    257
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                    0      467    810
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                    1      281    810
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                    0       33    810
0-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                    1       29    810
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    0       13    311
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1       23    311
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    0      104    311
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1      171    311
0-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    0      183    505
0-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    1      189    505
0-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    0       58    505
0-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    1       75    505
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    0      713   3236
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1      950   3236
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    0      752   3236
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1      821   3236
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    0     4324   7566
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    1     3186   7566
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    0       43   7566
0-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    1       13   7566
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    0      576   2069
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    1      178   2069
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    0      958   2069
0-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    1      357   2069
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    0        6     62
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     0                    1       19     62
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    0        7     62
0-6 months    ki0047075b-MAL-ED         BANGLADESH                     1                    1       30     62
0-6 months    ki0047075b-MAL-ED         BRAZIL                         0                    0        0     14
0-6 months    ki0047075b-MAL-ED         BRAZIL                         0                    1        9     14
0-6 months    ki0047075b-MAL-ED         BRAZIL                         1                    0        1     14
0-6 months    ki0047075b-MAL-ED         BRAZIL                         1                    1        4     14
0-6 months    ki0047075b-MAL-ED         INDIA                          0                    0       12     83
0-6 months    ki0047075b-MAL-ED         INDIA                          0                    1       24     83
0-6 months    ki0047075b-MAL-ED         INDIA                          1                    0       14     83
0-6 months    ki0047075b-MAL-ED         INDIA                          1                    1       33     83
0-6 months    ki0047075b-MAL-ED         NEPAL                          0                    0        4     43
0-6 months    ki0047075b-MAL-ED         NEPAL                          0                    1       19     43
0-6 months    ki0047075b-MAL-ED         NEPAL                          1                    0        5     43
0-6 months    ki0047075b-MAL-ED         NEPAL                          1                    1       15     43
0-6 months    ki0047075b-MAL-ED         PERU                           0                    0        0     11
0-6 months    ki0047075b-MAL-ED         PERU                           0                    1        2     11
0-6 months    ki0047075b-MAL-ED         PERU                           1                    0        0     11
0-6 months    ki0047075b-MAL-ED         PERU                           1                    1        9     11
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0        2     30
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1       11     30
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0        3     30
0-6 months    ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1       14     30
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0        0     12
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1        1     12
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0        1     12
0-6 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1       10     12
0-6 months    ki1000109-EE              PAKISTAN                       0                    0       39    108
0-6 months    ki1000109-EE              PAKISTAN                       0                    1       53    108
0-6 months    ki1000109-EE              PAKISTAN                       1                    0        8    108
0-6 months    ki1000109-EE              PAKISTAN                       1                    1        8    108
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    0      150    337
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          0                    1      157    337
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    0       12    337
0-6 months    ki1000304b-SAS-CompFeed   INDIA                          1                    1       18    337
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    0        8    198
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     0                    1       22    198
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    0       13    198
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH                     1                    1      155    198
0-6 months    ki1113344-GMS-Nepal       NEPAL                          0                    0       50    164
0-6 months    ki1113344-GMS-Nepal       NEPAL                          0                    1       72    164
0-6 months    ki1113344-GMS-Nepal       NEPAL                          1                    0       22    164
0-6 months    ki1113344-GMS-Nepal       NEPAL                          1                    1       20    164
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    0      308   2288
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       0                    1      935   2288
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    0      273   2288
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE                       1                    1      772   2288
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    0     1492   4729
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     0                    1     3186   4729
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    0       38   4729
0-6 months    kiGH5241-JiVitA-3         BANGLADESH                     1                    1       13   4729
0-6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    0       92    553
0-6 months    kiGH5241-JiVitA-4         BANGLADESH                     0                    1      102    553
0-6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    0      152    553
0-6 months    kiGH5241-JiVitA-4         BANGLADESH                     1                    1      207    553
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    0       12     60
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     0                    1       13     60
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    0       19     60
6-24 months   ki0047075b-MAL-ED         BANGLADESH                     1                    1       16     60
6-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    0        3      9
6-24 months   ki0047075b-MAL-ED         BRAZIL                         0                    1        3      9
6-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    0        2      9
6-24 months   ki0047075b-MAL-ED         BRAZIL                         1                    1        1      9
6-24 months   ki0047075b-MAL-ED         INDIA                          0                    0       15     95
6-24 months   ki0047075b-MAL-ED         INDIA                          0                    1       21     95
6-24 months   ki0047075b-MAL-ED         INDIA                          1                    0       30     95
6-24 months   ki0047075b-MAL-ED         INDIA                          1                    1       29     95
6-24 months   ki0047075b-MAL-ED         NEPAL                          0                    0        7     50
6-24 months   ki0047075b-MAL-ED         NEPAL                          0                    1       21     50
6-24 months   ki0047075b-MAL-ED         NEPAL                          1                    0        4     50
6-24 months   ki0047075b-MAL-ED         NEPAL                          1                    1       18     50
6-24 months   ki0047075b-MAL-ED         PERU                           0                    0        1     23
6-24 months   ki0047075b-MAL-ED         PERU                           0                    1        1     23
6-24 months   ki0047075b-MAL-ED         PERU                           1                    0        5     23
6-24 months   ki0047075b-MAL-ED         PERU                           1                    1       16     23
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    0        4     50
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   0                    1       13     50
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    0        5     50
6-24 months   ki0047075b-MAL-ED         SOUTH AFRICA                   1                    1       28     50
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    0        2     33
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   0                    1        1     33
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    0        5     33
6-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   1                    1       25     33
6-24 months   ki1000109-EE              PAKISTAN                       0                    0       88    149
6-24 months   ki1000109-EE              PAKISTAN                       0                    1       40    149
6-24 months   ki1000109-EE              PAKISTAN                       1                    0       15    149
6-24 months   ki1000109-EE              PAKISTAN                       1                    1        6    149
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                    0      317    473
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          0                    1      124    473
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                    0       21    473
6-24 months   ki1000304b-SAS-CompFeed   INDIA                          1                    1       11    473
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    0        5    113
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     0                    1        1    113
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    0       91    113
6-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     1                    1       16    113
6-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    0      133    341
6-24 months   ki1113344-GMS-Nepal       NEPAL                          0                    1      117    341
6-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    0       36    341
6-24 months   ki1113344-GMS-Nepal       NEPAL                          1                    1       55    341
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    0      405    948
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       0                    1       15    948
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    0      479    948
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       1                    1       49    948
6-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    0     2832   2837
6-24 months   kiGH5241-JiVitA-3         BANGLADESH                     0                    1        0   2837
6-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    0        5   2837
6-24 months   kiGH5241-JiVitA-3         BANGLADESH                     1                    1        0   2837
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    0      484   1516
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     0                    1       76   1516
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    0      806   1516
6-24 months   kiGH5241-JiVitA-4         BANGLADESH                     1                    1      150   1516


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
![](/tmp/15cb691d-8f99-488e-b07b-184b14b40933/09f9338a-c7cf-4c23-8244-3e28fcfe0b41/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/15cb691d-8f99-488e-b07b-184b14b40933/09f9338a-c7cf-4c23-8244-3e28fcfe0b41/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/15cb691d-8f99-488e-b07b-184b14b40933/09f9338a-c7cf-4c23-8244-3e28fcfe0b41/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/15cb691d-8f99-488e-b07b-184b14b40933/09f9338a-c7cf-4c23-8244-3e28fcfe0b41/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.6400000   0.5033508   0.7766492
0-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.6388889   0.5260667   0.7517111
0-24 months   ki0047075b-MAL-ED         INDIA          0                    NA                0.6250000   0.4991100   0.7508900
0-24 months   ki0047075b-MAL-ED         INDIA          1                    NA                0.5849057   0.4818334   0.6879779
0-24 months   ki0047075b-MAL-ED         NEPAL          0                    NA                0.7843137   0.6765475   0.8920799
0-24 months   ki0047075b-MAL-ED         NEPAL          1                    NA                0.7857143   0.6655613   0.9058673
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                0.8000000   0.6657395   0.9342605
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   1                    NA                0.8400000   0.7318211   0.9481789
0-24 months   ki1000109-EE              PAKISTAN       0                    NA                0.4227273   0.3522484   0.4932061
0-24 months   ki1000109-EE              PAKISTAN       1                    NA                0.3783784   0.2062576   0.5504991
0-24 months   ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.3756684   0.3390824   0.4122545
0-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.4677419   0.3388388   0.5966451
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                0.6388889   0.4605429   0.8172349
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                0.6218182   0.5653577   0.6782786
0-24 months   ki1113344-GMS-Nepal       NEPAL          0                    NA                0.5080645   0.4534457   0.5626833
0-24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                0.5639098   0.4685686   0.6592509
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.5712568   0.5471759   0.5953376
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.5219326   0.4971580   0.5467072
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     0                    NA                0.4242344   0.4130657   0.4354030
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     1                    NA                0.2321429   0.1152363   0.3490495
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.2360743   0.2047360   0.2674126
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.2714829   0.2469755   0.2959902
0-6 months    ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.7600000   0.5939976   0.9260024
0-6 months    ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.8108108   0.6847315   0.9368901
0-6 months    ki0047075b-MAL-ED         INDIA          0                    NA                0.6666667   0.5061820   0.8271513
0-6 months    ki0047075b-MAL-ED         INDIA          1                    NA                0.7021277   0.5683870   0.8358683
0-6 months    ki1000109-EE              PAKISTAN       0                    NA                0.5760870   0.4734543   0.6787196
0-6 months    ki1000109-EE              PAKISTAN       1                    NA                0.5000000   0.2418553   0.7581447
0-6 months    ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.5114007   0.4550055   0.5677958
0-6 months    ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.6000000   0.4210856   0.7789144
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                0.7333333   0.5730670   0.8935997
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     1                    NA                0.9226190   0.8817191   0.9635190
0-6 months    ki1113344-GMS-Nepal       NEPAL          0                    NA                0.5901639   0.5023101   0.6780178
0-6 months    ki1113344-GMS-Nepal       NEPAL          1                    NA                0.4761905   0.3248431   0.6275378
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.7522124   0.7282062   0.7762186
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.7387560   0.7121574   0.7653545
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     0                    NA                0.6810603   0.6677046   0.6944160
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     1                    NA                0.2549020   0.1352318   0.3745721
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.5257732   0.4554445   0.5961019
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.5766017   0.5254445   0.6277588
6-24 months   ki0047075b-MAL-ED         BANGLADESH     0                    NA                0.5200000   0.3060179   0.7339821
6-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    NA                0.4571429   0.2911813   0.6231045
6-24 months   ki0047075b-MAL-ED         INDIA          0                    NA                0.5833333   0.3895024   0.7771642
6-24 months   ki0047075b-MAL-ED         INDIA          1                    NA                0.4915254   0.3502250   0.6328259
6-24 months   ki1000109-EE              PAKISTAN       0                    NA                0.3125000   0.2313361   0.3936639
6-24 months   ki1000109-EE              PAKISTAN       1                    NA                0.2857143   0.0885683   0.4828603
6-24 months   ki1000304b-SAS-CompFeed   INDIA          0                    NA                0.2811791   0.2380893   0.3242689
6-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    NA                0.3437500   0.1745725   0.5129275
6-24 months   ki1113344-GMS-Nepal       NEPAL          0                    NA                0.4680000   0.4004392   0.5355608
6-24 months   ki1113344-GMS-Nepal       NEPAL          1                    NA                0.6043956   0.4936075   0.7151837
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                0.0357143   0.0174526   0.0539760
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    NA                0.0928030   0.0685822   0.1170238
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                0.1357143   0.1071560   0.1642725
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    NA                0.1569038   0.1345932   0.1792143


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
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.4228126   0.4116855   0.4339397
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.2585790   0.2392503   0.2779077
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
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     NA                   NA                0.1490765   0.1314900   0.1666630


### Parameter: RR


agecat        studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    0                 0.9982639   0.7563394   1.3175709
0-24 months   ki0047075b-MAL-ED         INDIA          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         INDIA          1                    0                 0.9358491   0.7160967   1.2230380
0-24 months   ki0047075b-MAL-ED         NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         NEPAL          1                    0                 1.0017857   0.8150417   1.2313168
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   1                    0                 1.0500000   0.8496502   1.2975928
0-24 months   ki1000109-EE              PAKISTAN       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE              PAKISTAN       1                    0                 0.8950886   0.5514365   1.4529028
0-24 months   ki1000304b-SAS-CompFeed   INDIA          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    0                 1.2450924   0.9295004   1.6678370
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     1                    0                 0.9732806   0.7255012   1.3056838
0-24 months   ki1113344-GMS-Nepal       NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal       NEPAL          1                    0                 1.1099176   0.9083539   1.3562083
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    0                 0.9136568   0.8574478   0.9735505
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     1                    0                 0.5472043   0.3304769   0.9060619
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    0                 1.1499893   0.9794268   1.3502544
0-6 months    ki0047075b-MAL-ED         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED         BANGLADESH     1                    0                 1.0668563   0.8159358   1.3949411
0-6 months    ki0047075b-MAL-ED         INDIA          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED         INDIA          1                    0                 1.0531915   0.7747916   1.4316266
0-6 months    ki1000109-EE              PAKISTAN       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE              PAKISTAN       1                    0                 0.8679245   0.5026741   1.4985715
0-6 months    ki1000304b-SAS-CompFeed   INDIA          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed   INDIA          1                    0                 1.1732484   0.8537109   1.6123862
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     1                    0                 1.2581169   1.0066423   1.5724137
0-6 months    ki1113344-GMS-Nepal       NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal       NEPAL          1                    0                 0.8068783   0.5680508   1.1461168
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       1                    0                 0.9821109   0.9359775   1.0305181
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     1                    0                 0.3742722   0.2339480   0.5987644
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     1                    0                 1.0966738   0.9340458   1.2876171
6-24 months   ki0047075b-MAL-ED         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED         BANGLADESH     1                    0                 0.8791209   0.5079318   1.5215694
6-24 months   ki0047075b-MAL-ED         INDIA          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED         INDIA          1                    0                 0.8426150   0.5430366   1.3074627
6-24 months   ki1000109-EE              PAKISTAN       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE              PAKISTAN       1                    0                 0.9142857   0.4372859   1.9116060
6-24 months   ki1000304b-SAS-CompFeed   INDIA          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed   INDIA          1                    0                 1.2225302   0.7301349   2.0469918
6-24 months   ki1113344-GMS-Nepal       NEPAL          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal       NEPAL          1                    0                 1.2914436   1.0225732   1.6310094
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       1                    0                 2.5984848   1.4635263   4.6135989
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     1                    0                 1.1561330   0.8968052   1.4904503


### Parameter: PAR


agecat        studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     0                    NA                -0.0006557   -0.1053957    0.1040842
0-24 months   ki0047075b-MAL-ED         INDIA          0                    NA                -0.0238764   -0.1208814    0.0731286
0-24 months   ki0047075b-MAL-ED         NEPAL          0                    NA                 0.0006325   -0.0725325    0.0737975
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                 0.0250000   -0.0833539    0.1333539
0-24 months   ki1000109-EE              PAKISTAN       0                    NA                -0.0063849   -0.0332140    0.0204443
0-24 months   ki1000304b-SAS-CompFeed   INDIA          0                    NA                 0.0070476   -0.0032627    0.0173579
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                -0.0150947   -0.1805900    0.1504006
0-24 months   ki1113344-GMS-Nepal       NEPAL          0                    NA                 0.0147078   -0.0141854    0.0436009
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                -0.0239762   -0.0407727   -0.0071796
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     0                    NA                -0.0014218   -0.0023830   -0.0004606
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                 0.0225048   -0.0027836    0.0477931
0-6 months    ki0047075b-MAL-ED         BANGLADESH     0                    NA                 0.0303226   -0.0943770    0.1550222
0-6 months    ki0047075b-MAL-ED         INDIA          0                    NA                 0.0200803   -0.0981855    0.1383461
0-6 months    ki1000109-EE              PAKISTAN       0                    NA                -0.0112721   -0.0527939    0.0302496
0-6 months    ki1000304b-SAS-CompFeed   INDIA          0                    NA                 0.0078872   -0.0089632    0.0247376
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                 0.1606061    0.0199418    0.3012703
0-6 months    ki1113344-GMS-Nepal       NEPAL          0                    NA                -0.0291883   -0.0747949    0.0164182
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                -0.0061460   -0.0225125    0.0102206
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     0                    NA                -0.0045959   -0.0064020   -0.0027899
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     0                    NA                 0.0329971   -0.0234966    0.0894909
6-24 months   ki0047075b-MAL-ED         BANGLADESH     0                    NA                -0.0366667   -0.1951463    0.1218130
6-24 months   ki0047075b-MAL-ED         INDIA          0                    NA                -0.0570175   -0.2066392    0.0926041
6-24 months   ki1000109-EE              PAKISTAN       0                    NA                -0.0037752   -0.0339644    0.0264141
6-24 months   ki1000304b-SAS-CompFeed   INDIA          0                    NA                 0.0042331   -0.0076244    0.0160906
6-24 months   ki1113344-GMS-Nepal       NEPAL          0                    NA                 0.0363988    0.0012670    0.0715307
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                 0.0317963    0.0148107    0.0487818
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                 0.0133622   -0.0094880    0.0362124


### Parameter: PAF


agecat        studyid                   country        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH     0                    NA                -0.0010256   -0.1790159    0.1500943
0-24 months   ki0047075b-MAL-ED         INDIA          0                    NA                -0.0397196   -0.2143655    0.1098093
0-24 months   ki0047075b-MAL-ED         NEPAL          0                    NA                 0.0008058   -0.0968894    0.0897997
0-24 months   ki0047075b-MAL-ED         SOUTH AFRICA   0                    NA                 0.0303030   -0.1102301    0.1530474
0-24 months   ki1000109-EE              PAKISTAN       0                    NA                -0.0153356   -0.0819157    0.0471472
0-24 months   ki1000304b-SAS-CompFeed   INDIA          0                    NA                 0.0184147   -0.0089335    0.0450216
0-24 months   ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                -0.0241982   -0.3268157    0.2093989
0-24 months   ki1113344-GMS-Nepal       NEPAL          0                    NA                 0.0281342   -0.0287013    0.0818295
0-24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                -0.0438096   -0.0749913   -0.0135324
0-24 months   kiGH5241-JiVitA-3         BANGLADESH     0                    NA                -0.0033627   -0.0056403   -0.0010902
0-24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                 0.0870324   -0.0162065    0.1797830
0-6 months    ki0047075b-MAL-ED         BANGLADESH     0                    NA                 0.0383673   -0.1336084    0.1842533
0-6 months    ki0047075b-MAL-ED         INDIA          0                    NA                 0.0292398   -0.1595072    0.1872621
0-6 months    ki1000109-EE              PAKISTAN       0                    NA                -0.0199572   -0.0964126    0.0511667
0-6 months    ki1000304b-SAS-CompFeed   INDIA          0                    NA                 0.0151885   -0.0178382    0.0471435
0-6 months    ki1017093c-NIH-Crypto     BANGLADESH     0                    NA                 0.1796610    0.0024658    0.3253805
0-6 months    ki1113344-GMS-Nepal       NEPAL          0                    NA                -0.0520314   -0.1371145    0.0266856
0-6 months    ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                -0.0082378   -0.0304194    0.0134663
0-6 months    kiGH5241-JiVitA-3         BANGLADESH     0                    NA                -0.0067940   -0.0094782   -0.0041170
0-6 months    kiGH5241-JiVitA-4         BANGLADESH     0                    NA                 0.0590531   -0.0478280    0.1550322
6-24 months   ki0047075b-MAL-ED         BANGLADESH     0                    NA                -0.0758621   -0.4580031    0.2061202
6-24 months   ki0047075b-MAL-ED         INDIA          0                    NA                -0.1083333   -0.4318616    0.1420939
6-24 months   ki1000109-EE              PAKISTAN       0                    NA                -0.0122283   -0.1149108    0.0809973
6-24 months   ki1000304b-SAS-CompFeed   INDIA          0                    NA                 0.0148316   -0.0275931    0.0555048
6-24 months   ki1113344-GMS-Nepal       NEPAL          0                    NA                 0.0721628   -0.0005734    0.1396114
6-24 months   ki1126311-ZVITAMBO        ZIMBABWE       0                    NA                 0.4709821    0.1783229    0.6594040
6-24 months   kiGH5241-JiVitA-4         BANGLADESH     0                    NA                 0.0896334   -0.0774893    0.2308347
