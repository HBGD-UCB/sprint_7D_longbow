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

**Outcome Variable:** ever_stunted

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

agecat                       studyid                 country                        perdiar6    ever_stunted   n_cell     n
---------------------------  ----------------------  -----------------------------  ---------  -------------  -------  ----
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]               0       41   217
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]               1       44   217
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     0%                     0       36   217
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     0%                     1       36   217
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     >5%                    0       27   217
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     >5%                    1       33   217
0-24 months (no birth st.)   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]               0       12   208
0-24 months (no birth st.)   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]               1        2   208
0-24 months (no birth st.)   ki0047075b-MAL-ED       BRAZIL                         0%                     0      165   208
0-24 months (no birth st.)   ki0047075b-MAL-ED       BRAZIL                         0%                     1       27   208
0-24 months (no birth st.)   ki0047075b-MAL-ED       BRAZIL                         >5%                    0        2   208
0-24 months (no birth st.)   ki0047075b-MAL-ED       BRAZIL                         >5%                    1        0   208
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          (0%, 5%]               0       54   209
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          (0%, 5%]               1       52   209
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          0%                     0       24   209
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          0%                     1       25   209
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          >5%                    0       23   209
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          >5%                    1       31   209
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]               0       54   212
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]               1       14   212
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          0%                     0       54   212
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          0%                     1       20   212
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          >5%                    0       49   212
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          >5%                    1       21   212
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           (0%, 5%]               0       29   266
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           (0%, 5%]               1       51   266
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           0%                     0       37   266
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           0%                     1       40   266
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           >5%                    0       49   266
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           >5%                    1       60   266
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]               0       23   270
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]               1       30   270
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                     0      103   270
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                     1      105   270
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                    0        7   270
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                    1        2   270
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               0       16   219
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               1       69   219
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                     0       20   219
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                     1       74   219
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                    0        5   219
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                    1       35   219
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       (0%, 5%]               0       25   201
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       (0%, 5%]               1       29   201
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       0%                     0       30   201
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       0%                     1       17   201
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       >5%                    0       41   201
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       >5%                    1       59   201
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]               0       67   528
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]               1       92   528
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     0%                     0       69   528
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     0%                     1       72   528
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     >5%                    0       73   528
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     >5%                    1      155   528
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]               0      137   634
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]               1      101   634
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     0%                     0      149   634
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     0%                     1       53   634
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     >5%                    0      110   634
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     >5%                    1       84   634
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]               0       85   653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]               1       66   653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     0%                     0      196   653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     0%                     1      117   653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                    0      115   653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                    1       74   653
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     (0%, 5%]               0        5   168
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     (0%, 5%]               1       29   168
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     0%                     0       20   168
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     0%                     1       48   168
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     >5%                    0       16   168
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     >5%                    1       50   168
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         (0%, 5%]               0       31   114
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         (0%, 5%]               1       15   114
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         0%                     0       30   114
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         0%                     1        9   114
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         >5%                    0       18   114
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         >5%                    1       11   114
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]               0      151   790
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]               1       75   790
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  0%                     0      167   790
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  0%                     1       78   790
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  >5%                    0      200   790
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  >5%                    1      119   790
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           (0%, 5%]               0      119   672
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           (0%, 5%]               1       67   672
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           0%                     0      141   672
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           0%                     1       61   672
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           >5%                    0      195   672
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           >5%                    1       89   672
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           (0%, 5%]               0       29   197
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           (0%, 5%]               1        8   197
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           0%                     0       79   197
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           0%                     1       28   197
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           >5%                    0       44   197
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           >5%                    1        9   197
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]               0       73   217
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]               1       12   217
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     0%                     0       50   217
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     0%                     1       22   217
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     >5%                    0       48   217
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     >5%                    1       12   217
0-6 months (no birth st.)    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]               0       12   208
0-6 months (no birth st.)    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]               1        2   208
0-6 months (no birth st.)    ki0047075b-MAL-ED       BRAZIL                         0%                     0      174   208
0-6 months (no birth st.)    ki0047075b-MAL-ED       BRAZIL                         0%                     1       18   208
0-6 months (no birth st.)    ki0047075b-MAL-ED       BRAZIL                         >5%                    0        2   208
0-6 months (no birth st.)    ki0047075b-MAL-ED       BRAZIL                         >5%                    1        0   208
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          (0%, 5%]               0       89   209
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          (0%, 5%]               1       17   209
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          0%                     0       38   209
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          0%                     1       11   209
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          >5%                    0       38   209
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          >5%                    1       16   209
0-6 months (no birth st.)    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]               0       65   212
0-6 months (no birth st.)    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]               1        3   212
0-6 months (no birth st.)    ki0047075b-MAL-ED       NEPAL                          0%                     0       65   212
0-6 months (no birth st.)    ki0047075b-MAL-ED       NEPAL                          0%                     1        9   212
0-6 months (no birth st.)    ki0047075b-MAL-ED       NEPAL                          >5%                    0       68   212
0-6 months (no birth st.)    ki0047075b-MAL-ED       NEPAL                          >5%                    1        2   212
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           (0%, 5%]               0       47   266
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           (0%, 5%]               1       33   266
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           0%                     0       53   266
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           0%                     1       24   266
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           >5%                    0       74   266
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           >5%                    1       35   266
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]               0       38   270
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]               1       15   270
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                     0      146   270
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                     1       62   270
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                    0        7   270
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                    1        2   270
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               0       59   219
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               1       26   219
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                     0       68   219
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                     1       26   219
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                    0       27   219
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                    1       13   219
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       (0%, 5%]               0       30   201
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       (0%, 5%]               1       24   201
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       0%                     0       30   201
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       0%                     1       17   201
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       >5%                    0       53   201
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       >5%                    1       47   201
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]               0      120   528
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]               1       39   528
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     0%                     0      126   528
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     0%                     1       15   528
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     >5%                    0      161   528
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     >5%                    1       67   528
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]               0      193   634
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]               1       45   634
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     0%                     0      183   634
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     0%                     1       19   634
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     >5%                    0      157   634
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     >5%                    1       37   634
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]               0      112   653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]               1       39   653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     0%                     0      260   653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     0%                     1       53   653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                    0      157   653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                    1       32   653
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     (0%, 5%]               0       24   168
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     (0%, 5%]               1       10   168
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     0%                     0       45   168
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     0%                     1       23   168
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     >5%                    0       51   168
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     >5%                    1       15   168
0-6 months (no birth st.)    ki1114097-CMIN          BRAZIL                         (0%, 5%]               0       43   114
0-6 months (no birth st.)    ki1114097-CMIN          BRAZIL                         (0%, 5%]               1        3   114
0-6 months (no birth st.)    ki1114097-CMIN          BRAZIL                         0%                     0       37   114
0-6 months (no birth st.)    ki1114097-CMIN          BRAZIL                         0%                     1        2   114
0-6 months (no birth st.)    ki1114097-CMIN          BRAZIL                         >5%                    0       24   114
0-6 months (no birth st.)    ki1114097-CMIN          BRAZIL                         >5%                    1        5   114
0-6 months (no birth st.)    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]               0      211   724
0-6 months (no birth st.)    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]               1        3   724
0-6 months (no birth st.)    ki1114097-CMIN          GUINEA-BISSAU                  0%                     0      213   724
0-6 months (no birth st.)    ki1114097-CMIN          GUINEA-BISSAU                  0%                     1        7   724
0-6 months (no birth st.)    ki1114097-CMIN          GUINEA-BISSAU                  >5%                    0      278   724
0-6 months (no birth st.)    ki1114097-CMIN          GUINEA-BISSAU                  >5%                    1       12   724
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           (0%, 5%]               0      169   658
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           (0%, 5%]               1       17   658
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           0%                     0      181   658
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           0%                     1       12   658
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           >5%                    0      259   658
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           >5%                    1       20   658
0-6 months (no birth st.)    ki1114097-CONTENT       PERU                           (0%, 5%]               0       30   197
0-6 months (no birth st.)    ki1114097-CONTENT       PERU                           (0%, 5%]               1        7   197
0-6 months (no birth st.)    ki1114097-CONTENT       PERU                           0%                     0       88   197
0-6 months (no birth st.)    ki1114097-CONTENT       PERU                           0%                     1       19   197
0-6 months (no birth st.)    ki1114097-CONTENT       PERU                           >5%                    0       49   197
0-6 months (no birth st.)    ki1114097-CONTENT       PERU                           >5%                    1        4   197
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]               0       39   159
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]               1       32   159
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     0%                     0       28   159
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     0%                     1       14   159
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     >5%                    0       25   159
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     >5%                    1       21   159
6-24 months                  ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]               0       12   168
6-24 months                  ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]               1        0   168
6-24 months                  ki0047075b-MAL-ED       BRAZIL                         0%                     0      145   168
6-24 months                  ki0047075b-MAL-ED       BRAZIL                         0%                     1        9   168
6-24 months                  ki0047075b-MAL-ED       BRAZIL                         >5%                    0        2   168
6-24 months                  ki0047075b-MAL-ED       BRAZIL                         >5%                    1        0   168
6-24 months                  ki0047075b-MAL-ED       INDIA                          (0%, 5%]               0       53   155
6-24 months                  ki0047075b-MAL-ED       INDIA                          (0%, 5%]               1       35   155
6-24 months                  ki0047075b-MAL-ED       INDIA                          0%                     0       16   155
6-24 months                  ki0047075b-MAL-ED       INDIA                          0%                     1       14   155
6-24 months                  ki0047075b-MAL-ED       INDIA                          >5%                    0       22   155
6-24 months                  ki0047075b-MAL-ED       INDIA                          >5%                    1       15   155
6-24 months                  ki0047075b-MAL-ED       NEPAL                          (0%, 5%]               0       53   195
6-24 months                  ki0047075b-MAL-ED       NEPAL                          (0%, 5%]               1       11   195
6-24 months                  ki0047075b-MAL-ED       NEPAL                          0%                     0       53   195
6-24 months                  ki0047075b-MAL-ED       NEPAL                          0%                     1       11   195
6-24 months                  ki0047075b-MAL-ED       NEPAL                          >5%                    0       48   195
6-24 months                  ki0047075b-MAL-ED       NEPAL                          >5%                    1       19   195
6-24 months                  ki0047075b-MAL-ED       PERU                           (0%, 5%]               0       26   149
6-24 months                  ki0047075b-MAL-ED       PERU                           (0%, 5%]               1       18   149
6-24 months                  ki0047075b-MAL-ED       PERU                           0%                     0       19   149
6-24 months                  ki0047075b-MAL-ED       PERU                           0%                     1       16   149
6-24 months                  ki0047075b-MAL-ED       PERU                           >5%                    0       45   149
6-24 months                  ki0047075b-MAL-ED       PERU                           >5%                    1       25   149
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]               0       20   159
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]               1       15   159
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA                   0%                     0       75   159
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA                   0%                     1       43   159
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                    0        6   159
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                    1        0   159
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               0       14   145
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               1       43   145
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                     0       13   145
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                     1       48   145
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                    0        5   145
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                    1       22   145
6-24 months                  ki1000109-ResPak        PAKISTAN                       (0%, 5%]               0       22    95
6-24 months                  ki1000109-ResPak        PAKISTAN                       (0%, 5%]               1        5    95
6-24 months                  ki1000109-ResPak        PAKISTAN                       0%                     0       20    95
6-24 months                  ki1000109-ResPak        PAKISTAN                       0%                     1        0    95
6-24 months                  ki1000109-ResPak        PAKISTAN                       >5%                    0       36    95
6-24 months                  ki1000109-ResPak        PAKISTAN                       >5%                    1       12    95
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]               0       59   345
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]               1       53   345
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     0%                     0       37   345
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     0%                     1       57   345
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     >5%                    0       51   345
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     >5%                    1       88   345
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]               0      126   457
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]               1       56   457
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     0%                     0       93   457
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     0%                     1       34   457
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     >5%                    0      101   457
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     >5%                    1       47   457
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]               0       81   506
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]               1       27   506
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     0%                     0      182   506
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     0%                     1       64   506
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     >5%                    0      110   506
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     >5%                    1       42   506
6-24 months                  ki1114097-CMIN          BANGLADESH                     (0%, 5%]               0        5   111
6-24 months                  ki1114097-CMIN          BANGLADESH                     (0%, 5%]               1       19   111
6-24 months                  ki1114097-CMIN          BANGLADESH                     0%                     0       14   111
6-24 months                  ki1114097-CMIN          BANGLADESH                     0%                     1       25   111
6-24 months                  ki1114097-CMIN          BANGLADESH                     >5%                    0       13   111
6-24 months                  ki1114097-CMIN          BANGLADESH                     >5%                    1       35   111
6-24 months                  ki1114097-CMIN          BRAZIL                         (0%, 5%]               0       31   104
6-24 months                  ki1114097-CMIN          BRAZIL                         (0%, 5%]               1       12   104
6-24 months                  ki1114097-CMIN          BRAZIL                         0%                     0       30   104
6-24 months                  ki1114097-CMIN          BRAZIL                         0%                     1        7   104
6-24 months                  ki1114097-CMIN          BRAZIL                         >5%                    0       18   104
6-24 months                  ki1114097-CMIN          BRAZIL                         >5%                    1        6   104
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]               0      144   770
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]               1       76   770
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  0%                     0      164   770
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  0%                     1       78   770
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  >5%                    0      195   770
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  >5%                    1      113   770
6-24 months                  ki1114097-CMIN          PERU                           (0%, 5%]               0      114   585
6-24 months                  ki1114097-CMIN          PERU                           (0%, 5%]               1       50   585
6-24 months                  ki1114097-CMIN          PERU                           0%                     0      128   585
6-24 months                  ki1114097-CMIN          PERU                           0%                     1       50   585
6-24 months                  ki1114097-CMIN          PERU                           >5%                    0      171   585
6-24 months                  ki1114097-CMIN          PERU                           >5%                    1       72   585
6-24 months                  ki1114097-CONTENT       PERU                           (0%, 5%]               0       29   167
6-24 months                  ki1114097-CONTENT       PERU                           (0%, 5%]               1        1   167
6-24 months                  ki1114097-CONTENT       PERU                           0%                     0       79   167
6-24 months                  ki1114097-CONTENT       PERU                           0%                     1        9   167
6-24 months                  ki1114097-CONTENT       PERU                           >5%                    0       44   167
6-24 months                  ki1114097-CONTENT       PERU                           >5%                    1        5   167


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
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

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/63ac36c2-e00b-49da-ac24-6fa19ccecbb6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/63ac36c2-e00b-49da-ac24-6fa19ccecbb6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/63ac36c2-e00b-49da-ac24-6fa19ccecbb6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/63ac36c2-e00b-49da-ac24-6fa19ccecbb6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.5413030   0.4463561   0.6362500
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.5214677   0.4259764   0.6169590
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.5970888   0.4897375   0.7044401
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.4979846   0.4053283   0.5906409
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          0%                   NA                0.5047475   0.3707270   0.6387679
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.5657153   0.4419046   0.6895260
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                0.2058797   0.1095491   0.3022102
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          0%                   NA                0.2702688   0.1688434   0.3716941
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          >5%                  NA                0.3000050   0.1924025   0.4076076
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.7316290   0.6485604   0.8146976
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           0%                   NA                0.6740398   0.5917642   0.7563154
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           >5%                  NA                0.6040166   0.5239814   0.6840517
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.8117647   0.7284737   0.8950557
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.7872340   0.7043099   0.8701582
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.8750000   0.7722762   0.9777238
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       (0%, 5%]             NA                0.5345877   0.4020008   0.6671747
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       0%                   NA                0.3623679   0.2248858   0.4998499
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       >5%                  NA                0.5910055   0.4943030   0.6877081
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.5849536   0.5178731   0.6520340
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.5184824   0.4474163   0.5895485
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.6596115   0.6036089   0.7156140
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.4888773   0.4348040   0.5429506
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.3456924   0.2935245   0.3978603
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.5213634   0.4629039   0.5798228
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.6004205   0.5480848   0.6527562
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.4317203   0.3849418   0.4784987
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.5019378   0.4466105   0.5572650
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.8529412   0.7335396   0.9723428
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     0%                   NA                0.7058824   0.5972606   0.8145041
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.7575758   0.6538770   0.8612745
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         (0%, 5%]             NA                0.3260870   0.1900205   0.4621534
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         0%                   NA                0.2307692   0.0979545   0.3635840
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         >5%                  NA                0.3793103   0.2019335   0.5566872
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                0.3338239   0.2727307   0.3949172
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                0.3228048   0.2645062   0.3811034
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  >5%                  NA                0.3708038   0.3178480   0.4237596
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           (0%, 5%]             NA                0.3613201   0.2929727   0.4296675
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           0%                   NA                0.3061802   0.2432752   0.3690853
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           >5%                  NA                0.3153870   0.2617163   0.3690576
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           (0%, 5%]             NA                0.2162162   0.0832337   0.3491987
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           0%                   NA                0.2616822   0.1781854   0.3451791
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           >5%                  NA                0.1698113   0.0684699   0.2711527
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.1446256   0.0699114   0.2193397
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.2885533   0.1906786   0.3864280
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.1953756   0.0987081   0.2920431
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.1604304   0.0905485   0.2303124
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          0%                   NA                0.2237579   0.1074748   0.3400409
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.2969636   0.1747280   0.4191992
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.5261259   0.4322947   0.6199570
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           0%                   NA                0.4186587   0.3295747   0.5077427
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           >5%                  NA                0.3718412   0.2912328   0.4524497
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.3175193   0.2200020   0.4150367
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.2760444   0.1869113   0.3651774
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.3439855   0.2020380   0.4859330
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       (0%, 5%]             NA                0.4444444   0.3115806   0.5773083
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       0%                   NA                0.3617021   0.2239909   0.4994134
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       >5%                  NA                0.4700000   0.3719341   0.5680659
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.2455216   0.1786994   0.3123438
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.1066260   0.0558502   0.1574018
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.2933456   0.2340739   0.3526173
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.1997901   0.1517363   0.2478440
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.1015898   0.0632057   0.1399739
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.1970972   0.1438225   0.2503719
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.2485572   0.1864968   0.3106175
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.1738047   0.1341412   0.2134682
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.1687614   0.1185076   0.2190153
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.2827099   0.1346010   0.4308187
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     0%                   NA                0.3554925   0.2398766   0.4711083
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.2211592   0.1222724   0.3200460
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           (0%, 5%]             NA                0.0914083   0.0499829   0.1328338
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           0%                   NA                0.0622848   0.0282043   0.0963654
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           >5%                  NA                0.0715971   0.0413068   0.1018874
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.4487264   0.3351861   0.5622668
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.3452031   0.2081845   0.4822217
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.4485591   0.3079229   0.5891953
6-24 months                  ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.4029559   0.3037598   0.5021521
6-24 months                  ki0047075b-MAL-ED       INDIA                          0%                   NA                0.4616928   0.2938886   0.6294970
6-24 months                  ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.3975082   0.2488112   0.5462052
6-24 months                  ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                0.1717793   0.0793337   0.2642249
6-24 months                  ki0047075b-MAL-ED       NEPAL                          0%                   NA                0.1705527   0.0776270   0.2634784
6-24 months                  ki0047075b-MAL-ED       NEPAL                          >5%                  NA                0.2855079   0.1780077   0.3930081
6-24 months                  ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.4209495   0.2913628   0.5505362
6-24 months                  ki0047075b-MAL-ED       PERU                           0%                   NA                0.5018829   0.3616250   0.6421407
6-24 months                  ki0047075b-MAL-ED       PERU                           >5%                  NA                0.3655910   0.2592396   0.4719425
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.7543860   0.6422521   0.8665198
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.7868852   0.6837639   0.8900065
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.8148148   0.6677863   0.9618433
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.4678264   0.3818242   0.5538285
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.5761511   0.4880561   0.6642460
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.6099210   0.5342441   0.6855979
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.2902493   0.2289992   0.3514994
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.2311684   0.1643350   0.2980019
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.2871293   0.2196687   0.3545899
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.2637737   0.2014550   0.3260924
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.2617236   0.2115575   0.3118897
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.2923541   0.2317414   0.3529668
6-24 months                  ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.7916667   0.6284524   0.9548810
6-24 months                  ki1114097-CMIN          BANGLADESH                     0%                   NA                0.6410256   0.4897913   0.7922600
6-24 months                  ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.7291667   0.6028801   0.8554532
6-24 months                  ki1114097-CMIN          BRAZIL                         (0%, 5%]             NA                0.2790698   0.1443551   0.4137845
6-24 months                  ki1114097-CMIN          BRAZIL                         0%                   NA                0.1891892   0.0623793   0.3159991
6-24 months                  ki1114097-CMIN          BRAZIL                         >5%                  NA                0.2500000   0.0759231   0.4240769
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                0.3462162   0.2837249   0.4087075
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                0.3266970   0.2677896   0.3856044
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  >5%                  NA                0.3642391   0.3105564   0.4179219
6-24 months                  ki1114097-CMIN          PERU                           (0%, 5%]             NA                0.3048801   0.2343638   0.3753964
6-24 months                  ki1114097-CMIN          PERU                           0%                   NA                0.2808997   0.2148187   0.3469806
6-24 months                  ki1114097-CMIN          PERU                           >5%                  NA                0.2962965   0.2388357   0.3537572


### Parameter: E(Y)


agecat                       studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.5207373   0.4541154   0.5873593
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          NA                   NA                0.5167464   0.4488350   0.5846578
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.2594340   0.2002911   0.3185768
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           NA                   NA                0.5676692   0.5080232   0.6273151
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8127854   0.7610035   0.8645672
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       NA                   NA                0.5223881   0.4531624   0.5916138
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.6041667   0.5624147   0.6459187
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.3753943   0.3376725   0.4131162
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.3935681   0.3560687   0.4310676
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     NA                   NA                0.7559524   0.6908084   0.8210964
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         NA                   NA                0.3070175   0.2219720   0.3920631
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  NA                   NA                0.3443038   0.3111501   0.3774575
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           NA                   NA                0.3229167   0.2875370   0.3582963
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           NA                   NA                0.2284264   0.1696529   0.2871999
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.2119816   0.1574763   0.2664868
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          NA                   NA                0.2105263   0.1551227   0.2659300
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           NA                   NA                0.3458647   0.2885967   0.4031327
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2968037   0.2361590   0.3574483
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       NA                   NA                0.4378109   0.3690538   0.5065681
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.2291667   0.1932828   0.2650505
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.1593060   0.1307970   0.1878149
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.1898928   0.1597870   0.2199986
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     NA                   NA                0.2857143   0.2171983   0.3542303
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           NA                   NA                0.0744681   0.0543935   0.0945427
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.4213836   0.3443902   0.4983771
6-24 months                  ki0047075b-MAL-ED       INDIA                          NA                   NA                0.4129032   0.3351414   0.4906651
6-24 months                  ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.2102564   0.1529155   0.2675974
6-24 months                  ki0047075b-MAL-ED       PERU                           NA                   NA                0.3959732   0.3171819   0.4747644
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7793103   0.7115754   0.8470453
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.5739130   0.5216565   0.6261696
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.2997812   0.2577294   0.3418330
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months                  ki1114097-CMIN          BANGLADESH                     NA                   NA                0.7117117   0.6270636   0.7963598
6-24 months                  ki1114097-CMIN          BRAZIL                         NA                   NA                0.2403846   0.1578607   0.3229085
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  NA                   NA                0.3467532   0.3131150   0.3803915
6-24 months                  ki1114097-CMIN          PERU                           NA                   NA                0.2940171   0.2570662   0.3309680


### Parameter: RR


agecat                       studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     0%                   (0%, 5%]          0.9633563   0.7583787   1.2237360
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     >5%                  (0%, 5%]          1.1030583   0.8652804   1.4061772
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          0%                   (0%, 5%]          1.0135805   0.7382528   1.3915903
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          >5%                  (0%, 5%]          1.1360096   0.8589954   1.5023571
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          0%                   (0%, 5%]          1.3127509   0.7205976   2.3915080
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          >5%                  (0%, 5%]          1.4571861   0.8081253   2.6275519
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           0%                   (0%, 5%]          0.9212863   0.7808189   1.0870234
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           >5%                  (0%, 5%]          0.8255777   0.6954422   0.9800649
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   (0%, 5%]          0.9697811   0.8371650   1.1234049
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  (0%, 5%]          1.0778986   0.9222823   1.2597718
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       0%                   (0%, 5%]          0.6778455   0.4310197   1.0660174
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       >5%                  (0%, 5%]          1.1055352   0.8215804   1.4876306
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     0%                   (0%, 5%]          0.8863650   0.7459868   1.0531593
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     >5%                  (0%, 5%]          1.1276305   0.9828103   1.2937904
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     0%                   (0%, 5%]          0.7071149   0.5925266   0.8438633
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     >5%                  (0%, 5%]          1.0664503   0.9190248   1.2375251
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   (0%, 5%]          0.7190299   0.6322380   0.8177364
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  (0%, 5%]          0.8359771   0.7320830   0.9546154
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     0%                   (0%, 5%]          0.8275862   0.6721520   1.0189643
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     >5%                  (0%, 5%]          0.8881923   0.7302588   1.0802821
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         0%                   (0%, 5%]          0.7076923   0.3476269   1.4407068
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         >5%                  (0%, 5%]          1.1632184   0.6215489   2.1769440
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  0%                   (0%, 5%]          0.9669912   0.7482199   1.2497288
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  >5%                  (0%, 5%]          1.1107766   0.8808631   1.4006996
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           0%                   (0%, 5%]          0.8473933   0.6410113   1.1202228
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           >5%                  (0%, 5%]          0.8728741   0.6769080   1.1255727
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           0%                   (0%, 5%]          1.2102804   0.6052989   2.4199262
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           >5%                  (0%, 5%]          0.7853774   0.3333430   1.8503989
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     0%                   (0%, 5%]          1.9951750   1.0811181   3.6820430
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     >5%                  (0%, 5%]          1.3509065   0.6634652   2.7506315
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          0%                   (0%, 5%]          1.3947346   0.7090076   2.7436721
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          >5%                  (0%, 5%]          1.8510429   1.0169946   3.3691034
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           0%                   (0%, 5%]          0.7957387   0.6021827   1.0515083
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           >5%                  (0%, 5%]          0.7067534   0.5334767   0.9363115
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   (0%, 5%]          0.8693782   0.5583173   1.3537436
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  (0%, 5%]          1.0833528   0.6491711   1.8079262
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       0%                   (0%, 5%]          0.8138298   0.5015391   1.3205729
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       >5%                  (0%, 5%]          1.0575000   0.7344376   1.5226702
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     0%                   (0%, 5%]          0.4342835   0.2510714   0.7511896
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     >5%                  (0%, 5%]          1.1947852   0.8513021   1.6768568
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     0%                   (0%, 5%]          0.5084825   0.3253950   0.7945864
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     >5%                  (0%, 5%]          0.9865211   0.6875728   1.4154484
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   (0%, 5%]          0.6992544   0.5056085   0.9670657
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  (0%, 5%]          0.6789642   0.4661648   0.9889044
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     0%                   (0%, 5%]          1.2574462   0.6797440   2.3261269
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     >5%                  (0%, 5%]          0.7822832   0.3933928   1.5556129
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           0%                   (0%, 5%]          0.6813912   0.3348799   1.3864495
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           >5%                  (0%, 5%]          0.7832664   0.4213985   1.4558817
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     0%                   (0%, 5%]          0.7692951   0.4835218   1.2239677
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     >5%                  (0%, 5%]          0.9996270   0.6716983   1.4876533
6-24 months                  ki0047075b-MAL-ED       INDIA                          (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED       INDIA                          0%                   (0%, 5%]          1.1457649   0.7468875   1.7576639
6-24 months                  ki0047075b-MAL-ED       INDIA                          >5%                  (0%, 5%]          0.9864805   0.6377278   1.5259548
6-24 months                  ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED       NEPAL                          0%                   (0%, 5%]          0.9928596   0.4615880   2.1356061
6-24 months                  ki0047075b-MAL-ED       NEPAL                          >5%                  (0%, 5%]          1.6620625   0.8629283   3.2012529
6-24 months                  ki0047075b-MAL-ED       PERU                           (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED       PERU                           0%                   (0%, 5%]          1.1922639   0.7894197   1.8006814
6-24 months                  ki0047075b-MAL-ED       PERU                           >5%                  (0%, 5%]          0.8684915   0.5717556   1.3192306
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   (0%, 5%]          1.0430804   0.8555720   1.2716835
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  (0%, 5%]          1.0801034   0.8549377   1.3645711
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     0%                   (0%, 5%]          1.2315490   0.9762948   1.5535399
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     >5%                  (0%, 5%]          1.3037338   1.0481935   1.6215724
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     0%                   (0%, 5%]          0.7964480   0.5610703   1.1305701
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     >5%                  (0%, 5%]          0.9892508   0.7261705   1.3476410
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     0%                   (0%, 5%]          0.9922277   0.7391297   1.3319934
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  (0%, 5%]          1.1083519   0.8147683   1.5077219
6-24 months                  ki1114097-CMIN          BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months                  ki1114097-CMIN          BANGLADESH                     0%                   (0%, 5%]          0.8097166   0.5919199   1.1076515
6-24 months                  ki1114097-CMIN          BANGLADESH                     >5%                  (0%, 5%]          0.9210526   0.7036344   1.2056515
6-24 months                  ki1114097-CMIN          BRAZIL                         (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months                  ki1114097-CMIN          BRAZIL                         0%                   (0%, 5%]          0.6779279   0.2967900   1.5485233
6-24 months                  ki1114097-CMIN          BRAZIL                         >5%                  (0%, 5%]          0.8958333   0.3839384   2.0902242
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  0%                   (0%, 5%]          0.9436213   0.7314936   1.2172646
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  >5%                  (0%, 5%]          1.0520568   0.8336032   1.3277583
6-24 months                  ki1114097-CMIN          PERU                           (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months                  ki1114097-CMIN          PERU                           0%                   (0%, 5%]          0.9213447   0.6624399   1.2814387
6-24 months                  ki1114097-CMIN          PERU                           >5%                  (0%, 5%]          0.9718459   0.7186412   1.3142641


### Parameter: PAR


agecat                       studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.0205657   -0.0905164    0.0493850
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                 0.0187618   -0.0436472    0.0811708
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                 0.0535543   -0.0290555    0.1361640
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -0.1639598   -0.2359886   -0.0919310
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.0010207   -0.0640452    0.0660865
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       (0%, 5%]             NA                -0.0121997   -0.1256827    0.1012834
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                 0.0192131   -0.0347942    0.0732204
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.1134830   -0.1539242   -0.0730418
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.2068523   -0.2517105   -0.1619941
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -0.0969888   -0.2098156    0.0158380
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         (0%, 5%]             NA                -0.0190694   -0.1230196    0.0848808
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                 0.0104799   -0.0412622    0.0622219
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           (0%, 5%]             NA                -0.0384034   -0.0960155    0.0192086
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           (0%, 5%]             NA                 0.0122102   -0.1081884    0.1326088
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                 0.0673560    0.0032104    0.1315016
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                 0.0500959   -0.0044936    0.1046854
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -0.1802612   -0.2588135   -0.1017089
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0207157   -0.0958557    0.0544244
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       (0%, 5%]             NA                -0.0066335   -0.1201908    0.1069238
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -0.0163549   -0.0716577    0.0389479
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.0404841   -0.0768647   -0.0041035
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.0586644   -0.1101038   -0.0072250
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                 0.0030044   -0.1284725    0.1344814
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           (0%, 5%]             NA                -0.0169402   -0.0508258    0.0169453
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.0273428   -0.1096791    0.0549935
6-24 months                  ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                 0.0099473   -0.0528512    0.0727458
6-24 months                  ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                 0.0384771   -0.0402701    0.1172244
6-24 months                  ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -0.0249763   -0.1326603    0.0827076
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.0249244   -0.0603766    0.1102254
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                 0.1060867    0.0370554    0.1751180
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                 0.0095319   -0.0365970    0.0556609
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.0009279   -0.0562275    0.0543718
6-24 months                  ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -0.0799550   -0.2292355    0.0693256
6-24 months                  ki1114097-CMIN          BRAZIL                         (0%, 5%]             NA                -0.0386852   -0.1384409    0.0610706
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                 0.0005370   -0.0522341    0.0533082
6-24 months                  ki1114097-CMIN          PERU                           (0%, 5%]             NA                -0.0108630   -0.0704437    0.0487177


### Parameter: PAF


agecat                       studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.0394935   -0.1831925    0.0867533
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                 0.0363076   -0.0925162    0.1499412
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                 0.2064274   -0.1830454    0.4676810
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -0.2888299   -0.4329938   -0.1591693
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.0012558   -0.0820932    0.0781847
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       (0%, 5%]             NA                -0.0233536   -0.2654220    0.1724084
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                 0.0318010   -0.0617910    0.1171432
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.3023035   -0.4205825   -0.1938724
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.5255819   -0.6650239   -0.3978180
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -0.1283001   -0.2906531    0.0136302
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         (0%, 5%]             NA                -0.0621118   -0.4608456    0.2277887
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                 0.0304378   -0.1321042    0.1696429
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           (0%, 5%]             NA                -0.1189268   -0.3125303    0.0461195
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           (0%, 5%]             NA                 0.0534535   -0.6517332    0.4575696
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                 0.3177446   -0.0528422    0.5578896
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                 0.2379555   -0.0645452    0.4544977
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -0.5211900   -0.7913563   -0.2917692
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0697959   -0.3555654    0.1557300
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       (0%, 5%]             NA                -0.0151515   -0.3106824    0.2137435
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -0.0713669   -0.3419312    0.1446454
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.2541282   -0.5054963   -0.0447302
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.3089342   -0.6095169   -0.0644863
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                 0.0105154   -0.5753685    0.3785075
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           (0%, 5%]             NA                -0.2274832   -0.7735345    0.1504450
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.0648881   -0.2795834    0.1137845
6-24 months                  ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                 0.0240911   -0.1404879    0.1649203
6-24 months                  ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                 0.1830010   -0.2891587    0.4822302
6-24 months                  ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -0.0630758   -0.3743111    0.1776751
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.0319826   -0.0841333    0.1356619
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                 0.1848480    0.0541473    0.2974881
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                 0.0317963   -0.1348619    0.1739801
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.0035301   -0.2376951    0.1863322
6-24 months                  ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -0.1123418   -0.3454699    0.0803925
6-24 months                  ki1114097-CMIN          BRAZIL                         (0%, 5%]             NA                -0.1609302   -0.6583752    0.1873015
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                 0.0015488   -0.1628480    0.1427041
6-24 months                  ki1114097-CMIN          PERU                           (0%, 5%]             NA                -0.0369468   -0.2607379    0.1471195
