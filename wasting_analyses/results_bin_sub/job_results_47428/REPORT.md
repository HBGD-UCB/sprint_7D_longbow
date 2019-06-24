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
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     0%                     0       36   217
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     0%                     1       36   217
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]               0       41   217
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]               1       44   217
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     >5%                    0       27   217
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     >5%                    1       33   217
0-24 months (no birth st.)   ki0047075b-MAL-ED       BRAZIL                         0%                     0      165   208
0-24 months (no birth st.)   ki0047075b-MAL-ED       BRAZIL                         0%                     1       27   208
0-24 months (no birth st.)   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]               0       12   208
0-24 months (no birth st.)   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]               1        2   208
0-24 months (no birth st.)   ki0047075b-MAL-ED       BRAZIL                         >5%                    0        2   208
0-24 months (no birth st.)   ki0047075b-MAL-ED       BRAZIL                         >5%                    1        0   208
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          0%                     0       24   209
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          0%                     1       25   209
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          (0%, 5%]               0       54   209
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          (0%, 5%]               1       52   209
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          >5%                    0       23   209
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          >5%                    1       31   209
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          0%                     0       54   212
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          0%                     1       20   212
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]               0       54   212
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]               1       14   212
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          >5%                    0       49   212
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          >5%                    1       21   212
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           0%                     0       37   266
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           0%                     1       40   266
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           (0%, 5%]               0       29   266
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           (0%, 5%]               1       51   266
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           >5%                    0       49   266
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           >5%                    1       60   266
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                     0      103   270
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                     1      105   270
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]               0       23   270
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]               1       30   270
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                    0        7   270
0-24 months (no birth st.)   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                    1        2   270
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                     0       20   219
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                     1       74   219
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               0       16   219
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               1       69   219
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                    0        5   219
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                    1       35   219
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       0%                     0       30   201
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       0%                     1       17   201
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       (0%, 5%]               0       25   201
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       (0%, 5%]               1       29   201
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       >5%                    0       41   201
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       >5%                    1       59   201
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     0%                     0       69   528
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     0%                     1       72   528
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]               0       67   528
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]               1       92   528
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     >5%                    0       73   528
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     >5%                    1      155   528
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     0%                     0      149   634
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     0%                     1       53   634
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]               0      137   634
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]               1      101   634
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     >5%                    0      110   634
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     >5%                    1       84   634
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     0%                     0      196   653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     0%                     1      117   653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]               0       85   653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]               1       66   653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                    0      115   653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                    1       74   653
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     0%                     0       20   168
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     0%                     1       48   168
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     (0%, 5%]               0        5   168
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     (0%, 5%]               1       29   168
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     >5%                    0       16   168
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     >5%                    1       50   168
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         0%                     0       30   114
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         0%                     1        9   114
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         (0%, 5%]               0       31   114
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         (0%, 5%]               1       15   114
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         >5%                    0       18   114
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         >5%                    1       11   114
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  0%                     0      167   790
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  0%                     1       78   790
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]               0      151   790
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]               1       75   790
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  >5%                    0      200   790
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  >5%                    1      119   790
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           0%                     0      141   672
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           0%                     1       61   672
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           (0%, 5%]               0      119   672
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           (0%, 5%]               1       67   672
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           >5%                    0      195   672
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           >5%                    1       89   672
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           0%                     0       79   197
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           0%                     1       28   197
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           (0%, 5%]               0       29   197
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           (0%, 5%]               1        8   197
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           >5%                    0       44   197
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           >5%                    1        9   197
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     0%                     0       50   217
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     0%                     1       22   217
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]               0       73   217
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]               1       12   217
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     >5%                    0       48   217
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     >5%                    1       12   217
0-6 months (no birth st.)    ki0047075b-MAL-ED       BRAZIL                         0%                     0      174   208
0-6 months (no birth st.)    ki0047075b-MAL-ED       BRAZIL                         0%                     1       18   208
0-6 months (no birth st.)    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]               0       12   208
0-6 months (no birth st.)    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]               1        2   208
0-6 months (no birth st.)    ki0047075b-MAL-ED       BRAZIL                         >5%                    0        2   208
0-6 months (no birth st.)    ki0047075b-MAL-ED       BRAZIL                         >5%                    1        0   208
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          0%                     0       38   209
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          0%                     1       11   209
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          (0%, 5%]               0       89   209
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          (0%, 5%]               1       17   209
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          >5%                    0       38   209
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          >5%                    1       16   209
0-6 months (no birth st.)    ki0047075b-MAL-ED       NEPAL                          0%                     0       65   212
0-6 months (no birth st.)    ki0047075b-MAL-ED       NEPAL                          0%                     1        9   212
0-6 months (no birth st.)    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]               0       65   212
0-6 months (no birth st.)    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]               1        3   212
0-6 months (no birth st.)    ki0047075b-MAL-ED       NEPAL                          >5%                    0       68   212
0-6 months (no birth st.)    ki0047075b-MAL-ED       NEPAL                          >5%                    1        2   212
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           0%                     0       53   266
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           0%                     1       24   266
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           (0%, 5%]               0       47   266
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           (0%, 5%]               1       33   266
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           >5%                    0       74   266
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           >5%                    1       35   266
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                     0      146   270
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                     1       62   270
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]               0       38   270
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]               1       15   270
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                    0        7   270
0-6 months (no birth st.)    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                    1        2   270
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                     0       68   219
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                     1       26   219
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               0       59   219
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               1       26   219
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                    0       27   219
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                    1       13   219
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       0%                     0       30   201
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       0%                     1       17   201
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       (0%, 5%]               0       30   201
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       (0%, 5%]               1       24   201
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       >5%                    0       53   201
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       >5%                    1       47   201
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     0%                     0      126   528
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     0%                     1       15   528
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]               0      120   528
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]               1       39   528
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     >5%                    0      161   528
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     >5%                    1       67   528
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     0%                     0      183   634
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     0%                     1       19   634
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]               0      193   634
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]               1       45   634
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     >5%                    0      157   634
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     >5%                    1       37   634
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     0%                     0      260   653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     0%                     1       53   653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]               0      112   653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]               1       39   653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                    0      157   653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                    1       32   653
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     0%                     0       45   168
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     0%                     1       23   168
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     (0%, 5%]               0       24   168
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     (0%, 5%]               1       10   168
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     >5%                    0       51   168
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     >5%                    1       15   168
0-6 months (no birth st.)    ki1114097-CMIN          BRAZIL                         0%                     0       37   114
0-6 months (no birth st.)    ki1114097-CMIN          BRAZIL                         0%                     1        2   114
0-6 months (no birth st.)    ki1114097-CMIN          BRAZIL                         (0%, 5%]               0       43   114
0-6 months (no birth st.)    ki1114097-CMIN          BRAZIL                         (0%, 5%]               1        3   114
0-6 months (no birth st.)    ki1114097-CMIN          BRAZIL                         >5%                    0       24   114
0-6 months (no birth st.)    ki1114097-CMIN          BRAZIL                         >5%                    1        5   114
0-6 months (no birth st.)    ki1114097-CMIN          GUINEA-BISSAU                  0%                     0      213   724
0-6 months (no birth st.)    ki1114097-CMIN          GUINEA-BISSAU                  0%                     1        7   724
0-6 months (no birth st.)    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]               0      211   724
0-6 months (no birth st.)    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]               1        3   724
0-6 months (no birth st.)    ki1114097-CMIN          GUINEA-BISSAU                  >5%                    0      278   724
0-6 months (no birth st.)    ki1114097-CMIN          GUINEA-BISSAU                  >5%                    1       12   724
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           0%                     0      181   658
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           0%                     1       12   658
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           (0%, 5%]               0      169   658
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           (0%, 5%]               1       17   658
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           >5%                    0      259   658
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           >5%                    1       20   658
0-6 months (no birth st.)    ki1114097-CONTENT       PERU                           0%                     0       88   197
0-6 months (no birth st.)    ki1114097-CONTENT       PERU                           0%                     1       19   197
0-6 months (no birth st.)    ki1114097-CONTENT       PERU                           (0%, 5%]               0       30   197
0-6 months (no birth st.)    ki1114097-CONTENT       PERU                           (0%, 5%]               1        7   197
0-6 months (no birth st.)    ki1114097-CONTENT       PERU                           >5%                    0       49   197
0-6 months (no birth st.)    ki1114097-CONTENT       PERU                           >5%                    1        4   197
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     0%                     0       28   159
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     0%                     1       14   159
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]               0       39   159
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]               1       32   159
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     >5%                    0       25   159
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     >5%                    1       21   159
6-24 months                  ki0047075b-MAL-ED       BRAZIL                         0%                     0      145   168
6-24 months                  ki0047075b-MAL-ED       BRAZIL                         0%                     1        9   168
6-24 months                  ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]               0       12   168
6-24 months                  ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]               1        0   168
6-24 months                  ki0047075b-MAL-ED       BRAZIL                         >5%                    0        2   168
6-24 months                  ki0047075b-MAL-ED       BRAZIL                         >5%                    1        0   168
6-24 months                  ki0047075b-MAL-ED       INDIA                          0%                     0       16   155
6-24 months                  ki0047075b-MAL-ED       INDIA                          0%                     1       14   155
6-24 months                  ki0047075b-MAL-ED       INDIA                          (0%, 5%]               0       53   155
6-24 months                  ki0047075b-MAL-ED       INDIA                          (0%, 5%]               1       35   155
6-24 months                  ki0047075b-MAL-ED       INDIA                          >5%                    0       22   155
6-24 months                  ki0047075b-MAL-ED       INDIA                          >5%                    1       15   155
6-24 months                  ki0047075b-MAL-ED       NEPAL                          0%                     0       53   195
6-24 months                  ki0047075b-MAL-ED       NEPAL                          0%                     1       11   195
6-24 months                  ki0047075b-MAL-ED       NEPAL                          (0%, 5%]               0       53   195
6-24 months                  ki0047075b-MAL-ED       NEPAL                          (0%, 5%]               1       11   195
6-24 months                  ki0047075b-MAL-ED       NEPAL                          >5%                    0       48   195
6-24 months                  ki0047075b-MAL-ED       NEPAL                          >5%                    1       19   195
6-24 months                  ki0047075b-MAL-ED       PERU                           0%                     0       19   149
6-24 months                  ki0047075b-MAL-ED       PERU                           0%                     1       16   149
6-24 months                  ki0047075b-MAL-ED       PERU                           (0%, 5%]               0       26   149
6-24 months                  ki0047075b-MAL-ED       PERU                           (0%, 5%]               1       18   149
6-24 months                  ki0047075b-MAL-ED       PERU                           >5%                    0       45   149
6-24 months                  ki0047075b-MAL-ED       PERU                           >5%                    1       25   149
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA                   0%                     0       75   159
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA                   0%                     1       43   159
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]               0       20   159
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]               1       15   159
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                    0        6   159
6-24 months                  ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                    1        0   159
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                     0       13   145
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                     1       48   145
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               0       14   145
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               1       43   145
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                    0        5   145
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                    1       22   145
6-24 months                  ki1000109-ResPak        PAKISTAN                       0%                     0       20    95
6-24 months                  ki1000109-ResPak        PAKISTAN                       0%                     1        0    95
6-24 months                  ki1000109-ResPak        PAKISTAN                       (0%, 5%]               0       22    95
6-24 months                  ki1000109-ResPak        PAKISTAN                       (0%, 5%]               1        5    95
6-24 months                  ki1000109-ResPak        PAKISTAN                       >5%                    0       36    95
6-24 months                  ki1000109-ResPak        PAKISTAN                       >5%                    1       12    95
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     0%                     0       37   345
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     0%                     1       57   345
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]               0       59   345
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]               1       53   345
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     >5%                    0       51   345
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     >5%                    1       88   345
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     0%                     0       93   457
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     0%                     1       34   457
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]               0      126   457
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]               1       56   457
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     >5%                    0      101   457
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     >5%                    1       47   457
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     0%                     0      182   506
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     0%                     1       64   506
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]               0       81   506
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]               1       27   506
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     >5%                    0      110   506
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     >5%                    1       42   506
6-24 months                  ki1114097-CMIN          BANGLADESH                     0%                     0       14   111
6-24 months                  ki1114097-CMIN          BANGLADESH                     0%                     1       25   111
6-24 months                  ki1114097-CMIN          BANGLADESH                     (0%, 5%]               0        5   111
6-24 months                  ki1114097-CMIN          BANGLADESH                     (0%, 5%]               1       19   111
6-24 months                  ki1114097-CMIN          BANGLADESH                     >5%                    0       13   111
6-24 months                  ki1114097-CMIN          BANGLADESH                     >5%                    1       35   111
6-24 months                  ki1114097-CMIN          BRAZIL                         0%                     0       30   104
6-24 months                  ki1114097-CMIN          BRAZIL                         0%                     1        7   104
6-24 months                  ki1114097-CMIN          BRAZIL                         (0%, 5%]               0       31   104
6-24 months                  ki1114097-CMIN          BRAZIL                         (0%, 5%]               1       12   104
6-24 months                  ki1114097-CMIN          BRAZIL                         >5%                    0       18   104
6-24 months                  ki1114097-CMIN          BRAZIL                         >5%                    1        6   104
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  0%                     0      164   770
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  0%                     1       78   770
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]               0      144   770
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]               1       76   770
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  >5%                    0      195   770
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  >5%                    1      113   770
6-24 months                  ki1114097-CMIN          PERU                           0%                     0      128   585
6-24 months                  ki1114097-CMIN          PERU                           0%                     1       50   585
6-24 months                  ki1114097-CMIN          PERU                           (0%, 5%]               0      114   585
6-24 months                  ki1114097-CMIN          PERU                           (0%, 5%]               1       50   585
6-24 months                  ki1114097-CMIN          PERU                           >5%                    0      171   585
6-24 months                  ki1114097-CMIN          PERU                           >5%                    1       72   585
6-24 months                  ki1114097-CONTENT       PERU                           0%                     0       79   167
6-24 months                  ki1114097-CONTENT       PERU                           0%                     1        9   167
6-24 months                  ki1114097-CONTENT       PERU                           (0%, 5%]               0       29   167
6-24 months                  ki1114097-CONTENT       PERU                           (0%, 5%]               1        1   167
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
![](/tmp/13ac1fcc-4827-484d-955b-efead79c47c5/d4676a49-f64a-4420-b1ac-aacf48e3c668/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/13ac1fcc-4827-484d-955b-efead79c47c5/d4676a49-f64a-4420-b1ac-aacf48e3c668/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/13ac1fcc-4827-484d-955b-efead79c47c5/d4676a49-f64a-4420-b1ac-aacf48e3c668/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/13ac1fcc-4827-484d-955b-efead79c47c5/d4676a49-f64a-4420-b1ac-aacf48e3c668/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.4902051   0.3828125   0.5975978
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.5232495   0.4197415   0.6267576
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.5544801   0.4309641   0.6779961
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          0%                   NA                0.5128470   0.3723592   0.6533348
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.4964608   0.4023444   0.5905772
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.5626676   0.4334621   0.6918731
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          0%                   NA                0.2779045   0.1746492   0.3811598
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                0.2125281   0.1153679   0.3096884
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          >5%                  NA                0.3074360   0.1990602   0.4158117
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           0%                   NA                0.5666419   0.4590382   0.6742456
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.6302812   0.5221587   0.7384038
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           >5%                  NA                0.5417172   0.4465052   0.6369292
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.7872340   0.7043099   0.8701582
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.8117647   0.7284737   0.8950557
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.8750000   0.7722762   0.9777238
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       0%                   NA                0.3549093   0.2131880   0.4966306
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       (0%, 5%]             NA                0.5368317   0.4006412   0.6730222
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       >5%                  NA                0.5913649   0.4933274   0.6894025
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.5149215   0.4335084   0.5963347
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.5786506   0.5032136   0.6540876
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.6673866   0.6071140   0.7276592
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.2674398   0.2078020   0.3270777
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.4280213   0.3685349   0.4875077
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.4312355   0.3641061   0.4983649
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.3787778   0.3270876   0.4304679
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.4214366   0.3509310   0.4919422
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.3961109   0.3278957   0.4643262
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     0%                   NA                0.7058824   0.5972606   0.8145041
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.8529412   0.7335396   0.9723428
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.7575758   0.6538770   0.8612745
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         0%                   NA                0.2307692   0.0979545   0.3635840
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         (0%, 5%]             NA                0.3260870   0.1900205   0.4621534
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         >5%                  NA                0.3793103   0.2019335   0.5566872
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                0.3222850   0.2634861   0.3810839
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                0.3336309   0.2721279   0.3951340
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  >5%                  NA                0.3690074   0.3157460   0.4222688
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           0%                   NA                0.2990447   0.2355959   0.3624934
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           (0%, 5%]             NA                0.3570637   0.2877830   0.4263443
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           >5%                  NA                0.3113726   0.2572778   0.3654674
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           0%                   NA                0.2616822   0.1781854   0.3451791
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           (0%, 5%]             NA                0.2162162   0.0832337   0.3491987
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           >5%                  NA                0.1698113   0.0684699   0.2711527
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.2970738   0.1941301   0.4000174
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.1476105   0.0723908   0.2228303
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.2023313   0.1013338   0.3033288
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          0%                   NA                0.1889595   0.0695302   0.3083888
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.1507335   0.0799365   0.2215306
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.2942075   0.1718280   0.4165871
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           0%                   NA                0.3373908   0.2311463   0.4436354
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.4152043   0.3037392   0.5266694
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           >5%                  NA                0.3132279   0.2235087   0.4029471
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.2576165   0.1660347   0.3491983
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.2937744   0.1936578   0.3938910
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.3018529   0.1570140   0.4466917
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       0%                   NA                0.3647819   0.2251505   0.5044132
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       (0%, 5%]             NA                0.4449396   0.3108171   0.5790621
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       >5%                  NA                0.4706442   0.3722568   0.5690317
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.1068695   0.0552611   0.1584778
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.2437696   0.1762507   0.3112884
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.2902661   0.2306912   0.3498411
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.0950113   0.0546269   0.1353957
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.1927689   0.1424634   0.2430743
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.1851334   0.1293870   0.2408797
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.1727090   0.1325398   0.2128782
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.2503773   0.1861863   0.3145683
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.1701060   0.1180776   0.2221344
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     0%                   NA                0.3545571   0.2387142   0.4704000
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.3044940   0.1440166   0.4649714
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.2214384   0.1214769   0.3213999
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           0%                   NA                0.0616542   0.0276640   0.0956444
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           (0%, 5%]             NA                0.0921878   0.0501789   0.1341967
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           >5%                  NA                0.0716182   0.0411045   0.1021320
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.3410132   0.1999628   0.4820636
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.4508371   0.3340045   0.5676697
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.4547027   0.3068337   0.6025718
6-24 months                  ki0047075b-MAL-ED       INDIA                          0%                   NA                0.4693230   0.2847202   0.6539258
6-24 months                  ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.3953968   0.2936641   0.4971294
6-24 months                  ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.3978032   0.2392289   0.5563775
6-24 months                  ki0047075b-MAL-ED       NEPAL                          0%                   NA                0.1725568   0.0759627   0.2691510
6-24 months                  ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                0.1696393   0.0758269   0.2634516
6-24 months                  ki0047075b-MAL-ED       NEPAL                          >5%                  NA                0.2782604   0.1688523   0.3876686
6-24 months                  ki0047075b-MAL-ED       PERU                           0%                   NA                0.4630790   0.2954879   0.6306700
6-24 months                  ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.4013361   0.2514710   0.5512012
6-24 months                  ki0047075b-MAL-ED       PERU                           >5%                  NA                0.3589759   0.2428022   0.4751495
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.7868852   0.6837639   0.8900065
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.7543860   0.6422521   0.8665198
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.8148148   0.6677863   0.9618433
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.6004249   0.5064170   0.6944328
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.4775026   0.3862910   0.5687141
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.6256843   0.5451422   0.7062264
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.2581405   0.1833507   0.3329303
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.3096418   0.2438657   0.3754179
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.3120725   0.2385968   0.3855481
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.2579932   0.2030602   0.3129262
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.2462947   0.1674073   0.3251822
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.2825619   0.2102112   0.3549127
6-24 months                  ki1114097-CMIN          BANGLADESH                     0%                   NA                0.6410256   0.4897913   0.7922600
6-24 months                  ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.7916667   0.6284524   0.9548810
6-24 months                  ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.7291667   0.6028801   0.8554532
6-24 months                  ki1114097-CMIN          BRAZIL                         0%                   NA                0.1891892   0.0623793   0.3159991
6-24 months                  ki1114097-CMIN          BRAZIL                         (0%, 5%]             NA                0.2790698   0.1443551   0.4137845
6-24 months                  ki1114097-CMIN          BRAZIL                         >5%                  NA                0.2500000   0.0759231   0.4240769
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                0.3261650   0.2666260   0.3857041
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                0.3456294   0.2826521   0.4086068
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  >5%                  NA                0.3641154   0.3101734   0.4180574
6-24 months                  ki1114097-CMIN          PERU                           0%                   NA                0.2797058   0.2133598   0.3460517
6-24 months                  ki1114097-CMIN          PERU                           (0%, 5%]             NA                0.2988358   0.2277748   0.3698968
6-24 months                  ki1114097-CMIN          PERU                           >5%                  NA                0.2947598   0.2371234   0.3523962


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
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.1593060   0.1307970   0.1878150
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
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                1.0674094   0.8034933   1.4180115
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                1.1311186   0.8351379   1.5319978
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                0.9680486   0.6975436   1.3434546
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          >5%                  0%                1.0971452   0.7707804   1.5616997
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                0.7647525   0.4234084   1.3812821
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          >5%                  0%                1.1062649   0.6632083   1.8453057
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                1.1123096   0.8599500   1.4387263
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           >5%                  0%                0.9560133   0.7395372   1.2358560
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                1.0311606   0.8901510   1.1945076
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                1.1114865   0.9493007   1.3013814
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       (0%, 5%]             0%                1.5125885   0.9428917   2.4264970
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       >5%                  0%                1.6662425   1.0805770   2.5693346
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                1.1237646   0.9185597   1.3748118
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                1.2960937   1.0818876   1.5527112
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                1.6004397   1.2391019   2.0671482
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                1.6124580   1.2354606   2.1044952
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                1.1126223   0.9044522   1.3687052
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                1.0457607   0.8438762   1.2959430
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                1.2083333   0.9813886   1.4877587
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     >5%                  0%                1.0732323   0.8734742   1.3186739
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         (0%, 5%]             0%                1.4130435   0.6941037   2.8766476
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         >5%                  0%                1.6436782   0.7829983   3.4504261
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             0%                1.0352047   0.7990848   1.3410951
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  >5%                  0%                1.1449723   0.9072401   1.4449996
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           (0%, 5%]             0%                1.1940146   0.8956182   1.5918287
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           >5%                  0%                1.0412245   0.7919659   1.3689331
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           (0%, 5%]             0%                0.8262548   0.4132357   1.6520764
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           >5%                  0%                0.6489218   0.3298309   1.2767136
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                0.4968817   0.2693828   0.9165081
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                0.6810810   0.3756225   1.2349401
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                0.7977031   0.3623581   1.7560810
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          >5%                  0%                1.5569875   0.7346919   3.2996282
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                1.2306330   0.8124875   1.8639766
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           >5%                  0%                0.9283831   0.6069542   1.4200331
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                1.1403555   0.6978806   1.8633713
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                1.1717139   0.6432936   2.1341942
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       (0%, 5%]             0%                1.2197416   0.7490480   1.9862137
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       >5%                  0%                1.2902073   0.8340619   1.9958169
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                2.2810030   1.3074260   3.9795559
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                2.7160813   1.6077669   4.5884127
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                2.0289036   1.2335425   3.3370963
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                1.9485395   1.1589867   3.2759706
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                1.4497063   1.0371549   2.0263591
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                0.9849285   0.6774908   1.4318778
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                0.8588011   0.4613248   1.5987418
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     >5%                  0%                0.6245493   0.3579984   1.0895630
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           (0%, 5%]             0%                1.4952397   0.7309304   3.0587617
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           >5%                  0%                1.1616117   0.5784607   2.3326422
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                1.3220515   0.8144961   2.1458915
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                1.3333874   0.7895294   2.2518754
6-24 months                  ki0047075b-MAL-ED       INDIA                          0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                0.8424832   0.5278540   1.3446484
6-24 months                  ki0047075b-MAL-ED       INDIA                          >5%                  0%                0.8476106   0.4852883   1.4804475
6-24 months                  ki0047075b-MAL-ED       NEPAL                          0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                0.9830922   0.4466596   2.1637733
6-24 months                  ki0047075b-MAL-ED       NEPAL                          >5%                  0%                1.6125729   0.8129150   3.1988477
6-24 months                  ki0047075b-MAL-ED       PERU                           0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                0.8666687   0.5152623   1.4577327
6-24 months                  ki0047075b-MAL-ED       PERU                           >5%                  0%                0.7751936   0.4770441   1.2596846
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                0.9586988   0.7863592   1.1688087
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                1.0354938   0.8285044   1.2941965
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                0.7952744   0.6239230   1.0136851
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                1.0420692   0.8530978   1.2729001
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                1.1995091   0.8427382   1.7073180
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                1.2089251   0.8356167   1.7490075
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                0.9546557   0.6530517   1.3955518
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                1.0952299   0.7862404   1.5256512
6-24 months                  ki1114097-CMIN          BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                1.2350000   0.9028110   1.6894178
6-24 months                  ki1114097-CMIN          BANGLADESH                     >5%                  0%                1.1375000   0.8488789   1.5242530
6-24 months                  ki1114097-CMIN          BRAZIL                         0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  ki1114097-CMIN          BRAZIL                         (0%, 5%]             0%                1.4750831   0.6457765   3.3693854
6-24 months                  ki1114097-CMIN          BRAZIL                         >5%                  0%                1.3214286   0.5026878   3.4736736
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             0%                1.0596765   0.8191485   1.3708311
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  >5%                  0%                1.1163531   0.8825538   1.4120887
6-24 months                  ki1114097-CMIN          PERU                           0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  ki1114097-CMIN          PERU                           (0%, 5%]             0%                1.0683933   0.7633739   1.4952885
6-24 months                  ki1114097-CMIN          PERU                           >5%                  0%                1.0538210   0.7748675   1.4331982


### Parameter: PAR


agecat                       studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                 0.0305322   -0.0554419    0.1165063
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0038994   -0.1175396    0.1253384
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.0184705   -0.1013442    0.0644032
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0010273   -0.0901077    0.0921623
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0255513   -0.0349031    0.0860057
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       0%                   NA                 0.1674788    0.0417683    0.2931892
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0892451    0.0206280    0.1578623
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.1079545    0.0576479    0.1582611
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0147904   -0.0211396    0.0507204
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.0500700   -0.0304974    0.1306374
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         0%                   NA                 0.0762483   -0.0369029    0.1893995
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                 0.0220188   -0.0272254    0.0712630
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           0%                   NA                 0.0238720   -0.0296129    0.0773570
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           0%                   NA                -0.0332558   -0.0866666    0.0201549
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0850922   -0.1645669   -0.0056175
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0215669   -0.0823567    0.1254904
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0084738   -0.0826953    0.0996429
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0391871   -0.0316849    0.1100592
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       0%                   NA                 0.0730291   -0.0504617    0.1965199
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.1222972    0.0718115    0.1727829
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0642947    0.0268249    0.1017644
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0171838   -0.0115953    0.0459629
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.0688428   -0.1565917    0.0189060
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           0%                   NA                 0.0128139   -0.0168521    0.0424799
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                 0.0803704   -0.0425066    0.2032474
6-24 months                  ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.0564198   -0.2208442    0.1080046
6-24 months                  ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0376996   -0.0444412    0.1198404
6-24 months                  ki0047075b-MAL-ED       PERU                           0%                   NA                -0.0671058   -0.2134779    0.0792662
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0075749   -0.0867885    0.0716387
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0265119   -0.1064913    0.0534675
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0416407   -0.0221835    0.1054649
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0048526   -0.0343629    0.0440681
6-24 months                  ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.0706861   -0.0474877    0.1888598
6-24 months                  ki1114097-CMIN          BRAZIL                         0%                   NA                 0.0511954   -0.0558040    0.1581948
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                 0.0205882   -0.0290909    0.0702673
6-24 months                  ki1114097-CMIN          PERU                           0%                   NA                 0.0143113   -0.0413678    0.0699904


### Parameter: PAF


agecat                       studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                 0.0586326   -0.1218024    0.2100458
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0075461   -0.2576489    0.2168206
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          0%                   NA                -0.0711954   -0.4432714    0.2049592
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0018097   -0.1723582    0.1501028
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.0314368   -0.0460885    0.1032166
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       0%                   NA                 0.3206022    0.0282694    0.5249904
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.1477161    0.0253470    0.2547216
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.2875763    0.1400215    0.4098137
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0375802   -0.0582232    0.1247102
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.0662344   -0.0474806    0.1676044
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         0%                   NA                 0.2483516   -0.2238161    0.5383495
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                 0.0639517   -0.0905868    0.1965917
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           0%                   NA                 0.0739262   -0.1074555    0.2256008
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           0%                   NA                -0.1455867   -0.4037931    0.0651266
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.4014132   -0.8294271   -0.0735377
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.1024426   -0.5585310    0.4830970
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           0%                   NA                 0.0245004   -0.2780348    0.2554198
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.1320305   -0.1435415    0.3411949
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       0%                   NA                 0.1668051   -0.1695456    0.4064243
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.5336605    0.2702906    0.7019738
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.4035922    0.1283387    0.5919260
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0904921   -0.0740390    0.2298187
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     0%                   NA                -0.2409499   -0.5900658    0.0315139
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           0%                   NA                 0.1720723   -0.3358718    0.4868787
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                 0.1907298   -0.1603303    0.4355760
6-24 months                  ki0047075b-MAL-ED       INDIA                          0%                   NA                -0.1366417   -0.6132836    0.1991772
6-24 months                  ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.1793029   -0.3200791    0.4897702
6-24 months                  ki0047075b-MAL-ED       PERU                           0%                   NA                -0.1694707   -0.6054153    0.1480948
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0097200   -0.1166819    0.0869965
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                -0.0461949   -0.1954998    0.0844634
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.1389037   -0.1026160    0.3275204
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0184618   -0.1427046    0.1568974
6-24 months                  ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.0993184   -0.0847491    0.2521521
6-24 months                  ki1114097-CMIN          BRAZIL                         0%                   NA                 0.2129730   -0.3802068    0.5512183
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                 0.0593742   -0.0954068    0.1922847
6-24 months                  ki1114097-CMIN          PERU                           0%                   NA                 0.0486752   -0.1608675    0.2203943
