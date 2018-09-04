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

**Outcome Variable:** stunted

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

agecat      studyid                 country                        perdiar6    stunted   n_cell     n
----------  ----------------------  -----------------------------  ---------  --------  -------  ----
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          0       83   257
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          1       13   257
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                0       71   257
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                1       15   257
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%               0       56   257
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%               1       19   257
Birth       ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          0       12   191
Birth       ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          1        1   191
Birth       ki0047075b-MAL-ED       BRAZIL                         0%                0      156   191
Birth       ki0047075b-MAL-ED       BRAZIL                         0%                1       20   191
Birth       ki0047075b-MAL-ED       BRAZIL                         >5%               0        2   191
Birth       ki0047075b-MAL-ED       BRAZIL                         >5%               1        0   191
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]          0       90   206
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]          1       19   206
Birth       ki0047075b-MAL-ED       INDIA                          0%                0       37   206
Birth       ki0047075b-MAL-ED       INDIA                          0%                1       10   206
Birth       ki0047075b-MAL-ED       INDIA                          >5%               0       46   206
Birth       ki0047075b-MAL-ED       INDIA                          >5%               1        4   206
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          0       53   173
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          1        4   173
Birth       ki0047075b-MAL-ED       NEPAL                          0%                0       55   173
Birth       ki0047075b-MAL-ED       NEPAL                          0%                1        5   173
Birth       ki0047075b-MAL-ED       NEPAL                          >5%               0       47   173
Birth       ki0047075b-MAL-ED       NEPAL                          >5%               1        9   173
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]          0       76   287
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]          1       12   287
Birth       ki0047075b-MAL-ED       PERU                           0%                0       71   287
Birth       ki0047075b-MAL-ED       PERU                           0%                1       12   287
Birth       ki0047075b-MAL-ED       PERU                           >5%               0      106   287
Birth       ki0047075b-MAL-ED       PERU                           >5%               1       10   287
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]          0       44   252
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]          1        6   252
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%                0      173   252
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%                1       20   252
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   >5%               0        8   252
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   >5%               1        1   252
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          0       38   123
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          1        4   123
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                0       49   123
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                1       11   123
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               0       18   123
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               1        3   123
Birth       ki1000109-ResPak        PAKISTAN                       (0%, 5%]          0        2     6
Birth       ki1000109-ResPak        PAKISTAN                       (0%, 5%]          1        0     6
Birth       ki1000109-ResPak        PAKISTAN                       0%                0        0     6
Birth       ki1000109-ResPak        PAKISTAN                       0%                1        1     6
Birth       ki1000109-ResPak        PAKISTAN                       >5%               0        2     6
Birth       ki1000109-ResPak        PAKISTAN                       >5%               1        1     6
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          0        3    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          1        0    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%                0        4    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%                1        0    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%               0       18    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%               1        1    26
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]          0        7    27
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]          1        0    27
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                0        6    27
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                1        2    27
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%               0        9    27
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%               1        3    27
Birth       ki1114097-CMIN          BANGLADESH                     (0%, 5%]          0        0    13
Birth       ki1114097-CMIN          BANGLADESH                     (0%, 5%]          1        0    13
Birth       ki1114097-CMIN          BANGLADESH                     0%                0        6    13
Birth       ki1114097-CMIN          BANGLADESH                     0%                1        5    13
Birth       ki1114097-CMIN          BANGLADESH                     >5%               0        1    13
Birth       ki1114097-CMIN          BANGLADESH                     >5%               1        1    13
Birth       ki1114097-CMIN          BRAZIL                         (0%, 5%]          0       46   115
Birth       ki1114097-CMIN          BRAZIL                         (0%, 5%]          1        1   115
Birth       ki1114097-CMIN          BRAZIL                         0%                0       36   115
Birth       ki1114097-CMIN          BRAZIL                         0%                1        2   115
Birth       ki1114097-CMIN          BRAZIL                         >5%               0       28   115
Birth       ki1114097-CMIN          BRAZIL                         >5%               1        2   115
Birth       ki1114097-CMIN          PERU                           (0%, 5%]          0        5    10
Birth       ki1114097-CMIN          PERU                           (0%, 5%]          1        0    10
Birth       ki1114097-CMIN          PERU                           0%                0        4    10
Birth       ki1114097-CMIN          PERU                           0%                1        0    10
Birth       ki1114097-CMIN          PERU                           >5%               0        1    10
Birth       ki1114097-CMIN          PERU                           >5%               1        0    10
Birth       ki1114097-CONTENT       PERU                           (0%, 5%]          0        1     2
Birth       ki1114097-CONTENT       PERU                           (0%, 5%]          1        0     2
Birth       ki1114097-CONTENT       PERU                           0%                0        0     2
Birth       ki1114097-CONTENT       PERU                           0%                1        0     2
Birth       ki1114097-CONTENT       PERU                           >5%               0        1     2
Birth       ki1114097-CONTENT       PERU                           >5%               1        0     2
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          0       79   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          1       13   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                0       57   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                1       14   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%               0       60   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%               1       18   241
6 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          0       14   209
6 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          1        1   209
6 months    ki0047075b-MAL-ED       BRAZIL                         0%                0      187   209
6 months    ki0047075b-MAL-ED       BRAZIL                         0%                1        5   209
6 months    ki0047075b-MAL-ED       BRAZIL                         >5%               0        2   209
6 months    ki0047075b-MAL-ED       BRAZIL                         >5%               1        0   209
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]          0      107   236
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]          1       20   236
6 months    ki0047075b-MAL-ED       INDIA                          0%                0       41   236
6 months    ki0047075b-MAL-ED       INDIA                          0%                1        9   236
6 months    ki0047075b-MAL-ED       INDIA                          >5%               0       42   236
6 months    ki0047075b-MAL-ED       INDIA                          >5%               1       17   236
6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          0       71   236
6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          1        5   236
6 months    ki0047075b-MAL-ED       NEPAL                          0%                0       75   236
6 months    ki0047075b-MAL-ED       NEPAL                          0%                1        5   236
6 months    ki0047075b-MAL-ED       NEPAL                          >5%               0       78   236
6 months    ki0047075b-MAL-ED       NEPAL                          >5%               1        2   236
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]          0       67   273
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]          1       22   273
6 months    ki0047075b-MAL-ED       PERU                           0%                0       51   273
6 months    ki0047075b-MAL-ED       PERU                           0%                1       17   273
6 months    ki0047075b-MAL-ED       PERU                           >5%               0       95   273
6 months    ki0047075b-MAL-ED       PERU                           >5%               1       21   273
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]          0       42   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]          1       13   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                0      155   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                1       35   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%               0        7   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%               1        2   254
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          0       77   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          1       19   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                0       73   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                1       32   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               0       39   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               1        7   247
6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]          0       43   235
6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]          1       21   235
6 months    ki1000109-ResPak        PAKISTAN                       0%                0       27   235
6 months    ki1000109-ResPak        PAKISTAN                       0%                1       14   235
6 months    ki1000109-ResPak        PAKISTAN                       >5%               0       82   235
6 months    ki1000109-ResPak        PAKISTAN                       >5%               1       48   235
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          0      123   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          1       46   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                0       98   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                1       31   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%               0      172   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%               1       67   537
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]          0      202   583
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]          1       40   583
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                0      137   583
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                1       21   583
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%               0      150   583
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%               1       33   583
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]          0      119   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]          1       48   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                0      279   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                1       62   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%               0      167   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%               1       40   715
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]          0       30   243
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]          1       29   243
6 months    ki1114097-CMIN          BANGLADESH                     0%                0       55   243
6 months    ki1114097-CMIN          BANGLADESH                     0%                1       26   243
6 months    ki1114097-CMIN          BANGLADESH                     >5%               0       65   243
6 months    ki1114097-CMIN          BANGLADESH                     >5%               1       38   243
6 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]          0       38   108
6 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]          1        3   108
6 months    ki1114097-CMIN          BRAZIL                         0%                0       38   108
6 months    ki1114097-CMIN          BRAZIL                         0%                1        0   108
6 months    ki1114097-CMIN          BRAZIL                         >5%               0       22   108
6 months    ki1114097-CMIN          BRAZIL                         >5%               1        7   108
6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]          0      175   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]          1       15   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                0      192   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                1       20   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%               0      244   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%               1       26   672
6 months    ki1114097-CMIN          PERU                           (0%, 5%]          0      170   635
6 months    ki1114097-CMIN          PERU                           (0%, 5%]          1       14   635
6 months    ki1114097-CMIN          PERU                           0%                0      176   635
6 months    ki1114097-CMIN          PERU                           0%                1        8   635
6 months    ki1114097-CMIN          PERU                           >5%               0      246   635
6 months    ki1114097-CMIN          PERU                           >5%               1       21   635
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]          0       40   215
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]          1        3   215
6 months    ki1114097-CONTENT       PERU                           0%                0      101   215
6 months    ki1114097-CONTENT       PERU                           0%                1       14   215
6 months    ki1114097-CONTENT       PERU                           >5%               0       55   215
6 months    ki1114097-CONTENT       PERU                           >5%               1        2   215
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          0       47   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          1       36   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                0       34   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                1       30   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%               0       33   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%               1       32   212
24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          0       13   169
24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          1        0   169
24 months   ki0047075b-MAL-ED       BRAZIL                         0%                0      148   169
24 months   ki0047075b-MAL-ED       BRAZIL                         0%                1        6   169
24 months   ki0047075b-MAL-ED       BRAZIL                         >5%               0        2   169
24 months   ki0047075b-MAL-ED       BRAZIL                         >5%               1        0   169
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]          0       70   227
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]          1       52   227
24 months   ki0047075b-MAL-ED       INDIA                          0%                0       26   227
24 months   ki0047075b-MAL-ED       INDIA                          0%                1       22   227
24 months   ki0047075b-MAL-ED       INDIA                          >5%               0       36   227
24 months   ki0047075b-MAL-ED       INDIA                          >5%               1       21   227
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          0       63   228
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          1       12   228
24 months   ki0047075b-MAL-ED       NEPAL                          0%                0       60   228
24 months   ki0047075b-MAL-ED       NEPAL                          0%                1       17   228
24 months   ki0047075b-MAL-ED       NEPAL                          >5%               0       56   228
24 months   ki0047075b-MAL-ED       NEPAL                          >5%               1       20   228
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]          0       36   201
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]          1       28   201
24 months   ki0047075b-MAL-ED       PERU                           0%                0       29   201
24 months   ki0047075b-MAL-ED       PERU                           0%                1       24   201
24 months   ki0047075b-MAL-ED       PERU                           >5%               0       62   201
24 months   ki0047075b-MAL-ED       PERU                           >5%               1       22   201
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]          0       31   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]          1       21   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                0      117   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                1       60   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%               0        6   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%               1        3   238
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          0       25   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          1       58   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                0       26   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                1       66   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               0       10   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               1       29   214
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          0       67   429
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          1       61   429
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                0       50   429
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                1       57   429
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%               0       74   429
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%               1      120   429
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]          0      152   577
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]          1       80   577
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                0      106   577
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                1       45   577
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%               0      129   577
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%               1       65   577
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]          0       73   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]          1       33   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                0      211   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                1       66   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%               0       98   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%               1       33   514
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]          0       14   242
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]          1       44   242
24 months   ki1114097-CMIN          BANGLADESH                     0%                0       35   242
24 months   ki1114097-CMIN          BANGLADESH                     0%                1       50   242
24 months   ki1114097-CMIN          BANGLADESH                     >5%               0       28   242
24 months   ki1114097-CMIN          BANGLADESH                     >5%               1       71   242
24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]          0       58   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]          1       19   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                0       69   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                1       30   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%               0       58   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%               1       45   279
24 months   ki1114097-CMIN          PERU                           (0%, 5%]          0       56   244
24 months   ki1114097-CMIN          PERU                           (0%, 5%]          1       23   244
24 months   ki1114097-CMIN          PERU                           0%                0       74   244
24 months   ki1114097-CMIN          PERU                           0%                1       23   244
24 months   ki1114097-CMIN          PERU                           >5%               0       47   244
24 months   ki1114097-CMIN          PERU                           >5%               1       21   244
24 months   ki1114097-CONTENT       PERU                           (0%, 5%]          0       34   164
24 months   ki1114097-CONTENT       PERU                           (0%, 5%]          1        2   164
24 months   ki1114097-CONTENT       PERU                           0%                0       69   164
24 months   ki1114097-CONTENT       PERU                           0%                1       15   164
24 months   ki1114097-CONTENT       PERU                           >5%               0       40   164
24 months   ki1114097-CONTENT       PERU                           >5%               1        4   164


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/501021f0-f6e9-4091-bd9c-f85fee85318e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/501021f0-f6e9-4091-bd9c-f85fee85318e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/501021f0-f6e9-4091-bd9c-f85fee85318e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/501021f0-f6e9-4091-bd9c-f85fee85318e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.1716104   0.1067393   0.2364816
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.2209073   0.1462027   0.2956120
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.3553956   0.2672054   0.4435857
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.1331105   0.0623911   0.2038299
Birth       ki0047075b-MAL-ED       PERU                           0%                   NA                0.1418574   0.0668003   0.2169145
Birth       ki0047075b-MAL-ED       PERU                           >5%                  NA                0.0827277   0.0325095   0.1329458
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.1642489   0.0939313   0.2345666
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.2410935   0.1519311   0.3302559
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.2904027   0.2004719   0.3803334
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.1574803   0.0939953   0.2209654
6 months    ki0047075b-MAL-ED       INDIA                          0%                   NA                0.1800000   0.0732843   0.2867157
6 months    ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.2881356   0.1723269   0.4039443
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.2624488   0.1773242   0.3475734
6 months    ki0047075b-MAL-ED       PERU                           0%                   NA                0.2943189   0.1966030   0.3920348
6 months    ki0047075b-MAL-ED       PERU                           >5%                  NA                0.1888236   0.1211291   0.2565181
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.1979167   0.1180539   0.2777794
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.3047619   0.2165390   0.3929848
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.1521739   0.0481643   0.2561836
6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]             NA                0.3199865   0.2048639   0.4351090
6 months    ki1000109-ResPak        PAKISTAN                       0%                   NA                0.3298571   0.1862542   0.4734599
6 months    ki1000109-ResPak        PAKISTAN                       >5%                  NA                0.3657288   0.2827313   0.4487263
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.3097189   0.2458296   0.3736082
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.2631186   0.1956853   0.3305519
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.2692316   0.2153559   0.3231074
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.1719939   0.1287547   0.2152331
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.1373960   0.0916082   0.1831838
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.2005000   0.1494013   0.2515987
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.2872132   0.2321560   0.3422704
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.1860634   0.1491157   0.2230111
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.1963095   0.1500809   0.2425380
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.4851751   0.3586052   0.6117450
6 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                0.3236407   0.2215893   0.4256921
6 months    ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.3714059   0.2778477   0.4649640
6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                0.0791192   0.0407775   0.1174608
6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                0.0940731   0.0546962   0.1334500
6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%                  NA                0.0963631   0.0611392   0.1315869
6 months    ki1114097-CMIN          PERU                           (0%, 5%]             NA                0.0760870   0.0377470   0.1144270
6 months    ki1114097-CMIN          PERU                           0%                   NA                0.0434783   0.0139889   0.0729676
6 months    ki1114097-CMIN          PERU                           >5%                  NA                0.0786517   0.0463369   0.1109664
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.4834163   0.3890523   0.5777803
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.5449976   0.4464718   0.6435235
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.5585272   0.4531471   0.6639073
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.4309384   0.3449698   0.5169069
24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                0.4417180   0.3100821   0.5733540
24 months   ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.3729337   0.2537721   0.4920952
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                0.1595903   0.0778868   0.2412938
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                0.2191858   0.1271691   0.3112024
24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  NA                0.2664957   0.1700543   0.3629372
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.3598072   0.2524483   0.4671661
24 months   ki0047075b-MAL-ED       PERU                           0%                   NA                0.4099407   0.2959706   0.5239109
24 months   ki0047075b-MAL-ED       PERU                           >5%                  NA                0.2460665   0.1602988   0.3318342
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.7254591   0.6328750   0.8180432
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.7269737   0.6416681   0.8122793
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.7788509   0.6645253   0.8931764
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.5081159   0.4405074   0.5757245
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.5468716   0.4752919   0.6184512
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.5914110   0.5313703   0.6514517
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.3491115   0.2924937   0.4057294
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.2961478   0.2286064   0.3636893
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.3316492   0.2685362   0.3947623
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.2567573   0.1772492   0.3362653
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.2326046   0.1849487   0.2802604
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.2520075   0.1837163   0.3202986
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.7561282   0.6462213   0.8660350
24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                0.5895281   0.4846031   0.6944532
24 months   ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.7180773   0.6291056   0.8070490
24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                0.2497485   0.1532248   0.3462721
24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                0.3111721   0.2230036   0.3993406
24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%                  NA                0.4357938   0.3400884   0.5314992
24 months   ki1114097-CMIN          PERU                           (0%, 5%]             NA                0.2965093   0.1966172   0.3964014
24 months   ki1114097-CMIN          PERU                           0%                   NA                0.2475574   0.1624139   0.3327008
24 months   ki1114097-CMIN          PERU                           >5%                  NA                0.3184272   0.2084915   0.4283629


### Parameter: E(Y)


agecat      studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.1828794   0.1355257   0.2302330
Birth       ki0047075b-MAL-ED       PERU                           NA                   NA                0.1184669   0.0810142   0.1559196
6 months    ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.1867220   0.1374205   0.2360234
6 months    ki0047075b-MAL-ED       INDIA                          NA                   NA                0.1949153   0.1442678   0.2455627
6 months    ki0047075b-MAL-ED       PERU                           NA                   NA                0.2197802   0.1705687   0.2689917
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2348178   0.1818480   0.2877876
6 months    ki1000109-ResPak        PAKISTAN                       NA                   NA                0.3531915   0.2919518   0.4144312
6 months    ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.2681564   0.2306532   0.3056597
6 months    ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.1612350   0.1313580   0.1911120
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1114097-CMIN          BANGLADESH                     NA                   NA                0.3827160   0.3214780   0.4439541
6 months    ki1114097-CMIN          GUINEA-BISSAU                  NA                   NA                0.0907738   0.0690366   0.1125110
6 months    ki1114097-CMIN          PERU                           NA                   NA                0.0677165   0.0481585   0.0872746
24 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.4622642   0.3949918   0.5295365
24 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                0.4185022   0.3541865   0.4828179
24 months   ki0047075b-MAL-ED       NEPAL                          NA                   NA                0.2149123   0.1614774   0.2683472
24 months   ki0047075b-MAL-ED       PERU                           NA                   NA                0.3681592   0.3013164   0.4350020
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7149533   0.6543278   0.7755787
24 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.5547786   0.5076945   0.6018626
24 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.3292894   0.2909105   0.3676684
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1114097-CMIN          BANGLADESH                     NA                   NA                0.6818182   0.6230135   0.7406228
24 months   ki1114097-CMIN          GUINEA-BISSAU                  NA                   NA                0.3369176   0.2813564   0.3924787
24 months   ki1114097-CMIN          PERU                           NA                   NA                0.2745902   0.2184751   0.3307052


### Parameter: RR


agecat      studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                   (0%, 5%]          1.2872604   0.7777269   2.1306186
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%                  (0%, 5%]          2.0709436   1.3227553   3.2423287
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED       PERU                           0%                   (0%, 5%]          1.0657113   0.5040843   2.2530765
Birth       ki0047075b-MAL-ED       PERU                           >5%                  (0%, 5%]          0.6214960   0.2775069   1.3918838
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   (0%, 5%]          1.4678542   0.8398314   2.5655098
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  (0%, 5%]          1.7680643   1.0470651   2.9855366
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED       INDIA                          0%                   (0%, 5%]          1.1430000   0.5580630   2.3410423
6 months    ki0047075b-MAL-ED       INDIA                          >5%                  (0%, 5%]          1.8296610   1.0354857   3.2329363
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED       PERU                           0%                   (0%, 5%]          1.1214335   0.7050875   1.7836271
6 months    ki0047075b-MAL-ED       PERU                           >5%                  (0%, 5%]          0.7194682   0.4451788   1.1627563
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   (0%, 5%]          1.5398496   0.9371337   2.5302014
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  (0%, 5%]          0.7688787   0.3476568   1.7004541
6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6 months    ki1000109-ResPak        PAKISTAN                       0%                   (0%, 5%]          1.0308468   0.5858313   1.8139099
6 months    ki1000109-ResPak        PAKISTAN                       >5%                  (0%, 5%]          1.1429507   0.7468732   1.7490738
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   (0%, 5%]          0.8495401   0.6150812   1.1733709
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  (0%, 5%]          0.8692773   0.6560527   1.1518023
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   (0%, 5%]          0.7988422   0.5291296   1.2060351
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  (0%, 5%]          1.1657388   0.8189367   1.6594042
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   (0%, 5%]          0.6478232   0.4991673   0.8407499
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  (0%, 5%]          0.6834973   0.5115115   0.9133098
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6 months    ki1114097-CMIN          BANGLADESH                     0%                   (0%, 5%]          0.6670595   0.4431965   1.0039979
6 months    ki1114097-CMIN          BANGLADESH                     >5%                  (0%, 5%]          0.7655089   0.5328541   1.0997453
6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                   (0%, 5%]          1.1890045   0.6267491   2.2556583
6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%                  (0%, 5%]          1.2179481   0.6637764   2.2347848
6 months    ki1114097-CMIN          PERU                           (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6 months    ki1114097-CMIN          PERU                           0%                   (0%, 5%]          0.5714286   0.2454735   1.3302074
6 months    ki1114097-CMIN          PERU                           >5%                  (0%, 5%]          1.0337079   0.5395527   1.9804405
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   (0%, 5%]          1.1273878   0.8793383   1.4454087
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  (0%, 5%]          1.1553752   0.8899033   1.5000416
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       INDIA                          0%                   (0%, 5%]          1.0250143   0.7216524   1.4559009
24 months   ki0047075b-MAL-ED       INDIA                          >5%                  (0%, 5%]          0.8653991   0.5987594   1.2507789
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   (0%, 5%]          1.3734278   0.7090642   2.6602724
24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  (0%, 5%]          1.6698743   0.8955982   3.1135393
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       PERU                           0%                   (0%, 5%]          1.1393343   0.7623985   1.7026303
24 months   ki0047075b-MAL-ED       PERU                           >5%                  (0%, 5%]          0.6838843   0.4360296   1.0726283
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   (0%, 5%]          1.0020877   0.8453120   1.1879399
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  (0%, 5%]          1.0735972   0.8881133   1.2978197
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   (0%, 5%]          1.0762732   0.9004547   1.2864212
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  (0%, 5%]          1.1639293   0.9909878   1.3670515
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   (0%, 5%]          0.8482901   0.6481057   1.1103066
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  (0%, 5%]          0.9499808   0.7470535   1.2080306
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   (0%, 5%]          0.9059318   0.6311876   1.3002671
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  (0%, 5%]          0.9815008   0.6557125   1.4691559
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN          BANGLADESH                     0%                   (0%, 5%]          0.7796669   0.6196510   0.9810047
24 months   ki1114097-CMIN          BANGLADESH                     >5%                  (0%, 5%]          0.9496766   0.7846066   1.1494751
24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                   (0%, 5%]          1.2459418   0.7727074   2.0090024
24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%                  (0%, 5%]          1.7449306   1.1188711   2.7212991
24 months   ki1114097-CMIN          PERU                           (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN          PERU                           0%                   (0%, 5%]          0.8349059   0.5156358   1.3518609
24 months   ki1114097-CMIN          PERU                           >5%                  (0%, 5%]          1.0739197   0.6627743   1.7401153


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                 0.0112689   -0.0443057    0.0668436
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -0.0146436   -0.0720036    0.0427163
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                 0.0224730   -0.0362795    0.0812256
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                 0.0374349   -0.0100810    0.0849509
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -0.0426686   -0.1110673    0.0257301
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.0369011   -0.0281067    0.1019090
6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]             NA                 0.0332050   -0.0658575    0.1322675
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -0.0415625   -0.0930315    0.0099065
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.0107589   -0.0431978    0.0216800
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.0774230   -0.1220487   -0.0327974
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -0.1024591   -0.2117444    0.0068262
6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                 0.0116546   -0.0216713    0.0449806
6 months    ki1114097-CMIN          PERU                           (0%, 5%]             NA                -0.0083704   -0.0400026    0.0232617
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.0211522   -0.0904484    0.0481441
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -0.0124362   -0.0681836    0.0433113
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                 0.0553220   -0.0155881    0.1262321
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                 0.0083520   -0.0769544    0.0936583
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0105058   -0.0802610    0.0592493
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                 0.0466626   -0.0081334    0.1014587
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.0198221   -0.0615754    0.0219312
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                 0.0000521   -0.0683656    0.0684698
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -0.0743100   -0.1729374    0.0243174
24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                 0.0871691    0.0022636    0.1720746
24 months   ki1114097-CMIN          PERU                           (0%, 5%]             NA                -0.0219191   -0.1035664    0.0597281


### Parameter: PAF


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                 0.0616195   -0.2931046    0.3190358
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -0.1236095   -0.7269764    0.2689546
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                 0.1203556   -0.2528479    0.3823878
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                 0.1920575   -0.0882688    0.4001748
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -0.1941420   -0.5523845    0.0814291
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.1571480   -0.1690534    0.3923293
6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]             NA                 0.0940141   -0.2348064    0.3352720
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -0.1549934   -0.3650674    0.0227517
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.0667281   -0.2891795    0.1173387
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.3690498   -0.6033244   -0.1690069
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -0.2677156   -0.5906924   -0.0103166
6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                 0.1283919   -0.3264673    0.4272752
6 months    ki1114097-CMIN          PERU                           (0%, 5%]             NA                -0.1236097   -0.7010842    0.2578270
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                -0.0457577   -0.2074591    0.0942889
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -0.0297159   -0.1719060    0.0952220
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                 0.2574165   -0.1517615    0.5212288
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                 0.0226858   -0.2387446    0.2289427
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                -0.0146944   -0.1171090    0.0783309
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                 0.0841104   -0.0194690    0.1771660
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.0601966   -0.1951339    0.0595056
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                 0.0002028   -0.3050834    0.2340762
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -0.1089880   -0.2648635    0.0276782
24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                 0.2587253   -0.0402668    0.4717814
24 months   ki1114097-CMIN          PERU                           (0%, 5%]             NA                -0.0798249   -0.4223430    0.1802105
