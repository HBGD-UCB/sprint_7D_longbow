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

unadjusted

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
![](/tmp/0e0459bc-aee4-4b97-a3ea-8554465b0b0a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0e0459bc-aee4-4b97-a3ea-8554465b0b0a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0e0459bc-aee4-4b97-a3ea-8554465b0b0a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0e0459bc-aee4-4b97-a3ea-8554465b0b0a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.5176471   0.4111737   0.6241204
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.5000000   0.3842410   0.6157590
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.5500000   0.4238280   0.6761720
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.4905660   0.3951702   0.5859619
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          0%                   NA                0.5102041   0.3698998   0.6505084
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.5740741   0.4418703   0.7062778
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                0.2058824   0.1095500   0.3022147
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          0%                   NA                0.2702703   0.1688467   0.3716939
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          >5%                  NA                0.3000000   0.1923943   0.4076057
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.6375000   0.5319605   0.7430395
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           0%                   NA                0.5194805   0.4076756   0.6312854
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           >5%                  NA                0.5504587   0.4568966   0.6440208
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.8117647   0.7284737   0.8950557
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.7872340   0.7043099   0.8701582
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.8750000   0.7722762   0.9777238
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       (0%, 5%]             NA                0.5370370   0.4037127   0.6703614
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       0%                   NA                0.3617021   0.2239909   0.4994134
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       >5%                  NA                0.5900000   0.4933618   0.6866382
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.5786164   0.5017926   0.6554401
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.5106383   0.4280494   0.5932272
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.6798246   0.6192089   0.7404402
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.4243697   0.3615283   0.4872112
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.2623762   0.2016614   0.3230911
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.4329897   0.3632108   0.5027686
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.4370861   0.3579095   0.5162627
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.3738019   0.3201623   0.4274415
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.3915344   0.3218953   0.4611735
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.8529412   0.7335396   0.9723428
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     0%                   NA                0.7058824   0.5972606   0.8145041
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.7575758   0.6538770   0.8612745
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         (0%, 5%]             NA                0.3260870   0.1900205   0.4621534
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         0%                   NA                0.2307692   0.0979545   0.3635840
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         >5%                  NA                0.3793103   0.2019335   0.5566872
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                0.3318584   0.2704285   0.3932883
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                0.3183673   0.2599987   0.3767360
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  >5%                  NA                0.3730408   0.3199370   0.4261446
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           (0%, 5%]             NA                0.3602151   0.2911731   0.4292570
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           0%                   NA                0.3019802   0.2386197   0.3653407
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           >5%                  NA                0.3133803   0.2593912   0.3673694
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           (0%, 5%]             NA                0.2162162   0.0832337   0.3491987
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           0%                   NA                0.2616822   0.1781854   0.3451791
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           >5%                  NA                0.1698113   0.0684699   0.2711527
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.1411765   0.0669815   0.2153715
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.3055556   0.1989085   0.4122026
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.2000000   0.0985539   0.3014461
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.1603774   0.0903528   0.2304019
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          0%                   NA                0.2244898   0.1073826   0.3415970
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.2962963   0.1742146   0.4183780
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.4125000   0.3044221   0.5205779
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           0%                   NA                0.3116883   0.2080373   0.4153393
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           >5%                  NA                0.3211009   0.2332844   0.4089174
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.3058824   0.2077016   0.4040631
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.2765957   0.1859617   0.3672298
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.3250000   0.1795193   0.4704807
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       (0%, 5%]             NA                0.4444444   0.3115806   0.5773083
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       0%                   NA                0.3617021   0.2239909   0.4994134
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       >5%                  NA                0.4700000   0.3719341   0.5680659
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.2452830   0.1783428   0.3122232
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.1063830   0.0554426   0.1573233
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.2938596   0.2346752   0.3530441
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.1890756   0.1392893   0.2388620
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.0940594   0.0537723   0.1343465
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.1907216   0.1353944   0.2460489
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.2582781   0.1884136   0.3281427
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.1693291   0.1277486   0.2109095
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.1693122   0.1158049   0.2228195
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.2941176   0.1405033   0.4477320
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     0%                   NA                0.3382353   0.2254503   0.4510203
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.2272727   0.1258677   0.3286777
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           (0%, 5%]             NA                0.0913978   0.0499524   0.1328433
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           0%                   NA                0.0621762   0.0280826   0.0962697
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           >5%                  NA                0.0716846   0.0413920   0.1019772
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.4507042   0.3346027   0.5668057
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.3333333   0.1903165   0.4763502
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.4565217   0.3121238   0.6009197
6-24 months                  ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.3977273   0.2951381   0.5003164
6-24 months                  ki0047075b-MAL-ED       INDIA                          0%                   NA                0.4666667   0.2875666   0.6457667
6-24 months                  ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.4054054   0.2466941   0.5641167
6-24 months                  ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                0.1718750   0.0792072   0.2645428
6-24 months                  ki0047075b-MAL-ED       NEPAL                          0%                   NA                0.1718750   0.0792072   0.2645428
6-24 months                  ki0047075b-MAL-ED       NEPAL                          >5%                  NA                0.2835821   0.1753765   0.3917877
6-24 months                  ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.4090909   0.2633256   0.5548563
6-24 months                  ki0047075b-MAL-ED       PERU                           0%                   NA                0.4571429   0.2915487   0.6227370
6-24 months                  ki0047075b-MAL-ED       PERU                           >5%                  NA                0.3571429   0.2445166   0.4697691
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.7543860   0.6422521   0.8665198
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.7868852   0.6837639   0.8900065
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.8148148   0.6677863   0.9618433
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.4732143   0.3806134   0.5658152
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.6063830   0.5074765   0.7052895
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.6330935   0.5528551   0.7133320
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.3076923   0.2405655   0.3748191
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.2677165   0.1906263   0.3448067
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.3175676   0.2424847   0.3926504
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.2500000   0.1682540   0.3317460
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.2601626   0.2052843   0.3150409
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.2763158   0.2051562   0.3474754
6-24 months                  ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.7916667   0.6284524   0.9548810
6-24 months                  ki1114097-CMIN          BANGLADESH                     0%                   NA                0.6410256   0.4897913   0.7922600
6-24 months                  ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.7291667   0.6028801   0.8554532
6-24 months                  ki1114097-CMIN          BRAZIL                         (0%, 5%]             NA                0.2790698   0.1443551   0.4137845
6-24 months                  ki1114097-CMIN          BRAZIL                         0%                   NA                0.1891892   0.0623793   0.3159991
6-24 months                  ki1114097-CMIN          BRAZIL                         >5%                  NA                0.2500000   0.0759231   0.4240769
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                0.3454545   0.2825786   0.4083305
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                0.3223140   0.2633922   0.3812359
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  >5%                  NA                0.3668831   0.3130238   0.4207424
6-24 months                  ki1114097-CMIN          PERU                           (0%, 5%]             NA                0.3048780   0.2343615   0.3753946
6-24 months                  ki1114097-CMIN          PERU                           0%                   NA                0.2808989   0.2148174   0.3469803
6-24 months                  ki1114097-CMIN          PERU                           >5%                  NA                0.2962963   0.2388351   0.3537575


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
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     0%                   (0%, 5%]          0.9659091   0.7086628   1.3165364
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     >5%                  (0%, 5%]          1.0625000   0.7807598   1.4459073
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          0%                   (0%, 5%]          1.0400314   0.7426319   1.4565295
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          >5%                  (0%, 5%]          1.1702279   0.8657038   1.5818730
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          0%                   (0%, 5%]          1.3127413   0.7205941   2.3914846
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          >5%                  (0%, 5%]          1.4571429   0.8080861   2.6275238
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           0%                   (0%, 5%]          0.8148714   0.6211045   1.0690880
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           >5%                  (0%, 5%]          0.8634647   0.6810812   1.0946876
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   (0%, 5%]          0.9697811   0.8371650   1.1234049
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  (0%, 5%]          1.0778986   0.9222823   1.2597718
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       0%                   (0%, 5%]          0.6735143   0.4275148   1.0610663
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       >5%                  (0%, 5%]          1.0986207   0.8159776   1.4791674
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     0%                   (0%, 5%]          0.8825162   0.7158880   1.0879284
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     >5%                  (0%, 5%]          1.1749142   1.0012634   1.3786816
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     0%                   (0%, 5%]          0.6182727   0.4697501   0.8137543
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     >5%                  (0%, 5%]          1.0203123   0.8197541   1.2699384
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   (0%, 5%]          0.8552135   0.6787513   1.0775524
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  (0%, 5%]          0.8957832   0.6949435   1.1546660
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     0%                   (0%, 5%]          0.8275862   0.6721520   1.0189643
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     >5%                  (0%, 5%]          0.8881923   0.7302588   1.0802821
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         0%                   (0%, 5%]          0.7076923   0.3476269   1.4407068
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         >5%                  (0%, 5%]          1.1632184   0.6215489   2.1769440
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  0%                   (0%, 5%]          0.9593469   0.7393113   1.2448701
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  >5%                  (0%, 5%]          1.1240961   0.8899972   1.4197709
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           0%                   (0%, 5%]          0.8383331   0.6309537   1.1138731
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           >5%                  (0%, 5%]          0.8699811   0.6723345   1.1257299
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           0%                   (0%, 5%]          1.2102804   0.6052989   2.4199262
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           >5%                  (0%, 5%]          0.7853774   0.3333430   1.8503989
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     0%                   (0%, 5%]          2.1643519   1.1516923   4.0674222
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     >5%                  (0%, 5%]          1.4166667   0.6824316   2.9408726
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          0%                   (0%, 5%]          1.3997599   0.7089500   2.7637037
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          >5%                  (0%, 5%]          1.8474946   1.0135841   3.3674919
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           0%                   (0%, 5%]          0.7556080   0.4948037   1.1538789
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           >5%                  (0%, 5%]          0.7784265   0.5330083   1.1368448
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   (0%, 5%]          0.9042553   0.5715894   1.4305334
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  (0%, 5%]          1.0625000   0.6125079   1.8430885
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       0%                   (0%, 5%]          0.8138298   0.5015391   1.3205729
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       >5%                  (0%, 5%]          1.0575000   0.7344376   1.5226702
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     0%                   (0%, 5%]          0.4337152   0.2499442   0.7526037
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     >5%                  (0%, 5%]          1.1980432   0.8534307   1.6818091
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     0%                   (0%, 5%]          0.4974698   0.3008927   0.8224732
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     >5%                  (0%, 5%]          1.0087056   0.6817386   1.4924885
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   (0%, 5%]          0.6556074   0.4549675   0.9447293
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  (0%, 5%]          0.6555420   0.4324542   0.9937128
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     0%                   (0%, 5%]          1.1500000   0.6188481   2.1370349
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     >5%                  (0%, 5%]          0.7727273   0.3887758   1.5358659
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           0%                   (0%, 5%]          0.6802804   0.3339382   1.3858296
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           >5%                  (0%, 5%]          0.7843137   0.4219841   1.4577515
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     0%                   (0%, 5%]          0.7395833   0.4483817   1.2199059
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     >5%                  (0%, 5%]          1.0129076   0.6736119   1.5231052
6-24 months                  ki0047075b-MAL-ED       INDIA                          (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED       INDIA                          0%                   (0%, 5%]          1.1733333   0.7389225   1.8631332
6-24 months                  ki0047075b-MAL-ED       INDIA                          >5%                  (0%, 5%]          1.0193050   0.6378182   1.6289639
6-24 months                  ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED       NEPAL                          0%                   (0%, 5%]          1.0000000   0.4665059   2.1435958
6-24 months                  ki0047075b-MAL-ED       NEPAL                          >5%                  (0%, 5%]          1.6499322   0.8523274   3.1939323
6-24 months                  ki0047075b-MAL-ED       PERU                           (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED       PERU                           0%                   (0%, 5%]          1.1174603   0.6722990   1.8573843
6-24 months                  ki0047075b-MAL-ED       PERU                           >5%                  (0%, 5%]          0.8730159   0.5424684   1.4049790
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   (0%, 5%]          1.0430804   0.8555720   1.2716835
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  (0%, 5%]          1.0801034   0.8549377   1.3645711
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     0%                   (0%, 5%]          1.2814131   0.9932372   1.6531997
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     >5%                  (0%, 5%]          1.3378580   1.0596373   1.6891289
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     0%                   (0%, 5%]          0.8700787   0.6062658   1.2486883
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     >5%                  (0%, 5%]          1.0320946   0.7481774   1.4237522
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     0%                   (0%, 5%]          1.0406504   0.7052006   1.5356670
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  (0%, 5%]          1.1052632   0.7289590   1.6758235
6-24 months                  ki1114097-CMIN          BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months                  ki1114097-CMIN          BANGLADESH                     0%                   (0%, 5%]          0.8097166   0.5919199   1.1076515
6-24 months                  ki1114097-CMIN          BANGLADESH                     >5%                  (0%, 5%]          0.9210526   0.7036344   1.2056515
6-24 months                  ki1114097-CMIN          BRAZIL                         (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months                  ki1114097-CMIN          BRAZIL                         0%                   (0%, 5%]          0.6779279   0.2967900   1.5485233
6-24 months                  ki1114097-CMIN          BRAZIL                         >5%                  (0%, 5%]          0.8958333   0.3839384   2.0902242
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  0%                   (0%, 5%]          0.9330144   0.7208670   1.2075956
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  >5%                  (0%, 5%]          1.0620301   0.8405897   1.3418055
6-24 months                  ki1114097-CMIN          PERU                           (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months                  ki1114097-CMIN          PERU                           0%                   (0%, 5%]          0.9213483   0.6624398   1.2814489
6-24 months                  ki1114097-CMIN          PERU                           >5%                  (0%, 5%]          0.9718519   0.7186431   1.3142769


### Parameter: PAR


agecat                       studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                 0.0030903   -0.0799391    0.0861196
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                 0.0261804   -0.0407624    0.0931231
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                 0.0535516   -0.0290598    0.1361630
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -0.0698308   -0.1592530    0.0195913
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.0010207   -0.0640452    0.0660865
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       (0%, 5%]             NA                -0.0146490   -0.1287394    0.0994415
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                 0.0255503   -0.0384073    0.0895079
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.0489754   -0.0980375    0.0000866
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.0435179   -0.1126257    0.0255898
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -0.0969888   -0.2098156    0.0158380
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         (0%, 5%]             NA                -0.0190694   -0.1230196    0.0848808
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                 0.0124454   -0.0396479    0.0645386
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           (0%, 5%]             NA                -0.0372984   -0.0954340    0.0208372
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           (0%, 5%]             NA                 0.0122102   -0.1081884    0.1326088
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                 0.0708051    0.0062828    0.1353274
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                 0.0501490   -0.0046158    0.1049137
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -0.0666353   -0.1557105    0.0224399
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0090787   -0.0854629    0.0673055
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       (0%, 5%]             NA                -0.0066335   -0.1201908    0.1069238
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -0.0161164   -0.0715227    0.0392900
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.0297696   -0.0675913    0.0080520
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.0683853   -0.1277993   -0.0089714
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -0.0084034   -0.1452993    0.1284925
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           (0%, 5%]             NA                -0.0169298   -0.0508355    0.0169760
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.0293206   -0.1151646    0.0565235
6-24 months                  ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                 0.0151760   -0.0528020    0.0831539
6-24 months                  ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                 0.0383814   -0.0406028    0.1173656
6-24 months                  ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -0.0131178   -0.1352108    0.1089753
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.0249244   -0.0603766    0.1102254
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                 0.1006988    0.0249479    0.1764496
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.0079111   -0.0597313    0.0439091
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                 0.0128458   -0.0599808    0.0856725
6-24 months                  ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -0.0799550   -0.2292355    0.0693256
6-24 months                  ki1114097-CMIN          BRAZIL                         (0%, 5%]             NA                -0.0386852   -0.1384409    0.0610706
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                 0.0012987   -0.0518599    0.0544573
6-24 months                  ki1114097-CMIN          PERU                           (0%, 5%]             NA                -0.0108610   -0.0704421    0.0487201


### Parameter: PAF


agecat                       studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                 0.0059344   -0.1670132    0.1532517
0-24 months (no birth st.)   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                 0.0506639   -0.0883398    0.1719139
0-24 months (no birth st.)   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                 0.2064171   -0.1830645    0.4676758
0-24 months (no birth st.)   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -0.1230132   -0.2933075    0.0248578
0-24 months (no birth st.)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.0012558   -0.0820932    0.0781847
0-24 months (no birth st.)   ki1000109-ResPak        PAKISTAN                       (0%, 5%]             NA                -0.0280423   -0.2714259    0.1687514
0-24 months (no birth st.)   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                 0.0422902   -0.0697296    0.1425795
0-24 months (no birth st.)   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.1304640   -0.2692780   -0.0068312
0-24 months (no birth st.)   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.1105728   -0.3009721    0.0519612
0-24 months (no birth st.)   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -0.1283001   -0.2906531    0.0136302
0-24 months (no birth st.)   ki1114097-CMIN          BRAZIL                         (0%, 5%]             NA                -0.0621118   -0.4608456    0.2277887
0-24 months (no birth st.)   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                 0.0361465   -0.1276759    0.1761698
0-24 months (no birth st.)   ki1114097-CMIN          PERU                           (0%, 5%]             NA                -0.1155047   -0.3109130    0.0507755
0-24 months (no birth st.)   ki1114097-CONTENT       PERU                           (0%, 5%]             NA                 0.0534535   -0.6517332    0.4575696
0-6 months (no birth st.)    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                 0.3340153   -0.0394763    0.5733086
0-6 months (no birth st.)    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                 0.2382075   -0.0655113    0.4553528
0-6 months (no birth st.)    ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -0.1926630   -0.4807679    0.0393869
0-6 months (no birth st.)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0305882   -0.3229153    0.1971428
0-6 months (no birth st.)    ki1000109-ResPak        PAKISTAN                       (0%, 5%]             NA                -0.0151515   -0.3106824    0.2137435
0-6 months (no birth st.)    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -0.0703259   -0.3414690    0.1460127
0-6 months (no birth st.)    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.1868708   -0.4481108    0.0272414
0-6 months (no birth st.)    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.3601260   -0.7095393   -0.0821295
0-6 months (no birth st.)    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -0.0294118   -0.6395547    0.3536729
0-6 months (no birth st.)    ki1114097-CMIN          PERU                           (0%, 5%]             NA                -0.2273425   -0.7737803    0.1507575
6-24 months                  ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.0695817   -0.2942623    0.1160950
6-24 months                  ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                 0.0367543   -0.1428475    0.1881311
6-24 months                  ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                 0.1825457   -0.2913644    0.4825384
6-24 months                  ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -0.0331279   -0.3924502    0.2334712
6-24 months                  ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.0319826   -0.0841333    0.1356619
6-24 months                  ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                 0.1754600    0.0309379    0.2984285
6-24 months                  ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.0263897   -0.2146530    0.1326941
6-24 months                  ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                 0.0488722   -0.2727358    0.2892130
6-24 months                  ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -0.1123418   -0.3454699    0.0803925
6-24 months                  ki1114097-CMIN          BRAZIL                         (0%, 5%]             NA                -0.1609302   -0.6583752    0.1873015
6-24 months                  ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                 0.0037453   -0.1619829    0.1458365
6-24 months                  ki1114097-CMIN          PERU                           (0%, 5%]             NA                -0.0369399   -0.2607326    0.1471274
