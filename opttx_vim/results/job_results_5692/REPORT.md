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
![](/tmp/5e27519d-b0da-4caf-bfb1-d8a01bc7b497/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5e27519d-b0da-4caf-bfb1-d8a01bc7b497/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     optimal              NA                0.4915628   0.3984338   0.5846918
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          optimal              NA                0.4955582   0.4030776   0.5880388
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          optimal              NA                0.2068408   0.1108473   0.3028342
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           optimal              NA                0.3620907   0.2766478   0.4475336
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.7857856   0.7028611   0.8687100
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       optimal              NA                0.3637268   0.2267008   0.5007528
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     optimal              NA                0.5088902   0.4361848   0.5815956
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     optimal              NA                0.2747970   0.2251899   0.3244042
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              NA                0.3775162   0.3279918   0.4270407
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     optimal              NA                0.7024143   0.5937907   0.8110379
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         optimal              NA                0.3119422   0.1638134   0.4600709
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  optimal              NA                0.3204431   0.2621013   0.3787849
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           optimal              NA                0.2974254   0.2404020   0.3544489
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           optimal              NA                0.1714008   0.0700587   0.2727429
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     optimal              NA                0.1241234   0.0498550   0.1983918
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          optimal              NA                0.1619978   0.0921703   0.2318254
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           optimal              NA                0.3404463   0.2547418   0.4261508
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2691875   0.1825605   0.3558145
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       optimal              NA                0.4372398   0.3100366   0.5644429
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     optimal              NA                0.1072867   0.0566496   0.1579239
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     optimal              NA                0.0967512   0.0588103   0.1346922
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              NA                0.1027736   0.0654022   0.1401451
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     optimal              NA                0.2217402   0.1227087   0.3207716
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           optimal              NA                0.0623720   0.0282914   0.0964526
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     optimal              NA                0.2703680   0.1436872   0.3970489
6-24 months                  ki0047075b-MAL-ED       INDIA                          optimal              NA                0.3002634   0.1561920   0.4443347
6-24 months                  ki0047075b-MAL-ED       NEPAL                          optimal              NA                0.1682303   0.0753621   0.2610985
6-24 months                  ki0047075b-MAL-ED       PERU                           optimal              NA                0.3921346   0.2644354   0.5198338
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.7803604   0.6685237   0.8921970
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     optimal              NA                0.4827168   0.3937332   0.5717003
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     optimal              NA                0.2664809   0.1956716   0.3372901
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     optimal              NA                0.1968206   0.1369814   0.2566598
6-24 months                  ki1114097-CMIN          BANGLADESH                     optimal              NA                0.7048949   0.5315974   0.8781923
6-24 months                  ki1114097-CMIN          BRAZIL                         optimal              NA                0.2503990   0.1048197   0.3959783
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  optimal              NA                0.3277567   0.2688299   0.3866835
6-24 months                  ki1114097-CMIN          PERU                           optimal              NA                0.2787551   0.2088018   0.3487083


### Parameter: E(Y)


agecat                       studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     observed             NA                0.5220850   0.4554630   0.5887069
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          observed             NA                0.5141943   0.4462829   0.5821057
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          observed             NA                0.2596657   0.2005229   0.3188085
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           observed             NA                0.5807780   0.5211320   0.6404239
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             NA                0.8119509   0.7601690   0.8637327
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       observed             NA                0.5228584   0.4536327   0.5920841
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     observed             NA                0.6034937   0.5617417   0.6452457
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     observed             NA                0.3768830   0.3391611   0.4146048
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     observed             NA                0.3941423   0.3566428   0.4316417
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     observed             NA                0.7550499   0.6899059   0.8201939
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         observed             NA                0.3114544   0.2264089   0.3965000
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  observed             NA                0.3444284   0.3112748   0.3775821
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           observed             NA                0.3227405   0.2873609   0.3581202
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           observed             NA                0.2298427   0.1710691   0.2886162
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     observed             NA                0.2120060   0.1575007   0.2665113
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          observed             NA                0.2105005   0.1550968   0.2659041
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           observed             NA                0.3459326   0.2886646   0.4032006
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2974616   0.2368169   0.3581062
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       observed             NA                0.4376949   0.3689378   0.5064520
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     observed             NA                0.2289829   0.1930990   0.2648667
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     observed             NA                0.1595140   0.1310050   0.1880229
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     observed             NA                0.1929692   0.1628634   0.2230750
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     observed             NA                0.2853132   0.2167973   0.3538292
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           observed             NA                0.0744164   0.0543419   0.0944910
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     observed             NA                0.4214604   0.3444670   0.4984538
6-24 months                  ki0047075b-MAL-ED       INDIA                          observed             NA                0.4067668   0.3290049   0.4845287
6-24 months                  ki0047075b-MAL-ED       NEPAL                          observed             NA                0.2107433   0.1534023   0.2680842
6-24 months                  ki0047075b-MAL-ED       PERU                           observed             NA                0.3874981   0.3087068   0.4662894
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   observed             NA                0.7797377   0.7120027   0.8474727
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     observed             NA                0.5741088   0.5218522   0.6263654
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     observed             NA                0.3001701   0.2581183   0.3422219
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     observed             NA                0.2659415   0.2275502   0.3043327
6-24 months                  ki1114097-CMIN          BANGLADESH                     observed             NA                0.6958489   0.6112008   0.7804971
6-24 months                  ki1114097-CMIN          BRAZIL                         observed             NA                0.2431149   0.1605910   0.3256388
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  observed             NA                0.3467415   0.3131033   0.3803798
6-24 months                  ki1114097-CMIN          PERU                           observed             NA                0.2939755   0.2570246   0.3309264


### Parameter: RR


agecat                       studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          0.9415379   0.8113067   1.0926739
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          optimal              observed          0.9637567   0.8499305   1.0928270
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          optimal              observed          0.7965656   0.5361846   1.1833924
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           optimal              observed          0.6234580   0.5157765   0.7536207
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.9677747   0.8959085   1.0454058
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       optimal              observed          0.6956507   0.4971385   0.9734307
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          0.8432403   0.7503348   0.9476493
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          0.7291309   0.6298632   0.8440435
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          0.9578172   0.8757195   1.0476115
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     optimal              observed          0.9302886   0.8287272   1.0442965
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         optimal              observed          1.0015661   0.6708103   1.4954072
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed          0.9303619   0.7988928   1.0834662
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           optimal              observed          0.9215621   0.7883916   1.0772270
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           optimal              observed          0.7457310   0.4415681   1.2594086
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          0.5854713   0.3459826   0.9907340
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          optimal              observed          0.7695843   0.5530616   1.0708754
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           optimal              observed          0.9841406   0.7918702   1.2230954
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.9049488   0.7081297   1.1564724
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       optimal              observed          0.9989602   0.7824036   1.2754561
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          0.4685361   0.3025759   0.7255239
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          0.6065376   0.4275069   0.8605424
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          0.5325909   0.3882094   0.7306704
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     optimal              observed          0.7771815   0.5411442   1.1161738
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           optimal              observed          0.8381482   0.5218831   1.3460723
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     optimal              observed          0.6415028   0.4259882   0.9660499
6-24 months                  ki0047075b-MAL-ED       INDIA                          optimal              observed          0.7381708   0.4897783   1.1125363
6-24 months                  ki0047075b-MAL-ED       NEPAL                          optimal              observed          0.7982712   0.4999316   1.2746482
6-24 months                  ki0047075b-MAL-ED       PERU                           optimal              observed          1.0119653   0.7611651   1.3454029
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   optimal              observed          1.0007985   0.8852473   1.1314326
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     optimal              observed          0.8408106   0.7239609   0.9765202
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     optimal              observed          0.8877662   0.7092319   1.1112428
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     optimal              observed          0.7400900   0.5644356   0.9704085
6-24 months                  ki1114097-CMIN          BANGLADESH                     optimal              observed          1.0129998   0.8273740   1.2402718
6-24 months                  ki1114097-CMIN          BRAZIL                         optimal              observed          1.0299616   0.6253188   1.6964480
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  optimal              observed          0.9452479   0.8136755   1.0980958
6-24 months                  ki1114097-CMIN          PERU                           optimal              observed          0.9482254   0.7686696   1.1697241
