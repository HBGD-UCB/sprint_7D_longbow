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
![](/tmp/fe3aa112-91a7-44be-95c2-8717f926d414/34c208b8-7717-46c9-8eb7-e8a835b30b82/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fe3aa112-91a7-44be-95c2-8717f926d414/34c208b8-7717-46c9-8eb7-e8a835b30b82/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fe3aa112-91a7-44be-95c2-8717f926d414/34c208b8-7717-46c9-8eb7-e8a835b30b82/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fe3aa112-91a7-44be-95c2-8717f926d414/34c208b8-7717-46c9-8eb7-e8a835b30b82/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                 country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             NA                0.2346939   0.1506246   0.3187631
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH      0%                   NA                0.2409639   0.1487811   0.3331466
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH      >5%                  NA                0.1875000   0.1018063   0.2731937
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA           (0%, 5%]             NA                0.3281250   0.2466159   0.4096341
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA           0%                   NA                0.4181818   0.2875521   0.5488116
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA           >5%                  NA                0.4067797   0.2811741   0.5323852
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL           (0%, 5%]             NA                0.1710526   0.0862159   0.2558894
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL           0%                   NA                0.2195122   0.1297346   0.3092898
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL           >5%                  NA                0.1750000   0.0915621   0.2584379
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU            (0%, 5%]             NA                0.0537634   0.0078460   0.0996809
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU            0%                   NA                0.0697674   0.0158352   0.1236997
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU            >5%                  NA                0.0750000   0.0277952   0.1222048
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        (0%, 5%]             NA                0.4929577   0.3764532   0.6094622
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        0%                   NA                0.3508772   0.2267553   0.4749991
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        >5%                  NA                0.4827586   0.4012746   0.5642427
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             NA                0.2527473   0.1895565   0.3159380
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH      0%                   NA                0.2387097   0.1715426   0.3058768
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH      >5%                  NA                0.3653846   0.3068037   0.4239655
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             NA                0.2355212   0.1838067   0.2872357
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH      0%                   NA                0.1408451   0.0940951   0.1875950
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH      >5%                  NA                0.1441860   0.0971970   0.1911751
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             NA                0.1387283   0.0871858   0.1902709
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      0%                   NA                0.1565934   0.1192348   0.1939520
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      >5%                  NA                0.1244240   0.0804794   0.1683685
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH      (0%, 5%]             NA                0.3548387   0.2355143   0.4741631
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH      0%                   NA                0.4382022   0.3349243   0.5414802
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH      >5%                  NA                0.4821429   0.3894259   0.5748598
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             NA                0.2192308   0.1689141   0.2695474
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   0%                   NA                0.2064057   0.1590586   0.2537528
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   >5%                  NA                0.1698113   0.1315842   0.2080384
0-24 months (no birth wast)   ki1114097-CMIN          PERU            (0%, 5%]             NA                0.0700000   0.0346144   0.1053856
0-24 months (no birth wast)   ki1114097-CMIN          PERU            0%                   NA                0.0426540   0.0153690   0.0699391
0-24 months (no birth wast)   ki1114097-CMIN          PERU            >5%                  NA                0.0655738   0.0377741   0.0933734
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             NA                0.0612245   0.0136674   0.1087816
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH      0%                   NA                0.0731707   0.0166970   0.1296445
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH      >5%                  NA                0.0875000   0.0254616   0.1495384
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA           (0%, 5%]             NA                0.1496063   0.0874430   0.2117696
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA           0%                   NA                0.1636364   0.0656632   0.2616095
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA           >5%                  NA                0.1694915   0.0735579   0.2654252
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        (0%, 5%]             NA                0.1971831   0.1044649   0.2899013
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        0%                   NA                0.2500000   0.1363793   0.3636207
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        >5%                  NA                0.2361111   0.1666178   0.3056044
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             NA                0.0685714   0.0310956   0.1060472
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH      0%                   NA                0.0333333   0.0045822   0.0620845
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH      >5%                  NA                0.1141732   0.0750294   0.1533170
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             NA                0.0620155   0.0325642   0.0914668
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH      0%                   NA                0.0377358   0.0120660   0.0634057
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH      >5%                  NA                0.0563380   0.0253506   0.0873255
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             NA                0.0348837   0.0074443   0.0623232
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH      0%                   NA                0.0220994   0.0069456   0.0372533
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH      >5%                  NA                0.0279070   0.0058762   0.0499377
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH      (0%, 5%]             NA                0.1803279   0.0836638   0.2769919
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH      0%                   NA                0.0786517   0.0226180   0.1346854
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH      >5%                  NA                0.1160714   0.0566366   0.1755062
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
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH      NA                   NA                0.2222222   0.1716883   0.2727561
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA           NA                   NA                0.3677686   0.3068900   0.4286472
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL           NA                   NA                0.1890756   0.1392237   0.2389275
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU            NA                   NA                0.0668896   0.0385244   0.0952548
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        NA                   NA                0.4578755   0.3986666   0.5170843
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH      NA                   NA                0.2981575   0.2614320   0.3348829
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH      NA                   NA                0.1775837   0.1489858   0.2061816
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      NA                   NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH      NA                   NA                0.4372624   0.3771974   0.4973274
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   NA                   NA                0.1951754   0.1694388   0.2209121
0-24 months (no birth wast)   ki1114097-CMIN          PERU            NA                   NA                0.0600559   0.0426409   0.0774709
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH      NA                   NA                0.0730769   0.0413805   0.1047733
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA           NA                   NA                0.1576763   0.1115695   0.2037832
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        NA                   NA                0.2287823   0.1786790   0.2788855
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH      NA                   NA                0.0794473   0.0574004   0.1014943
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH      NA                   NA                0.0527086   0.0359384   0.0694789
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH      NA                   NA                0.0267023   0.0151493   0.0382553
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH      NA                   NA                0.1183206   0.0791362   0.1575050
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
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH      0%                   (0%, 5%]          1.0267156   0.6079157   1.7340313
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH      >5%                  (0%, 5%]          0.7989130   0.4470049   1.4278638
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA           (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA           0%                   (0%, 5%]          1.2744589   0.8550597   1.8995697
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA           >5%                  (0%, 5%]          1.2397094   0.8340841   1.8425954
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL           (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL           0%                   (0%, 5%]          1.2833021   0.6747503   2.4407018
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL           >5%                  (0%, 5%]          1.0230769   0.5141903   2.0356012
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU            (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU            0%                   (0%, 5%]          1.2976744   0.4100892   4.1063236
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU            >5%                  (0%, 5%]          1.3950000   0.4828579   4.0302231
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        0%                   (0%, 5%]          0.7117794   0.4651387   1.0892020
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        >5%                  (0%, 5%]          0.9793103   0.7324730   1.3093299
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH      0%                   (0%, 5%]          0.9444600   0.6482065   1.3761120
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH      >5%                  (0%, 5%]          1.4456522   1.0741771   1.9455919
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH      0%                   (0%, 5%]          0.5980143   0.4016721   0.8903310
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH      >5%                  (0%, 5%]          0.6121998   0.4132685   0.9068887
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      0%                   (0%, 5%]          1.1287775   0.7258573   1.7553569
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      >5%                  (0%, 5%]          0.8968894   0.5371695   1.4974985
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH      0%                   (0%, 5%]          1.2349336   0.8190344   1.8620230
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH      >5%                  (0%, 5%]          1.3587662   0.9223761   2.0016191
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   0%                   (0%, 5%]          0.9414997   0.6806039   1.3024045
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   >5%                  (0%, 5%]          0.7745780   0.5616234   1.0682798
0-24 months (no birth wast)   ki1114097-CMIN          PERU            (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1114097-CMIN          PERU            0%                   (0%, 5%]          0.6093433   0.2696352   1.3770432
0-24 months (no birth wast)   ki1114097-CMIN          PERU            >5%                  (0%, 5%]          0.9367681   0.4842915   1.8119967
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH      0%                   (0%, 5%]          1.1951220   0.3998106   3.5724825
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH      >5%                  (0%, 5%]          1.4291667   0.4992729   4.0909839
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA           (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA           0%                   (0%, 5%]          1.0937799   0.5277451   2.2669171
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA           >5%                  (0%, 5%]          1.1329170   0.5613809   2.2863281
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        0%                   (0%, 5%]          1.2678571   0.6592678   2.4382531
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        >5%                  (0%, 5%]          1.1974206   0.6875902   2.0852773
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH      0%                   (0%, 5%]          0.4861111   0.1750958   1.3495698
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH      >5%                  (0%, 5%]          1.6650262   0.8734384   3.1740215
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH      0%                   (0%, 5%]          0.6084906   0.2654323   1.3949347
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH      >5%                  (0%, 5%]          0.9084507   0.4392471   1.8788573
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH      0%                   (0%, 5%]          0.6335175   0.2231330   1.7986783
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH      >5%                  (0%, 5%]          0.8000000   0.2624831   2.4382522
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH      0%                   (0%, 5%]          0.4361593   0.1788301   1.0637752
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH      >5%                  (0%, 5%]          0.6436688   0.3067005   1.3508604
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
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             NA                -0.0124717   -0.0781513    0.0532080
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA           (0%, 5%]             NA                 0.0396436   -0.0179920    0.0972792
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL           (0%, 5%]             NA                 0.0180230   -0.0532926    0.0893386
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU            (0%, 5%]             NA                 0.0131262   -0.0268914    0.0531438
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        (0%, 5%]             NA                -0.0350823   -0.1351767    0.0650121
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             NA                 0.0454102   -0.0085082    0.0993286
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             NA                -0.0579375   -0.0963528   -0.0195223
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             NA                 0.0045078   -0.0409191    0.0499346
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH      (0%, 5%]             NA                 0.0824236   -0.0230893    0.1879366
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             NA                -0.0240553   -0.0658954    0.0177847
0-24 months (no birth wast)   ki1114097-CMIN          PERU            (0%, 5%]             NA                -0.0099441   -0.0392000    0.0193117
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             NA                 0.0118524   -0.0276619    0.0513668
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA           (0%, 5%]             NA                 0.0080700   -0.0357180    0.0518581
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        (0%, 5%]             NA                 0.0315992   -0.0496564    0.1128548
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             NA                 0.0108759   -0.0213969    0.0431487
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             NA                -0.0093069   -0.0315177    0.0129040
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             NA                -0.0081815   -0.0314321    0.0150692
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH      (0%, 5%]             NA                -0.0620073   -0.1428056    0.0187910
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
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             NA                -0.0561224   -0.3970363    0.2015994
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA           (0%, 5%]             NA                 0.1077949   -0.0635743    0.2515522
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL           (0%, 5%]             NA                 0.0953216   -0.3719190    0.4034320
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU            (0%, 5%]             NA                 0.1962366   -0.6811512    0.6157183
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        (0%, 5%]             NA                -0.0766197   -0.3192264    0.1213714
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             NA                 0.1523028   -0.0489360    0.3149338
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             NA                -0.3262548   -0.5579920   -0.1289865
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             NA                 0.0314708   -0.3437203    0.3019017
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH      (0%, 5%]             NA                 0.1884993   -0.0930057    0.3975023
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             NA                -0.1232498   -0.3591040    0.0716751
0-24 months (no birth wast)   ki1114097-CMIN          PERU            (0%, 5%]             NA                -0.1655814   -0.7672583    0.2312499
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH      (0%, 5%]             NA                 0.1621912   -0.5899101    0.5585137
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA           (0%, 5%]             NA                 0.0511811   -0.2710928    0.2917454
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        (0%, 5%]             NA                 0.1381190   -0.3004533    0.4287847
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH      (0%, 5%]             NA                 0.1368944   -0.3794326    0.4599582
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH      (0%, 5%]             NA                -0.1765719   -0.6786305    0.1753269
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             NA                -0.3063953   -1.5258573    0.3243210
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH      (0%, 5%]             NA                -0.5240613   -1.3650692    0.0178879
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
