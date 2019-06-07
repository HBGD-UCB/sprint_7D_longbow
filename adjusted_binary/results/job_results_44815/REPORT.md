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
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]            0       18   169
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]            1        1   169
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                  0        0   169
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                  1        0   169
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                 0      140   169
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                 1       10   169
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]            0      251   637
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]            1        6   637
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                  0      168   637
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                  1        1   637
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                 0      204   637
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                 1        7   637
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]            0       61   250
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]            1        2   250
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                  0       74   250
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                  1        0   250
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                 0      110   250
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                 1        3   250
0-6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]            0       52   234
0-6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]            1        2   234
0-6 months    ki1114097-CMIN          BANGLADESH                     0%                  0       77   234
0-6 months    ki1114097-CMIN          BANGLADESH                     0%                  1        2   234
0-6 months    ki1114097-CMIN          BANGLADESH                     >5%                 0       96   234
0-6 months    ki1114097-CMIN          BANGLADESH                     >5%                 1        5   234
0-6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]            0        2    11
0-6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]            1        0    11
0-6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                  0        0    11
0-6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                  1        0    11
0-6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%                 0        9    11
0-6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%                 1        0    11
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
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]            0       90   248
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]            1        6   248
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                  0       69   248
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                  1        4   248
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                 0       76   248
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                 1        3   248
6-24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]            0       15   217
6-24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]            1        0   217
6-24 months   ki0047075b-MAL-ED       BRAZIL                         0%                  0      198   217
6-24 months   ki0047075b-MAL-ED       BRAZIL                         0%                  1        2   217
6-24 months   ki0047075b-MAL-ED       BRAZIL                         >5%                 0        2   217
6-24 months   ki0047075b-MAL-ED       BRAZIL                         >5%                 1        0   217
6-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]            0      118   241
6-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]            1       11   241
6-24 months   ki0047075b-MAL-ED       INDIA                          0%                  0       48   241
6-24 months   ki0047075b-MAL-ED       INDIA                          0%                  1        4   241
6-24 months   ki0047075b-MAL-ED       INDIA                          >5%                 0       54   241
6-24 months   ki0047075b-MAL-ED       INDIA                          >5%                 1        6   241
6-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]            0       76   238
6-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]            1        1   238
6-24 months   ki0047075b-MAL-ED       NEPAL                          0%                  0       78   238
6-24 months   ki0047075b-MAL-ED       NEPAL                          0%                  1        3   238
6-24 months   ki0047075b-MAL-ED       NEPAL                          >5%                 0       80   238
6-24 months   ki0047075b-MAL-ED       NEPAL                          >5%                 1        0   238
6-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]            0       93   284
6-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]            1        0   284
6-24 months   ki0047075b-MAL-ED       PERU                           0%                  0       71   284
6-24 months   ki0047075b-MAL-ED       PERU                           0%                  1        1   284
6-24 months   ki0047075b-MAL-ED       PERU                           >5%                 0      119   284
6-24 months   ki0047075b-MAL-ED       PERU                           >5%                 1        0   284
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]            0       58   273
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]            1        0   273
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                  0      203   273
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                  1        2   273
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                 0       10   273
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                 1        0   273
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]            0      101   253
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]            1        0   253
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                  0      106   253
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                  1        0   253
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                 0       46   253
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                 1        0   253
6-24 months   ki1000109-ResPak        PAKISTAN                       (0%, 5%]            0       59   251
6-24 months   ki1000109-ResPak        PAKISTAN                       (0%, 5%]            1       10   251
6-24 months   ki1000109-ResPak        PAKISTAN                       0%                  0       38   251
6-24 months   ki1000109-ResPak        PAKISTAN                       0%                  1        8   251
6-24 months   ki1000109-ResPak        PAKISTAN                       >5%                 0      120   251
6-24 months   ki1000109-ResPak        PAKISTAN                       >5%                 1       16   251
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]            0      155   534
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]            1       12   534
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                  0      112   534
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                  1       12   534
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                 0      220   534
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                 1       23   534
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]            0      253   640
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]            1        5   640
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                  0      167   640
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                  1        4   640
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                 0      205   640
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                 1        6   640
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]            0      163   730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]            1        7   730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                  0      334   730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                  1       11   730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                 0      207   730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                 1        8   730
6-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]            0       54   257
6-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]            1        6   257
6-24 months   ki1114097-CMIN          BANGLADESH                     0%                  0       82   257
6-24 months   ki1114097-CMIN          BANGLADESH                     0%                  1        5   257
6-24 months   ki1114097-CMIN          BANGLADESH                     >5%                 0      101   257
6-24 months   ki1114097-CMIN          BANGLADESH                     >5%                 1        9   257
6-24 months   ki1114097-CMIN          BRAZIL                         (0%, 5%]            0       47   119
6-24 months   ki1114097-CMIN          BRAZIL                         (0%, 5%]            1        0   119
6-24 months   ki1114097-CMIN          BRAZIL                         0%                  0       41   119
6-24 months   ki1114097-CMIN          BRAZIL                         0%                  1        0   119
6-24 months   ki1114097-CMIN          BRAZIL                         >5%                 0       31   119
6-24 months   ki1114097-CMIN          BRAZIL                         >5%                 1        0   119
6-24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]            0      213   783
6-24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]            1        4   783
6-24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                  0      240   783
6-24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                  1        8   783
6-24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%                 0      306   783
6-24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%                 1       12   783
6-24 months   ki1114097-CMIN          PERU                           (0%, 5%]            0      194   686
6-24 months   ki1114097-CMIN          PERU                           (0%, 5%]            1        2   686
6-24 months   ki1114097-CMIN          PERU                           0%                  0      201   686
6-24 months   ki1114097-CMIN          PERU                           0%                  1        0   686
6-24 months   ki1114097-CMIN          PERU                           >5%                 0      288   686
6-24 months   ki1114097-CMIN          PERU                           >5%                 1        1   686
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
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
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
![](/tmp/98d9ed77-4a10-45a5-a4e8-33ee40c0b13d/fac8f21a-edb1-4580-97f1-3d3d84a4f832/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/98d9ed77-4a10-45a5-a4e8-33ee40c0b13d/fac8f21a-edb1-4580-97f1-3d3d84a4f832/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/98d9ed77-4a10-45a5-a4e8-33ee40c0b13d/fac8f21a-edb1-4580-97f1-3d3d84a4f832/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/98d9ed77-4a10-45a5-a4e8-33ee40c0b13d/fac8f21a-edb1-4580-97f1-3d3d84a4f832/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
6-24 months   ki1000109-ResPak        PAKISTAN     (0%, 5%]             NA                0.1449275   0.0616999   0.2281551
6-24 months   ki1000109-ResPak        PAKISTAN     0%                   NA                0.1739130   0.0641604   0.2836657
6-24 months   ki1000109-ResPak        PAKISTAN     >5%                  NA                0.1176471   0.0633899   0.1719042
6-24 months   ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             NA                0.0718563   0.0326517   0.1110609
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0%                   NA                0.0967742   0.0446880   0.1488603
6-24 months   ki1017093-NIH-Birth     BANGLADESH   >5%                  NA                0.0946502   0.0578101   0.1314903
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   (0%, 5%]             NA                0.0411765   0.0112872   0.0710657
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0%                   NA                0.0318841   0.0133322   0.0504359
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   >5%                  NA                0.0372093   0.0118920   0.0625267
6-24 months   ki1114097-CMIN          BANGLADESH   (0%, 5%]             NA                0.1000000   0.0239428   0.1760572
6-24 months   ki1114097-CMIN          BANGLADESH   0%                   NA                0.0574713   0.0084700   0.1064726
6-24 months   ki1114097-CMIN          BANGLADESH   >5%                  NA                0.0818182   0.0304981   0.1331383


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-ResPak        PAKISTAN     NA                   NA                0.1354582   0.0930379   0.1778785
0-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.0880150   0.0639627   0.1120673
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0356164   0.0221630   0.0490699
0-24 months   ki1114097-CMIN          BANGLADESH   NA                   NA                0.0778210   0.0450051   0.1106369
0-6 months    ki1000109-ResPak        PAKISTAN     NA                   NA                0.1041667   0.0654385   0.1428949
6-24 months   ki1000109-ResPak        PAKISTAN     NA                   NA                0.1354582   0.0930379   0.1778785
6-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.0880150   0.0639627   0.1120673
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.0356164   0.0221630   0.0490699
6-24 months   ki1114097-CMIN          BANGLADESH   NA                   NA                0.0778210   0.0450051   0.1106369


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
6-24 months   ki1000109-ResPak        PAKISTAN     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
6-24 months   ki1000109-ResPak        PAKISTAN     0%                   (0%, 5%]          1.2000000   0.5112307   2.816732
6-24 months   ki1000109-ResPak        PAKISTAN     >5%                  (0%, 5%]          0.8117647   0.3886498   1.695516
6-24 months   ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0%                   (0%, 5%]          1.3467742   0.6258263   2.898249
6-24 months   ki1017093-NIH-Birth     BANGLADESH   >5%                  (0%, 5%]          1.3172154   0.6738939   2.574673
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0%                   (0%, 5%]          0.7743271   0.3054221   1.963127
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   >5%                  (0%, 5%]          0.9036545   0.3341309   2.443926
6-24 months   ki1114097-CMIN          BANGLADESH   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
6-24 months   ki1114097-CMIN          BANGLADESH   0%                   (0%, 5%]          0.5747126   0.1833347   1.801593
6-24 months   ki1114097-CMIN          BANGLADESH   >5%                  (0%, 5%]          0.8181818   0.3052805   2.192808


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000109-ResPak        PAKISTAN     (0%, 5%]             NA                -0.0094694   -0.0795974   0.0606586
0-24 months   ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             NA                 0.0161587   -0.0178144   0.0501317
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   (0%, 5%]             NA                -0.0055600   -0.0312169   0.0200968
0-24 months   ki1114097-CMIN          BANGLADESH   (0%, 5%]             NA                -0.0221790   -0.0866813   0.0423234
0-6 months    ki1000109-ResPak        PAKISTAN     (0%, 5%]             NA                -0.0170455   -0.0826312   0.0485403
6-24 months   ki1000109-ResPak        PAKISTAN     (0%, 5%]             NA                -0.0094694   -0.0795974   0.0606586
6-24 months   ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             NA                 0.0161587   -0.0178144   0.0501317
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   (0%, 5%]             NA                -0.0055600   -0.0312169   0.0200968
6-24 months   ki1114097-CMIN          BANGLADESH   (0%, 5%]             NA                -0.0221790   -0.0866813   0.0423234


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000109-ResPak        PAKISTAN     (0%, 5%]             NA                -0.0699062   -0.7352760   0.3403359
0-24 months   ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             NA                 0.1835903   -0.3054872   0.4894436
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   (0%, 5%]             NA                -0.1561086   -1.1516668   0.3788132
0-24 months   ki1114097-CMIN          BANGLADESH   (0%, 5%]             NA                -0.2850000   -1.4362266   0.3222203
0-6 months    ki1000109-ResPak        PAKISTAN     (0%, 5%]             NA                -0.1636364   -0.9952841   0.3213751
6-24 months   ki1000109-ResPak        PAKISTAN     (0%, 5%]             NA                -0.0699062   -0.7352760   0.3403359
6-24 months   ki1017093-NIH-Birth     BANGLADESH   (0%, 5%]             NA                 0.1835903   -0.3054872   0.4894436
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH   (0%, 5%]             NA                -0.1561086   -1.1516668   0.3788132
6-24 months   ki1114097-CMIN          BANGLADESH   (0%, 5%]             NA                -0.2850000   -1.4362266   0.3222203
