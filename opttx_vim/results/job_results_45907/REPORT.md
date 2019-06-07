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
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]              0       75   261
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]              1       23   261
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     0%                    0       63   261
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     0%                    1       20   261
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     >5%                   0       65   261
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     >5%                   1       15   261
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]              0       14   229
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]              1        1   229
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         0%                    0      202   229
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         0%                    1       10   229
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         >5%                   0        1   229
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         >5%                   1        1   229
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          (0%, 5%]              0       86   242
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          (0%, 5%]              1       42   242
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          0%                    0       32   242
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          0%                    1       23   242
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          >5%                   0       35   242
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          >5%                   1       24   242
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]              0       63   238
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]              1       13   238
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          0%                    0       64   238
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          0%                    1       18   238
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          >5%                   0       66   238
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          >5%                   1       14   238
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           (0%, 5%]              0       88   299
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           (0%, 5%]              1        5   299
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           0%                    0       80   299
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           0%                    1        6   299
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           >5%                   0      111   299
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           >5%                   1        9   299
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]              0       52   294
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]              1        7   294
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                    0      189   294
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                    1       36   294
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                   0        9   294
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                   1        1   294
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
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]              0      136   597
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]              1       46   597
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     0%                    0      118   597
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     0%                    1       37   597
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     >5%                   0      165   597
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     >5%                   1       95   597
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
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH                     (0%, 5%]              0       40   263
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH                     (0%, 5%]              1       22   263
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH                     0%                    0       50   263
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH                     0%                    1       39   263
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH                     >5%                   0       58   263
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH                     >5%                   1       54   263
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
0-24 months (no birth wast)   ki1114097-CMIN          PERU                           (0%, 5%]              0      186   716
0-24 months (no birth wast)   ki1114097-CMIN          PERU                           (0%, 5%]              1       14   716
0-24 months (no birth wast)   ki1114097-CMIN          PERU                           0%                    0      202   716
0-24 months (no birth wast)   ki1114097-CMIN          PERU                           0%                    1        9   716
0-24 months (no birth wast)   ki1114097-CMIN          PERU                           >5%                   0      285   716
0-24 months (no birth wast)   ki1114097-CMIN          PERU                           >5%                   1       20   716
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           (0%, 5%]              0       42   215
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           (0%, 5%]              1        1   215
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           0%                    0      110   215
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           0%                    1        5   215
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           >5%                   0       56   215
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           >5%                   1        1   215
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]              0       92   260
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]              1        6   260
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     0%                    0       76   260
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     0%                    1        6   260
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     >5%                   0       73   260
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     >5%                   1        7   260
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]              0       14   229
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]              1        1   229
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         0%                    0      206   229
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         0%                    1        6   229
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         >5%                   0        2   229
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         >5%                   1        0   229
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          (0%, 5%]              0      108   241
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          (0%, 5%]              1       19   241
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          0%                    0       46   241
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          0%                    1        9   241
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          >5%                   0       49   241
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          >5%                   1       10   241
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]              0       68   236
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]              1        8   236
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          0%                    0       75   236
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          0%                    1        5   236
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          >5%                   0       78   236
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          >5%                   1        2   236
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           (0%, 5%]              0       92   299
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           (0%, 5%]              1        1   299
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           0%                    0       86   299
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           0%                    1        0   299
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           >5%                   0      116   299
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           >5%                   1        4   299
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]              0       56   293
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]              1        3   293
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                    0      215   293
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                    1        9   293
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                   0       10   293
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                   1        0   293
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
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]              0      163   579
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]              1       12   579
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     0%                    0      145   579
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     0%                    1        5   579
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     >5%                   0      225   579
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     >5%                   1       29   579
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
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH                     (0%, 5%]              0       50   262
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH                     (0%, 5%]              1       11   262
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH                     0%                    0       82   262
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH                     0%                    1        7   262
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH                     >5%                   0       99   262
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH                     >5%                   1       13   262
0-6 months (no birth wast)    ki1114097-CMIN          BRAZIL                         (0%, 5%]              0       37   101
0-6 months (no birth wast)    ki1114097-CMIN          BRAZIL                         (0%, 5%]              1        1   101
0-6 months (no birth wast)    ki1114097-CMIN          BRAZIL                         0%                    0       36   101
0-6 months (no birth wast)    ki1114097-CMIN          BRAZIL                         0%                    1        0   101
0-6 months (no birth wast)    ki1114097-CMIN          BRAZIL                         >5%                   0       27   101
0-6 months (no birth wast)    ki1114097-CMIN          BRAZIL                         >5%                   1        0   101
0-6 months (no birth wast)    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]              0      237   825
0-6 months (no birth wast)    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]              1        6   825
0-6 months (no birth wast)    ki1114097-CMIN          GUINEA-BISSAU                  0%                    0      245   825
0-6 months (no birth wast)    ki1114097-CMIN          GUINEA-BISSAU                  0%                    1        4   825
0-6 months (no birth wast)    ki1114097-CMIN          GUINEA-BISSAU                  >5%                   0      323   825
0-6 months (no birth wast)    ki1114097-CMIN          GUINEA-BISSAU                  >5%                   1       10   825
0-6 months (no birth wast)    ki1114097-CMIN          PERU                           (0%, 5%]              0      194   694
0-6 months (no birth wast)    ki1114097-CMIN          PERU                           (0%, 5%]              1        4   694
0-6 months (no birth wast)    ki1114097-CMIN          PERU                           0%                    0      197   694
0-6 months (no birth wast)    ki1114097-CMIN          PERU                           0%                    1        3   694
0-6 months (no birth wast)    ki1114097-CMIN          PERU                           >5%                   0      285   694
0-6 months (no birth wast)    ki1114097-CMIN          PERU                           >5%                   1       11   694
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
![](/tmp/ffd8d9d0-a967-427f-95f6-c8b67dba1f0f/5ce99ed5-687b-4cdf-b3d8-4cef6a8f48ba/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ffd8d9d0-a967-427f-95f6-c8b67dba1f0f/5ce99ed5-687b-4cdf-b3d8-4cef6a8f48ba/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                        studyid                 country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH      optimal              NA                0.2558358   0.1589698   0.3527018
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA           optimal              NA                0.3083008   0.2146426   0.4019590
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL           optimal              NA                0.2513026   0.1627442   0.3398609
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU            optimal              NA                0.0778751   0.0227750   0.1329752
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        optimal              NA                0.3446822   0.2189964   0.4703679
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH      optimal              NA                0.3007144   0.2297953   0.3716336
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH      optimal              NA                0.1624060   0.1135211   0.2112908
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      optimal              NA                0.1232536   0.0795732   0.1669340
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH      optimal              NA                0.3547508   0.2305631   0.4789386
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   optimal              NA                0.1857901   0.1460489   0.2255314
0-24 months (no birth wast)   ki1114097-CMIN          PERU            optimal              NA                0.0428541   0.0154143   0.0702939
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH      optimal              NA                0.1017399   0.0412577   0.1622221
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA           optimal              NA                0.2504861   0.1574226   0.3435495
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        optimal              NA                0.2012047   0.1046746   0.2977348
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH      optimal              NA                0.0334195   0.0044435   0.0623955
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH      optimal              NA                0.0372322   0.0115954   0.0628690
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH      optimal              NA                0.0220257   0.0068542   0.0371973
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH      optimal              NA                0.0784351   0.0220964   0.1347738
6-24 months                   ki0047075b-MAL-ED       BANGLADESH      optimal              NA                0.1150933   0.0428211   0.1873656
6-24 months                   ki0047075b-MAL-ED       INDIA           optimal              NA                0.2238577   0.1470516   0.3006637
6-24 months                   ki0047075b-MAL-ED       NEPAL           optimal              NA                0.0787444   0.0172493   0.1402394
6-24 months                   ki1000109-ResPak        PAKISTAN        optimal              NA                0.2681843   0.1254267   0.4109420
6-24 months                   ki1017093-NIH-Birth     BANGLADESH      optimal              NA                0.3305187   0.2526132   0.4084241
6-24 months                   ki1017093b-PROVIDE      BANGLADESH      optimal              NA                0.1169887   0.0722048   0.1617726
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH      optimal              NA                0.1278442   0.0811289   0.1745595
6-24 months                   ki1114097-CMIN          BANGLADESH      optimal              NA                0.2891445   0.1709632   0.4073258
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU   optimal              NA                0.1728552   0.1329857   0.2127246
6-24 months                   ki1114097-CMIN          PERU            optimal              NA                0.0584487   0.0272681   0.0896294


### Parameter: E(Y)


agecat                        studyid                 country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH      observed             NA                0.2222222   0.1716883   0.2727561
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA           observed             NA                0.3677686   0.3068900   0.4286472
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL           observed             NA                0.1890756   0.1392237   0.2389275
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU            observed             NA                0.0668896   0.0385244   0.0952548
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        observed             NA                0.4578755   0.3986666   0.5170843
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH      observed             NA                0.2981575   0.2614320   0.3348829
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH      observed             NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      observed             NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH      observed             NA                0.4372624   0.3771974   0.4973274
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   observed             NA                0.1951754   0.1694388   0.2209121
0-24 months (no birth wast)   ki1114097-CMIN          PERU            observed             NA                0.0600559   0.0426409   0.0774709
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH      observed             NA                0.0730769   0.0413805   0.1047733
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA           observed             NA                0.1576763   0.1115695   0.2037832
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        observed             NA                0.2287823   0.1786790   0.2788855
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH      observed             NA                0.0794473   0.0574004   0.1014943
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH      observed             NA                0.0527086   0.0359384   0.0694789
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH      observed             NA                0.0267023   0.0151493   0.0382553
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH      observed             NA                0.1183206   0.0791362   0.1575050
6-24 months                   ki0047075b-MAL-ED       BANGLADESH      observed             NA                0.1833333   0.1342773   0.2323893
6-24 months                   ki0047075b-MAL-ED       INDIA           observed             NA                0.2723404   0.2153029   0.3293779
6-24 months                   ki0047075b-MAL-ED       NEPAL           observed             NA                0.1531915   0.1070438   0.1993392
6-24 months                   ki1000109-ResPak        PAKISTAN        observed             NA                0.3652174   0.3028556   0.4275792
6-24 months                   ki1017093-NIH-Birth     BANGLADESH      observed             NA                0.2939002   0.2554778   0.3323226
6-24 months                   ki1017093b-PROVIDE      BANGLADESH      observed             NA                0.1609756   0.1319065   0.1900447
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH      observed             NA                0.1315068   0.1069744   0.1560393
6-24 months                   ki1114097-CMIN          BANGLADESH      observed             NA                0.3849206   0.3247254   0.4451159
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU   observed             NA                0.1896745   0.1639180   0.2154311
6-24 months                   ki1114097-CMIN          PERU            observed             NA                0.0420420   0.0267891   0.0572949


### Parameter: RR


agecat                        studyid                 country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH      observed             optimal           0.8686126   0.6404080   1.1781362
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA           observed             optimal           1.1928890   0.9286135   1.5323749
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL           observed             optimal           0.7523824   0.5620052   1.0072493
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU            observed             optimal           0.8589348   0.4844755   1.5228201
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        observed             optimal           1.3283990   0.9552549   1.8473017
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH      observed             optimal           0.9914970   0.8102280   1.2133205
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH      observed             optimal           1.0934554   0.8482416   1.4095567
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      observed             optimal           1.1621249   0.8556614   1.5783514
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH      observed             optimal           1.2325901   0.9035208   1.6815088
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   observed             optimal           1.0505156   0.8877699   1.2430957
0-24 months (no birth wast)   ki1114097-CMIN          PERU            observed             optimal           1.4014033   0.7939992   2.4734675
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH      observed             optimal           0.7182719   0.4622219   1.1161620
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA           observed             optimal           0.6294815   0.4749904   0.8342209
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        observed             optimal           1.1370623   0.7468883   1.7310631
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH      observed             optimal           2.3772735   1.0507714   5.3783621
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH      observed             optimal           1.4156749   0.7723216   2.5949493
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH      observed             optimal           1.2123211   0.7115135   2.0656284
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH      observed             optimal           1.5085160   0.8048585   2.8273546
6-24 months                   ki0047075b-MAL-ED       BANGLADESH      observed             optimal           1.5929101   0.9143475   2.7750528
6-24 months                   ki0047075b-MAL-ED       INDIA           observed             optimal           1.2165785   0.9383185   1.5773572
6-24 months                   ki0047075b-MAL-ED       NEPAL           observed             optimal           1.9454277   0.9586965   3.9477445
6-24 months                   ki1000109-ResPak        PAKISTAN        observed             optimal           1.3618148   0.8312539   2.2310147
6-24 months                   ki1017093-NIH-Birth     BANGLADESH      observed             optimal           0.8892090   0.7292600   1.0842398
6-24 months                   ki1017093b-PROVIDE      BANGLADESH      observed             optimal           1.3759931   0.9903546   1.9117970
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH      observed             optimal           1.0286494   0.7557847   1.4000278
6-24 months                   ki1114097-CMIN          BANGLADESH      observed             optimal           1.3312396   0.9232743   1.9194719
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU   observed             optimal           1.0973031   0.9142629   1.3169888
6-24 months                   ki1114097-CMIN          PERU            observed             optimal           0.7192978   0.4888983   1.0582759


### Parameter: PAR


agecat                        studyid                 country         intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ----------------------  --------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH      optimal              NA                -0.0336136   -0.1118952    0.0446680
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA           optimal              NA                 0.0594678   -0.0181129    0.1370485
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL           optimal              NA                -0.0622269   -0.1341157    0.0096618
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU            optimal              NA                -0.0109855   -0.0557536    0.0337827
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        optimal              NA                 0.1131933   -0.0001198    0.2265064
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH      optimal              NA                -0.0025570   -0.0632701    0.0581561
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH      optimal              NA                 0.0151777   -0.0261292    0.0564846
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      optimal              NA                 0.0199825   -0.0178660    0.0578309
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH      optimal              NA                 0.0825115   -0.0272876    0.1923106
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   optimal              NA                 0.0093853   -0.0219111    0.0406817
0-24 months (no birth wast)   ki1114097-CMIN          PERU            optimal              NA                 0.0172018   -0.0076051    0.0420087
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH      optimal              NA                -0.0286630   -0.0742829    0.0169569
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA           optimal              NA                -0.0928097   -0.1641518   -0.0214676
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        optimal              NA                 0.0275776   -0.0570193    0.1121744
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH      optimal              NA                 0.0460278    0.0161112    0.0759444
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH      optimal              NA                 0.0154765   -0.0075446    0.0384975
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH      optimal              NA                 0.0046765   -0.0072198    0.0165729
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH      optimal              NA                 0.0398855   -0.0107714    0.0905424
6-24 months                   ki0047075b-MAL-ED       BANGLADESH      optimal              NA                 0.0682400    0.0026597    0.1338203
6-24 months                   ki0047075b-MAL-ED       INDIA           optimal              NA                 0.0484828   -0.0099428    0.1069084
6-24 months                   ki0047075b-MAL-ED       NEPAL           optimal              NA                 0.0744471    0.0152809    0.1336133
6-24 months                   ki1000109-ResPak        PAKISTAN        optimal              NA                 0.0970331   -0.0353558    0.2294219
6-24 months                   ki1017093-NIH-Birth     BANGLADESH      optimal              NA                -0.0366185   -0.1022566    0.0290197
6-24 months                   ki1017093b-PROVIDE      BANGLADESH      optimal              NA                 0.0439869    0.0050819    0.0828920
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH      optimal              NA                 0.0036627   -0.0357286    0.0430539
6-24 months                   ki1114097-CMIN          BANGLADESH      optimal              NA                 0.0957761   -0.0099561    0.2015083
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU   optimal              NA                 0.0168193   -0.0147410    0.0483796
6-24 months                   ki1114097-CMIN          PERU            optimal              NA                -0.0164067   -0.0398262    0.0070129


### Parameter: PAF


agecat                        studyid                 country         intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ----------------------  --------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH      optimal              NA                -0.1512612   -0.5615045    0.1512017
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA           optimal              NA                 0.1616990   -0.0768742    0.3474182
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL           optimal              NA                -0.3291113   -0.7793430    0.0071971
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU            optimal              NA                -0.1642327   -1.0640878    0.3433236
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        optimal              NA                 0.2472141   -0.0468410    0.4586699
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH      optimal              NA                -0.0085760   -0.2342205    0.1758154
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH      optimal              NA                 0.0854679   -0.1789094    0.2905571
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      optimal              NA                 0.1395073   -0.1686866    0.3664275
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH      optimal              NA                 0.1887003   -0.1067813    0.4052960
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   optimal              NA                 0.0480864   -0.1264180    0.1955567
0-24 months (no birth wast)   ki1114097-CMIN          PERU            optimal              NA                 0.2864296   -0.2594471    0.5957093
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH      optimal              NA                -0.3922305   -1.1634631    0.1040727
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA           optimal              NA                -0.5886092   -1.1053058   -0.1987233
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        optimal              NA                 0.1205407   -0.3388883    0.4223203
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH      optimal              NA                 0.5793500    0.0483183    0.8140698
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH      optimal              NA                 0.2936231   -0.2947974    0.6146360
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH      optimal              NA                 0.1751360   -0.4054547    0.5158858
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH      optimal              NA                 0.3370968   -0.2424544    0.6463125
6-24 months                   ki0047075b-MAL-ED       BANGLADESH      optimal              NA                 0.3722182   -0.0936761    0.6396465
6-24 months                   ki0047075b-MAL-ED       INDIA           optimal              NA                 0.1780227   -0.0657363    0.3660282
6-24 months                   ki0047075b-MAL-ED       NEPAL           optimal              NA                 0.4859742   -0.0430830    0.7466908
6-24 months                   ki1000109-ResPak        PAKISTAN        optimal              NA                 0.2656858   -0.2030019    0.5517735
6-24 months                   ki1017093-NIH-Birth     BANGLADESH      optimal              NA                -0.1245950   -0.3712531    0.0776948
6-24 months                   ki1017093b-PROVIDE      BANGLADESH      optimal              NA                 0.2732522   -0.0097393    0.4769319
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH      optimal              NA                 0.0278515   -0.3231282    0.2857285
6-24 months                   ki1114097-CMIN          BANGLADESH      optimal              NA                 0.2488204   -0.0831018    0.4790234
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU   optimal              NA                 0.0886747   -0.0937773    0.2406921
6-24 months                   ki1114097-CMIN          PERU            optimal              NA                -0.3902449   -1.0454154    0.0550669
