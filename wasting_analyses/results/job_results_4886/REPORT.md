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

**Outcome Variable:** ever_wasted

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

agecat                        studyid                 country                        perdiar6    ever_wasted   n_cell     n
----------------------------  ----------------------  -----------------------------  ---------  ------------  -------  ----
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]              0       75   263
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]              1       23   263
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     0%                    0       65   263
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     0%                    1       20   263
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     >5%                   0       65   263
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     >5%                   1       15   263
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]              0       14   232
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]              1        1   232
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         0%                    0      205   232
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         0%                    1       10   232
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         >5%                   0        1   232
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         >5%                   1        1   232
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          (0%, 5%]              0       86   246
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          (0%, 5%]              1       42   246
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          0%                    0       36   246
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          0%                    1       23   246
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          >5%                   0       35   246
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          >5%                   1       24   246
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]              0       63   239
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]              1       13   239
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          0%                    0       65   239
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          0%                    1       18   239
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          >5%                   0       66   239
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          >5%                   1       14   239
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           (0%, 5%]              0       88   302
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           (0%, 5%]              1        5   302
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           0%                    0       83   302
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           0%                    1        6   302
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           >5%                   0      111   302
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           >5%                   1        9   302
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]              0       53   302
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]              1        7   302
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                    0      196   302
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                    1       36   302
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                   0        9   302
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                   1        1   302
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]              0       90   261
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]              1       12   261
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                    0       97   261
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                    1       16   261
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                   0       44   261
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                   1        2   261
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN                       (0%, 5%]              0       36   273
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN                       (0%, 5%]              1       35   273
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN                       0%                    0       37   273
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN                       0%                    1       20   273
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN                       >5%                   0       75   273
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN                       >5%                   1       70   273
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]              0      136   599
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]              1       46   599
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     0%                    0      120   599
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     0%                    1       37   599
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     >5%                   0      165   599
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     >5%                   1       95   599
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]              0      198   687
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]              1       61   687
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     0%                    0      183   687
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     0%                    1       30   687
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     >5%                   0      184   687
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     >5%                   1       31   687
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]              0      149   754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]              1       24   754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     0%                    0      307   754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     0%                    1       57   754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                   0      190   754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                   1       27   754
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH                     (0%, 5%]              0       40   268
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH                     (0%, 5%]              1       22   268
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH                     0%                    0       54   268
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH                     0%                    1       39   268
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH                     >5%                   0       59   268
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH                     >5%                   1       54   268
0-24 months (no birth wast)   ki1114097-CMIN          BRAZIL                         (0%, 5%]              0       44   119
0-24 months (no birth wast)   ki1114097-CMIN          BRAZIL                         (0%, 5%]              1        3   119
0-24 months (no birth wast)   ki1114097-CMIN          BRAZIL                         0%                    0       40   119
0-24 months (no birth wast)   ki1114097-CMIN          BRAZIL                         0%                    1        1   119
0-24 months (no birth wast)   ki1114097-CMIN          BRAZIL                         >5%                   0       31   119
0-24 months (no birth wast)   ki1114097-CMIN          BRAZIL                         >5%                   1        0   119
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]              0      203   912
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]              1       57   912
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU                  0%                    0      223   912
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU                  0%                    1       58   912
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU                  >5%                   0      308   912
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU                  >5%                   1       63   912
0-24 months (no birth wast)   ki1114097-CMIN          PERU                           (0%, 5%]              0      186   717
0-24 months (no birth wast)   ki1114097-CMIN          PERU                           (0%, 5%]              1       14   717
0-24 months (no birth wast)   ki1114097-CMIN          PERU                           0%                    0      203   717
0-24 months (no birth wast)   ki1114097-CMIN          PERU                           0%                    1        9   717
0-24 months (no birth wast)   ki1114097-CMIN          PERU                           >5%                   0      285   717
0-24 months (no birth wast)   ki1114097-CMIN          PERU                           >5%                   1       20   717
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           (0%, 5%]              0       42   215
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           (0%, 5%]              1        1   215
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           0%                    0      110   215
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           0%                    1        5   215
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           >5%                   0       56   215
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           >5%                   1        1   215
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]              0       92   262
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]              1        6   262
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     0%                    0       78   262
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     0%                    1        6   262
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     >5%                   0       73   262
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     >5%                   1        7   262
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]              0       14   232
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]              1        1   232
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         0%                    0      209   232
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         0%                    1        6   232
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         >5%                   0        2   232
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         >5%                   1        0   232
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          (0%, 5%]              0      108   245
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          (0%, 5%]              1       19   245
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          0%                    0       50   245
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          0%                    1        9   245
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          >5%                   0       49   245
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          >5%                   1       10   245
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]              0       68   237
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]              1        8   237
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          0%                    0       76   237
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          0%                    1        5   237
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          >5%                   0       78   237
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          >5%                   1        2   237
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           (0%, 5%]              0       92   302
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           (0%, 5%]              1        1   302
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           0%                    0       89   302
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           0%                    1        0   302
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           >5%                   0      116   302
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           >5%                   1        4   302
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]              0       57   301
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]              1        3   301
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                    0      222   301
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                    1        9   301
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                   0       10   301
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                   1        0   301
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]              0       99   261
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]              1        3   261
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                    0      108   261
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                    1        5   261
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                   0       46   261
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                   1        0   261
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN                       (0%, 5%]              0       57   271
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN                       (0%, 5%]              1       14   271
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN                       0%                    0       42   271
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN                       0%                    1       14   271
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN                       >5%                   0      110   271
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN                       >5%                   1       34   271
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]              0      163   581
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]              1       12   581
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     0%                    0      147   581
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     0%                    1        5   581
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     >5%                   0      225   581
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     >5%                   1       29   581
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]              0      242   683
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]              1       16   683
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     0%                    0      204   683
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     0%                    1        8   683
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     >5%                   0      201   683
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     >5%                   1       12   683
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]              0      166   749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]              1        6   749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     0%                    0      354   749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     0%                    1        8   749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                   0      209   749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                   1        6   749
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH                     (0%, 5%]              0       50   267
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH                     (0%, 5%]              1       11   267
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH                     0%                    0       86   267
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH                     0%                    1        7   267
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH                     >5%                   0      100   267
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH                     >5%                   1       13   267
0-6 months (no birth wast)    ki1114097-CMIN          BRAZIL                         (0%, 5%]              0       45   117
0-6 months (no birth wast)    ki1114097-CMIN          BRAZIL                         (0%, 5%]              1        1   117
0-6 months (no birth wast)    ki1114097-CMIN          BRAZIL                         0%                    0       41   117
0-6 months (no birth wast)    ki1114097-CMIN          BRAZIL                         0%                    1        0   117
0-6 months (no birth wast)    ki1114097-CMIN          BRAZIL                         >5%                   0       30   117
0-6 months (no birth wast)    ki1114097-CMIN          BRAZIL                         >5%                   1        0   117
0-6 months (no birth wast)    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]              0      237   825
0-6 months (no birth wast)    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]              1        6   825
0-6 months (no birth wast)    ki1114097-CMIN          GUINEA-BISSAU                  0%                    0      245   825
0-6 months (no birth wast)    ki1114097-CMIN          GUINEA-BISSAU                  0%                    1        4   825
0-6 months (no birth wast)    ki1114097-CMIN          GUINEA-BISSAU                  >5%                   0      323   825
0-6 months (no birth wast)    ki1114097-CMIN          GUINEA-BISSAU                  >5%                   1       10   825
0-6 months (no birth wast)    ki1114097-CMIN          PERU                           (0%, 5%]              0      194   695
0-6 months (no birth wast)    ki1114097-CMIN          PERU                           (0%, 5%]              1        4   695
0-6 months (no birth wast)    ki1114097-CMIN          PERU                           0%                    0      198   695
0-6 months (no birth wast)    ki1114097-CMIN          PERU                           0%                    1        3   695
0-6 months (no birth wast)    ki1114097-CMIN          PERU                           >5%                   0      285   695
0-6 months (no birth wast)    ki1114097-CMIN          PERU                           >5%                   1       11   695
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           (0%, 5%]              0       43   215
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           (0%, 5%]              1        0   215
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           0%                    0      113   215
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           0%                    1        2   215
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           >5%                   0       56   215
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           >5%                   1        1   215
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]              0       74   240
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]              1       18   240
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     0%                    0       54   240
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     0%                    1       17   240
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     >5%                   0       68   240
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     >5%                   1        9   240
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]              0       15   207
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]              1        0   207
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         0%                    0      185   207
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         0%                    1        5   207
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         >5%                   0        1   207
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         >5%                   1        1   207
6-24 months                   ki0047075b-MAL-ED       INDIA                          (0%, 5%]              0       97   235
6-24 months                   ki0047075b-MAL-ED       INDIA                          (0%, 5%]              1       29   235
6-24 months                   ki0047075b-MAL-ED       INDIA                          0%                    0       34   235
6-24 months                   ki0047075b-MAL-ED       INDIA                          0%                    1       16   235
6-24 months                   ki0047075b-MAL-ED       INDIA                          >5%                   0       40   235
6-24 months                   ki0047075b-MAL-ED       INDIA                          >5%                   1       19   235
6-24 months                   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]              0       70   235
6-24 months                   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]              1        6   235
6-24 months                   ki0047075b-MAL-ED       NEPAL                          0%                    0       63   235
6-24 months                   ki0047075b-MAL-ED       NEPAL                          0%                    1       17   235
6-24 months                   ki0047075b-MAL-ED       NEPAL                          >5%                   0       66   235
6-24 months                   ki0047075b-MAL-ED       NEPAL                          >5%                   1       13   235
6-24 months                   ki0047075b-MAL-ED       PERU                           (0%, 5%]              0       83   270
6-24 months                   ki0047075b-MAL-ED       PERU                           (0%, 5%]              1        4   270
6-24 months                   ki0047075b-MAL-ED       PERU                           0%                    0       61   270
6-24 months                   ki0047075b-MAL-ED       PERU                           0%                    1        6   270
6-24 months                   ki0047075b-MAL-ED       PERU                           >5%                   0      109   270
6-24 months                   ki0047075b-MAL-ED       PERU                           >5%                   1        7   270
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]              0       50   259
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]              1        6   259
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                    0      165   259
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                    1       29   259
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                   0        8   259
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                   1        1   259
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]              0       85   245
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]              1       11   245
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                    0       91   245
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                    1       13   245
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                   0       43   245
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                   1        2   245
6-24 months                   ki1000109-ResPak        PAKISTAN                       (0%, 5%]              0       37   230
6-24 months                   ki1000109-ResPak        PAKISTAN                       (0%, 5%]              1       26   230
6-24 months                   ki1000109-ResPak        PAKISTAN                       0%                    0       27   230
6-24 months                   ki1000109-ResPak        PAKISTAN                       0%                    1       11   230
6-24 months                   ki1000109-ResPak        PAKISTAN                       >5%                   0       82   230
6-24 months                   ki1000109-ResPak        PAKISTAN                       >5%                   1       47   230
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]              0      128   541
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]              1       43   541
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     0%                    0       96   541
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     0%                    1       33   541
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     >5%                   0      158   541
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     >5%                   1       83   541
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]              0      198   615
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]              1       52   615
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     0%                    0      137   615
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     0%                    1       24   615
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     >5%                   0      181   615
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     >5%                   1       23   615
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]              0      149   730
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]              1       21   730
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     0%                    0      294   730
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     0%                    1       51   730
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                   0      191   730
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                   1       24   730
6-24 months                   ki1114097-CMIN          BANGLADESH                     (0%, 5%]              0       42   252
6-24 months                   ki1114097-CMIN          BANGLADESH                     (0%, 5%]              1       17   252
6-24 months                   ki1114097-CMIN          BANGLADESH                     0%                    0       51   252
6-24 months                   ki1114097-CMIN          BANGLADESH                     0%                    1       35   252
6-24 months                   ki1114097-CMIN          BANGLADESH                     >5%                   0       62   252
6-24 months                   ki1114097-CMIN          BANGLADESH                     >5%                   1       45   252
6-24 months                   ki1114097-CMIN          BRAZIL                         (0%, 5%]              0       44   119
6-24 months                   ki1114097-CMIN          BRAZIL                         (0%, 5%]              1        3   119
6-24 months                   ki1114097-CMIN          BRAZIL                         0%                    0       40   119
6-24 months                   ki1114097-CMIN          BRAZIL                         0%                    1        1   119
6-24 months                   ki1114097-CMIN          BRAZIL                         >5%                   0       31   119
6-24 months                   ki1114097-CMIN          BRAZIL                         >5%                   1        0   119
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]              0      200   891
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]              1       53   891
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU                  0%                    0      218   891
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU                  0%                    1       57   891
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU                  >5%                   0      304   891
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU                  >5%                   1       59   891
6-24 months                   ki1114097-CMIN          PERU                           (0%, 5%]              0      182   666
6-24 months                   ki1114097-CMIN          PERU                           (0%, 5%]              1       10   666
6-24 months                   ki1114097-CMIN          PERU                           0%                    0      192   666
6-24 months                   ki1114097-CMIN          PERU                           0%                    1        7   666
6-24 months                   ki1114097-CMIN          PERU                           >5%                   0      264   666
6-24 months                   ki1114097-CMIN          PERU                           >5%                   1       11   666
6-24 months                   ki1114097-CONTENT       PERU                           (0%, 5%]              0       42   215
6-24 months                   ki1114097-CONTENT       PERU                           (0%, 5%]              1        1   215
6-24 months                   ki1114097-CONTENT       PERU                           0%                    0      112   215
6-24 months                   ki1114097-CONTENT       PERU                           0%                    1        3   215
6-24 months                   ki1114097-CONTENT       PERU                           >5%                   0       57   215
6-24 months                   ki1114097-CONTENT       PERU                           >5%                   1        0   215


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
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

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/d743505c-2514-4b1e-a7be-b2986fbce4a7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d743505c-2514-4b1e-a7be-b2986fbce4a7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d743505c-2514-4b1e-a7be-b2986fbce4a7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d743505c-2514-4b1e-a7be-b2986fbce4a7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                 country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             NA                0.2033211   0.1276430   0.2789992
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH      0%                   NA                0.1951492   0.1151767   0.2751217
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH      >5%                  NA                0.1602585   0.0832062   0.2373108
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA           (0%, 5%]             NA                0.3281281   0.2466249   0.4096313
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA           0%                   NA                0.3898054   0.2651118   0.5144989
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA           >5%                  NA                0.4067978   0.2811924   0.5324032
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL           (0%, 5%]             NA                0.1701617   0.0857808   0.2545425
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL           0%                   NA                0.2169059   0.1283083   0.3055034
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL           >5%                  NA                0.1758380   0.0925481   0.2591280
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU            (0%, 5%]             NA                0.0537634   0.0078468   0.0996801
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU            0%                   NA                0.0674157   0.0152365   0.1195950
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU            >5%                  NA                0.0750000   0.0277960   0.1222040
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        (0%, 5%]             NA                0.4929577   0.3764532   0.6094622
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        0%                   NA                0.3508772   0.2267553   0.4749991
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        >5%                  NA                0.4827586   0.4012746   0.5642427
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             NA                0.2295381   0.1720420   0.2870342
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH      0%                   NA                0.2110864   0.1512309   0.2709420
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH      >5%                  NA                0.3442030   0.2892652   0.3991407
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             NA                0.2373170   0.1863969   0.2882370
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH      0%                   NA                0.1403907   0.0941425   0.1866389
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH      >5%                  NA                0.1430029   0.0962350   0.1897708
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             NA                0.1338024   0.0857857   0.1818192
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      0%                   NA                0.1541194   0.1179648   0.1902741
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      >5%                  NA                0.1174142   0.0767371   0.1580913
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH      (0%, 5%]             NA                0.3526291   0.2342810   0.4709771
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH      0%                   NA                0.4283257   0.3280845   0.5285669
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH      >5%                  NA                0.4715562   0.3798498   0.5632626
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             NA                0.2196423   0.1694210   0.2698636
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   0%                   NA                0.2131960   0.1658073   0.2605847
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   >5%                  NA                0.1686045   0.1306031   0.2066059
0-24 months (no birth wast)   ki1114097-CMIN          PERU            (0%, 5%]             NA                0.0700000   0.0346144   0.1053856
0-24 months (no birth wast)   ki1114097-CMIN          PERU            0%                   NA                0.0424528   0.0152937   0.0696120
0-24 months (no birth wast)   ki1114097-CMIN          PERU            >5%                  NA                0.0655738   0.0377742   0.0933734
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             NA                0.0612245   0.0136681   0.1087809
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH      0%                   NA                0.0714286   0.0162485   0.1266087
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH      >5%                  NA                0.0875000   0.0254625   0.1495375
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA           (0%, 5%]             NA                0.1496063   0.0874451   0.2117675
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA           0%                   NA                0.1525424   0.0606108   0.2444739
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA           >5%                  NA                0.1694915   0.0735611   0.2654219
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        (0%, 5%]             NA                0.1970127   0.1043261   0.2896993
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        0%                   NA                0.2501052   0.1364979   0.3637125
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        >5%                  NA                0.2361675   0.1666809   0.3056541
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             NA                0.0685714   0.0310957   0.1060471
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH      0%                   NA                0.0328947   0.0045155   0.0612740
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH      >5%                  NA                0.1141732   0.0750295   0.1533169
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             NA                0.0620155   0.0325642   0.0914668
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH      0%                   NA                0.0377358   0.0120660   0.0634057
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH      >5%                  NA                0.0563380   0.0253506   0.0873255
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             NA                0.0348837   0.0074443   0.0623232
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH      0%                   NA                0.0220994   0.0069456   0.0372533
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH      >5%                  NA                0.0279070   0.0058762   0.0499377
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH      (0%, 5%]             NA                0.1803279   0.0836673   0.2769885
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH      0%                   NA                0.0752688   0.0215487   0.1289889
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH      >5%                  NA                0.1150442   0.0561033   0.1739852
6-24 months                   ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             NA                0.1956522   0.1144206   0.2768838
6-24 months                   ki0047075b-MAL-ED       BANGLADESH      0%                   NA                0.2394366   0.1399674   0.3389058
6-24 months                   ki0047075b-MAL-ED       BANGLADESH      >5%                  NA                0.1168831   0.0449723   0.1887940
6-24 months                   ki0047075b-MAL-ED       INDIA           (0%, 5%]             NA                0.2326552   0.1609782   0.3043323
6-24 months                   ki0047075b-MAL-ED       INDIA           0%                   NA                0.3140687   0.1947064   0.4334311
6-24 months                   ki0047075b-MAL-ED       INDIA           >5%                  NA                0.3118401   0.1980656   0.4256146
6-24 months                   ki0047075b-MAL-ED       NEPAL           (0%, 5%]             NA                0.0789474   0.0181929   0.1397019
6-24 months                   ki0047075b-MAL-ED       NEPAL           0%                   NA                0.2125000   0.1226674   0.3023326
6-24 months                   ki0047075b-MAL-ED       NEPAL           >5%                  NA                0.1645570   0.0826205   0.2464934
6-24 months                   ki1000109-ResPak        PAKISTAN        (0%, 5%]             NA                0.4216826   0.3003012   0.5430639
6-24 months                   ki1000109-ResPak        PAKISTAN        0%                   NA                0.2936668   0.1489824   0.4383512
6-24 months                   ki1000109-ResPak        PAKISTAN        >5%                  NA                0.3665925   0.2834715   0.4497134
6-24 months                   ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             NA                0.2080157   0.1495567   0.2664747
6-24 months                   ki1017093-NIH-Birth     BANGLADESH      0%                   NA                0.1933505   0.1287079   0.2579931
6-24 months                   ki1017093-NIH-Birth     BANGLADESH      >5%                  NA                0.3042866   0.2486704   0.3599028
6-24 months                   ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             NA                0.2105873   0.1611809   0.2599938
6-24 months                   ki1017093b-PROVIDE      BANGLADESH      0%                   NA                0.1481426   0.0938228   0.2024623
6-24 months                   ki1017093b-PROVIDE      BANGLADESH      >5%                  NA                0.1111109   0.0680951   0.1541267
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             NA                0.1170233   0.0731092   0.1609374
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH      0%                   NA                0.1455229   0.1100127   0.1810331
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH      >5%                  NA                0.1054473   0.0674945   0.1434001
6-24 months                   ki1114097-CMIN          BANGLADESH      (0%, 5%]             NA                0.2917836   0.1765853   0.4069820
6-24 months                   ki1114097-CMIN          BANGLADESH      0%                   NA                0.4054274   0.3012946   0.5095602
6-24 months                   ki1114097-CMIN          BANGLADESH      >5%                  NA                0.4189600   0.3251261   0.5127938
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             NA                0.2091661   0.1591501   0.2591822
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU   0%                   NA                0.2155004   0.1675890   0.2634119
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU   >5%                  NA                0.1612710   0.1234940   0.1990479
6-24 months                   ki1114097-CMIN          PERU            (0%, 5%]             NA                0.0520833   0.0206306   0.0835361
6-24 months                   ki1114097-CMIN          PERU            0%                   NA                0.0351759   0.0095609   0.0607909
6-24 months                   ki1114097-CMIN          PERU            >5%                  NA                0.0400000   0.0168221   0.0631779


### Parameter: E(Y)


agecat                        studyid                 country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH      NA                   NA                0.2205323   0.1703290   0.2707357
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA           NA                   NA                0.3617886   0.3016193   0.4219579
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL           NA                   NA                0.1882845   0.1386174   0.2379516
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU            NA                   NA                0.0662252   0.0381322   0.0943181
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        NA                   NA                0.4578755   0.3986666   0.5170843
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH      NA                   NA                0.2971619   0.2605332   0.3337907
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH      NA                   NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      NA                   NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH      NA                   NA                0.4291045   0.3697365   0.4884725
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   NA                   NA                0.1951754   0.1694388   0.2209121
0-24 months (no birth wast)   ki1114097-CMIN          PERU            NA                   NA                0.0599721   0.0425806   0.0773636
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH      NA                   NA                0.0725191   0.0410556   0.1039825
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA           NA                   NA                0.1551020   0.1096803   0.2005238
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        NA                   NA                0.2287823   0.1786790   0.2788855
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH      NA                   NA                0.0791738   0.0571996   0.1011481
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH      NA                   NA                0.0527086   0.0359384   0.0694789
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH      NA                   NA                0.0267023   0.0151493   0.0382553
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH      NA                   NA                0.1161049   0.0776073   0.1546024
6-24 months                   ki0047075b-MAL-ED       BANGLADESH      NA                   NA                0.1833333   0.1342773   0.2323893
6-24 months                   ki0047075b-MAL-ED       INDIA           NA                   NA                0.2723404   0.2153029   0.3293779
6-24 months                   ki0047075b-MAL-ED       NEPAL           NA                   NA                0.1531915   0.1070438   0.1993392
6-24 months                   ki1000109-ResPak        PAKISTAN        NA                   NA                0.3652174   0.3028556   0.4275792
6-24 months                   ki1017093-NIH-Birth     BANGLADESH      NA                   NA                0.2939002   0.2554778   0.3323226
6-24 months                   ki1017093b-PROVIDE      BANGLADESH      NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH      NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months                   ki1114097-CMIN          BANGLADESH      NA                   NA                0.3849206   0.3247254   0.4451159
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU   NA                   NA                0.1896745   0.1639180   0.2154311
6-24 months                   ki1114097-CMIN          PERU            NA                   NA                0.0420420   0.0267891   0.0572949


### Parameter: RR


agecat                        studyid                 country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH      0%                   (0%, 5%]          0.9598082   0.5601167   1.6447138
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH      >5%                  (0%, 5%]          0.7882040   0.4332418   1.4339927
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA           (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA           0%                   (0%, 5%]          1.1879670   0.7923558   1.7811008
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA           >5%                  (0%, 5%]          1.2397530   0.8341356   1.8426112
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL           (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL           0%                   (0%, 5%]          1.2747047   0.6713789   2.4202011
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL           >5%                  (0%, 5%]          1.0333586   0.5211337   2.0490522
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU            (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU            0%                   (0%, 5%]          1.2539326   0.3960139   3.9704339
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU            >5%                  (0%, 5%]          1.3950000   0.4828664   4.0301519
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        0%                   (0%, 5%]          0.7117794   0.4651387   1.0892020
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        >5%                  (0%, 5%]          0.9793103   0.7324730   1.3093299
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH      0%                   (0%, 5%]          0.9196139   0.6315585   1.3390521
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH      >5%                  (0%, 5%]          1.4995461   1.1163031   2.0143619
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH      0%                   (0%, 5%]          0.5915747   0.4003628   0.8741087
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH      >5%                  (0%, 5%]          0.6025819   0.4082169   0.8894901
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      0%                   (0%, 5%]          1.1518434   0.7503264   1.7682212
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      >5%                  (0%, 5%]          0.8775192   0.5329589   1.4448394
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH      0%                   (0%, 5%]          1.2146636   0.8074431   1.8272590
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH      >5%                  (0%, 5%]          1.3372585   0.9080635   1.9693119
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   0%                   (0%, 5%]          0.9706510   0.7061151   1.3342915
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   >5%                  (0%, 5%]          0.7676326   0.5569353   1.0580399
0-24 months (no birth wast)   ki1114097-CMIN          PERU            (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1114097-CMIN          PERU            0%                   (0%, 5%]          0.6064690   0.2683494   1.3706189
0-24 months (no birth wast)   ki1114097-CMIN          PERU            >5%                  (0%, 5%]          0.9367681   0.4842918   1.8119955
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH      0%                   (0%, 5%]          1.1666667   0.3900982   3.4891502
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH      >5%                  (0%, 5%]          1.4291667   0.4992806   4.0909205
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA           (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA           0%                   (0%, 5%]          1.0196253   0.4903793   2.1200648
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA           >5%                  (0%, 5%]          1.1329170   0.5613944   2.2862735
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        0%                   (0%, 5%]          1.2694877   0.6601429   2.4412881
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        >5%                  (0%, 5%]          1.1987426   0.6882854   2.0877730
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH      0%                   (0%, 5%]          0.4797149   0.1727639   1.3320284
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH      >5%                  (0%, 5%]          1.6650262   0.8734401   3.1740154
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH      0%                   (0%, 5%]          0.6084906   0.2654323   1.3949347
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH      >5%                  (0%, 5%]          0.9084507   0.4392471   1.8788573
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH      0%                   (0%, 5%]          0.6335175   0.2231330   1.7986783
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH      >5%                  (0%, 5%]          0.8000000   0.2624831   2.4382522
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH      0%                   (0%, 5%]          0.4173998   0.1709653   1.0190527
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH      >5%                  (0%, 5%]          0.6379726   0.3039320   1.3391454
6-24 months                   ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED       BANGLADESH      0%                   (0%, 5%]          1.2237872   0.6801904   2.2018174
6-24 months                   ki0047075b-MAL-ED       BANGLADESH      >5%                  (0%, 5%]          0.5974026   0.2843963   1.2549034
6-24 months                   ki0047075b-MAL-ED       INDIA           (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED       INDIA           0%                   (0%, 5%]          1.3499319   0.8363180   2.1789753
6-24 months                   ki0047075b-MAL-ED       INDIA           >5%                  (0%, 5%]          1.3403527   0.8375120   2.1450982
6-24 months                   ki0047075b-MAL-ED       NEPAL           (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED       NEPAL           0%                   (0%, 5%]          2.6916667   1.1186644   6.4765353
6-24 months                   ki0047075b-MAL-ED       NEPAL           >5%                  (0%, 5%]          2.0843882   0.8335030   5.2125479
6-24 months                   ki1000109-ResPak        PAKISTAN        (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months                   ki1000109-ResPak        PAKISTAN        0%                   (0%, 5%]          0.6964167   0.3938602   1.2313919
6-24 months                   ki1000109-ResPak        PAKISTAN        >5%                  (0%, 5%]          0.8693564   0.6023725   1.2546733
6-24 months                   ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093-NIH-Birth     BANGLADESH      0%                   (0%, 5%]          0.9294997   0.6017131   1.4358499
6-24 months                   ki1017093-NIH-Birth     BANGLADESH      >5%                  (0%, 5%]          1.4628062   1.0472855   2.0431888
6-24 months                   ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093b-PROVIDE      BANGLADESH      0%                   (0%, 5%]          0.7034732   0.4568274   1.0832858
6-24 months                   ki1017093b-PROVIDE      BANGLADESH      >5%                  (0%, 5%]          0.5276237   0.3366459   0.8269425
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH      0%                   (0%, 5%]          1.2435378   0.7953804   1.9442095
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH      >5%                  (0%, 5%]          0.9010796   0.5360619   1.5146467
6-24 months                   ki1114097-CMIN          BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months                   ki1114097-CMIN          BANGLADESH      0%                   (0%, 5%]          1.3894796   0.8676799   2.2250758
6-24 months                   ki1114097-CMIN          BANGLADESH      >5%                  (0%, 5%]          1.4358583   0.9121036   2.2603673
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU   0%                   (0%, 5%]          1.0302836   0.7438346   1.4270433
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU   >5%                  (0%, 5%]          0.7710184   0.5518154   1.0772977
6-24 months                   ki1114097-CMIN          PERU            (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months                   ki1114097-CMIN          PERU            0%                   (0%, 5%]          0.6753769   0.2622370   1.7393959
6-24 months                   ki1114097-CMIN          PERU            >5%                  (0%, 5%]          0.7680000   0.3325746   1.7735091


### Parameter: PAR


agecat                        studyid                 country         intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ----------------------  --------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             NA                 0.0172112   -0.0403835    0.0748060
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA           (0%, 5%]             NA                 0.0336605   -0.0242185    0.0915396
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL           (0%, 5%]             NA                 0.0181229   -0.0527498    0.0889955
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU            (0%, 5%]             NA                 0.0124617   -0.0275263    0.0524497
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        (0%, 5%]             NA                -0.0350823   -0.1351767    0.0650121
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             NA                 0.0676238    0.0185212    0.1167265
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             NA                -0.0597333   -0.0973715   -0.0220951
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             NA                 0.0094336   -0.0329883    0.0518556
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH      (0%, 5%]             NA                 0.0764754   -0.0281069    0.1810577
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             NA                -0.0244668   -0.0661729    0.0172392
0-24 months (no birth wast)   ki1114097-CMIN          PERU            (0%, 5%]             NA                -0.0100279   -0.0392864    0.0192306
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             NA                 0.0112946   -0.0281980    0.0507872
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA           (0%, 5%]             NA                 0.0054957   -0.0383357    0.0493272
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        (0%, 5%]             NA                 0.0317696   -0.0494559    0.1129951
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             NA                 0.0106024   -0.0216660    0.0428709
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             NA                -0.0093069   -0.0315177    0.0129040
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             NA                -0.0081815   -0.0314321    0.0150692
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH      (0%, 5%]             NA                -0.0642230   -0.1451929    0.0167469
6-24 months                   ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             NA                -0.0123188   -0.0751373    0.0504996
6-24 months                   ki0047075b-MAL-ED       INDIA           (0%, 5%]             NA                 0.0396852   -0.0111617    0.0905321
6-24 months                   ki0047075b-MAL-ED       NEPAL           (0%, 5%]             NA                 0.0742441    0.0156499    0.1328383
6-24 months                   ki1000109-ResPak        PAKISTAN        (0%, 5%]             NA                -0.0564652   -0.1591940    0.0462637
6-24 months                   ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             NA                 0.0858845    0.0359618    0.1358073
6-24 months                   ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             NA                -0.0496117   -0.0849817   -0.0142418
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             NA                 0.0144835   -0.0245288    0.0534959
6-24 months                   ki1114097-CMIN          BANGLADESH      (0%, 5%]             NA                 0.0931370   -0.0100931    0.1963671
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             NA                -0.0194916   -0.0611448    0.0221615
6-24 months                   ki1114097-CMIN          PERU            (0%, 5%]             NA                -0.0100413   -0.0355664    0.0154838


### Parameter: PAF


agecat                        studyid                 country         intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ----------------------  --------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             NA                 0.0780441   -0.2242149    0.3056752
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA           (0%, 5%]             NA                 0.0930392   -0.0819429    0.2397215
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL           (0%, 5%]             NA                 0.0962525   -0.3699426    0.4038002
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU            (0%, 5%]             NA                 0.1881720   -0.6981454    0.6118915
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        (0%, 5%]             NA                -0.0766197   -0.3192264    0.1213714
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             NA                 0.2275656    0.0446936    0.3754308
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             NA                -0.3363670   -0.5635791   -0.1421723
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             NA                 0.0658608   -0.2820514    0.3193595
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH      (0%, 5%]             NA                 0.1782209   -0.1059574    0.3893790
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             NA                -0.1253581   -0.3603296    0.0690265
0-24 months (no birth wast)   ki1114097-CMIN          PERU            (0%, 5%]             NA                -0.1672093   -0.7697417    0.2301829
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             NA                 0.1557465   -0.6022666    0.5551527
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA           (0%, 5%]             NA                 0.0354331   -0.2927540    0.2803044
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        (0%, 5%]             NA                 0.1388638   -0.2995928    0.4293940
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             NA                 0.1339130   -0.3842293    0.4581052
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             NA                -0.1765719   -0.6786305    0.1753269
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             NA                -0.3063953   -1.5258573    0.3243210
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH      (0%, 5%]             NA                -0.5531465   -1.4109218   -0.0005567
6-24 months                   ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             NA                -0.0671937   -0.4708999    0.2257105
6-24 months                   ki0047075b-MAL-ED       INDIA           (0%, 5%]             NA                 0.1457190   -0.0614677    0.3124652
6-24 months                   ki0047075b-MAL-ED       NEPAL           (0%, 5%]             NA                 0.4846491   -0.0344946    0.7432693
6-24 months                   ki1000109-ResPak        PAKISTAN        (0%, 5%]             NA                -0.1546070   -0.4739255    0.0955327
6-24 months                   ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             NA                 0.2922234    0.1017634    0.4422987
6-24 months                   ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             NA                -0.3081941   -0.5447286   -0.1078787
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             NA                 0.1101352   -0.2400183    0.3614131
6-24 months                   ki1114097-CMIN          BANGLADESH      (0%, 5%]             NA                 0.2419641   -0.0792137    0.4675583
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             NA                -0.1027635   -0.3454809    0.0961690
6-24 months                   ki1114097-CMIN          PERU            (0%, 5%]             NA                -0.2388393   -1.0133269    0.2377180
