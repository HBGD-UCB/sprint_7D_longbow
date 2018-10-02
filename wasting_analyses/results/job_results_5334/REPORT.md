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

**Intervention Variable:** perdiar6

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* W_mhtcm
* W_mwtkg
* W_mbmi
* W_birthwt
* W_birthlen
* W_nrooms
* month
* brthmon
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_mbmi
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_month
* delta_brthmon
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                 country                        perdiar6    wast_rec90d   n_cell     n
------------  ----------------------  -----------------------------  ---------  ------------  -------  ----
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]              0       20   124
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]              1       34   124
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                    0       17   124
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                    1       21   124
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                   0        8   124
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                   1       24   124
0-24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]              0        0    23
0-24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]              1        2    23
0-24 months   ki0047075b-MAL-ED       BRAZIL                         0%                    0        5    23
0-24 months   ki0047075b-MAL-ED       BRAZIL                         0%                    1       15    23
0-24 months   ki0047075b-MAL-ED       BRAZIL                         >5%                   0        1    23
0-24 months   ki0047075b-MAL-ED       BRAZIL                         >5%                   1        0    23
0-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]              0       35   178
0-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]              1       48   178
0-24 months   ki0047075b-MAL-ED       INDIA                          0%                    0       14   178
0-24 months   ki0047075b-MAL-ED       INDIA                          0%                    1       28   178
0-24 months   ki0047075b-MAL-ED       INDIA                          >5%                   0       22   178
0-24 months   ki0047075b-MAL-ED       INDIA                          >5%                   1       31   178
0-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]              0        2    93
0-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]              1       21    93
0-24 months   ki0047075b-MAL-ED       NEPAL                          0%                    0       12    93
0-24 months   ki0047075b-MAL-ED       NEPAL                          0%                    1       30    93
0-24 months   ki0047075b-MAL-ED       NEPAL                          >5%                   0        6    93
0-24 months   ki0047075b-MAL-ED       NEPAL                          >5%                   1       22    93
0-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]              0        1    34
0-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]              1        6    34
0-24 months   ki0047075b-MAL-ED       PERU                           0%                    0        3    34
0-24 months   ki0047075b-MAL-ED       PERU                           0%                    1        8    34
0-24 months   ki0047075b-MAL-ED       PERU                           >5%                   0        2    34
0-24 months   ki0047075b-MAL-ED       PERU                           >5%                   1       14    34
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]              0        4    80
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]              1       14    80
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                    0       10    80
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                    1       49    80
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                   0        0    80
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                   1        3    80
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]              0        2    45
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]              1       18    45
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                    0        4    45
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                    1       19    45
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                   0        2    45
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                   1        0    45
0-24 months   ki1000109-ResPak        PAKISTAN                       (0%, 5%]              0       33   200
0-24 months   ki1000109-ResPak        PAKISTAN                       (0%, 5%]              1       24   200
0-24 months   ki1000109-ResPak        PAKISTAN                       0%                    0       20   200
0-24 months   ki1000109-ResPak        PAKISTAN                       0%                    1       16   200
0-24 months   ki1000109-ResPak        PAKISTAN                       >5%                   0       56   200
0-24 months   ki1000109-ResPak        PAKISTAN                       >5%                   1       51   200
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]              0       61   421
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]              1       52   421
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                    0       45   421
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                    1       44   421
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                   0       96   421
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                   1      123   421
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]              0       57   307
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]              1       78   307
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                    0       38   307
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                    1       46   307
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                   0       33   307
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                   1       55   307
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]              0       28   311
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]              1       46   311
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                    0       58   311
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                    1       98   311
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                   0       31   311
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                   1       50   311
0-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]              0       19   190
0-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]              1       16   190
0-24 months   ki1114097-CMIN          BANGLADESH                     0%                    0       28   190
0-24 months   ki1114097-CMIN          BANGLADESH                     0%                    1       43   190
0-24 months   ki1114097-CMIN          BANGLADESH                     >5%                   0       33   190
0-24 months   ki1114097-CMIN          BANGLADESH                     >5%                   1       51   190
0-24 months   ki1114097-CMIN          BRAZIL                         (0%, 5%]              0        4    13
0-24 months   ki1114097-CMIN          BRAZIL                         (0%, 5%]              1        1    13
0-24 months   ki1114097-CMIN          BRAZIL                         0%                    0        2    13
0-24 months   ki1114097-CMIN          BRAZIL                         0%                    1        3    13
0-24 months   ki1114097-CMIN          BRAZIL                         >5%                   0        1    13
0-24 months   ki1114097-CMIN          BRAZIL                         >5%                   1        2    13
0-24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]              0       48   244
0-24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]              1       30   244
0-24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                    0       51   244
0-24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                    1       26   244
0-24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%                   0       58   244
0-24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%                   1       31   244
0-24 months   ki1114097-CMIN          PERU                           (0%, 5%]              0        9    86
0-24 months   ki1114097-CMIN          PERU                           (0%, 5%]              1       23    86
0-24 months   ki1114097-CMIN          PERU                           0%                    0        2    86
0-24 months   ki1114097-CMIN          PERU                           0%                    1       14    86
0-24 months   ki1114097-CMIN          PERU                           >5%                   0        8    86
0-24 months   ki1114097-CMIN          PERU                           >5%                   1       30    86
0-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]              0        1     9
0-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]              1        0     9
0-24 months   ki1114097-CONTENT       PERU                           0%                    0        1     9
0-24 months   ki1114097-CONTENT       PERU                           0%                    1        5     9
0-24 months   ki1114097-CONTENT       PERU                           >5%                   0        0     9
0-24 months   ki1114097-CONTENT       PERU                           >5%                   1        2     9
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]              0        5    62
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]              1       19    62
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                    0        5    62
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                    1       12    62
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                   0        3    62
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                   1       18    62
0-6 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]              0        0    14
0-6 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]              1        2    14
0-6 months    ki0047075b-MAL-ED       BRAZIL                         0%                    0        1    14
0-6 months    ki0047075b-MAL-ED       BRAZIL                         0%                    1       11    14
0-6 months    ki0047075b-MAL-ED       BRAZIL                         >5%                   0        0    14
0-6 months    ki0047075b-MAL-ED       BRAZIL                         >5%                   1        0    14
0-6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]              0       13    83
0-6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]              1       27    83
0-6 months    ki0047075b-MAL-ED       INDIA                          0%                    0        5    83
0-6 months    ki0047075b-MAL-ED       INDIA                          0%                    1       14    83
0-6 months    ki0047075b-MAL-ED       INDIA                          >5%                   0        8    83
0-6 months    ki0047075b-MAL-ED       INDIA                          >5%                   1       16    83
0-6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]              0        2    43
0-6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]              1       15    43
0-6 months    ki0047075b-MAL-ED       NEPAL                          0%                    0        6    43
0-6 months    ki0047075b-MAL-ED       NEPAL                          0%                    1       10    43
0-6 months    ki0047075b-MAL-ED       NEPAL                          >5%                   0        1    43
0-6 months    ki0047075b-MAL-ED       NEPAL                          >5%                   1        9    43
0-6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]              0        0    11
0-6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]              1        2    11
0-6 months    ki0047075b-MAL-ED       PERU                           0%                    0        0    11
0-6 months    ki0047075b-MAL-ED       PERU                           0%                    1        0    11
0-6 months    ki0047075b-MAL-ED       PERU                           >5%                   0        0    11
0-6 months    ki0047075b-MAL-ED       PERU                           >5%                   1        9    11
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]              0        1    30
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]              1        5    30
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                    0        4    30
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                    1       18    30
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                   0        0    30
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                   1        2    30
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]              0        0    12
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]              1        6    12
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                    0        1    12
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                    1        5    12
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                   0        0    12
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                   1        0    12
0-6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]              0       11   112
0-6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]              1       20   112
0-6 months    ki1000109-ResPak        PAKISTAN                       0%                    0       11   112
0-6 months    ki1000109-ResPak        PAKISTAN                       0%                    1       14   112
0-6 months    ki1000109-ResPak        PAKISTAN                       >5%                   0       21   112
0-6 months    ki1000109-ResPak        PAKISTAN                       >5%                   1       35   112
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]              0       18   223
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]              1       42   223
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                    0       15   223
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                    1       34   223
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                   0       31   223
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                   1       83   223
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]              0       11   184
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]              1       60   184
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                    0       17   184
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                    1       39   184
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                   0       11   184
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                   1       46   184
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]              0        5   198
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]              1       43   198
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                    0        7   198
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                    1       92   198
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                   0        9   198
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                   1       42   198
0-6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]              0        9    52
0-6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]              1        6    52
0-6 months    ki1114097-CMIN          BANGLADESH                     0%                    0        5    52
0-6 months    ki1114097-CMIN          BANGLADESH                     0%                    1       13    52
0-6 months    ki1114097-CMIN          BANGLADESH                     >5%                   0       11    52
0-6 months    ki1114097-CMIN          BANGLADESH                     >5%                   1        8    52
0-6 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]              0        2     9
0-6 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]              1        0     9
0-6 months    ki1114097-CMIN          BRAZIL                         0%                    0        1     9
0-6 months    ki1114097-CMIN          BRAZIL                         0%                    1        3     9
0-6 months    ki1114097-CMIN          BRAZIL                         >5%                   0        1     9
0-6 months    ki1114097-CMIN          BRAZIL                         >5%                   1        2     9
0-6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]              0        8    45
0-6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]              1        8    45
0-6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                    0        7    45
0-6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                    1        2    45
0-6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%                   0        8    45
0-6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%                   1       12    45
0-6 months    ki1114097-CMIN          PERU                           (0%, 5%]              0        5    52
0-6 months    ki1114097-CMIN          PERU                           (0%, 5%]              1       13    52
0-6 months    ki1114097-CMIN          PERU                           0%                    0        1    52
0-6 months    ki1114097-CMIN          PERU                           0%                    1        7    52
0-6 months    ki1114097-CMIN          PERU                           >5%                   0        4    52
0-6 months    ki1114097-CMIN          PERU                           >5%                   1       22    52
0-6 months    ki1114097-CONTENT       PERU                           (0%, 5%]              0        0     4
0-6 months    ki1114097-CONTENT       PERU                           (0%, 5%]              1        0     4
0-6 months    ki1114097-CONTENT       PERU                           0%                    0        0     4
0-6 months    ki1114097-CONTENT       PERU                           0%                    1        2     4
0-6 months    ki1114097-CONTENT       PERU                           >5%                   0        0     4
0-6 months    ki1114097-CONTENT       PERU                           >5%                   1        2     4
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]              0       15    62
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]              1       15    62
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                    0       12    62
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                    1        9    62
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                   0        5    62
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                   1        6    62
6-24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]              0        0     9
6-24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]              1        0     9
6-24 months   ki0047075b-MAL-ED       BRAZIL                         0%                    0        4     9
6-24 months   ki0047075b-MAL-ED       BRAZIL                         0%                    1        4     9
6-24 months   ki0047075b-MAL-ED       BRAZIL                         >5%                   0        1     9
6-24 months   ki0047075b-MAL-ED       BRAZIL                         >5%                   1        0     9
6-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]              0       22    95
6-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]              1       21    95
6-24 months   ki0047075b-MAL-ED       INDIA                          0%                    0        9    95
6-24 months   ki0047075b-MAL-ED       INDIA                          0%                    1       14    95
6-24 months   ki0047075b-MAL-ED       INDIA                          >5%                   0       14    95
6-24 months   ki0047075b-MAL-ED       INDIA                          >5%                   1       15    95
6-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]              0        0    50
6-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]              1        6    50
6-24 months   ki0047075b-MAL-ED       NEPAL                          0%                    0        6    50
6-24 months   ki0047075b-MAL-ED       NEPAL                          0%                    1       20    50
6-24 months   ki0047075b-MAL-ED       NEPAL                          >5%                   0        5    50
6-24 months   ki0047075b-MAL-ED       NEPAL                          >5%                   1       13    50
6-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]              0        1    23
6-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]              1        4    23
6-24 months   ki0047075b-MAL-ED       PERU                           0%                    0        3    23
6-24 months   ki0047075b-MAL-ED       PERU                           0%                    1        8    23
6-24 months   ki0047075b-MAL-ED       PERU                           >5%                   0        2    23
6-24 months   ki0047075b-MAL-ED       PERU                           >5%                   1        5    23
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]              0        3    50
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]              1        9    50
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                    0        6    50
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                    1       31    50
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                   0        0    50
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                   1        1    50
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]              0        2    33
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]              1       12    33
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                    0        3    33
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                    1       14    33
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                   0        2    33
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                   1        0    33
6-24 months   ki1000109-ResPak        PAKISTAN                       (0%, 5%]              0       22    88
6-24 months   ki1000109-ResPak        PAKISTAN                       (0%, 5%]              1        4    88
6-24 months   ki1000109-ResPak        PAKISTAN                       0%                    0        9    88
6-24 months   ki1000109-ResPak        PAKISTAN                       0%                    1        2    88
6-24 months   ki1000109-ResPak        PAKISTAN                       >5%                   0       35    88
6-24 months   ki1000109-ResPak        PAKISTAN                       >5%                   1       16    88
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]              0       43   198
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]              1       10   198
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                    0       30   198
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                    1       10   198
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                   0       65   198
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                   1       40   198
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]              0       46   123
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]              1       18   123
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                    0       21   123
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                    1        7   123
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                   0       22   123
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                   1        9   123
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]              0       23   113
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]              1        3   113
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                    0       51   113
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                    1        6   113
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                   0       22   113
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                   1        8   113
6-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]              0       10   138
6-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]              1       10   138
6-24 months   ki1114097-CMIN          BANGLADESH                     0%                    0       23   138
6-24 months   ki1114097-CMIN          BANGLADESH                     0%                    1       30   138
6-24 months   ki1114097-CMIN          BANGLADESH                     >5%                   0       22   138
6-24 months   ki1114097-CMIN          BANGLADESH                     >5%                   1       43   138
6-24 months   ki1114097-CMIN          BRAZIL                         (0%, 5%]              0        2     4
6-24 months   ki1114097-CMIN          BRAZIL                         (0%, 5%]              1        1     4
6-24 months   ki1114097-CMIN          BRAZIL                         0%                    0        1     4
6-24 months   ki1114097-CMIN          BRAZIL                         0%                    1        0     4
6-24 months   ki1114097-CMIN          BRAZIL                         >5%                   0        0     4
6-24 months   ki1114097-CMIN          BRAZIL                         >5%                   1        0     4
6-24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]              0       40   199
6-24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]              1       22   199
6-24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                    0       44   199
6-24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                    1       24   199
6-24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%                   0       50   199
6-24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%                   1       19   199
6-24 months   ki1114097-CMIN          PERU                           (0%, 5%]              0        4    34
6-24 months   ki1114097-CMIN          PERU                           (0%, 5%]              1       10    34
6-24 months   ki1114097-CMIN          PERU                           0%                    0        1    34
6-24 months   ki1114097-CMIN          PERU                           0%                    1        7    34
6-24 months   ki1114097-CMIN          PERU                           >5%                   0        4    34
6-24 months   ki1114097-CMIN          PERU                           >5%                   1        8    34
6-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]              0        1     5
6-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]              1        0     5
6-24 months   ki1114097-CONTENT       PERU                           0%                    0        1     5
6-24 months   ki1114097-CONTENT       PERU                           0%                    1        3     5
6-24 months   ki1114097-CONTENT       PERU                           >5%                   0        0     5
6-24 months   ki1114097-CONTENT       PERU                           >5%                   1        0     5


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/9fa1d2bf-efaa-4f7d-955c-c4e9f909c8a1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9fa1d2bf-efaa-4f7d-955c-c4e9f909c8a1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9fa1d2bf-efaa-4f7d-955c-c4e9f909c8a1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9fa1d2bf-efaa-4f7d-955c-c4e9f909c8a1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             NA                0.6296296   0.5121519   0.7471074
0-24 months   ki0047075b-MAL-ED       BANGLADESH      0%                   NA                0.5526316   0.3844057   0.7208575
0-24 months   ki0047075b-MAL-ED       BANGLADESH      >5%                  NA                0.7500000   0.5844253   0.9155747
0-24 months   ki0047075b-MAL-ED       INDIA           (0%, 5%]             NA                0.5479743   0.4336940   0.6622545
0-24 months   ki0047075b-MAL-ED       INDIA           0%                   NA                0.5768955   0.4156470   0.7381440
0-24 months   ki0047075b-MAL-ED       INDIA           >5%                  NA                0.5139011   0.3787518   0.6490505
0-24 months   ki1000109-ResPak        PAKISTAN        (0%, 5%]             NA                0.4210526   0.2966327   0.5454726
0-24 months   ki1000109-ResPak        PAKISTAN        0%                   NA                0.4444444   0.2599608   0.6289281
0-24 months   ki1000109-ResPak        PAKISTAN        >5%                  NA                0.4766355   0.3765906   0.5766804
0-24 months   ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             NA                0.5279158   0.4472074   0.6086241
0-24 months   ki1017093-NIH-Birth     BANGLADESH      0%                   NA                0.5871226   0.4937526   0.6804925
0-24 months   ki1017093-NIH-Birth     BANGLADESH      >5%                  NA                0.5859490   0.5236794   0.6482186
0-24 months   ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             NA                0.5979913   0.5163876   0.6795950
0-24 months   ki1017093b-PROVIDE      BANGLADESH      0%                   NA                0.5956889   0.4902382   0.7011395
0-24 months   ki1017093b-PROVIDE      BANGLADESH      >5%                  NA                0.6672988   0.5768419   0.7577556
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             NA                0.8016589   0.7139970   0.8893207
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH      0%                   NA                0.6812351   0.6099637   0.7525066
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH      >5%                  NA                0.7873519   0.7048877   0.8698162
0-24 months   ki1114097-CMIN          BANGLADESH      (0%, 5%]             NA                0.4503619   0.2595759   0.6411480
0-24 months   ki1114097-CMIN          BANGLADESH      0%                   NA                0.6132387   0.4945129   0.7319645
0-24 months   ki1114097-CMIN          BANGLADESH      >5%                  NA                0.6048100   0.4884414   0.7211786
0-24 months   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             NA                0.3846154   0.2753770   0.4938537
0-24 months   ki1114097-CMIN          GUINEA-BISSAU   0%                   NA                0.3376623   0.2286919   0.4466328
0-24 months   ki1114097-CMIN          GUINEA-BISSAU   >5%                  NA                0.3483146   0.2445736   0.4520557
0-6 months    ki0047075b-MAL-ED       INDIA           (0%, 5%]             NA                0.6750000   0.5281850   0.8218150
0-6 months    ki0047075b-MAL-ED       INDIA           0%                   NA                0.7368421   0.5274868   0.9461974
0-6 months    ki0047075b-MAL-ED       INDIA           >5%                  NA                0.6666667   0.4693684   0.8639649
0-6 months    ki1000109-ResPak        PAKISTAN        (0%, 5%]             NA                0.6451613   0.4830861   0.8072365
0-6 months    ki1000109-ResPak        PAKISTAN        0%                   NA                0.5600000   0.3572725   0.7627275
0-6 months    ki1000109-ResPak        PAKISTAN        >5%                  NA                0.6250000   0.4962416   0.7537584
0-6 months    ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             NA                0.6776757   0.5726263   0.7827251
0-6 months    ki1017093-NIH-Birth     BANGLADESH      0%                   NA                0.6517488   0.5445895   0.7589081
0-6 months    ki1017093-NIH-Birth     BANGLADESH      >5%                  NA                0.7152647   0.6380980   0.7924313
0-6 months    ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             NA                0.8228424   0.7431087   0.9025762
0-6 months    ki1017093b-PROVIDE      BANGLADESH      0%                   NA                0.6375612   0.5288158   0.7463066
0-6 months    ki1017093b-PROVIDE      BANGLADESH      >5%                  NA                0.7388167   0.6463372   0.8312962
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             NA                0.8958333   0.8083097   0.9833570
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH      0%                   NA                0.9292929   0.8781930   0.9803929
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH      >5%                  NA                0.8235294   0.7175654   0.9294935
0-6 months    ki1114097-CMIN          BANGLADESH      (0%, 5%]             NA                0.4000000   0.1395476   0.6604524
0-6 months    ki1114097-CMIN          BANGLADESH      0%                   NA                0.7222222   0.5220936   0.9223508
0-6 months    ki1114097-CMIN          BANGLADESH      >5%                  NA                0.4210526   0.1965983   0.6455070
6-24 months   ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             NA                0.5000000   0.3511323   0.6488677
6-24 months   ki0047075b-MAL-ED       BANGLADESH      0%                   NA                0.4285714   0.1873815   0.6697613
6-24 months   ki0047075b-MAL-ED       BANGLADESH      >5%                  NA                0.5454545   0.1667926   0.9241165
6-24 months   ki0047075b-MAL-ED       INDIA           (0%, 5%]             NA                0.4883721   0.3173946   0.6593495
6-24 months   ki0047075b-MAL-ED       INDIA           0%                   NA                0.6086957   0.3716126   0.8457787
6-24 months   ki0047075b-MAL-ED       INDIA           >5%                  NA                0.5172414   0.3159219   0.7185608
6-24 months   ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             NA                0.1801004   0.0784147   0.2817860
6-24 months   ki1017093-NIH-Birth     BANGLADESH      0%                   NA                0.2345339   0.1118576   0.3572101
6-24 months   ki1017093-NIH-Birth     BANGLADESH      >5%                  NA                0.3678861   0.2747115   0.4610608
6-24 months   ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             NA                0.2812500   0.1643962   0.3981038
6-24 months   ki1017093b-PROVIDE      BANGLADESH      0%                   NA                0.2500000   0.0764031   0.4235969
6-24 months   ki1017093b-PROVIDE      BANGLADESH      >5%                  NA                0.2903226   0.1444416   0.4362035
6-24 months   ki1114097-CMIN          BANGLADESH      (0%, 5%]             NA                0.5000000   0.2197112   0.7802888
6-24 months   ki1114097-CMIN          BANGLADESH      0%                   NA                0.5660377   0.4292281   0.7028474
6-24 months   ki1114097-CMIN          BANGLADESH      >5%                  NA                0.6615385   0.5406406   0.7824363
6-24 months   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             NA                0.3542609   0.2334224   0.4750993
6-24 months   ki1114097-CMIN          GUINEA-BISSAU   0%                   NA                0.3532532   0.2401140   0.4663925
6-24 months   ki1114097-CMIN          GUINEA-BISSAU   >5%                  NA                0.2755469   0.1686200   0.3824737


### Parameter: E(Y)


agecat        studyid                 country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH      NA                   NA                0.6370968   0.5511492   0.7230443
0-24 months   ki0047075b-MAL-ED       INDIA           NA                   NA                0.6011236   0.5212729   0.6809743
0-24 months   ki1000109-ResPak        PAKISTAN        NA                   NA                0.4550000   0.3826235   0.5273765
0-24 months   ki1017093-NIH-Birth     BANGLADESH      NA                   NA                0.5201900   0.4695846   0.5707955
0-24 months   ki1017093b-PROVIDE      BANGLADESH      NA                   NA                0.5830619   0.5262762   0.6398476
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH      NA                   NA                0.6237942   0.5698223   0.6777662
0-24 months   ki1114097-CMIN          BANGLADESH      NA                   NA                0.5789474   0.5004470   0.6574477
0-24 months   ki1114097-CMIN          GUINEA-BISSAU   NA                   NA                0.3565574   0.2946037   0.4185110
0-6 months    ki0047075b-MAL-ED       INDIA           NA                   NA                0.6867470   0.5837430   0.7897510
0-6 months    ki1000109-ResPak        PAKISTAN        NA                   NA                0.6160714   0.5252688   0.7068741
0-6 months    ki1017093-NIH-Birth     BANGLADESH      NA                   NA                0.7130045   0.6535890   0.7724200
0-6 months    ki1017093b-PROVIDE      BANGLADESH      NA                   NA                0.7880435   0.7295878   0.8464992
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH      NA                   NA                0.8939394   0.8505280   0.9373508
0-6 months    ki1114097-CMIN          BANGLADESH      NA                   NA                0.5192308   0.3806687   0.6577929
6-24 months   ki0047075b-MAL-ED       BANGLADESH      NA                   NA                0.4838710   0.3544124   0.6133295
6-24 months   ki0047075b-MAL-ED       INDIA           NA                   NA                0.5263158   0.4116286   0.6410029
6-24 months   ki1017093-NIH-Birth     BANGLADESH      NA                   NA                0.3030303   0.2377927   0.3682679
6-24 months   ki1017093b-PROVIDE      BANGLADESH      NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   ki1114097-CMIN          BANGLADESH      NA                   NA                0.6014493   0.5131344   0.6897641
6-24 months   ki1114097-CMIN          GUINEA-BISSAU   NA                   NA                0.3266332   0.2609581   0.3923082


### Parameter: RR


agecat        studyid                 country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       BANGLADESH      0%                   (0%, 5%]          0.8777090   0.6140845   1.2545066
0-24 months   ki0047075b-MAL-ED       BANGLADESH      >5%                  (0%, 5%]          1.1911765   0.8917408   1.5911590
0-24 months   ki0047075b-MAL-ED       INDIA           (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       INDIA           0%                   (0%, 5%]          1.0527784   0.7425982   1.4925196
0-24 months   ki0047075b-MAL-ED       INDIA           >5%                  (0%, 5%]          0.9378198   0.6709719   1.3107942
0-24 months   ki1000109-ResPak        PAKISTAN        (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-ResPak        PAKISTAN        0%                   (0%, 5%]          1.0555555   0.6342078   1.7568335
0-24 months   ki1000109-ResPak        PAKISTAN        >5%                  (0%, 5%]          1.1320093   0.7874565   1.6273218
0-24 months   ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH      0%                   (0%, 5%]          1.1121520   0.8967866   1.3792379
0-24 months   ki1017093-NIH-Birth     BANGLADESH      >5%                  (0%, 5%]          1.1099290   0.9260229   1.3303584
0-24 months   ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE      BANGLADESH      0%                   (0%, 5%]          0.9961497   0.7970629   1.2449634
0-24 months   ki1017093b-PROVIDE      BANGLADESH      >5%                  (0%, 5%]          1.1159004   0.9210573   1.3519612
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH      0%                   (0%, 5%]          0.8497818   0.7323933   0.9859854
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH      >5%                  (0%, 5%]          0.9821533   0.8463109   1.1398000
0-24 months   ki1114097-CMIN          BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CMIN          BANGLADESH      0%                   (0%, 5%]          1.3616575   0.8560193   2.1659688
0-24 months   ki1114097-CMIN          BANGLADESH      >5%                  (0%, 5%]          1.3429422   0.8445791   2.1353756
0-24 months   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CMIN          GUINEA-BISSAU   0%                   (0%, 5%]          0.8779221   0.5711162   1.3495453
0-24 months   ki1114097-CMIN          GUINEA-BISSAU   >5%                  (0%, 5%]          0.9056180   0.6001702   1.3665189
0-6 months    ki0047075b-MAL-ED       INDIA           (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED       INDIA           0%                   (0%, 5%]          1.0916179   0.7632584   1.5612403
0-6 months    ki0047075b-MAL-ED       INDIA           >5%                  (0%, 5%]          0.9876543   0.6840295   1.4260511
0-6 months    ki1000109-ResPak        PAKISTAN        (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-ResPak        PAKISTAN        0%                   (0%, 5%]          0.8680000   0.5586661   1.3486125
0-6 months    ki1000109-ResPak        PAKISTAN        >5%                  (0%, 5%]          0.9687500   0.7000364   1.3406111
0-6 months    ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH      0%                   (0%, 5%]          0.9617414   0.7719976   1.1981210
0-6 months    ki1017093-NIH-Birth     BANGLADESH      >5%                  (0%, 5%]          1.0554675   0.8748067   1.2734373
0-6 months    ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE      BANGLADESH      0%                   (0%, 5%]          0.7748278   0.6367297   0.9428776
0-6 months    ki1017093b-PROVIDE      BANGLADESH      >5%                  (0%, 5%]          0.8978836   0.7661103   1.0523223
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH      0%                   (0%, 5%]          1.0373502   0.9273331   1.1604197
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH      >5%                  (0%, 5%]          0.9192886   0.7821451   1.0804793
0-6 months    ki1114097-CMIN          BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-6 months    ki1114097-CMIN          BANGLADESH      0%                   (0%, 5%]          1.8055556   0.8897869   3.6638333
0-6 months    ki1114097-CMIN          BANGLADESH      >5%                  (0%, 5%]          1.0526316   0.4537449   2.4419741
6-24 months   ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED       BANGLADESH      0%                   (0%, 5%]          0.8571429   0.4534671   1.6201701
6-24 months   ki0047075b-MAL-ED       BANGLADESH      >5%                  (0%, 5%]          1.0909091   0.5125509   2.3218820
6-24 months   ki0047075b-MAL-ED       INDIA           (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED       INDIA           0%                   (0%, 5%]          1.2463768   0.7380692   2.1047554
6-24 months   ki0047075b-MAL-ED       INDIA           >5%                  (0%, 5%]          1.0591133   0.6276318   1.7872278
6-24 months   ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH      0%                   (0%, 5%]          1.3022398   0.6047365   2.8042436
6-24 months   ki1017093-NIH-Birth     BANGLADESH      >5%                  (0%, 5%]          2.0426730   1.1069171   3.7694900
6-24 months   ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE      BANGLADESH      0%                   (0%, 5%]          0.8888889   0.3957295   1.9966249
6-24 months   ki1017093b-PROVIDE      BANGLADESH      >5%                  (0%, 5%]          1.0322581   0.5377822   1.9813907
6-24 months   ki1114097-CMIN          BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months   ki1114097-CMIN          BANGLADESH      0%                   (0%, 5%]          1.1320755   0.6148297   2.0844714
6-24 months   ki1114097-CMIN          BANGLADESH      >5%                  (0%, 5%]          1.3230769   0.7337002   2.3858963
6-24 months   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months   ki1114097-CMIN          GUINEA-BISSAU   0%                   (0%, 5%]          0.9971557   0.6246479   1.5918081
6-24 months   ki1114097-CMIN          GUINEA-BISSAU   >5%                  (0%, 5%]          0.7778078   0.4639979   1.3038531


### Parameter: PAR


agecat        studyid                 country         intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  --------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             NA                 0.0074671   -0.0887245    0.1036588
0-24 months   ki0047075b-MAL-ED       INDIA           (0%, 5%]             NA                 0.0531493   -0.0315981    0.1378968
0-24 months   ki1000109-ResPak        PAKISTAN        (0%, 5%]             NA                 0.0339474   -0.0748812    0.1427759
0-24 months   ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             NA                -0.0077257   -0.0752697    0.0598183
0-24 months   ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             NA                -0.0149294   -0.0761544    0.0462956
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             NA                -0.1778646   -0.2543764   -0.1013529
0-24 months   ki1114097-CMIN          BANGLADESH      (0%, 5%]             NA                 0.1285854   -0.0407199    0.2978907
0-24 months   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             NA                -0.0280580   -0.1183562    0.0622402
0-6 months    ki0047075b-MAL-ED       INDIA           (0%, 5%]             NA                 0.0117470   -0.0949245    0.1184184
0-6 months    ki1000109-ResPak        PAKISTAN        (0%, 5%]             NA                -0.0290899   -0.1703332    0.1121535
0-6 months    ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             NA                 0.0353288   -0.0528064    0.1234639
0-6 months    ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             NA                -0.0347989   -0.1021121    0.0325142
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             NA                -0.0018939   -0.0782536    0.0744658
0-6 months    ki1114097-CMIN          BANGLADESH      (0%, 5%]             NA                 0.1192308   -0.0996278    0.3380893
6-24 months   ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             NA                -0.0161290   -0.1483198    0.1160618
6-24 months   ki0047075b-MAL-ED       INDIA           (0%, 5%]             NA                 0.0379437   -0.0879079    0.1637953
6-24 months   ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             NA                 0.1229299    0.0307388    0.2151211
6-24 months   ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             NA                -0.0048272   -0.0827262    0.0730717
6-24 months   ki1114097-CMIN          BANGLADESH      (0%, 5%]             NA                 0.1014493   -0.1507209    0.3536194
6-24 months   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             NA                -0.0276277   -0.1268156    0.0715602


### Parameter: PAF


agecat        studyid                 country         intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  --------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             NA                 0.0117206   -0.1511006    0.1515110
0-24 months   ki0047075b-MAL-ED       INDIA           (0%, 5%]             NA                 0.0884167   -0.0641176    0.2190861
0-24 months   ki1000109-ResPak        PAKISTAN        (0%, 5%]             NA                 0.0746096   -0.1971463    0.2846760
0-24 months   ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             NA                -0.0148517   -0.1535244    0.1071502
0-24 months   ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             NA                -0.0256052   -0.1363324    0.0743324
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             NA                -0.2851335   -0.4199930   -0.1630819
0-24 months   ki1114097-CMIN          BANGLADESH      (0%, 5%]             NA                 0.2221021   -0.1377258    0.4681275
0-24 months   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             NA                -0.0786914   -0.3646974    0.1473749
0-6 months    ki0047075b-MAL-ED       INDIA           (0%, 5%]             NA                 0.0171053   -0.1511351    0.1607570
0-6 months    ki1000109-ResPak        PAKISTAN        (0%, 5%]             NA                -0.0472183   -0.3042964    0.1591894
0-6 months    ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             NA                 0.0495492   -0.0824206    0.1654290
0-6 months    ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             NA                -0.0441586   -0.1339515    0.0385239
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             NA                -0.0021186   -0.0912852    0.0797623
0-6 months    ki1114097-CMIN          BANGLADESH      (0%, 5%]             NA                 0.2296296   -0.3404027    0.5572446
6-24 months   ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             NA                -0.0333333   -0.3503145    0.2092377
6-24 months   ki0047075b-MAL-ED       INDIA           (0%, 5%]             NA                 0.0720930   -0.2014981    0.2833851
6-24 months   ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             NA                 0.4056688    0.0167719    0.6407450
6-24 months   ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             NA                -0.0174632   -0.3417115    0.2284247
6-24 months   ki1114097-CMIN          BANGLADESH      (0%, 5%]             NA                 0.1686747   -0.3843797    0.5007860
6-24 months   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             NA                -0.0845832   -0.4348755    0.1801931
