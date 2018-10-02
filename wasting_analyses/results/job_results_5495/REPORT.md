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

unadjusted

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
![](/tmp/62124899-dd81-43fd-a12b-80ac19d8bf90/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/62124899-dd81-43fd-a12b-80ac19d8bf90/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/62124899-dd81-43fd-a12b-80ac19d8bf90/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/62124899-dd81-43fd-a12b-80ac19d8bf90/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                 country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             NA                0.2346939   0.1506259   0.3187619
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH      0%                   NA                0.2352941   0.1449461   0.3256421
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH      >5%                  NA                0.1875000   0.1018075   0.2731925
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA           (0%, 5%]             NA                0.3281250   0.2466186   0.4096314
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA           0%                   NA                0.3898305   0.2651296   0.5145315
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA           >5%                  NA                0.4067797   0.2811783   0.5323810
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL           (0%, 5%]             NA                0.1710526   0.0862166   0.2558886
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL           0%                   NA                0.2168675   0.1280222   0.3057127
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL           >5%                  NA                0.1750000   0.0915628   0.2584372
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU            (0%, 5%]             NA                0.0537634   0.0078468   0.0996801
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU            0%                   NA                0.0674157   0.0152365   0.1195950
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU            >5%                  NA                0.0750000   0.0277960   0.1222040
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        (0%, 5%]             NA                0.4929577   0.3764532   0.6094622
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        0%                   NA                0.3508772   0.2267553   0.4749991
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        >5%                  NA                0.4827586   0.4012746   0.5642427
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             NA                0.2527473   0.1895567   0.3159378
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH      0%                   NA                0.2356688   0.1692252   0.3021124
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH      >5%                  NA                0.3653846   0.3068039   0.4239653
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             NA                0.2355212   0.1838067   0.2872357
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH      0%                   NA                0.1408451   0.0940951   0.1875950
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH      >5%                  NA                0.1441860   0.0971970   0.1911751
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             NA                0.1387283   0.0871858   0.1902709
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      0%                   NA                0.1565934   0.1192348   0.1939520
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      >5%                  NA                0.1244240   0.0804794   0.1683685
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH      (0%, 5%]             NA                0.3548387   0.2355186   0.4741588
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH      0%                   NA                0.4193548   0.3188783   0.5198314
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH      >5%                  NA                0.4778761   0.3856051   0.5701471
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             NA                0.2192308   0.1689141   0.2695474
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   0%                   NA                0.2064057   0.1590586   0.2537528
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   >5%                  NA                0.1698113   0.1315842   0.2080384
0-24 months (no birth wast)   ki1114097-CMIN          PERU            (0%, 5%]             NA                0.0700000   0.0346144   0.1053856
0-24 months (no birth wast)   ki1114097-CMIN          PERU            0%                   NA                0.0424528   0.0152937   0.0696120
0-24 months (no birth wast)   ki1114097-CMIN          PERU            >5%                  NA                0.0655738   0.0377742   0.0933734
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             NA                0.0612245   0.0136681   0.1087809
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH      0%                   NA                0.0714286   0.0162485   0.1266087
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH      >5%                  NA                0.0875000   0.0254625   0.1495375
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA           (0%, 5%]             NA                0.1496063   0.0874451   0.2117675
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA           0%                   NA                0.1525424   0.0606108   0.2444739
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA           >5%                  NA                0.1694915   0.0735611   0.2654219
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        (0%, 5%]             NA                0.1971831   0.1044649   0.2899013
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        0%                   NA                0.2500000   0.1363793   0.3636207
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        >5%                  NA                0.2361111   0.1666178   0.3056044
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
6-24 months                   ki0047075b-MAL-ED       INDIA           (0%, 5%]             NA                0.2301587   0.1565036   0.3038139
6-24 months                   ki0047075b-MAL-ED       INDIA           0%                   NA                0.3200000   0.1904258   0.4495742
6-24 months                   ki0047075b-MAL-ED       INDIA           >5%                  NA                0.3220339   0.2025518   0.4415160
6-24 months                   ki0047075b-MAL-ED       NEPAL           (0%, 5%]             NA                0.0789474   0.0181929   0.1397019
6-24 months                   ki0047075b-MAL-ED       NEPAL           0%                   NA                0.2125000   0.1226674   0.3023326
6-24 months                   ki0047075b-MAL-ED       NEPAL           >5%                  NA                0.1645570   0.0826205   0.2464934
6-24 months                   ki1000109-ResPak        PAKISTAN        (0%, 5%]             NA                0.4126984   0.2908637   0.5345331
6-24 months                   ki1000109-ResPak        PAKISTAN        0%                   NA                0.2894737   0.1449640   0.4339834
6-24 months                   ki1000109-ResPak        PAKISTAN        >5%                  NA                0.3643411   0.2811138   0.4475683
6-24 months                   ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             NA                0.2514620   0.1863749   0.3165491
6-24 months                   ki1017093-NIH-Birth     BANGLADESH      0%                   NA                0.2558140   0.1804510   0.3311769
6-24 months                   ki1017093-NIH-Birth     BANGLADESH      >5%                  NA                0.3443983   0.2843513   0.4044454
6-24 months                   ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             NA                0.2080000   0.1576470   0.2583530
6-24 months                   ki1017093b-PROVIDE      BANGLADESH      0%                   NA                0.1490683   0.0940093   0.2041274
6-24 months                   ki1017093b-PROVIDE      BANGLADESH      >5%                  NA                0.1127451   0.0693081   0.1561821
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             NA                0.1235294   0.0740328   0.1730260
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH      0%                   NA                0.1478261   0.1103481   0.1853040
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH      >5%                  NA                0.1116279   0.0695058   0.1537500
6-24 months                   ki1114097-CMIN          BANGLADESH      (0%, 5%]             NA                0.2881356   0.1723425   0.4039287
6-24 months                   ki1114097-CMIN          BANGLADESH      0%                   NA                0.4069767   0.3029409   0.5110126
6-24 months                   ki1114097-CMIN          BANGLADESH      >5%                  NA                0.4205607   0.3268395   0.5142820
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             NA                0.2094862   0.1593139   0.2596585
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU   0%                   NA                0.2072727   0.1593371   0.2552084
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU   >5%                  NA                0.1625344   0.1245597   0.2005092
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
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH      0%                   (0%, 5%]          1.0025575   0.5929982   1.6949827
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH      >5%                  (0%, 5%]          0.7989130   0.4470087   1.4278517
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA           (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA           0%                   (0%, 5%]          1.1880549   0.7924010   1.7812628
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA           >5%                  (0%, 5%]          1.2397094   0.8340952   1.8425708
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL           (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL           0%                   (0%, 5%]          1.2678406   0.6663308   2.4123450
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL           >5%                  (0%, 5%]          1.0230769   0.5141934   2.0355888
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU            (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU            0%                   (0%, 5%]          1.2539326   0.3960139   3.9704339
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU            >5%                  (0%, 5%]          1.3950000   0.4828664   4.0301519
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        0%                   (0%, 5%]          0.7117794   0.4651387   1.0892020
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        >5%                  (0%, 5%]          0.9793103   0.7324730   1.3093299
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH      0%                   (0%, 5%]          0.9324287   0.6396812   1.3591510
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH      >5%                  (0%, 5%]          1.4456522   1.0741780   1.9455903
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH      0%                   (0%, 5%]          0.5980143   0.4016721   0.8903310
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH      >5%                  (0%, 5%]          0.6121998   0.4132685   0.9068887
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      0%                   (0%, 5%]          1.1287775   0.7258573   1.7553569
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      >5%                  (0%, 5%]          0.8968894   0.5371695   1.4974985
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH      0%                   (0%, 5%]          1.1818182   0.7820471   1.7859465
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH      >5%                  (0%, 5%]          1.3467418   0.9138668   1.9846582
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   0%                   (0%, 5%]          0.9414997   0.6806039   1.3024045
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   >5%                  (0%, 5%]          0.7745780   0.5616234   1.0682798
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
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        0%                   (0%, 5%]          1.2678571   0.6592678   2.4382531
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        >5%                  (0%, 5%]          1.1974206   0.6875902   2.0852773
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
6-24 months                   ki0047075b-MAL-ED       INDIA           0%                   (0%, 5%]          1.3903448   0.8298084   2.3295241
6-24 months                   ki0047075b-MAL-ED       INDIA           >5%                  (0%, 5%]          1.3991818   0.8572015   2.2838383
6-24 months                   ki0047075b-MAL-ED       NEPAL           (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months                   ki0047075b-MAL-ED       NEPAL           0%                   (0%, 5%]          2.6916667   1.1186644   6.4765353
6-24 months                   ki0047075b-MAL-ED       NEPAL           >5%                  (0%, 5%]          2.0843882   0.8335030   5.2125479
6-24 months                   ki1000109-ResPak        PAKISTAN        (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months                   ki1000109-ResPak        PAKISTAN        0%                   (0%, 5%]          0.7014170   0.3927331   1.2527230
6-24 months                   ki1000109-ResPak        PAKISTAN        >5%                  (0%, 5%]          0.8828265   0.6078057   1.2822891
6-24 months                   ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093-NIH-Birth     BANGLADESH      0%                   (0%, 5%]          1.0173067   0.6872923   1.5057827
6-24 months                   ki1017093-NIH-Birth     BANGLADESH      >5%                  (0%, 5%]          1.3695841   1.0024290   1.8712154
6-24 months                   ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093b-PROVIDE      BANGLADESH      0%                   (0%, 5%]          0.7166746   0.4608184   1.1145876
6-24 months                   ki1017093b-PROVIDE      BANGLADESH      >5%                  (0%, 5%]          0.5420437   0.3438950   0.8543636
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH      0%                   (0%, 5%]          1.1966874   0.7448289   1.9226708
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH      >5%                  (0%, 5%]          0.9036545   0.5211557   1.5668859
6-24 months                   ki1114097-CMIN          BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months                   ki1114097-CMIN          BANGLADESH      0%                   (0%, 5%]          1.4124487   0.8772534   2.2741564
6-24 months                   ki1114097-CMIN          BANGLADESH      >5%                  (0%, 5%]          1.4595932   0.9218574   2.3109998
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU   0%                   (0%, 5%]          0.9894340   0.7092424   1.3803174
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU   >5%                  (0%, 5%]          0.7758719   0.5552393   1.0841762
6-24 months                   ki1114097-CMIN          PERU            (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months                   ki1114097-CMIN          PERU            0%                   (0%, 5%]          0.6753769   0.2622370   1.7393959
6-24 months                   ki1114097-CMIN          PERU            >5%                  (0%, 5%]          0.7680000   0.3325746   1.7735091


### Parameter: PAR


agecat                        studyid                 country         intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ----------------------  --------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             NA                -0.0141616   -0.0798945    0.0515714
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA           (0%, 5%]             NA                 0.0336636   -0.0242181    0.0915453
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL           (0%, 5%]             NA                 0.0172319   -0.0540892    0.0885530
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU            (0%, 5%]             NA                 0.0124617   -0.0275263    0.0524497
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        (0%, 5%]             NA                -0.0350823   -0.1351767    0.0650121
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             NA                 0.0444147   -0.0095132    0.0983426
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             NA                -0.0579375   -0.0963528   -0.0195223
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             NA                 0.0045078   -0.0409191    0.0499346
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH      (0%, 5%]             NA                 0.0742658   -0.0314435    0.1799750
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             NA                -0.0240553   -0.0658954    0.0177847
0-24 months (no birth wast)   ki1114097-CMIN          PERU            (0%, 5%]             NA                -0.0100279   -0.0392864    0.0192306
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             NA                 0.0112946   -0.0281980    0.0507872
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA           (0%, 5%]             NA                 0.0054957   -0.0383357    0.0493272
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        (0%, 5%]             NA                 0.0315992   -0.0496564    0.1128548
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             NA                 0.0106024   -0.0216660    0.0428709
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             NA                -0.0093069   -0.0315177    0.0129040
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             NA                -0.0081815   -0.0314321    0.0150692
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH      (0%, 5%]             NA                -0.0642230   -0.1451929    0.0167469
6-24 months                   ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             NA                -0.0123188   -0.0751373    0.0504996
6-24 months                   ki0047075b-MAL-ED       INDIA           (0%, 5%]             NA                 0.0421817   -0.0113050    0.0956683
6-24 months                   ki0047075b-MAL-ED       NEPAL           (0%, 5%]             NA                 0.0742441    0.0156499    0.1328383
6-24 months                   ki1000109-ResPak        PAKISTAN        (0%, 5%]             NA                -0.0474810   -0.1504418    0.0554798
6-24 months                   ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             NA                 0.0424382   -0.0126486    0.0975250
6-24 months                   ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             NA                -0.0470244   -0.0833440   -0.0107048
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             NA                 0.0079774   -0.0357341    0.0516890
6-24 months                   ki1114097-CMIN          BANGLADESH      (0%, 5%]             NA                 0.0967850   -0.0069123    0.2004824
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             NA                -0.0198116   -0.0616578    0.0220346
6-24 months                   ki1114097-CMIN          PERU            (0%, 5%]             NA                -0.0100413   -0.0355664    0.0154838


### Parameter: PAF


agecat                        studyid                 country         intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ----------------------  --------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             NA                -0.0642153   -0.4080184    0.1956396
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA           (0%, 5%]             NA                 0.0930478   -0.0819437    0.2397364
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL           (0%, 5%]             NA                 0.0915205   -0.3777905    0.4009720
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU            (0%, 5%]             NA                 0.1881720   -0.6981454    0.6118915
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        (0%, 5%]             NA                -0.0766197   -0.3192264    0.1213714
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             NA                 0.1494629   -0.0525025    0.3126730
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             NA                -0.3262548   -0.5579920   -0.1289865
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             NA                 0.0314708   -0.3437203    0.3019017
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH      (0%, 5%]             NA                 0.1730715   -0.1142847    0.3863232
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             NA                -0.1232498   -0.3591040    0.0716751
0-24 months (no birth wast)   ki1114097-CMIN          PERU            (0%, 5%]             NA                -0.1672093   -0.7697417    0.2301829
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             NA                 0.1557465   -0.6022666    0.5551527
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA           (0%, 5%]             NA                 0.0354331   -0.2927540    0.2803044
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        (0%, 5%]             NA                 0.1381190   -0.3004533    0.4287847
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             NA                 0.1339130   -0.3842293    0.4581052
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             NA                -0.1765719   -0.6786305    0.1753269
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             NA                -0.3063953   -1.5258573    0.3243210
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH      (0%, 5%]             NA                -0.5531465   -1.4109218   -0.0005567
6-24 months                   ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             NA                -0.0671937   -0.4708999    0.2257105
6-24 months                   ki0047075b-MAL-ED       INDIA           (0%, 5%]             NA                 0.1548859   -0.0649620    0.3293490
6-24 months                   ki0047075b-MAL-ED       NEPAL           (0%, 5%]             NA                 0.4846491   -0.0344946    0.7432693
6-24 months                   ki1000109-ResPak        PAKISTAN        (0%, 5%]             NA                -0.1300076   -0.4505436    0.1196975
6-24 months                   ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             NA                 0.1443966   -0.0648117    0.3125008
6-24 months                   ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             NA                -0.2921212   -0.5349162   -0.0877319
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             NA                 0.0606618   -0.3379372    0.3405099
6-24 months                   ki1114097-CMIN          BANGLADESH      (0%, 5%]             NA                 0.2514416   -0.0725542    0.4775651
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             NA                -0.1044507   -0.3483816    0.0953514
6-24 months                   ki1114097-CMIN          PERU            (0%, 5%]             NA                -0.2388393   -1.0133269    0.2377180
