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

**Outcome Variable:** ever_co

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

agecat        studyid                 country                        perdiar6    ever_co   n_cell     n
------------  ----------------------  -----------------------------  ---------  --------  -------  ----
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                0       70   263
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                1       15   263
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          0       83   263
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          1       15   263
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%               0       71   263
0-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%               1        9   263
0-24 months   ki0047075b-MAL-ED       BRAZIL                         0%                0      214   233
0-24 months   ki0047075b-MAL-ED       BRAZIL                         0%                1        2   233
0-24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          0       15   233
0-24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          1        0   233
0-24 months   ki0047075b-MAL-ED       BRAZIL                         >5%               0        2   233
0-24 months   ki0047075b-MAL-ED       BRAZIL                         >5%               1        0   233
0-24 months   ki0047075b-MAL-ED       INDIA                          0%                0       46   251
0-24 months   ki0047075b-MAL-ED       INDIA                          0%                1       15   251
0-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]          0      105   251
0-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]          1       24   251
0-24 months   ki0047075b-MAL-ED       INDIA                          >5%               0       46   251
0-24 months   ki0047075b-MAL-ED       INDIA                          >5%               1       15   251
0-24 months   ki0047075b-MAL-ED       NEPAL                          0%                0       73   240
0-24 months   ki0047075b-MAL-ED       NEPAL                          0%                1       10   240
0-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          0       73   240
0-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          1        4   240
0-24 months   ki0047075b-MAL-ED       NEPAL                          >5%               0       73   240
0-24 months   ki0047075b-MAL-ED       NEPAL                          >5%               1        7   240
0-24 months   ki0047075b-MAL-ED       PERU                           0%                0       84   302
0-24 months   ki0047075b-MAL-ED       PERU                           0%                1        5   302
0-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]          0       89   302
0-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]          1        4   302
0-24 months   ki0047075b-MAL-ED       PERU                           >5%               0      117   302
0-24 months   ki0047075b-MAL-ED       PERU                           >5%               1        3   302
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                0      219   303
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                1       14   303
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]          0       53   303
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]          1        7   303
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%               0        9   303
0-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%               1        1   303
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                0      101   261
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                1       12   261
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          0       93   261
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          1        9   261
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               0       44   261
0-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               1        2   261
0-24 months   ki1000109-ResPak        PAKISTAN                       0%                0       55   277
0-24 months   ki1000109-ResPak        PAKISTAN                       0%                1        4   277
0-24 months   ki1000109-ResPak        PAKISTAN                       (0%, 5%]          0       60   277
0-24 months   ki1000109-ResPak        PAKISTAN                       (0%, 5%]          1       12   277
0-24 months   ki1000109-ResPak        PAKISTAN                       >5%               0      122   277
0-24 months   ki1000109-ResPak        PAKISTAN                       >5%               1       24   277
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                0      134   621
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                1       31   621
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          0      151   621
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          1       35   621
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%               0      199   621
0-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%               1       71   621
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                0      201   700
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                1       21   700
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]          0      219   700
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]          1       42   700
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%               0      190   700
0-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%               1       27   700
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                0      330   758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                1       34   758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]          0      157   758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]          1       17   758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%               0      200   758
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%               1       20   758
0-24 months   ki1114097-CMIN          BANGLADESH                     0%                0       62   271
0-24 months   ki1114097-CMIN          BANGLADESH                     0%                1       32   271
0-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]          0       44   271
0-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]          1       19   271
0-24 months   ki1114097-CMIN          BANGLADESH                     >5%               0       73   271
0-24 months   ki1114097-CMIN          BANGLADESH                     >5%               1       41   271
0-24 months   ki1114097-CMIN          BRAZIL                         0%                0       41   119
0-24 months   ki1114097-CMIN          BRAZIL                         0%                1        0   119
0-24 months   ki1114097-CMIN          BRAZIL                         (0%, 5%]          0       46   119
0-24 months   ki1114097-CMIN          BRAZIL                         (0%, 5%]          1        1   119
0-24 months   ki1114097-CMIN          BRAZIL                         >5%               0       31   119
0-24 months   ki1114097-CMIN          BRAZIL                         >5%               1        0   119
0-24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                0      256   916
0-24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                1       28   916
0-24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]          0      235   916
0-24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]          1       26   916
0-24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%               0      339   916
0-24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%               1       32   916
0-24 months   ki1114097-CMIN          PERU                           0%                0      207   717
0-24 months   ki1114097-CMIN          PERU                           0%                1        5   717
0-24 months   ki1114097-CMIN          PERU                           (0%, 5%]          0      189   717
0-24 months   ki1114097-CMIN          PERU                           (0%, 5%]          1       11   717
0-24 months   ki1114097-CMIN          PERU                           >5%               0      296   717
0-24 months   ki1114097-CMIN          PERU                           >5%               1        9   717
0-24 months   ki1114097-CONTENT       PERU                           0%                0      112   215
0-24 months   ki1114097-CONTENT       PERU                           0%                1        3   215
0-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]          0       42   215
0-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]          1        1   215
0-24 months   ki1114097-CONTENT       PERU                           >5%               0       57   215
0-24 months   ki1114097-CONTENT       PERU                           >5%               1        0   215
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                0       85   263
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                1        0   263
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          0       94   263
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          1        4   263
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%               0       75   263
0-6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%               1        5   263
0-6 months    ki0047075b-MAL-ED       BRAZIL                         0%                0      216   233
0-6 months    ki0047075b-MAL-ED       BRAZIL                         0%                1        0   233
0-6 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          0       15   233
0-6 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          1        0   233
0-6 months    ki0047075b-MAL-ED       BRAZIL                         >5%               0        2   233
0-6 months    ki0047075b-MAL-ED       BRAZIL                         >5%               1        0   233
0-6 months    ki0047075b-MAL-ED       INDIA                          0%                0       54   251
0-6 months    ki0047075b-MAL-ED       INDIA                          0%                1        7   251
0-6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]          0      123   251
0-6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]          1        6   251
0-6 months    ki0047075b-MAL-ED       INDIA                          >5%               0       56   251
0-6 months    ki0047075b-MAL-ED       INDIA                          >5%               1        5   251
0-6 months    ki0047075b-MAL-ED       NEPAL                          0%                0       79   240
0-6 months    ki0047075b-MAL-ED       NEPAL                          0%                1        4   240
0-6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          0       75   240
0-6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          1        2   240
0-6 months    ki0047075b-MAL-ED       NEPAL                          >5%               0       79   240
0-6 months    ki0047075b-MAL-ED       NEPAL                          >5%               1        1   240
0-6 months    ki0047075b-MAL-ED       PERU                           0%                0       89   302
0-6 months    ki0047075b-MAL-ED       PERU                           0%                1        0   302
0-6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]          0       92   302
0-6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]          1        1   302
0-6 months    ki0047075b-MAL-ED       PERU                           >5%               0      119   302
0-6 months    ki0047075b-MAL-ED       PERU                           >5%               1        1   302
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                0      231   303
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                1        2   303
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]          0       57   303
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]          1        3   303
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%               0       10   303
0-6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%               1        0   303
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                0      112   261
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                1        1   261
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          0       99   261
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          1        3   261
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               0       46   261
0-6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               1        0   261
0-6 months    ki1000109-ResPak        PAKISTAN                       0%                0       57   277
0-6 months    ki1000109-ResPak        PAKISTAN                       0%                1        2   277
0-6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]          0       68   277
0-6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]          1        4   277
0-6 months    ki1000109-ResPak        PAKISTAN                       >5%               0      135   277
0-6 months    ki1000109-ResPak        PAKISTAN                       >5%               1       11   277
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                0      155   619
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                1        9   619
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          0      171   619
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          1       14   619
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%               0      248   619
0-6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%               1       22   619
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                0      212   700
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                1       10   700
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]          0      252   700
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]          1        9   700
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%               0      206   700
0-6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%               1       11   700
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                0      356   758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                1        8   758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]          0      171   758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]          1        3   758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%               0      214   758
0-6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%               1        6   758
0-6 months    ki1114097-CMIN          BANGLADESH                     0%                0       91   271
0-6 months    ki1114097-CMIN          BANGLADESH                     0%                1        3   271
0-6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]          0       57   271
0-6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]          1        6   271
0-6 months    ki1114097-CMIN          BANGLADESH                     >5%               0      108   271
0-6 months    ki1114097-CMIN          BANGLADESH                     >5%               1        6   271
0-6 months    ki1114097-CMIN          BRAZIL                         0%                0       41   119
0-6 months    ki1114097-CMIN          BRAZIL                         0%                1        0   119
0-6 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]          0       47   119
0-6 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]          1        0   119
0-6 months    ki1114097-CMIN          BRAZIL                         >5%               0       31   119
0-6 months    ki1114097-CMIN          BRAZIL                         >5%               1        0   119
0-6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                0      250   832
0-6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                1        2   832
0-6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]          0      244   832
0-6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]          1        1   832
0-6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%               0      332   832
0-6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%               1        3   832
0-6 months    ki1114097-CMIN          PERU                           0%                0      201   699
0-6 months    ki1114097-CMIN          PERU                           0%                1        1   699
0-6 months    ki1114097-CMIN          PERU                           (0%, 5%]          0      194   699
0-6 months    ki1114097-CMIN          PERU                           (0%, 5%]          1        6   699
0-6 months    ki1114097-CMIN          PERU                           >5%               0      293   699
0-6 months    ki1114097-CMIN          PERU                           >5%               1        4   699
0-6 months    ki1114097-CONTENT       PERU                           0%                0      115   215
0-6 months    ki1114097-CONTENT       PERU                           0%                1        0   215
0-6 months    ki1114097-CONTENT       PERU                           (0%, 5%]          0       43   215
0-6 months    ki1114097-CONTENT       PERU                           (0%, 5%]          1        0   215
0-6 months    ki1114097-CONTENT       PERU                           >5%               0       57   215
0-6 months    ki1114097-CONTENT       PERU                           >5%               1        0   215
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                0       56   239
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                1       15   239
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          0       78   239
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          1       14   239
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%               0       70   239
6-24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%               1        6   239
6-24 months   ki0047075b-MAL-ED       BRAZIL                         0%                0      188   207
6-24 months   ki0047075b-MAL-ED       BRAZIL                         0%                1        2   207
6-24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          0       15   207
6-24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          1        0   207
6-24 months   ki0047075b-MAL-ED       BRAZIL                         >5%               0        2   207
6-24 months   ki0047075b-MAL-ED       BRAZIL                         >5%               1        0   207
6-24 months   ki0047075b-MAL-ED       INDIA                          0%                0       39   235
6-24 months   ki0047075b-MAL-ED       INDIA                          0%                1       11   235
6-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]          0      104   235
6-24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]          1       22   235
6-24 months   ki0047075b-MAL-ED       INDIA                          >5%               0       45   235
6-24 months   ki0047075b-MAL-ED       INDIA                          >5%               1       14   235
6-24 months   ki0047075b-MAL-ED       NEPAL                          0%                0       73   235
6-24 months   ki0047075b-MAL-ED       NEPAL                          0%                1        7   235
6-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          0       73   235
6-24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          1        3   235
6-24 months   ki0047075b-MAL-ED       NEPAL                          >5%               0       73   235
6-24 months   ki0047075b-MAL-ED       NEPAL                          >5%               1        6   235
6-24 months   ki0047075b-MAL-ED       PERU                           0%                0       62   270
6-24 months   ki0047075b-MAL-ED       PERU                           0%                1        5   270
6-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]          0       84   270
6-24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]          1        3   270
6-24 months   ki0047075b-MAL-ED       PERU                           >5%               0      113   270
6-24 months   ki0047075b-MAL-ED       PERU                           >5%               1        3   270
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                0      182   259
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                1       12   259
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]          0       50   259
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]          1        6   259
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%               0        8   259
6-24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%               1        1   259
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                0       92   245
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                1       12   245
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          0       89   245
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          1        7   245
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               0       43   245
6-24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               1        2   245
6-24 months   ki1000109-ResPak        PAKISTAN                       0%                0       36   230
6-24 months   ki1000109-ResPak        PAKISTAN                       0%                1        2   230
6-24 months   ki1000109-ResPak        PAKISTAN                       (0%, 5%]          0       55   230
6-24 months   ki1000109-ResPak        PAKISTAN                       (0%, 5%]          1        8   230
6-24 months   ki1000109-ResPak        PAKISTAN                       >5%               0      110   230
6-24 months   ki1000109-ResPak        PAKISTAN                       >5%               1       19   230
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                0      102   542
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                1       27   542
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          0      143   542
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          1       29   542
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%               0      183   542
6-24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%               1       58   542
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                0      146   614
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                1       14   614
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]          0      211   614
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]          1       39   614
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%               0      182   614
6-24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%               1       22   614
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                0      314   730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                1       31   730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]          0      153   730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]          1       17   730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%               0      200   730
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%               1       15   730
6-24 months   ki1114097-CMIN          BANGLADESH                     0%                0       55   251
6-24 months   ki1114097-CMIN          BANGLADESH                     0%                1       31   251
6-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]          0       43   251
6-24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]          1       16   251
6-24 months   ki1114097-CMIN          BANGLADESH                     >5%               0       67   251
6-24 months   ki1114097-CMIN          BANGLADESH                     >5%               1       39   251
6-24 months   ki1114097-CMIN          BRAZIL                         0%                0       41   119
6-24 months   ki1114097-CMIN          BRAZIL                         0%                1        0   119
6-24 months   ki1114097-CMIN          BRAZIL                         (0%, 5%]          0       46   119
6-24 months   ki1114097-CMIN          BRAZIL                         (0%, 5%]          1        1   119
6-24 months   ki1114097-CMIN          BRAZIL                         >5%               0       31   119
6-24 months   ki1114097-CMIN          BRAZIL                         >5%               1        0   119
6-24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                0      248   890
6-24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                1       27   890
6-24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]          0      228   890
6-24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]          1       25   890
6-24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%               0      331   890
6-24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%               1       31   890
6-24 months   ki1114097-CMIN          PERU                           0%                0      195   666
6-24 months   ki1114097-CMIN          PERU                           0%                1        4   666
6-24 months   ki1114097-CMIN          PERU                           (0%, 5%]          0      185   666
6-24 months   ki1114097-CMIN          PERU                           (0%, 5%]          1        7   666
6-24 months   ki1114097-CMIN          PERU                           >5%               0      268   666
6-24 months   ki1114097-CMIN          PERU                           >5%               1        7   666
6-24 months   ki1114097-CONTENT       PERU                           0%                0      112   215
6-24 months   ki1114097-CONTENT       PERU                           0%                1        3   215
6-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]          0       42   215
6-24 months   ki1114097-CONTENT       PERU                           (0%, 5%]          1        1   215
6-24 months   ki1114097-CONTENT       PERU                           >5%               0       57   215
6-24 months   ki1114097-CONTENT       PERU                           >5%               1        0   215


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
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
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




# Results Detail

## Results Plots
![](/tmp/914e49d5-9eac-44ae-95cc-dfd8b02289cf/a435dd49-13ac-4b22-9f7b-8412f9d5184f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/914e49d5-9eac-44ae-95cc-dfd8b02289cf/a435dd49-13ac-4b22-9f7b-8412f9d5184f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/914e49d5-9eac-44ae-95cc-dfd8b02289cf/a435dd49-13ac-4b22-9f7b-8412f9d5184f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/914e49d5-9eac-44ae-95cc-dfd8b02289cf/a435dd49-13ac-4b22-9f7b-8412f9d5184f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH      0%                   NA                0.1764706   0.0952733   0.2576679
0-24 months   ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             NA                0.1530612   0.0816411   0.2244814
0-24 months   ki0047075b-MAL-ED       BANGLADESH      >5%                  NA                0.1125000   0.0431270   0.1818730
0-24 months   ki0047075b-MAL-ED       INDIA           0%                   NA                0.2220007   0.1118905   0.3321109
0-24 months   ki0047075b-MAL-ED       INDIA           (0%, 5%]             NA                0.1870963   0.1203289   0.2538636
0-24 months   ki0047075b-MAL-ED       INDIA           >5%                  NA                0.2222959   0.1137629   0.3308290
0-24 months   ki1017093-NIH-Birth     BANGLADESH      0%                   NA                0.1905782   0.1306169   0.2505395
0-24 months   ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             NA                0.1906408   0.1336888   0.2475929
0-24 months   ki1017093-NIH-Birth     BANGLADESH      >5%                  NA                0.2601734   0.2072757   0.3130711
0-24 months   ki1017093b-PROVIDE      BANGLADESH      0%                   NA                0.0955841   0.0565879   0.1345802
0-24 months   ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             NA                0.1611011   0.1166146   0.2055875
0-24 months   ki1017093b-PROVIDE      BANGLADESH      >5%                  NA                0.1228721   0.0783226   0.1674216
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH      0%                   NA                0.0937707   0.0637496   0.1237919
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             NA                0.0974208   0.0531957   0.1416459
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH      >5%                  NA                0.0921150   0.0540246   0.1302054
0-24 months   ki1114097-CMIN          BANGLADESH      0%                   NA                0.3488520   0.2517775   0.4459265
0-24 months   ki1114097-CMIN          BANGLADESH      (0%, 5%]             NA                0.2955494   0.1795349   0.4115640
0-24 months   ki1114097-CMIN          BANGLADESH      >5%                  NA                0.3553073   0.2659773   0.4446374
0-24 months   ki1114097-CMIN          GUINEA-BISSAU   0%                   NA                0.0970378   0.0622124   0.1318632
0-24 months   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             NA                0.0988676   0.0622847   0.1354504
0-24 months   ki1114097-CMIN          GUINEA-BISSAU   >5%                  NA                0.0859974   0.0572323   0.1147625
0-24 months   ki1114097-CMIN          PERU            0%                   NA                0.0235849   0.0031432   0.0440266
0-24 months   ki1114097-CMIN          PERU            (0%, 5%]             NA                0.0550000   0.0233821   0.0866179
0-24 months   ki1114097-CMIN          PERU            >5%                  NA                0.0295082   0.0105032   0.0485132
0-6 months    ki0047075b-MAL-ED       INDIA           0%                   NA                0.1147541   0.0346110   0.1948972
0-6 months    ki0047075b-MAL-ED       INDIA           (0%, 5%]             NA                0.0465116   0.0100985   0.0829248
0-6 months    ki0047075b-MAL-ED       INDIA           >5%                  NA                0.0819672   0.0129910   0.1509434
0-6 months    ki1017093-NIH-Birth     BANGLADESH      0%                   NA                0.0548780   0.0199945   0.0897616
0-6 months    ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             NA                0.0756757   0.0375337   0.1138177
0-6 months    ki1017093-NIH-Birth     BANGLADESH      >5%                  NA                0.0814815   0.0488234   0.1141396
0-6 months    ki1017093b-PROVIDE      BANGLADESH      0%                   NA                0.0450450   0.0177429   0.0723472
0-6 months    ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             NA                0.0344828   0.0123304   0.0566351
0-6 months    ki1017093b-PROVIDE      BANGLADESH      >5%                  NA                0.0506912   0.0214834   0.0798990
6-24 months   ki0047075b-MAL-ED       BANGLADESH      0%                   NA                0.2112676   0.1161172   0.3064180
6-24 months   ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             NA                0.1521739   0.0786230   0.2257248
6-24 months   ki0047075b-MAL-ED       BANGLADESH      >5%                  NA                0.0789474   0.0181951   0.1396997
6-24 months   ki0047075b-MAL-ED       INDIA           0%                   NA                0.2437206   0.1279929   0.3594483
6-24 months   ki0047075b-MAL-ED       INDIA           (0%, 5%]             NA                0.1787914   0.1131592   0.2444236
6-24 months   ki0047075b-MAL-ED       INDIA           >5%                  NA                0.2331955   0.1235268   0.3428641
6-24 months   ki1017093-NIH-Birth     BANGLADESH      0%                   NA                0.2129554   0.1418798   0.2840311
6-24 months   ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             NA                0.1738663   0.1172927   0.2304398
6-24 months   ki1017093-NIH-Birth     BANGLADESH      >5%                  NA                0.2361683   0.1823835   0.2899530
6-24 months   ki1017093b-PROVIDE      BANGLADESH      0%                   NA                0.0938364   0.0495972   0.1380757
6-24 months   ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             NA                0.1587255   0.1140312   0.2034197
6-24 months   ki1017093b-PROVIDE      BANGLADESH      >5%                  NA                0.1062121   0.0634116   0.1490126
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH      0%                   NA                0.0901677   0.0597331   0.1206024
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             NA                0.0994364   0.0538718   0.1450009
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH      >5%                  NA                0.0692288   0.0354294   0.1030282
6-24 months   ki1114097-CMIN          BANGLADESH      0%                   NA                0.3747835   0.2708418   0.4787252
6-24 months   ki1114097-CMIN          BANGLADESH      (0%, 5%]             NA                0.3010445   0.1850628   0.4170262
6-24 months   ki1114097-CMIN          BANGLADESH      >5%                  NA                0.3718867   0.2795281   0.4642453
6-24 months   ki1114097-CMIN          GUINEA-BISSAU   0%                   NA                0.0977245   0.0622378   0.1332112
6-24 months   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             NA                0.0977117   0.0606902   0.1347332
6-24 months   ki1114097-CMIN          GUINEA-BISSAU   >5%                  NA                0.0840976   0.0551941   0.1130011


### Parameter: E(Y)


agecat        studyid                 country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH      NA                   NA                0.1482890   0.1052563   0.1913216
0-24 months   ki0047075b-MAL-ED       INDIA           NA                   NA                0.2151394   0.1642023   0.2660766
0-24 months   ki1017093-NIH-Birth     BANGLADESH      NA                   NA                0.2206119   0.1879724   0.2532514
0-24 months   ki1017093b-PROVIDE      BANGLADESH      NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH      NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   ki1114097-CMIN          BANGLADESH      NA                   NA                0.3394834   0.2830004   0.3959663
0-24 months   ki1114097-CMIN          GUINEA-BISSAU   NA                   NA                0.0938865   0.0749878   0.1127851
0-24 months   ki1114097-CMIN          PERU            NA                   NA                0.0348675   0.0214307   0.0483043
0-6 months    ki0047075b-MAL-ED       INDIA           NA                   NA                0.0717131   0.0397302   0.1036961
0-6 months    ki1017093-NIH-Birth     BANGLADESH      NA                   NA                0.0726979   0.0522275   0.0931683
0-6 months    ki1017093b-PROVIDE      BANGLADESH      NA                   NA                0.0428571   0.0278427   0.0578716
6-24 months   ki0047075b-MAL-ED       BANGLADESH      NA                   NA                0.1464435   0.1015265   0.1913605
6-24 months   ki0047075b-MAL-ED       INDIA           NA                   NA                0.2000000   0.1487493   0.2512507
6-24 months   ki1017093-NIH-Birth     BANGLADESH      NA                   NA                0.2103321   0.1759902   0.2446740
6-24 months   ki1017093b-PROVIDE      BANGLADESH      NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH      NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   ki1114097-CMIN          BANGLADESH      NA                   NA                0.3426295   0.2837999   0.4014590
6-24 months   ki1114097-CMIN          GUINEA-BISSAU   NA                   NA                0.0932584   0.0741430   0.1123738


### Parameter: RR


agecat        studyid                 country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH      0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             0%                0.8673469   0.4503955   1.6702892
0-24 months   ki0047075b-MAL-ED       BANGLADESH      >5%                  0%                0.6375000   0.2953502   1.3760149
0-24 months   ki0047075b-MAL-ED       INDIA           0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED       INDIA           (0%, 5%]             0%                0.8427733   0.4591447   1.5469346
0-24 months   ki0047075b-MAL-ED       INDIA           >5%                  0%                1.0013300   0.4988070   2.0101195
0-24 months   ki1017093-NIH-Birth     BANGLADESH      0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             0%                1.0003286   0.6490058   1.5418310
0-24 months   ki1017093-NIH-Birth     BANGLADESH      >5%                  0%                1.3651792   0.9398355   1.9830216
0-24 months   ki1017093b-PROVIDE      BANGLADESH      0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             0%                1.6854382   1.0306837   2.7561335
0-24 months   ki1017093b-PROVIDE      BANGLADESH      >5%                  0%                1.2854865   0.7450329   2.2179901
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH      0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             0%                1.0389255   0.5959825   1.8110702
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH      >5%                  0%                0.9823429   0.5823392   1.6571058
0-24 months   ki1114097-CMIN          BANGLADESH      0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CMIN          BANGLADESH      (0%, 5%]             0%                0.8472057   0.5235267   1.3710046
0-24 months   ki1114097-CMIN          BANGLADESH      >5%                  0%                1.0185044   0.6998640   1.4822183
0-24 months   ki1114097-CMIN          GUINEA-BISSAU   0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             0%                1.0188563   0.6086460   1.7055369
0-24 months   ki1114097-CMIN          GUINEA-BISSAU   >5%                  0%                0.8862260   0.5422924   1.4482898
0-24 months   ki1114097-CMIN          PERU            0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CMIN          PERU            (0%, 5%]             0%                2.3320000   0.8242181   6.5980403
0-24 months   ki1114097-CMIN          PERU            >5%                  0%                1.2511475   0.4249566   3.6836005
0-6 months    ki0047075b-MAL-ED       INDIA           0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED       INDIA           (0%, 5%]             0%                0.4053156   0.1419600   1.1572328
0-6 months    ki0047075b-MAL-ED       INDIA           >5%                  0%                0.7142857   0.2392998   2.1320709
0-6 months    ki1017093-NIH-Birth     BANGLADESH      0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             0%                1.3789790   0.6126960   3.1036321
0-6 months    ki1017093-NIH-Birth     BANGLADESH      >5%                  0%                1.4847737   0.7003297   3.1478783
0-6 months    ki1017093b-PROVIDE      BANGLADESH      0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             0%                0.7655172   0.3165046   1.8515265
0-6 months    ki1017093b-PROVIDE      BANGLADESH      >5%                  0%                1.1253456   0.4876348   2.5970311
6-24 months   ki0047075b-MAL-ED       BANGLADESH      0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             0%                0.7202899   0.3720423   1.3945120
6-24 months   ki0047075b-MAL-ED       BANGLADESH      >5%                  0%                0.3736842   0.1532046   0.9114602
6-24 months   ki0047075b-MAL-ED       INDIA           0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED       INDIA           (0%, 5%]             0%                0.7335914   0.4040480   1.3319120
6-24 months   ki0047075b-MAL-ED       INDIA           >5%                  0%                0.9568146   0.4918884   1.8611828
6-24 months   ki1017093-NIH-Birth     BANGLADESH      0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             0%                0.8164444   0.5123112   1.3011262
6-24 months   ki1017093-NIH-Birth     BANGLADESH      >5%                  0%                1.1090033   0.7404736   1.6609481
6-24 months   ki1017093b-PROVIDE      BANGLADESH      0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             0%                1.6915123   0.9789983   2.9225933
6-24 months   ki1017093b-PROVIDE      BANGLADESH      >5%                  0%                1.1318856   0.6094100   2.1023040
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH      0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             0%                1.1027929   0.6241910   1.9483655
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH      >5%                  0%                0.7677779   0.4241781   1.3897062
6-24 months   ki1114097-CMIN          BANGLADESH      0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months   ki1114097-CMIN          BANGLADESH      (0%, 5%]             0%                0.8032490   0.4980406   1.2954948
6-24 months   ki1114097-CMIN          BANGLADESH      >5%                  0%                0.9922706   0.6839290   1.4396246
6-24 months   ki1114097-CMIN          GUINEA-BISSAU   0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             0%                0.9998693   0.5913784   1.6905229
6-24 months   ki1114097-CMIN          GUINEA-BISSAU   >5%                  0%                0.8605584   0.5217391   1.4194083


### Parameter: PAR


agecat        studyid                 country         intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ----------------------  --------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH      0%                   NA                -0.0281816   -0.0928591   0.0364958
0-24 months   ki0047075b-MAL-ED       INDIA           0%                   NA                -0.0068612   -0.1014000   0.0876775
0-24 months   ki1017093-NIH-Birth     BANGLADESH      0%                   NA                 0.0300337   -0.0225249   0.0825923
0-24 months   ki1017093b-PROVIDE      BANGLADESH      0%                   NA                 0.0329873   -0.0014337   0.0674084
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH      0%                   NA                -0.0001032   -0.0217919   0.0215856
0-24 months   ki1114097-CMIN          BANGLADESH      0%                   NA                -0.0093686   -0.0880318   0.0692945
0-24 months   ki1114097-CMIN          GUINEA-BISSAU   0%                   NA                -0.0031513   -0.0318223   0.0255196
0-24 months   ki1114097-CMIN          PERU            0%                   NA                 0.0112826   -0.0074606   0.0300258
0-6 months    ki0047075b-MAL-ED       INDIA           0%                   NA                -0.0430410   -0.1087975   0.0227156
0-6 months    ki1017093-NIH-Birth     BANGLADESH      0%                   NA                 0.0178199   -0.0136619   0.0493016
0-6 months    ki1017093b-PROVIDE      BANGLADESH      0%                   NA                -0.0021879   -0.0245047   0.0201289
6-24 months   ki0047075b-MAL-ED       BANGLADESH      0%                   NA                -0.0648241   -0.1402695   0.0106213
6-24 months   ki0047075b-MAL-ED       INDIA           0%                   NA                -0.0437206   -0.1455709   0.0581296
6-24 months   ki1017093-NIH-Birth     BANGLADESH      0%                   NA                -0.0026233   -0.0648223   0.0595756
6-24 months   ki1017093b-PROVIDE      BANGLADESH      0%                   NA                 0.0283134   -0.0118720   0.0684989
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH      0%                   NA                -0.0038664   -0.0256223   0.0178895
6-24 months   ki1114097-CMIN          BANGLADESH      0%                   NA                -0.0321540   -0.1165555   0.0522474
6-24 months   ki1114097-CMIN          GUINEA-BISSAU   0%                   NA                -0.0044661   -0.0336899   0.0247578


### Parameter: PAF


agecat        studyid                 country         intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  --------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED       BANGLADESH      0%                   NA                -0.1900452   -0.7139097    0.1736976
0-24 months   ki0047075b-MAL-ED       INDIA           0%                   NA                -0.0318921   -0.5791012    0.3256916
0-24 months   ki1017093-NIH-Birth     BANGLADESH      0%                   NA                 0.1361382   -0.1375177    0.3439598
0-24 months   ki1017093b-PROVIDE      BANGLADESH      0%                   NA                 0.2565682   -0.0606171    0.4788970
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH      0%                   NA                -0.0011015   -0.2616202    0.2056213
0-24 months   ki1114097-CMIN          BANGLADESH      0%                   NA                -0.0275967   -0.2875429    0.1798681
0-24 months   ki1114097-CMIN          GUINEA-BISSAU   0%                   NA                -0.0335653   -0.3886686    0.2307328
0-24 months   ki1114097-CMIN          PERU            0%                   NA                 0.3235849   -0.4669086    0.6880942
0-6 months    ki0047075b-MAL-ED       INDIA           0%                   NA                -0.6001821   -1.7855784    0.0807716
0-6 months    ki1017093-NIH-Birth     BANGLADESH      0%                   NA                 0.2451220   -0.3311018    0.5719029
0-6 months    ki1017093b-PROVIDE      BANGLADESH      0%                   NA                -0.0510511   -0.7245378    0.3594178
6-24 months   ki0047075b-MAL-ED       BANGLADESH      0%                   NA                -0.4426559   -1.0488447   -0.0158194
6-24 months   ki0047075b-MAL-ED       INDIA           0%                   NA                -0.2186032   -0.8522494    0.1982755
6-24 months   ki1017093-NIH-Birth     BANGLADESH      0%                   NA                -0.0124724   -0.3559134    0.2439780
6-24 months   ki1017093b-PROVIDE      BANGLADESH      0%                   NA                 0.2317925   -0.1725419    0.4966979
6-24 months   ki1017093c-NIH-Crypto   BANGLADESH      0%                   NA                -0.0448009   -0.3296208    0.1790074
6-24 months   ki1114097-CMIN          BANGLADESH      0%                   NA                -0.0938450   -0.3703358    0.1268587
6-24 months   ki1114097-CMIN          GUINEA-BISSAU   0%                   NA                -0.0478892   -0.4128847    0.2228158
