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

**Outcome Variable:** pers_wast

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

agecat        studyid                 country                        perdiar6    pers_wast   n_cell     n
------------  ----------------------  -----------------------------  ---------  ----------  -------  ----
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]            0       90   248
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]            1        6   248
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                  0       69   248
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                  1        4   248
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                 0       76   248
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                 1        3   248
0-24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]            0       15   217
0-24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]            1        0   217
0-24 months   ki0047075b-MAL-ED       BRAZIL                         0%                  0      198   217
0-24 months   ki0047075b-MAL-ED       BRAZIL                         0%                  1        2   217
0-24 months   ki0047075b-MAL-ED       BRAZIL                         >5%                 0        2   217
0-24 months   ki0047075b-MAL-ED       BRAZIL                         >5%                 1        0   217
0-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]            0      118   241
0-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]            1       11   241
0-24 months   ki0047075b-MAL-ED       INDIA                          0%                  0       48   241
0-24 months   ki0047075b-MAL-ED       INDIA                          0%                  1        4   241
0-24 months   ki0047075b-MAL-ED       INDIA                          >5%                 0       54   241
0-24 months   ki0047075b-MAL-ED       INDIA                          >5%                 1        6   241
0-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]            0       76   238
0-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]            1        1   238
0-24 months   ki0047075b-MAL-ED       NEPAL                          0%                  0       78   238
0-24 months   ki0047075b-MAL-ED       NEPAL                          0%                  1        3   238
0-24 months   ki0047075b-MAL-ED       NEPAL                          >5%                 0       80   238
0-24 months   ki0047075b-MAL-ED       NEPAL                          >5%                 1        0   238
0-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]            0       93   284
0-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]            1        0   284
0-24 months   ki0047075b-MAL-ED       PERU                           0%                  0       71   284
0-24 months   ki0047075b-MAL-ED       PERU                           0%                  1        1   284
0-24 months   ki0047075b-MAL-ED       PERU                           >5%                 0      119   284
0-24 months   ki0047075b-MAL-ED       PERU                           >5%                 1        0   284
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]            0       58   273
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]            1        0   273
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                  0      203   273
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                  1        2   273
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                 0       10   273
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                 1        0   273
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]            0      101   253
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]            1        0   253
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                  0      106   253
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                  1        0   253
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                 0       46   253
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                 1        0   253
0-24 months   ki1000109-ResPak        PAKISTAN                       (0%, 5%]            0       59   251
0-24 months   ki1000109-ResPak        PAKISTAN                       (0%, 5%]            1       10   251
0-24 months   ki1000109-ResPak        PAKISTAN                       0%                  0       38   251
0-24 months   ki1000109-ResPak        PAKISTAN                       0%                  1        8   251
0-24 months   ki1000109-ResPak        PAKISTAN                       >5%                 0      120   251
0-24 months   ki1000109-ResPak        PAKISTAN                       >5%                 1       16   251
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]            0      155   534
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]            1       12   534
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                  0      112   534
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                  1       12   534
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                 0      220   534
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                 1       23   534
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]            0      253   640
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]            1        5   640
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                  0      167   640
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                  1        4   640
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                 0      205   640
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                 1        6   640
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]            0      163   730
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]            1        7   730
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                  0      334   730
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                  1       11   730
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                 0      207   730
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                 1        8   730
0-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]            0       54   257
0-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]            1        6   257
0-24 months   ki1114097-CMIN          BANGLADESH                     0%                  0       82   257
0-24 months   ki1114097-CMIN          BANGLADESH                     0%                  1        5   257
0-24 months   ki1114097-CMIN          BANGLADESH                     >5%                 0      101   257
0-24 months   ki1114097-CMIN          BANGLADESH                     >5%                 1        9   257
0-24 months   ki1114097-CMIN          BRAZIL                         (0%, 5%]            0       47   119
0-24 months   ki1114097-CMIN          BRAZIL                         (0%, 5%]            1        0   119
0-24 months   ki1114097-CMIN          BRAZIL                         0%                  0       41   119
0-24 months   ki1114097-CMIN          BRAZIL                         0%                  1        0   119
0-24 months   ki1114097-CMIN          BRAZIL                         >5%                 0       31   119
0-24 months   ki1114097-CMIN          BRAZIL                         >5%                 1        0   119
0-24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]            0      213   783
0-24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]            1        4   783
0-24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                  0      240   783
0-24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                  1        8   783
0-24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%                 0      306   783
0-24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%                 1       12   783
0-24 months   ki1114097-CMIN          PERU                           (0%, 5%]            0      194   686
0-24 months   ki1114097-CMIN          PERU                           (0%, 5%]            1        2   686
0-24 months   ki1114097-CMIN          PERU                           0%                  0      201   686
0-24 months   ki1114097-CMIN          PERU                           0%                  1        0   686
0-24 months   ki1114097-CMIN          PERU                           >5%                 0      288   686
0-24 months   ki1114097-CMIN          PERU                           >5%                 1        1   686
0-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]            0       43   215
0-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]            1        0   215
0-24 months   ki1114097-CONTENT       PERU                           0%                  0      115   215
0-24 months   ki1114097-CONTENT       PERU                           0%                  1        0   215
0-24 months   ki1114097-CONTENT       PERU                           >5%                 0       57   215
0-24 months   ki1114097-CONTENT       PERU                           >5%                 1        0   215
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]            0       92   248
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]            1        4   248
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                  0       71   248
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                  1        2   248
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                 0       78   248
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                 1        1   248
0-6 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]            0       15   217
0-6 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]            1        0   217
0-6 months    ki0047075b-MAL-ED       BRAZIL                         0%                  0      199   217
0-6 months    ki0047075b-MAL-ED       BRAZIL                         0%                  1        1   217
0-6 months    ki0047075b-MAL-ED       BRAZIL                         >5%                 0        2   217
0-6 months    ki0047075b-MAL-ED       BRAZIL                         >5%                 1        0   217
0-6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]            0      119   240
0-6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]            1       10   240
0-6 months    ki0047075b-MAL-ED       INDIA                          0%                  0       47   240
0-6 months    ki0047075b-MAL-ED       INDIA                          0%                  1        4   240
0-6 months    ki0047075b-MAL-ED       INDIA                          >5%                 0       55   240
0-6 months    ki0047075b-MAL-ED       INDIA                          >5%                 1        5   240
0-6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]            0       76   237
0-6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]            1        1   237
0-6 months    ki0047075b-MAL-ED       NEPAL                          0%                  0       76   237
0-6 months    ki0047075b-MAL-ED       NEPAL                          0%                  1        4   237
0-6 months    ki0047075b-MAL-ED       NEPAL                          >5%                 0       80   237
0-6 months    ki0047075b-MAL-ED       NEPAL                          >5%                 1        0   237
0-6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]            0       93   284
0-6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]            1        0   284
0-6 months    ki0047075b-MAL-ED       PERU                           0%                  0       72   284
0-6 months    ki0047075b-MAL-ED       PERU                           0%                  1        0   284
0-6 months    ki0047075b-MAL-ED       PERU                           >5%                 0      119   284
0-6 months    ki0047075b-MAL-ED       PERU                           >5%                 1        0   284
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]            0       58   271
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]            1        0   271
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                  0      201   271
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                  1        2   271
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                 0       10   271
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                 1        0   271
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]            0      101   253
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]            1        0   253
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                  0      106   253
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                  1        0   253
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                 0       46   253
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                 1        0   253
0-6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]            0       58   240
0-6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]            1        8   240
0-6 months    ki1000109-ResPak        PAKISTAN                       0%                  0       40   240
0-6 months    ki1000109-ResPak        PAKISTAN                       0%                  1        6   240
0-6 months    ki1000109-ResPak        PAKISTAN                       >5%                 0      117   240
0-6 months    ki1000109-ResPak        PAKISTAN                       >5%                 1       11   240
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]            0      251   637
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]            1        6   637
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                  0      168   637
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                  1        1   637
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                 0      204   637
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                 1        7   637
0-6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]            0       52   234
0-6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]            1        2   234
0-6 months    ki1114097-CMIN          BANGLADESH                     0%                  0       77   234
0-6 months    ki1114097-CMIN          BANGLADESH                     0%                  1        2   234
0-6 months    ki1114097-CMIN          BANGLADESH                     >5%                 0       96   234
0-6 months    ki1114097-CMIN          BANGLADESH                     >5%                 1        5   234
0-6 months    ki1114097-CMIN          PERU                           (0%, 5%]            0      171   558
0-6 months    ki1114097-CMIN          PERU                           (0%, 5%]            1        4   558
0-6 months    ki1114097-CMIN          PERU                           0%                  0      158   558
0-6 months    ki1114097-CMIN          PERU                           0%                  1        2   558
0-6 months    ki1114097-CMIN          PERU                           >5%                 0      217   558
0-6 months    ki1114097-CMIN          PERU                           >5%                 1        6   558
0-6 months    ki1114097-CONTENT       PERU                           (0%, 5%]            0       43   215
0-6 months    ki1114097-CONTENT       PERU                           (0%, 5%]            1        0   215
0-6 months    ki1114097-CONTENT       PERU                           0%                  0      115   215
0-6 months    ki1114097-CONTENT       PERU                           0%                  1        0   215
0-6 months    ki1114097-CONTENT       PERU                           >5%                 0       57   215
0-6 months    ki1114097-CONTENT       PERU                           >5%                 1        0   215
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]            0       80   234
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]            1        8   234
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                  0       65   234
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                  1        6   234
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                 0       72   234
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                 1        3   234
6-24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]            0       15   197
6-24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]            1        0   197
6-24 months   ki0047075b-MAL-ED       BRAZIL                         0%                  0      178   197
6-24 months   ki0047075b-MAL-ED       BRAZIL                         0%                  1        2   197
6-24 months   ki0047075b-MAL-ED       BRAZIL                         >5%                 0        2   197
6-24 months   ki0047075b-MAL-ED       BRAZIL                         >5%                 1        0   197
6-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]            0      110   231
6-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]            1       14   231
6-24 months   ki0047075b-MAL-ED       INDIA                          0%                  0       44   231
6-24 months   ki0047075b-MAL-ED       INDIA                          0%                  1        5   231
6-24 months   ki0047075b-MAL-ED       INDIA                          >5%                 0       50   231
6-24 months   ki0047075b-MAL-ED       INDIA                          >5%                 1        8   231
6-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]            0       76   231
6-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]            1        0   231
6-24 months   ki0047075b-MAL-ED       NEPAL                          0%                  0       75   231
6-24 months   ki0047075b-MAL-ED       NEPAL                          0%                  1        2   231
6-24 months   ki0047075b-MAL-ED       NEPAL                          >5%                 0       78   231
6-24 months   ki0047075b-MAL-ED       NEPAL                          >5%                 1        0   231
6-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]            0       80   251
6-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]            1        0   251
6-24 months   ki0047075b-MAL-ED       PERU                           0%                  0       62   251
6-24 months   ki0047075b-MAL-ED       PERU                           0%                  1        1   251
6-24 months   ki0047075b-MAL-ED       PERU                           >5%                 0      107   251
6-24 months   ki0047075b-MAL-ED       PERU                           >5%                 1        1   251
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]            0       55   255
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]            1        0   255
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                  0      189   255
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                  1        2   255
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                 0        9   255
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                 1        0   255
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]            0       95   238
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]            1        0   238
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                  0      100   238
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                  1        0   238
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                 0       43   238
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                 1        0   238
6-24 months   ki1000109-ResPak        PAKISTAN                       (0%, 5%]            0       45   206
6-24 months   ki1000109-ResPak        PAKISTAN                       (0%, 5%]            1       12   206
6-24 months   ki1000109-ResPak        PAKISTAN                       0%                  0       25   206
6-24 months   ki1000109-ResPak        PAKISTAN                       0%                  1        8   206
6-24 months   ki1000109-ResPak        PAKISTAN                       >5%                 0       94   206
6-24 months   ki1000109-ResPak        PAKISTAN                       >5%                 1       22   206
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]            0      142   492
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]            1       13   492
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                  0      108   492
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                  1       11   492
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                 0      187   492
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                 1       31   492
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]            0      220   601
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]            1       21   601
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                  0      150   601
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                  1        9   601
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                 0      193   601
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                 1        8   601
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]            0      151   697
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]            1        9   697
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                  0      315   697
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                  1       22   697
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                 0      189   697
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                 1       11   697
6-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]            0       51   251
6-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]            1        8   251
6-24 months   ki1114097-CMIN          BANGLADESH                     0%                  0       80   251
6-24 months   ki1114097-CMIN          BANGLADESH                     0%                  1        6   251
6-24 months   ki1114097-CMIN          BANGLADESH                     >5%                 0       95   251
6-24 months   ki1114097-CMIN          BANGLADESH                     >5%                 1       11   251
6-24 months   ki1114097-CMIN          BRAZIL                         (0%, 5%]            0       45   117
6-24 months   ki1114097-CMIN          BRAZIL                         (0%, 5%]            1        0   117
6-24 months   ki1114097-CMIN          BRAZIL                         0%                  0       41   117
6-24 months   ki1114097-CMIN          BRAZIL                         0%                  1        0   117
6-24 months   ki1114097-CMIN          BRAZIL                         >5%                 0       31   117
6-24 months   ki1114097-CMIN          BRAZIL                         >5%                 1        0   117
6-24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]            0      166   625
6-24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]            1        4   625
6-24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                  0      202   625
6-24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                  1        5   625
6-24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%                 0      233   625
6-24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%                 1       15   625
6-24 months   ki1114097-CMIN          PERU                           (0%, 5%]            0      177   590
6-24 months   ki1114097-CMIN          PERU                           (0%, 5%]            1        2   590
6-24 months   ki1114097-CMIN          PERU                           0%                  0      174   590
6-24 months   ki1114097-CMIN          PERU                           0%                  1        0   590
6-24 months   ki1114097-CMIN          PERU                           >5%                 0      237   590
6-24 months   ki1114097-CMIN          PERU                           >5%                 1        0   590
6-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]            0       43   215
6-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]            1        0   215
6-24 months   ki1114097-CONTENT       PERU                           0%                  0      115   215
6-24 months   ki1114097-CONTENT       PERU                           0%                  1        0   215
6-24 months   ki1114097-CONTENT       PERU                           >5%                 0       57   215
6-24 months   ki1114097-CONTENT       PERU                           >5%                 1        0   215


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
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
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
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/b738ae7f-9a0f-4094-bf8e-1ba3b6c8e9b5/af6ff1d5-04dd-4972-8344-9dc5dea62564/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b738ae7f-9a0f-4094-bf8e-1ba3b6c8e9b5/af6ff1d5-04dd-4972-8344-9dc5dea62564/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b738ae7f-9a0f-4094-bf8e-1ba3b6c8e9b5/af6ff1d5-04dd-4972-8344-9dc5dea62564/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b738ae7f-9a0f-4094-bf8e-1ba3b6c8e9b5/af6ff1d5-04dd-4972-8344-9dc5dea62564/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-ResPak        PAKISTAN     (0%, 5%]             NA                0.1449275   0.0616999   0.2281551
0-24 months   ki1000109-ResPak        PAKISTAN     0%                   NA                0.1739130   0.0641604   0.2836657
0-24 months   ki1000109-ResPak        PAKISTAN     >5%                  NA                0.1176471   0.0633899   0.1719042
0-24 months   ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             NA                0.0718563   0.0326517   0.1110609
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0%                   NA                0.0967742   0.0446880   0.1488603
0-24 months   ki1017093-NIH-Birth     BANGLADESH   >5%                  NA                0.0946502   0.0578101   0.1314903
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   (0%, 5%]             NA                0.0411765   0.0112872   0.0710657
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                0.0318841   0.0133322   0.0504359
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   >5%                  NA                0.0372093   0.0118920   0.0625267
0-24 months   ki1114097-CMIN          BANGLADESH   (0%, 5%]             NA                0.1000000   0.0239428   0.1760572
0-24 months   ki1114097-CMIN          BANGLADESH   0%                   NA                0.0574713   0.0084700   0.1064726
0-24 months   ki1114097-CMIN          BANGLADESH   >5%                  NA                0.0818182   0.0304981   0.1331383
0-6 months    ki1000109-ResPak        PAKISTAN     (0%, 5%]             NA                0.1212121   0.0423083   0.2001159
0-6 months    ki1000109-ResPak        PAKISTAN     0%                   NA                0.1304348   0.0329081   0.2279615
0-6 months    ki1000109-ResPak        PAKISTAN     >5%                  NA                0.0859375   0.0372823   0.1345927
6-24 months   ki0047075b-MAL-ED       INDIA        (0%, 5%]             NA                0.1129032   0.0570796   0.1687268
6-24 months   ki0047075b-MAL-ED       INDIA        0%                   NA                0.1020408   0.0171018   0.1869799
6-24 months   ki0047075b-MAL-ED       INDIA        >5%                  NA                0.1379310   0.0489949   0.2268672
6-24 months   ki1000109-ResPak        PAKISTAN     (0%, 5%]             NA                0.2105263   0.1044327   0.3166200
6-24 months   ki1000109-ResPak        PAKISTAN     0%                   NA                0.2424242   0.0958530   0.3889955
6-24 months   ki1000109-ResPak        PAKISTAN     >5%                  NA                0.1896552   0.1181408   0.2611695
6-24 months   ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             NA                0.0838710   0.0401884   0.1275535
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0%                   NA                0.0924370   0.0403442   0.1445298
6-24 months   ki1017093-NIH-Birth     BANGLADESH   >5%                  NA                0.1422018   0.0957923   0.1886113
6-24 months   ki1017093b-PROVIDE      BANGLADESH   (0%, 5%]             NA                0.0871369   0.0514996   0.1227743
6-24 months   ki1017093b-PROVIDE      BANGLADESH   0%                   NA                0.0566038   0.0206553   0.0925523
6-24 months   ki1017093b-PROVIDE      BANGLADESH   >5%                  NA                0.0398010   0.0127527   0.0668493
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   (0%, 5%]             NA                0.0562500   0.0205236   0.0919764
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                0.0652819   0.0388893   0.0916745
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   >5%                  NA                0.0550000   0.0233814   0.0866186
6-24 months   ki1114097-CMIN          BANGLADESH   (0%, 5%]             NA                0.1355932   0.0480612   0.2231253
6-24 months   ki1114097-CMIN          BANGLADESH   0%                   NA                0.0697674   0.0158179   0.1237170
6-24 months   ki1114097-CMIN          BANGLADESH   >5%                  NA                0.1037736   0.0456015   0.1619456


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-ResPak        PAKISTAN     NA                   NA                0.1354582   0.0930379   0.1778785
0-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.0880150   0.0639627   0.1120673
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0356164   0.0221630   0.0490699
0-24 months   ki1114097-CMIN          BANGLADESH   NA                   NA                0.0778210   0.0450051   0.1106369
0-6 months    ki1000109-ResPak        PAKISTAN     NA                   NA                0.1041667   0.0654385   0.1428949
6-24 months   ki0047075b-MAL-ED       INDIA        NA                   NA                0.1168831   0.0753620   0.1584042
6-24 months   ki1000109-ResPak        PAKISTAN     NA                   NA                0.2038835   0.1487329   0.2590341
6-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.1117886   0.0839169   0.1396604
6-24 months   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.0632280   0.0437545   0.0827015
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0602582   0.0425793   0.0779372
6-24 months   ki1114097-CMIN          BANGLADESH   NA                   NA                0.0996016   0.0624798   0.1367234


### Parameter: RR


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000109-ResPak        PAKISTAN     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
0-24 months   ki1000109-ResPak        PAKISTAN     0%                   (0%, 5%]          1.2000000   0.5112307   2.816732
0-24 months   ki1000109-ResPak        PAKISTAN     >5%                  (0%, 5%]          0.8117647   0.3886498   1.695516
0-24 months   ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0%                   (0%, 5%]          1.3467742   0.6258263   2.898249
0-24 months   ki1017093-NIH-Birth     BANGLADESH   >5%                  (0%, 5%]          1.3172154   0.6738939   2.574673
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0%                   (0%, 5%]          0.7743271   0.3054221   1.963127
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   >5%                  (0%, 5%]          0.9036545   0.3341309   2.443926
0-24 months   ki1114097-CMIN          BANGLADESH   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
0-24 months   ki1114097-CMIN          BANGLADESH   0%                   (0%, 5%]          0.5747126   0.1833347   1.801593
0-24 months   ki1114097-CMIN          BANGLADESH   >5%                  (0%, 5%]          0.8181818   0.3052805   2.192808
0-6 months    ki1000109-ResPak        PAKISTAN     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
0-6 months    ki1000109-ResPak        PAKISTAN     0%                   (0%, 5%]          1.0760870   0.3993030   2.899961
0-6 months    ki1000109-ResPak        PAKISTAN     >5%                  (0%, 5%]          0.7089844   0.2991993   1.680013
6-24 months   ki0047075b-MAL-ED       INDIA        (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED       INDIA        0%                   (0%, 5%]          0.9037901   0.3432373   2.379801
6-24 months   ki0047075b-MAL-ED       INDIA        >5%                  (0%, 5%]          1.2216749   0.5420941   2.753193
6-24 months   ki1000109-ResPak        PAKISTAN     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
6-24 months   ki1000109-ResPak        PAKISTAN     0%                   (0%, 5%]          1.1515152   0.5241326   2.529870
6-24 months   ki1000109-ResPak        PAKISTAN     >5%                  (0%, 5%]          0.9008621   0.4800790   1.690456
6-24 months   ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0%                   (0%, 5%]          1.1021332   0.5116473   2.374091
6-24 months   ki1017093-NIH-Birth     BANGLADESH   >5%                  (0%, 5%]          1.6954834   0.9169812   3.134922
6-24 months   ki1017093b-PROVIDE      BANGLADESH   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE      BANGLADESH   0%                   (0%, 5%]          0.6495957   0.3051996   1.382618
6-24 months   ki1017093b-PROVIDE      BANGLADESH   >5%                  (0%, 5%]          0.4567639   0.2066457   1.009618
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0%                   (0%, 5%]          1.1605671   0.5466302   2.464035
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   >5%                  (0%, 5%]          0.9777778   0.4151373   2.302971
6-24 months   ki1114097-CMIN          BANGLADESH   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
6-24 months   ki1114097-CMIN          BANGLADESH   0%                   (0%, 5%]          0.5145349   0.1879066   1.408924
6-24 months   ki1114097-CMIN          BANGLADESH   >5%                  (0%, 5%]          0.7653302   0.3254928   1.799518


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000109-ResPak        PAKISTAN     (0%, 5%]             NA                -0.0094694   -0.0795974   0.0606586
0-24 months   ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             NA                 0.0161587   -0.0178144   0.0501317
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   (0%, 5%]             NA                -0.0055600   -0.0312169   0.0200968
0-24 months   ki1114097-CMIN          BANGLADESH   (0%, 5%]             NA                -0.0221790   -0.0866813   0.0423234
0-6 months    ki1000109-ResPak        PAKISTAN     (0%, 5%]             NA                -0.0170455   -0.0826312   0.0485403
6-24 months   ki0047075b-MAL-ED       INDIA        (0%, 5%]             NA                 0.0039799   -0.0346810   0.0426408
6-24 months   ki1000109-ResPak        PAKISTAN     (0%, 5%]             NA                -0.0066428   -0.0964675   0.0831819
6-24 months   ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             NA                 0.0279177   -0.0105882   0.0664235
6-24 months   ki1017093b-PROVIDE      BANGLADESH   (0%, 5%]             NA                -0.0239090   -0.0490224   0.0012045
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   (0%, 5%]             NA                 0.0040082   -0.0276607   0.0356772
6-24 months   ki1114097-CMIN          BANGLADESH   (0%, 5%]             NA                -0.0359916   -0.1097337   0.0377504


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000109-ResPak        PAKISTAN     (0%, 5%]             NA                -0.0699062   -0.7352760    0.3403359
0-24 months   ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             NA                 0.1835903   -0.3054872    0.4894436
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   (0%, 5%]             NA                -0.1561086   -1.1516668    0.3788132
0-24 months   ki1114097-CMIN          BANGLADESH   (0%, 5%]             NA                -0.2850000   -1.4362266    0.3222203
0-6 months    ki1000109-ResPak        PAKISTAN     (0%, 5%]             NA                -0.1636364   -0.9952841    0.3213751
6-24 months   ki0047075b-MAL-ED       INDIA        (0%, 5%]             NA                 0.0340502   -0.3601725    0.3140142
6-24 months   ki1000109-ResPak        PAKISTAN     (0%, 5%]             NA                -0.0325815   -0.5819989    0.3260271
6-24 months   ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             NA                 0.2497361   -0.1801633    0.5230355
6-24 months   ki1017093b-PROVIDE      BANGLADESH   (0%, 5%]             NA                -0.3781393   -0.8197033   -0.0437239
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   (0%, 5%]             NA                 0.0665179   -0.6385779    0.4682042
6-24 months   ki1114097-CMIN          BANGLADESH   (0%, 5%]             NA                -0.3613559   -1.3303170    0.2047048
