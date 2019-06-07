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

**Outcome Variable:** ever_swasted

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

agecat                        studyid                 country                        perdiar6    ever_swasted   n_cell     n
----------------------------  ----------------------  -----------------------------  ---------  -------------  -------  ----
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]               0       93   261
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]               1        5   261
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     0%                     0       78   261
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     0%                     1        5   261
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     >5%                    0       78   261
0-24 months (no birth wast)   ki0047075b-MAL-ED       BANGLADESH                     >5%                    1        2   261
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]               0       15   229
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]               1        0   229
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         0%                     0      209   229
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         0%                     1        3   229
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         >5%                    0        2   229
0-24 months (no birth wast)   ki0047075b-MAL-ED       BRAZIL                         >5%                    1        0   229
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          (0%, 5%]               0      125   242
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          (0%, 5%]               1        3   242
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          0%                     0       51   242
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          0%                     1        4   242
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          >5%                    0       56   242
0-24 months (no birth wast)   ki0047075b-MAL-ED       INDIA                          >5%                    1        3   242
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]               0       75   238
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]               1        1   238
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          0%                     0       80   238
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          0%                     1        2   238
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          >5%                    0       80   238
0-24 months (no birth wast)   ki0047075b-MAL-ED       NEPAL                          >5%                    1        0   238
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           (0%, 5%]               0       92   299
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           (0%, 5%]               1        1   299
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           0%                     0       85   299
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           0%                     1        1   299
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           >5%                    0      119   299
0-24 months (no birth wast)   ki0047075b-MAL-ED       PERU                           >5%                    1        1   299
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]               0       55   294
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]               1        4   294
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                     0      218   294
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                     1        7   294
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                    0       10   294
0-24 months (no birth wast)   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                    1        0   294
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               0       99   261
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               1        3   261
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                     0      111   261
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                     1        2   261
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                    0       45   261
0-24 months (no birth wast)   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                    1        1   261
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN                       (0%, 5%]               0       57   273
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN                       (0%, 5%]               1       14   273
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN                       0%                     0       49   273
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN                       0%                     1        8   273
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN                       >5%                    0      115   273
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN                       >5%                    1       30   273
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]               0      169   597
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]               1       13   597
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     0%                     0      144   597
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     0%                     1       11   597
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     >5%                    0      230   597
0-24 months (no birth wast)   ki1017093-NIH-Birth     BANGLADESH                     >5%                    1       30   597
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]               0      249   687
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]               1       10   687
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     0%                     0      209   687
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     0%                     1        4   687
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     >5%                    0      210   687
0-24 months (no birth wast)   ki1017093b-PROVIDE      BANGLADESH                     >5%                    1        5   687
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]               0      170   754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]               1        3   754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     0%                     0      352   754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     0%                     1       12   754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                    0      212   754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                    1        5   754
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH                     (0%, 5%]               0       52   263
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH                     (0%, 5%]               1       10   263
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH                     0%                     0       79   263
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH                     0%                     1       10   263
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH                     >5%                    0       95   263
0-24 months (no birth wast)   ki1114097-CMIN          BANGLADESH                     >5%                    1       17   263
0-24 months (no birth wast)   ki1114097-CMIN          BRAZIL                         (0%, 5%]               0       47   119
0-24 months (no birth wast)   ki1114097-CMIN          BRAZIL                         (0%, 5%]               1        0   119
0-24 months (no birth wast)   ki1114097-CMIN          BRAZIL                         0%                     0       41   119
0-24 months (no birth wast)   ki1114097-CMIN          BRAZIL                         0%                     1        0   119
0-24 months (no birth wast)   ki1114097-CMIN          BRAZIL                         >5%                    0       31   119
0-24 months (no birth wast)   ki1114097-CMIN          BRAZIL                         >5%                    1        0   119
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]               0      246   912
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]               1       14   912
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU                  0%                     0      262   912
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU                  0%                     1       19   912
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU                  >5%                    0      352   912
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU                  >5%                    1       19   912
0-24 months (no birth wast)   ki1114097-CMIN          PERU                           (0%, 5%]               0      199   716
0-24 months (no birth wast)   ki1114097-CMIN          PERU                           (0%, 5%]               1        1   716
0-24 months (no birth wast)   ki1114097-CMIN          PERU                           0%                     0      210   716
0-24 months (no birth wast)   ki1114097-CMIN          PERU                           0%                     1        1   716
0-24 months (no birth wast)   ki1114097-CMIN          PERU                           >5%                    0      300   716
0-24 months (no birth wast)   ki1114097-CMIN          PERU                           >5%                    1        5   716
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           (0%, 5%]               0       43   215
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           (0%, 5%]               1        0   215
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           0%                     0      115   215
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           0%                     1        0   215
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           >5%                    0       57   215
0-24 months (no birth wast)   ki1114097-CONTENT       PERU                           >5%                    1        0   215
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]               0       95   260
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]               1        3   260
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     0%                     0       79   260
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     0%                     1        3   260
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     >5%                    0       79   260
0-6 months (no birth wast)    ki0047075b-MAL-ED       BANGLADESH                     >5%                    1        1   260
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]               0       15   229
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]               1        0   229
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         0%                     0      210   229
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         0%                     1        2   229
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         >5%                    0        2   229
0-6 months (no birth wast)    ki0047075b-MAL-ED       BRAZIL                         >5%                    1        0   229
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          (0%, 5%]               0      126   241
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          (0%, 5%]               1        1   241
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          0%                     0       53   241
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          0%                     1        2   241
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          >5%                    0       57   241
0-6 months (no birth wast)    ki0047075b-MAL-ED       INDIA                          >5%                    1        2   241
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]               0       75   236
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]               1        1   236
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          0%                     0       80   236
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          0%                     1        0   236
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          >5%                    0       80   236
0-6 months (no birth wast)    ki0047075b-MAL-ED       NEPAL                          >5%                    1        0   236
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           (0%, 5%]               0       93   299
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           (0%, 5%]               1        0   299
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           0%                     0       86   299
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           0%                     1        0   299
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           >5%                    0      119   299
0-6 months (no birth wast)    ki0047075b-MAL-ED       PERU                           >5%                    1        1   299
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]               0       58   293
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]               1        1   293
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                     0      222   293
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                     1        2   293
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                    0       10   293
0-6 months (no birth wast)    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                    1        0   293
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               0      101   261
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               1        1   261
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                     0      112   261
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                     1        1   261
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                    0       46   261
0-6 months (no birth wast)    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                    1        0   261
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN                       (0%, 5%]               0       65   271
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN                       (0%, 5%]               1        6   271
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN                       0%                     0       54   271
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN                       0%                     1        2   271
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN                       >5%                    0      130   271
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN                       >5%                    1       14   271
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]               0      172   579
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]               1        3   579
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     0%                     0      149   579
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     0%                     1        1   579
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     >5%                    0      249   579
0-6 months (no birth wast)    ki1017093-NIH-Birth     BANGLADESH                     >5%                    1        5   579
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]               0      256   683
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]               1        2   683
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     0%                     0      210   683
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     0%                     1        2   683
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     >5%                    0      211   683
0-6 months (no birth wast)    ki1017093b-PROVIDE      BANGLADESH                     >5%                    1        2   683
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]               0      172   749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]               1        0   749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     0%                     0      361   749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     0%                     1        1   749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                    0      215   749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                    1        0   749
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH                     (0%, 5%]               0       57   262
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH                     (0%, 5%]               1        4   262
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH                     0%                     0       88   262
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH                     0%                     1        1   262
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH                     >5%                    0      108   262
0-6 months (no birth wast)    ki1114097-CMIN          BANGLADESH                     >5%                    1        4   262
0-6 months (no birth wast)    ki1114097-CMIN          BRAZIL                         (0%, 5%]               0       38   101
0-6 months (no birth wast)    ki1114097-CMIN          BRAZIL                         (0%, 5%]               1        0   101
0-6 months (no birth wast)    ki1114097-CMIN          BRAZIL                         0%                     0       36   101
0-6 months (no birth wast)    ki1114097-CMIN          BRAZIL                         0%                     1        0   101
0-6 months (no birth wast)    ki1114097-CMIN          BRAZIL                         >5%                    0       27   101
0-6 months (no birth wast)    ki1114097-CMIN          BRAZIL                         >5%                    1        0   101
0-6 months (no birth wast)    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]               0      241   825
0-6 months (no birth wast)    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]               1        2   825
0-6 months (no birth wast)    ki1114097-CMIN          GUINEA-BISSAU                  0%                     0      249   825
0-6 months (no birth wast)    ki1114097-CMIN          GUINEA-BISSAU                  0%                     1        0   825
0-6 months (no birth wast)    ki1114097-CMIN          GUINEA-BISSAU                  >5%                    0      330   825
0-6 months (no birth wast)    ki1114097-CMIN          GUINEA-BISSAU                  >5%                    1        3   825
0-6 months (no birth wast)    ki1114097-CMIN          PERU                           (0%, 5%]               0      197   694
0-6 months (no birth wast)    ki1114097-CMIN          PERU                           (0%, 5%]               1        1   694
0-6 months (no birth wast)    ki1114097-CMIN          PERU                           0%                     0      200   694
0-6 months (no birth wast)    ki1114097-CMIN          PERU                           0%                     1        0   694
0-6 months (no birth wast)    ki1114097-CMIN          PERU                           >5%                    0      293   694
0-6 months (no birth wast)    ki1114097-CMIN          PERU                           >5%                    1        3   694
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           (0%, 5%]               0       43   215
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           (0%, 5%]               1        0   215
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           0%                     0      115   215
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           0%                     1        0   215
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           >5%                    0       57   215
0-6 months (no birth wast)    ki1114097-CONTENT       PERU                           >5%                    1        0   215
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]               0       90   240
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]               1        2   240
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     0%                     0       69   240
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     0%                     1        2   240
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     >5%                    0       76   240
6-24 months                   ki0047075b-MAL-ED       BANGLADESH                     >5%                    1        1   240
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]               0       15   207
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]               1        0   207
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         0%                     0      188   207
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         0%                     1        2   207
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         >5%                    0        2   207
6-24 months                   ki0047075b-MAL-ED       BRAZIL                         >5%                    1        0   207
6-24 months                   ki0047075b-MAL-ED       INDIA                          (0%, 5%]               0      124   235
6-24 months                   ki0047075b-MAL-ED       INDIA                          (0%, 5%]               1        2   235
6-24 months                   ki0047075b-MAL-ED       INDIA                          0%                     0       48   235
6-24 months                   ki0047075b-MAL-ED       INDIA                          0%                     1        2   235
6-24 months                   ki0047075b-MAL-ED       INDIA                          >5%                    0       58   235
6-24 months                   ki0047075b-MAL-ED       INDIA                          >5%                    1        1   235
6-24 months                   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]               0       76   235
6-24 months                   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]               1        0   235
6-24 months                   ki0047075b-MAL-ED       NEPAL                          0%                     0       78   235
6-24 months                   ki0047075b-MAL-ED       NEPAL                          0%                     1        2   235
6-24 months                   ki0047075b-MAL-ED       NEPAL                          >5%                    0       79   235
6-24 months                   ki0047075b-MAL-ED       NEPAL                          >5%                    1        0   235
6-24 months                   ki0047075b-MAL-ED       PERU                           (0%, 5%]               0       86   270
6-24 months                   ki0047075b-MAL-ED       PERU                           (0%, 5%]               1        1   270
6-24 months                   ki0047075b-MAL-ED       PERU                           0%                     0       66   270
6-24 months                   ki0047075b-MAL-ED       PERU                           0%                     1        1   270
6-24 months                   ki0047075b-MAL-ED       PERU                           >5%                    0      116   270
6-24 months                   ki0047075b-MAL-ED       PERU                           >5%                    1        0   270
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]               0       53   259
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]               1        3   259
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                     0      188   259
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                     1        6   259
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                    0        9   259
6-24 months                   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                    1        0   259
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               0       94   245
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               1        2   245
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                     0      103   245
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                     1        1   245
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                    0       44   245
6-24 months                   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                    1        1   245
6-24 months                   ki1000109-ResPak        PAKISTAN                       (0%, 5%]               0       54   230
6-24 months                   ki1000109-ResPak        PAKISTAN                       (0%, 5%]               1        9   230
6-24 months                   ki1000109-ResPak        PAKISTAN                       0%                     0       32   230
6-24 months                   ki1000109-ResPak        PAKISTAN                       0%                     1        6   230
6-24 months                   ki1000109-ResPak        PAKISTAN                       >5%                    0      111   230
6-24 months                   ki1000109-ResPak        PAKISTAN                       >5%                    1       18   230
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]               0      160   541
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]               1       11   541
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     0%                     0      119   541
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     0%                     1       10   541
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     >5%                    0      215   541
6-24 months                   ki1017093-NIH-Birth     BANGLADESH                     >5%                    1       26   541
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]               0      242   615
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]               1        8   615
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     0%                     0      159   615
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     0%                     1        2   615
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     >5%                    0      201   615
6-24 months                   ki1017093b-PROVIDE      BANGLADESH                     >5%                    1        3   615
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]               0      166   730
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]               1        4   730
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     0%                     0      334   730
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     0%                     1       11   730
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                    0      210   730
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                    1        5   730
6-24 months                   ki1114097-CMIN          BANGLADESH                     (0%, 5%]               0       52   252
6-24 months                   ki1114097-CMIN          BANGLADESH                     (0%, 5%]               1        7   252
6-24 months                   ki1114097-CMIN          BANGLADESH                     0%                     0       77   252
6-24 months                   ki1114097-CMIN          BANGLADESH                     0%                     1        9   252
6-24 months                   ki1114097-CMIN          BANGLADESH                     >5%                    0       94   252
6-24 months                   ki1114097-CMIN          BANGLADESH                     >5%                    1       13   252
6-24 months                   ki1114097-CMIN          BRAZIL                         (0%, 5%]               0       47   119
6-24 months                   ki1114097-CMIN          BRAZIL                         (0%, 5%]               1        0   119
6-24 months                   ki1114097-CMIN          BRAZIL                         0%                     0       41   119
6-24 months                   ki1114097-CMIN          BRAZIL                         0%                     1        0   119
6-24 months                   ki1114097-CMIN          BRAZIL                         >5%                    0       31   119
6-24 months                   ki1114097-CMIN          BRAZIL                         >5%                    1        0   119
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]               0      240   891
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]               1       13   891
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU                  0%                     0      254   891
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU                  0%                     1       21   891
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU                  >5%                    0      347   891
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU                  >5%                    1       16   891
6-24 months                   ki1114097-CMIN          PERU                           (0%, 5%]               0      192   666
6-24 months                   ki1114097-CMIN          PERU                           (0%, 5%]               1        0   666
6-24 months                   ki1114097-CMIN          PERU                           0%                     0      198   666
6-24 months                   ki1114097-CMIN          PERU                           0%                     1        1   666
6-24 months                   ki1114097-CMIN          PERU                           >5%                    0      272   666
6-24 months                   ki1114097-CMIN          PERU                           >5%                    1        3   666
6-24 months                   ki1114097-CONTENT       PERU                           (0%, 5%]               0       43   215
6-24 months                   ki1114097-CONTENT       PERU                           (0%, 5%]               1        0   215
6-24 months                   ki1114097-CONTENT       PERU                           0%                     0      115   215
6-24 months                   ki1114097-CONTENT       PERU                           0%                     1        0   215
6-24 months                   ki1114097-CONTENT       PERU                           >5%                    0       57   215
6-24 months                   ki1114097-CONTENT       PERU                           >5%                    1        0   215


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

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
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
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
![](/tmp/1136738c-869c-49d8-b06a-4b16459610ac/ebba8a66-b607-4f93-aac6-2a4bfe6bc096/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1136738c-869c-49d8-b06a-4b16459610ac/ebba8a66-b607-4f93-aac6-2a4bfe6bc096/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1136738c-869c-49d8-b06a-4b16459610ac/ebba8a66-b607-4f93-aac6-2a4bfe6bc096/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1136738c-869c-49d8-b06a-4b16459610ac/ebba8a66-b607-4f93-aac6-2a4bfe6bc096/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid               country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000109-ResPak      PAKISTAN        (0%, 5%]             NA                0.1971831   0.1044662   0.2899000
0-24 months (no birth wast)   ki1000109-ResPak      PAKISTAN        0%                   NA                0.1403509   0.0500118   0.2306900
0-24 months (no birth wast)   ki1000109-ResPak      PAKISTAN        >5%                  NA                0.2068966   0.1408420   0.2729511
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH      (0%, 5%]             NA                0.0714286   0.0339813   0.1088758
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH      0%                   NA                0.0709677   0.0305109   0.1114246
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH      >5%                  NA                0.1153846   0.0765180   0.1542512
0-24 months (no birth wast)   ki1114097-CMIN        BANGLADESH      (0%, 5%]             NA                0.1612903   0.0695650   0.2530157
0-24 months (no birth wast)   ki1114097-CMIN        BANGLADESH      0%                   NA                0.1123596   0.0466235   0.1780956
0-24 months (no birth wast)   ki1114097-CMIN        BANGLADESH      >5%                  NA                0.1517857   0.0852071   0.2183643
0-24 months (no birth wast)   ki1114097-CMIN        GUINEA-BISSAU   (0%, 5%]             NA                0.0538462   0.0263952   0.0812971
0-24 months (no birth wast)   ki1114097-CMIN        GUINEA-BISSAU   0%                   NA                0.0676157   0.0382423   0.0969891
0-24 months (no birth wast)   ki1114097-CMIN        GUINEA-BISSAU   >5%                  NA                0.0512129   0.0287703   0.0736556
6-24 months                   ki1000109-ResPak      PAKISTAN        (0%, 5%]             NA                0.1428571   0.0562604   0.2294539
6-24 months                   ki1000109-ResPak      PAKISTAN        0%                   NA                0.1578947   0.0417045   0.2740849
6-24 months                   ki1000109-ResPak      PAKISTAN        >5%                  NA                0.1395349   0.0796100   0.1994598
6-24 months                   ki1017093-NIH-Birth   BANGLADESH      (0%, 5%]             NA                0.0643275   0.0275220   0.1011329
6-24 months                   ki1017093-NIH-Birth   BANGLADESH      0%                   NA                0.0775194   0.0313304   0.1237084
6-24 months                   ki1017093-NIH-Birth   BANGLADESH      >5%                  NA                0.1078838   0.0686798   0.1470878
6-24 months                   ki1114097-CMIN        BANGLADESH      (0%, 5%]             NA                0.1186441   0.0359672   0.2013210
6-24 months                   ki1114097-CMIN        BANGLADESH      0%                   NA                0.1046512   0.0398280   0.1694744
6-24 months                   ki1114097-CMIN        BANGLADESH      >5%                  NA                0.1214953   0.0594697   0.1835210
6-24 months                   ki1114097-CMIN        GUINEA-BISSAU   (0%, 5%]             NA                0.0513834   0.0241634   0.0786034
6-24 months                   ki1114097-CMIN        GUINEA-BISSAU   0%                   NA                0.0763636   0.0449571   0.1077701
6-24 months                   ki1114097-CMIN        GUINEA-BISSAU   >5%                  NA                0.0440771   0.0229492   0.0652051


### Parameter: E(Y)


agecat                        studyid               country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  --------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000109-ResPak      PAKISTAN        NA                   NA                0.1904762   0.1438104   0.2371420
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH      NA                   NA                0.0904523   0.0674247   0.1134798
0-24 months (no birth wast)   ki1114097-CMIN        BANGLADESH      NA                   NA                0.1406844   0.0985830   0.1827858
0-24 months (no birth wast)   ki1114097-CMIN        GUINEA-BISSAU   NA                   NA                0.0570175   0.0419603   0.0720748
6-24 months                   ki1000109-ResPak      PAKISTAN        NA                   NA                0.1434783   0.0980744   0.1888821
6-24 months                   ki1017093-NIH-Birth   BANGLADESH      NA                   NA                0.0868762   0.0631205   0.1106318
6-24 months                   ki1114097-CMIN        BANGLADESH      NA                   NA                0.1150794   0.0756007   0.1545580
6-24 months                   ki1114097-CMIN        GUINEA-BISSAU   NA                   NA                0.0561167   0.0409965   0.0712370


### Parameter: RR


agecat                        studyid               country         intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  --------------------  --------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki1000109-ResPak      PAKISTAN        (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000109-ResPak      PAKISTAN        0%                   (0%, 5%]          0.7117794   0.3207455   1.579539
0-24 months (no birth wast)   ki1000109-ResPak      PAKISTAN        >5%                  (0%, 5%]          1.0492611   0.5943626   1.852318
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH      0%                   (0%, 5%]          0.9935484   0.4579651   2.155489
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH      >5%                  (0%, 5%]          1.6153846   0.8662554   3.012354
0-24 months (no birth wast)   ki1114097-CMIN        BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1114097-CMIN        BANGLADESH      0%                   (0%, 5%]          0.6966292   0.3080765   1.575233
0-24 months (no birth wast)   ki1114097-CMIN        BANGLADESH      >5%                  (0%, 5%]          0.9410714   0.4588919   1.929900
0-24 months (no birth wast)   ki1114097-CMIN        GUINEA-BISSAU   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1114097-CMIN        GUINEA-BISSAU   0%                   (0%, 5%]          1.2557194   0.6426975   2.453458
0-24 months (no birth wast)   ki1114097-CMIN        GUINEA-BISSAU   >5%                  (0%, 5%]          0.9510974   0.4855843   1.862882
6-24 months                   ki1000109-ResPak      PAKISTAN        (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
6-24 months                   ki1000109-ResPak      PAKISTAN        0%                   (0%, 5%]          1.1052632   0.4260029   2.867602
6-24 months                   ki1000109-ResPak      PAKISTAN        >5%                  (0%, 5%]          0.9767442   0.4646725   2.053122
6-24 months                   ki1017093-NIH-Birth   BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
6-24 months                   ki1017093-NIH-Birth   BANGLADESH      0%                   (0%, 5%]          1.2050740   0.5275422   2.752772
6-24 months                   ki1017093-NIH-Birth   BANGLADESH      >5%                  (0%, 5%]          1.6771030   0.8515177   3.303131
6-24 months                   ki1114097-CMIN        BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
6-24 months                   ki1114097-CMIN        BANGLADESH      0%                   (0%, 5%]          0.8820598   0.3472023   2.240853
6-24 months                   ki1114097-CMIN        BANGLADESH      >5%                  (0%, 5%]          1.0240320   0.4316689   2.429273
6-24 months                   ki1114097-CMIN        GUINEA-BISSAU   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
6-24 months                   ki1114097-CMIN        GUINEA-BISSAU   0%                   (0%, 5%]          1.4861538   0.7599811   2.906195
6-24 months                   ki1114097-CMIN        GUINEA-BISSAU   >5%                  (0%, 5%]          0.8578089   0.4198772   1.752503


### Parameter: PAR


agecat                        studyid               country         intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  --------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-ResPak      PAKISTAN        (0%, 5%]             NA                -0.0067069   -0.0860966   0.0726828
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH      (0%, 5%]             NA                 0.0190237   -0.0138026   0.0518499
0-24 months (no birth wast)   ki1114097-CMIN        BANGLADESH      (0%, 5%]             NA                -0.0206059   -0.0994680   0.0582562
0-24 months (no birth wast)   ki1114097-CMIN        GUINEA-BISSAU   (0%, 5%]             NA                 0.0031714   -0.0202938   0.0266366
6-24 months                   ki1000109-ResPak      PAKISTAN        (0%, 5%]             NA                 0.0006211   -0.0732190   0.0744612
6-24 months                   ki1017093-NIH-Birth   BANGLADESH      (0%, 5%]             NA                 0.0225487   -0.0100491   0.0551465
6-24 months                   ki1114097-CMIN        BANGLADESH      (0%, 5%]             NA                -0.0035647   -0.0756292   0.0684998
6-24 months                   ki1114097-CMIN        GUINEA-BISSAU   (0%, 5%]             NA                 0.0047333   -0.0186926   0.0281593


### Parameter: PAF


agecat                        studyid               country         intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  --------------------  --------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-ResPak      PAKISTAN        (0%, 5%]             NA                -0.0352113   -0.5483354   0.3078616
0-24 months (no birth wast)   ki1017093-NIH-Birth   BANGLADESH      (0%, 5%]             NA                 0.2103175   -0.2450897   0.4991537
0-24 months (no birth wast)   ki1114097-CMIN        BANGLADESH      (0%, 5%]             NA                -0.1464690   -0.8676806   0.2962441
0-24 months (no birth wast)   ki1114097-CMIN        GUINEA-BISSAU   (0%, 5%]             NA                 0.0556213   -0.4598138   0.3890652
6-24 months                   ki1000109-ResPak      PAKISTAN        (0%, 5%]             NA                 0.0043290   -0.6695281   0.4062030
6-24 months                   ki1017093-NIH-Birth   BANGLADESH      (0%, 5%]             NA                 0.2595496   -0.2194533   0.5503995
6-24 months                   ki1114097-CMIN        BANGLADESH      (0%, 5%]             NA                -0.0309760   -0.8923945   0.4383245
6-24 months                   ki1114097-CMIN        GUINEA-BISSAU   (0%, 5%]             NA                 0.0843478   -0.4436639   0.4192423
