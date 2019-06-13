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
![](/tmp/29110035-6c01-4100-8adc-c42fc6225c0a/0cc1ab87-6beb-4ba8-accf-157c81c61465/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/29110035-6c01-4100-8adc-c42fc6225c0a/0cc1ab87-6beb-4ba8-accf-157c81c61465/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                        studyid                 country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH      optimal              NA                0.1903881   0.1032799   0.2774962
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA           optimal              NA                0.3299642   0.2383349   0.4215935
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL           optimal              NA                0.2491665   0.1577825   0.3405506
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU            optimal              NA                0.0923044   0.0303859   0.1542230
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        optimal              NA                0.3558790   0.2336866   0.4780713
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH      optimal              NA                0.2788930   0.2079383   0.3498477
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH      optimal              NA                0.1809547   0.1309659   0.2309436
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      optimal              NA                0.1722665   0.1208726   0.2236604
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH      optimal              NA                0.3558045   0.2354722   0.4761369
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   optimal              NA                0.1683513   0.1301283   0.2065744
0-24 months (no birth wast)   ki1114097-CMIN          PERU            optimal              NA                0.0421780   0.0148812   0.0694747
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH      optimal              NA                0.0613457   0.0127955   0.1098960
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA           optimal              NA                0.2548805   0.1326429   0.3771182
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        optimal              NA                0.1931760   0.0997909   0.2865612
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH      optimal              NA                0.0340901   0.0047473   0.0634330
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH      optimal              NA                0.0379685   0.0120096   0.0639275
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH      optimal              NA                0.0408709   0.0177931   0.0639486
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH      optimal              NA                0.0797816   0.0225719   0.1369913
6-24 months                   ki0047075b-MAL-ED       BANGLADESH      optimal              NA                0.1176797   0.0440871   0.1912722
6-24 months                   ki0047075b-MAL-ED       INDIA           optimal              NA                0.2310350   0.1570281   0.3050419
6-24 months                   ki0047075b-MAL-ED       NEPAL           optimal              NA                0.0803751   0.0184095   0.1423407
6-24 months                   ki1000109-ResPak        PAKISTAN        optimal              NA                0.2669613   0.1210505   0.4128720
6-24 months                   ki1017093-NIH-Birth     BANGLADESH      optimal              NA                0.3053730   0.2306679   0.3800782
6-24 months                   ki1017093b-PROVIDE      BANGLADESH      optimal              NA                0.1190541   0.0728579   0.1652503
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH      optimal              NA                0.1408164   0.0934262   0.1882066
6-24 months                   ki1114097-CMIN          BANGLADESH      optimal              NA                0.2876719   0.1695465   0.4057974
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU   optimal              NA                0.1675709   0.1287712   0.2063707
6-24 months                   ki1114097-CMIN          PERU            optimal              NA                0.0667779   0.0355606   0.0979951


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
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA           observed             NA                0.1576764   0.1115695   0.2037832
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
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH      observed             optimal           1.1672065   0.7904819   1.7234691
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA           observed             optimal           1.1145713   0.9007564   1.3791401
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL           observed             optimal           0.7588324   0.5649323   1.0192844
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU            observed             optimal           0.7246634   0.4451221   1.1797595
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        observed             optimal           1.2866045   0.9433225   1.7548092
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH      observed             optimal           1.0690747   0.8589845   1.3305487
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH      observed             optimal           0.9813709   0.7795161   1.2354957
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      observed             optimal           0.8314794   0.6476606   1.0674697
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH      observed             optimal           1.2289398   0.9106999   1.6583871
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   observed             optimal           1.1593341   0.9675283   1.3891642
0-24 months (no birth wast)   ki1114097-CMIN          PERU            observed             optimal           1.4238673   0.8017655   2.5286672
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH      observed             optimal           1.1912305   0.6198972   2.2891381
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA           observed             optimal           0.6186285   0.4453638   0.8593002
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        observed             optimal           1.1843203   0.7755997   1.8084259
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH      observed             optimal           2.3305075   1.0363805   5.2406095
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH      observed             optimal           1.3882189   0.7604938   2.5340793
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH      observed             optimal           0.6533328   0.4482479   0.9522493
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH      observed             optimal           1.4830558   0.7920844   2.7767929
6-24 months                   ki0047075b-MAL-ED       BANGLADESH      observed             optimal           1.5579015   0.8960050   2.7087538
6-24 months                   ki0047075b-MAL-ED       INDIA           observed             optimal           1.1787843   0.9354116   1.4854771
6-24 months                   ki0047075b-MAL-ED       NEPAL           observed             optimal           1.9059575   0.9481249   3.8314295
6-24 months                   ki1000109-ResPak        PAKISTAN        observed             optimal           1.3680538   0.8241361   2.2709491
6-24 months                   ki1017093-NIH-Birth     BANGLADESH      observed             optimal           0.9624300   0.7822451   1.1841193
6-24 months                   ki1017093b-PROVIDE      BANGLADESH      observed             optimal           1.3521218   0.9679509   1.8887666
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH      observed             optimal           0.9338890   0.7033045   1.2400726
6-24 months                   ki1114097-CMIN          BANGLADESH      observed             optimal           1.3380543   0.9259867   1.9334936
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU   observed             optimal           1.1319058   0.9419734   1.3601349
6-24 months                   ki1114097-CMIN          PERU            observed             optimal           0.6295805   0.4526033   0.8757593


### Parameter: PAR


agecat                        studyid                 country         intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ----------------------  --------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH      optimal              NA                 0.0318341   -0.0424839    0.1061521
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA           optimal              NA                 0.0378044   -0.0323674    0.1079763
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL           optimal              NA                -0.0600909   -0.1330711    0.0128894
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU            optimal              NA                -0.0254148   -0.0724935    0.0216639
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        optimal              NA                 0.1019965   -0.0084422    0.2124352
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH      optimal              NA                 0.0192645   -0.0417288    0.0802577
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH      optimal              NA                -0.0033710   -0.0450249    0.0382829
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      optimal              NA                -0.0290305   -0.0721400    0.0140791
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH      optimal              NA                 0.0814578   -0.0249879    0.1879036
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   optimal              NA                 0.0268241   -0.0037210    0.0573692
0-24 months (no birth wast)   ki1114097-CMIN          PERU            optimal              NA                 0.0178779   -0.0068192    0.0425750
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH      optimal              NA                 0.0117312   -0.0285578    0.0520202
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA           optimal              NA                -0.0972042   -0.1906268   -0.0037816
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        optimal              NA                 0.0356063   -0.0462586    0.1174711
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH      optimal              NA                 0.0453572    0.0151838    0.0755306
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH      optimal              NA                 0.0147401   -0.0085376    0.0380178
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH      optimal              NA                -0.0141686   -0.0305608    0.0022237
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH      optimal              NA                 0.0385390   -0.0127682    0.0898462
6-24 months                   ki0047075b-MAL-ED       BANGLADESH      optimal              NA                 0.0656537   -0.0009912    0.1322985
6-24 months                   ki0047075b-MAL-ED       INDIA           optimal              NA                 0.0413054   -0.0123512    0.0949621
6-24 months                   ki0047075b-MAL-ED       NEPAL           optimal              NA                 0.0728164    0.0133452    0.1322876
6-24 months                   ki1000109-ResPak        PAKISTAN        optimal              NA                 0.0982561   -0.0368495    0.2333617
6-24 months                   ki1017093-NIH-Birth     BANGLADESH      optimal              NA                -0.0114729   -0.0747864    0.0518407
6-24 months                   ki1017093b-PROVIDE      BANGLADESH      optimal              NA                 0.0419215    0.0018000    0.0820431
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH      optimal              NA                -0.0093095   -0.0492462    0.0306272
6-24 months                   ki1114097-CMIN          BANGLADESH      optimal              NA                 0.0972487   -0.0085961    0.2030935
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU   optimal              NA                 0.0221036   -0.0087361    0.0529432
6-24 months                   ki1114097-CMIN          PERU            optimal              NA                -0.0247358   -0.0477554   -0.0017162


### Parameter: PAF


agecat                        studyid                 country         intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  ----------------------  --------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH      optimal              NA                 0.1432536   -0.2650511    0.4197749
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA           optimal              NA                 0.1027941   -0.1101781    0.2749105
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL           optimal              NA                -0.3178140   -0.7701237    0.0189195
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU            optimal              NA                -0.3799511   -1.2465747    0.1523696
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        optimal              NA                 0.2227603   -0.0600828    0.4301375
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH      optimal              NA                 0.0646117   -0.1641653    0.2484304
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH      optimal              NA                -0.0189828   -0.2828471    0.1906082
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      optimal              NA                -0.2026756   -0.5440185    0.0632052
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH      optimal              NA                 0.1862905   -0.0980566    0.3970045
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   optimal              NA                 0.1374359   -0.0335615    0.2801427
0-24 months (no birth wast)   ki1114097-CMIN          PERU            optimal              NA                 0.2976874   -0.2472474    0.6045347
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH      optimal              NA                 0.1605319   -0.6131708    0.5631544
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA           optimal              NA                -0.6164791   -1.2453555   -0.1637377
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        optimal              NA                 0.1556338   -0.2893250    0.4470329
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH      optimal              NA                 0.5709089    0.0351034    0.8091825
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH      optimal              NA                 0.2796525   -0.3149350    0.6053794
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH      optimal              NA                -0.5306135   -1.2309083   -0.0501452
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH      optimal              NA                 0.3257165   -0.2624917    0.6398723
6-24 months                   ki0047075b-MAL-ED       BANGLADESH      optimal              NA                 0.3581109   -0.1160652    0.6308265
6-24 months                   ki0047075b-MAL-ED       INDIA           optimal              NA                 0.1516684   -0.0690481    0.3268156
6-24 months                   ki0047075b-MAL-ED       NEPAL           optimal              NA                 0.4753293   -0.0547133    0.7390008
6-24 months                   ki1000109-ResPak        PAKISTAN        optimal              NA                 0.2690346   -0.2133918    0.5596555
6-24 months                   ki1017093-NIH-Birth     BANGLADESH      optimal              NA                -0.0390366   -0.2783716    0.1554905
6-24 months                   ki1017093b-PROVIDE      BANGLADESH      optimal              NA                 0.2604217   -0.0331102    0.4705540
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH      optimal              NA                -0.0707911   -0.4218593    0.1935956
6-24 months                   ki1114097-CMIN          BANGLADESH      optimal              NA                 0.2526462   -0.0799292    0.4828015
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU   optimal              NA                 0.1165343   -0.0616011    0.2647788
6-24 months                   ki1114097-CMIN          PERU            optimal              NA                -0.5883594   -1.2094404   -0.1418663
