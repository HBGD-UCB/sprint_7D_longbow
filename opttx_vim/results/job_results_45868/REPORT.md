---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      W: []
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
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
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
![](/tmp/a9af62a0-07e3-40db-a1d0-1814bd506e55/5f206b88-366e-4635-b68c-e87b1ec97a26/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a9af62a0-07e3-40db-a1d0-1814bd506e55/5f206b88-366e-4635-b68c-e87b1ec97a26/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     optimal              NA                0.5359270   0.4365067   0.6353474
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          optimal              NA                0.5433046   0.4065616   0.6800476
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          optimal              NA                0.1859223   0.0963039   0.2755408
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           optimal              NA                0.5340181   0.4389943   0.6290420
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.8132142   0.7319136   0.8945148
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       optimal              NA                0.3497779   0.2109964   0.4885594
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     optimal              NA                0.5472795   0.4668045   0.6277545
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     optimal              NA                0.2633966   0.2042032   0.3225899
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              NA                0.4035077   0.3481315   0.4588840
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     optimal              NA                0.7077619   0.5977687   0.8177551
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         optimal              NA                0.2365362   0.0991717   0.3739007
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  optimal              NA                0.4184184   0.3570771   0.4797596
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           optimal              NA                0.3183387   0.2544511   0.3822262
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           optimal              NA                0.2624023   0.1261092   0.3986954
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     optimal              NA                0.1875824   0.1009720   0.2741928
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          optimal              NA                0.1606543   0.0901500   0.2311587
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           optimal              NA                0.3446480   0.2440607   0.4452354
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2965660   0.2055361   0.3875958
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       optimal              NA                0.3621241   0.2236128   0.5006354
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     optimal              NA                0.1063138   0.0551523   0.1574753
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     optimal              NA                0.1118798   0.0689477   0.1548118
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              NA                0.2017096   0.1522775   0.2511418
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     optimal              NA                0.2234011   0.1224400   0.3243622
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           optimal              NA                0.0858794   0.0473459   0.1244129
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     optimal              NA                0.3492045   0.2046425   0.4937664
6-24 months                  ki0047075b-MAL-ED       INDIA                          optimal              NA                0.5068025   0.3688406   0.6447644
6-24 months                  ki0047075b-MAL-ED       NEPAL                          optimal              NA                0.2240276   0.1222973   0.3257579
6-24 months                  ki0047075b-MAL-ED       PERU                           optimal              NA                0.4645296   0.3374209   0.5916383
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.7968474   0.6897646   0.9039302
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     optimal              NA                0.4876267   0.3977605   0.5774930
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     optimal              NA                0.2656658   0.1903059   0.3410258
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     optimal              NA                0.2331093   0.1627555   0.3034631
6-24 months                  ki1114097-CMIN          BANGLADESH                     optimal              NA                0.6457346   0.4923254   0.7991439
6-24 months                  ki1114097-CMIN          BRAZIL                         optimal              NA                0.1953462   0.0622266   0.3284658
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  optimal              NA                0.3769400   0.3162549   0.4376251
6-24 months                  ki1114097-CMIN          PERU                           optimal              NA                0.3431799   0.2733089   0.4130509


### Parameter: E(Y)


agecat                       studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     observed             NA                0.5207373   0.4541154   0.5873593
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          observed             NA                0.5167464   0.4488350   0.5846578
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          observed             NA                0.2594340   0.2002911   0.3185768
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           observed             NA                0.5676692   0.5080232   0.6273151
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             NA                0.8127854   0.7610035   0.8645672
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       observed             NA                0.5223881   0.4531624   0.5916138
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     observed             NA                0.6041667   0.5624147   0.6459187
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     observed             NA                0.3753943   0.3376725   0.4131162
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     observed             NA                0.3935681   0.3560687   0.4310676
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     observed             NA                0.7559524   0.6908084   0.8210964
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         observed             NA                0.3070175   0.2219720   0.3920631
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  observed             NA                0.3443038   0.3111501   0.3774575
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           observed             NA                0.3229167   0.2875370   0.3582963
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           observed             NA                0.2284264   0.1696529   0.2871999
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     observed             NA                0.2119816   0.1574763   0.2664868
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          observed             NA                0.2105263   0.1551227   0.2659300
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           observed             NA                0.3458647   0.2885967   0.4031327
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2968037   0.2361590   0.3574483
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       observed             NA                0.4378109   0.3690538   0.5065681
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     observed             NA                0.2291667   0.1932828   0.2650505
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     observed             NA                0.1593060   0.1307970   0.1878149
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     observed             NA                0.1898928   0.1597870   0.2199986
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     observed             NA                0.2857143   0.2171983   0.3542303
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           observed             NA                0.0744681   0.0543935   0.0945427
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     observed             NA                0.4213836   0.3443902   0.4983771
6-24 months                  ki0047075b-MAL-ED       INDIA                          observed             NA                0.4129032   0.3351414   0.4906651
6-24 months                  ki0047075b-MAL-ED       NEPAL                          observed             NA                0.2102564   0.1529155   0.2675974
6-24 months                  ki0047075b-MAL-ED       PERU                           observed             NA                0.3959732   0.3171819   0.4747644
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             NA                0.7793103   0.7115754   0.8470453
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     observed             NA                0.5739130   0.5216565   0.6261696
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     observed             NA                0.2997812   0.2577294   0.3418330
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     observed             NA                0.2628458   0.2244546   0.3012371
6-24 months                  ki1114097-CMIN          BANGLADESH                     observed             NA                0.7117117   0.6270636   0.7963598
6-24 months                  ki1114097-CMIN          BRAZIL                         observed             NA                0.2403846   0.1578607   0.3229085
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  observed             NA                0.3467532   0.3131150   0.3803915
6-24 months                  ki1114097-CMIN          PERU                           observed             NA                0.2940171   0.2570662   0.3309680


### Parameter: RR


agecat                       studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     observed             optimal           0.9716571   0.8330780   1.1332883
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          observed             optimal           0.9511173   0.7787348   1.1616590
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          observed             optimal           1.3953889   0.9157700   2.1262001
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           observed             optimal           1.0630148   0.9265174   1.2196213
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.9994727   0.9271996   1.0773792
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       observed             optimal           1.4934850   1.0470518   2.1302647
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     observed             optimal           1.1039453   0.9749232   1.2500424
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     observed             optimal           1.4252058   1.1785440   1.7234922
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     observed             optimal           0.9753671   0.8842890   1.0758258
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     observed             optimal           1.0680886   0.9509255   1.1996872
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         observed             optimal           1.2979727   0.7927486   2.1251797
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  observed             optimal           0.8228697   0.7275821   0.9306366
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           observed             optimal           1.0143809   0.8592971   1.1974539
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           observed             optimal           0.8705198   0.5590590   1.3555005
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     observed             optimal           1.1300718   0.7767109   1.6441925
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          observed             optimal           1.3104304   0.9351837   1.8362466
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           observed             optimal           1.0035300   0.7920327   1.2715036
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0008015   0.7867966   1.2730146
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       observed             optimal           1.2090079   0.8606559   1.6983559
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     observed             optimal           2.1555692   1.3797443   3.3676375
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     observed             optimal           1.4239036   1.0156667   1.9962273
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     observed             optimal           0.9414166   0.7737998   1.1453417
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     observed             optimal           1.2789297   0.8862158   1.8456689
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           observed             optimal           0.8671237   0.6106261   1.2313649
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     observed             optimal           1.2066961   0.8416610   1.7300498
6-24 months                  ki0047075b-MAL-ED       INDIA                          observed             optimal           0.8147222   0.6508515   1.0198520
6-24 months                  ki0047075b-MAL-ED       NEPAL                          observed             optimal           0.9385289   0.6478428   1.3596455
6-24 months                  ki0047075b-MAL-ED       PERU                           observed             optimal           0.8524175   0.6951524   1.0452609
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.9779920   0.8798401   1.0870934
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     observed             optimal           1.1769516   1.0117347   1.3691485
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     observed             optimal           1.1284145   0.8862711   1.4367154
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     observed             optimal           1.1275647   0.8670499   1.4663542
6-24 months                  ki1114097-CMIN          BANGLADESH                     observed             optimal           1.1021737   0.9133655   1.3300116
6-24 months                  ki1114097-CMIN          BRAZIL                         observed             optimal           1.2305569   0.6933187   2.1840898
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  observed             optimal           0.9199163   0.8044869   1.0519077
6-24 months                  ki1114097-CMIN          PERU                           observed             optimal           0.8567433   0.7270285   1.0096016


### Parameter: PAR


agecat                       studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     optimal              NA                -0.0151897   -0.0974004    0.0670210
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          optimal              NA                -0.0265582   -0.1356605    0.0825442
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          optimal              NA                 0.0735116   -0.0063091    0.1533324
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           optimal              NA                 0.0336510   -0.0396124    0.1069145
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0004288   -0.0614687    0.0606110
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       optimal              NA                 0.1726102    0.0496328    0.2955875
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     optimal              NA                 0.0568872   -0.0109256    0.1246999
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     optimal              NA                 0.1119977    0.0619426    0.1620529
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              NA                -0.0099396   -0.0495142    0.0296350
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     optimal              NA                 0.0481905   -0.0334784    0.1298594
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         optimal              NA                 0.0704813   -0.0465320    0.1874947
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  optimal              NA                -0.0741146   -0.1252217   -0.0230075
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           optimal              NA                 0.0045780   -0.0482326    0.0573886
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           optimal              NA                -0.0339759   -0.1507910    0.0828392
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     optimal              NA                 0.0243992   -0.0460074    0.0948058
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          optimal              NA                 0.0498720   -0.0052058    0.1049498
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           optimal              NA                 0.0012166   -0.0803492    0.0827824
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0002377   -0.0711148    0.0715902
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       optimal              NA                 0.0756868   -0.0472758    0.1986494
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     optimal              NA                 0.1228529    0.0727002    0.1730056
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     optimal              NA                 0.0474262    0.0087597    0.0860928
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              NA                -0.0118168   -0.0513048    0.0276711
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     optimal              NA                 0.0623132   -0.0199620    0.1445884
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           optimal              NA                -0.0114113   -0.0417773    0.0189546
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     optimal              NA                 0.0721792   -0.0534964    0.1978548
6-24 months                  ki0047075b-MAL-ED       INDIA                          optimal              NA                -0.0938993   -0.2066126    0.0188140
6-24 months                  ki0047075b-MAL-ED       NEPAL                          optimal              NA                -0.0137712   -0.0967921    0.0692497
6-24 months                  ki0047075b-MAL-ED       PERU                           optimal              NA                -0.0685564   -0.1632159    0.0261030
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0175370   -0.1017699    0.0666959
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     optimal              NA                 0.0862863    0.0129065    0.1596661
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     optimal              NA                 0.0341154   -0.0300610    0.0982917
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     optimal              NA                 0.0297365   -0.0316182    0.0910912
6-24 months                  ki1114097-CMIN          BANGLADESH                     optimal              NA                 0.0659771   -0.0543817    0.1863359
6-24 months                  ki1114097-CMIN          BRAZIL                         optimal              NA                 0.0450384   -0.0674226    0.1574994
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  optimal              NA                -0.0301868   -0.0806456    0.0202720
6-24 months                  ki1114097-CMIN          PERU                           optimal              NA                -0.0491628   -0.1056483    0.0073227


### Parameter: PAF


agecat                       studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     optimal              NA                -0.0291696   -0.2003677    0.1176120
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          optimal              NA                -0.0513950   -0.2841343    0.1391621
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          optimal              NA                 0.2833539   -0.0919772    0.5296774
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           optimal              NA                 0.0592793   -0.0793105    0.1800734
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0005276   -0.0785164    0.0718217
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       optimal              NA                 0.3304252    0.0449374    0.5305748
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     optimal              NA                 0.0941580   -0.0257219    0.2000271
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     optimal              NA                 0.2983469    0.1514954    0.4197827
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              NA                -0.0252550   -0.1308521    0.0704815
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     optimal              NA                 0.0637480   -0.0516071    0.1664494
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         optimal              NA                 0.2295678   -0.2614339    0.5294515
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  optimal              NA                -0.2152593   -0.3744154   -0.0745333
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           optimal              NA                 0.0141770   -0.1637419    0.1648948
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           optimal              NA                -0.1487390   -0.7887200    0.2622651
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     optimal              NA                 0.1151005   -0.2874803    0.3917987
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          optimal              NA                 0.2368919   -0.0693086    0.4554108
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           optimal              NA                 0.0035176   -0.2625741    0.2135296
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0008008   -0.2709765    0.2144631
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       optimal              NA                 0.1728755   -0.1619045    0.4111953
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     optimal              NA                 0.5360854    0.2752280    0.7030559
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     optimal              NA                 0.2977053    0.0154250    0.4990550
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              NA                -0.0622290   -0.2923240    0.1268981
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     optimal              NA                 0.2180962   -0.1283933    0.4581910
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           optimal              NA                -0.1532380   -0.6376634    0.1878930
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     optimal              NA                 0.1712909   -0.1881268    0.4219820
6-24 months                  ki0047075b-MAL-ED       INDIA                          optimal              NA                -0.2274123   -0.5364488    0.0194655
6-24 months                  ki0047075b-MAL-ED       NEPAL                          optimal              NA                -0.0654973   -0.5435844    0.2645142
6-24 months                  ki0047075b-MAL-ED       PERU                           optimal              NA                -0.1731340   -0.4385336    0.0433011
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0225032   -0.1365702    0.0801158
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     optimal              NA                 0.1503474    0.0115986    0.2696190
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     optimal              NA                 0.1138008   -0.1283229    0.3039679
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     optimal              NA                 0.1131329   -0.1533362    0.3180365
6-24 months                  ki1114097-CMIN          BANGLADESH                     optimal              NA                 0.0927020   -0.0948519    0.2481269
6-24 months                  ki1114097-CMIN          BRAZIL                         optimal              NA                 0.1873598   -0.4423381    0.5421434
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  optimal              NA                -0.0870555   -0.2430283    0.0493462
6-24 months                  ki1114097-CMIN          PERU                           optimal              NA                -0.1672107   -0.3754619    0.0095103
