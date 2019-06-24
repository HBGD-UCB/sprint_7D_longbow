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
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                0       71   257
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                1       15   257
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          0       83   257
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          1       13   257
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%               0       56   257
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%               1       19   257
Birth       ki0047075b-MAL-ED       BRAZIL                         0%                0      156   191
Birth       ki0047075b-MAL-ED       BRAZIL                         0%                1       20   191
Birth       ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          0       12   191
Birth       ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          1        1   191
Birth       ki0047075b-MAL-ED       BRAZIL                         >5%               0        2   191
Birth       ki0047075b-MAL-ED       BRAZIL                         >5%               1        0   191
Birth       ki0047075b-MAL-ED       INDIA                          0%                0       37   206
Birth       ki0047075b-MAL-ED       INDIA                          0%                1       10   206
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]          0       90   206
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]          1       19   206
Birth       ki0047075b-MAL-ED       INDIA                          >5%               0       46   206
Birth       ki0047075b-MAL-ED       INDIA                          >5%               1        4   206
Birth       ki0047075b-MAL-ED       NEPAL                          0%                0       55   173
Birth       ki0047075b-MAL-ED       NEPAL                          0%                1        5   173
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          0       53   173
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          1        4   173
Birth       ki0047075b-MAL-ED       NEPAL                          >5%               0       47   173
Birth       ki0047075b-MAL-ED       NEPAL                          >5%               1        9   173
Birth       ki0047075b-MAL-ED       PERU                           0%                0       71   287
Birth       ki0047075b-MAL-ED       PERU                           0%                1       12   287
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]          0       76   287
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]          1       12   287
Birth       ki0047075b-MAL-ED       PERU                           >5%               0      106   287
Birth       ki0047075b-MAL-ED       PERU                           >5%               1       10   287
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%                0      173   252
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%                1       20   252
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]          0       44   252
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]          1        6   252
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   >5%               0        8   252
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   >5%               1        1   252
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                0       49   123
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                1       11   123
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          0       38   123
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          1        4   123
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               0       18   123
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               1        3   123
Birth       ki1000109-ResPak        PAKISTAN                       0%                0        0     6
Birth       ki1000109-ResPak        PAKISTAN                       0%                1        1     6
Birth       ki1000109-ResPak        PAKISTAN                       (0%, 5%]          0        2     6
Birth       ki1000109-ResPak        PAKISTAN                       (0%, 5%]          1        0     6
Birth       ki1000109-ResPak        PAKISTAN                       >5%               0        2     6
Birth       ki1000109-ResPak        PAKISTAN                       >5%               1        1     6
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%                0        4    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%                1        0    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          0        3    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          1        0    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%               0       18    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%               1        1    26
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                0        6    27
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                1        2    27
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]          0        7    27
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]          1        0    27
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%               0        9    27
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%               1        3    27
Birth       ki1114097-CMIN          BANGLADESH                     0%                0        6    13
Birth       ki1114097-CMIN          BANGLADESH                     0%                1        5    13
Birth       ki1114097-CMIN          BANGLADESH                     (0%, 5%]          0        0    13
Birth       ki1114097-CMIN          BANGLADESH                     (0%, 5%]          1        0    13
Birth       ki1114097-CMIN          BANGLADESH                     >5%               0        1    13
Birth       ki1114097-CMIN          BANGLADESH                     >5%               1        1    13
Birth       ki1114097-CMIN          BRAZIL                         0%                0       36   115
Birth       ki1114097-CMIN          BRAZIL                         0%                1        2   115
Birth       ki1114097-CMIN          BRAZIL                         (0%, 5%]          0       46   115
Birth       ki1114097-CMIN          BRAZIL                         (0%, 5%]          1        1   115
Birth       ki1114097-CMIN          BRAZIL                         >5%               0       28   115
Birth       ki1114097-CMIN          BRAZIL                         >5%               1        2   115
Birth       ki1114097-CMIN          PERU                           0%                0        4    10
Birth       ki1114097-CMIN          PERU                           0%                1        0    10
Birth       ki1114097-CMIN          PERU                           (0%, 5%]          0        5    10
Birth       ki1114097-CMIN          PERU                           (0%, 5%]          1        0    10
Birth       ki1114097-CMIN          PERU                           >5%               0        1    10
Birth       ki1114097-CMIN          PERU                           >5%               1        0    10
Birth       ki1114097-CONTENT       PERU                           0%                0        0     2
Birth       ki1114097-CONTENT       PERU                           0%                1        0     2
Birth       ki1114097-CONTENT       PERU                           (0%, 5%]          0        1     2
Birth       ki1114097-CONTENT       PERU                           (0%, 5%]          1        0     2
Birth       ki1114097-CONTENT       PERU                           >5%               0        1     2
Birth       ki1114097-CONTENT       PERU                           >5%               1        0     2
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                0       57   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                1       14   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          0       79   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          1       13   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%               0       60   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%               1       18   241
6 months    ki0047075b-MAL-ED       BRAZIL                         0%                0      187   209
6 months    ki0047075b-MAL-ED       BRAZIL                         0%                1        5   209
6 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          0       14   209
6 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          1        1   209
6 months    ki0047075b-MAL-ED       BRAZIL                         >5%               0        2   209
6 months    ki0047075b-MAL-ED       BRAZIL                         >5%               1        0   209
6 months    ki0047075b-MAL-ED       INDIA                          0%                0       41   236
6 months    ki0047075b-MAL-ED       INDIA                          0%                1        9   236
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]          0      107   236
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]          1       20   236
6 months    ki0047075b-MAL-ED       INDIA                          >5%               0       42   236
6 months    ki0047075b-MAL-ED       INDIA                          >5%               1       17   236
6 months    ki0047075b-MAL-ED       NEPAL                          0%                0       75   236
6 months    ki0047075b-MAL-ED       NEPAL                          0%                1        5   236
6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          0       71   236
6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          1        5   236
6 months    ki0047075b-MAL-ED       NEPAL                          >5%               0       78   236
6 months    ki0047075b-MAL-ED       NEPAL                          >5%               1        2   236
6 months    ki0047075b-MAL-ED       PERU                           0%                0       51   273
6 months    ki0047075b-MAL-ED       PERU                           0%                1       17   273
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]          0       67   273
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]          1       22   273
6 months    ki0047075b-MAL-ED       PERU                           >5%               0       95   273
6 months    ki0047075b-MAL-ED       PERU                           >5%               1       21   273
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                0      155   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                1       35   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]          0       42   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]          1       13   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%               0        7   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%               1        2   254
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                0       73   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                1       32   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          0       77   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          1       19   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               0       39   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               1        7   247
6 months    ki1000109-ResPak        PAKISTAN                       0%                0       27   235
6 months    ki1000109-ResPak        PAKISTAN                       0%                1       14   235
6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]          0       43   235
6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]          1       21   235
6 months    ki1000109-ResPak        PAKISTAN                       >5%               0       82   235
6 months    ki1000109-ResPak        PAKISTAN                       >5%               1       48   235
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                0       98   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                1       31   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          0      123   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          1       46   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%               0      172   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%               1       67   537
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                0      137   583
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                1       21   583
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]          0      202   583
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]          1       40   583
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%               0      150   583
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%               1       33   583
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                0      279   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                1       62   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]          0      119   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]          1       48   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%               0      167   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%               1       40   715
6 months    ki1114097-CMIN          BANGLADESH                     0%                0       55   243
6 months    ki1114097-CMIN          BANGLADESH                     0%                1       26   243
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]          0       30   243
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]          1       29   243
6 months    ki1114097-CMIN          BANGLADESH                     >5%               0       65   243
6 months    ki1114097-CMIN          BANGLADESH                     >5%               1       38   243
6 months    ki1114097-CMIN          BRAZIL                         0%                0       38   108
6 months    ki1114097-CMIN          BRAZIL                         0%                1        0   108
6 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]          0       38   108
6 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]          1        3   108
6 months    ki1114097-CMIN          BRAZIL                         >5%               0       22   108
6 months    ki1114097-CMIN          BRAZIL                         >5%               1        7   108
6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                0      192   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                1       20   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]          0      175   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]          1       15   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%               0      244   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%               1       26   672
6 months    ki1114097-CMIN          PERU                           0%                0      176   635
6 months    ki1114097-CMIN          PERU                           0%                1        8   635
6 months    ki1114097-CMIN          PERU                           (0%, 5%]          0      170   635
6 months    ki1114097-CMIN          PERU                           (0%, 5%]          1       14   635
6 months    ki1114097-CMIN          PERU                           >5%               0      246   635
6 months    ki1114097-CMIN          PERU                           >5%               1       21   635
6 months    ki1114097-CONTENT       PERU                           0%                0      101   215
6 months    ki1114097-CONTENT       PERU                           0%                1       14   215
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]          0       40   215
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]          1        3   215
6 months    ki1114097-CONTENT       PERU                           >5%               0       55   215
6 months    ki1114097-CONTENT       PERU                           >5%               1        2   215
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                0       34   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                1       30   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          0       47   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]          1       36   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%               0       33   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%               1       32   212
24 months   ki0047075b-MAL-ED       BRAZIL                         0%                0      148   169
24 months   ki0047075b-MAL-ED       BRAZIL                         0%                1        6   169
24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          0       13   169
24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]          1        0   169
24 months   ki0047075b-MAL-ED       BRAZIL                         >5%               0        2   169
24 months   ki0047075b-MAL-ED       BRAZIL                         >5%               1        0   169
24 months   ki0047075b-MAL-ED       INDIA                          0%                0       26   227
24 months   ki0047075b-MAL-ED       INDIA                          0%                1       22   227
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]          0       70   227
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]          1       52   227
24 months   ki0047075b-MAL-ED       INDIA                          >5%               0       36   227
24 months   ki0047075b-MAL-ED       INDIA                          >5%               1       21   227
24 months   ki0047075b-MAL-ED       NEPAL                          0%                0       60   228
24 months   ki0047075b-MAL-ED       NEPAL                          0%                1       17   228
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          0       63   228
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]          1       12   228
24 months   ki0047075b-MAL-ED       NEPAL                          >5%               0       56   228
24 months   ki0047075b-MAL-ED       NEPAL                          >5%               1       20   228
24 months   ki0047075b-MAL-ED       PERU                           0%                0       29   201
24 months   ki0047075b-MAL-ED       PERU                           0%                1       24   201
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]          0       36   201
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]          1       28   201
24 months   ki0047075b-MAL-ED       PERU                           >5%               0       62   201
24 months   ki0047075b-MAL-ED       PERU                           >5%               1       22   201
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                0      117   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                1       60   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]          0       31   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]          1       21   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%               0        6   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%               1        3   238
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                0       26   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                1       66   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          0       25   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]          1       58   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               0       10   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%               1       29   214
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                0       50   429
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                1       57   429
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          0       67   429
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]          1       61   429
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%               0       74   429
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%               1      120   429
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                0      106   577
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                1       45   577
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]          0      152   577
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]          1       80   577
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%               0      129   577
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%               1       65   577
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                0      211   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                1       66   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]          0       73   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]          1       33   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%               0       98   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%               1       33   514
24 months   ki1114097-CMIN          BANGLADESH                     0%                0       35   242
24 months   ki1114097-CMIN          BANGLADESH                     0%                1       50   242
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]          0       14   242
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]          1       44   242
24 months   ki1114097-CMIN          BANGLADESH                     >5%               0       28   242
24 months   ki1114097-CMIN          BANGLADESH                     >5%               1       71   242
24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                0       69   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                1       30   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]          0       58   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]          1       19   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%               0       58   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%               1       45   279
24 months   ki1114097-CMIN          PERU                           0%                0       74   244
24 months   ki1114097-CMIN          PERU                           0%                1       23   244
24 months   ki1114097-CMIN          PERU                           (0%, 5%]          0       56   244
24 months   ki1114097-CMIN          PERU                           (0%, 5%]          1       23   244
24 months   ki1114097-CMIN          PERU                           >5%               0       47   244
24 months   ki1114097-CMIN          PERU                           >5%               1       21   244
24 months   ki1114097-CONTENT       PERU                           0%                0       69   164
24 months   ki1114097-CONTENT       PERU                           0%                1       15   164
24 months   ki1114097-CONTENT       PERU                           (0%, 5%]          0       34   164
24 months   ki1114097-CONTENT       PERU                           (0%, 5%]          1        2   164
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
![](/tmp/3f89b9b0-ab72-4763-9e3e-0ac124ca16cd/286161b5-0730-4e3c-90bb-aaf385276ac4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3f89b9b0-ab72-4763-9e3e-0ac124ca16cd/286161b5-0730-4e3c-90bb-aaf385276ac4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3f89b9b0-ab72-4763-9e3e-0ac124ca16cd/286161b5-0730-4e3c-90bb-aaf385276ac4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3f89b9b0-ab72-4763-9e3e-0ac124ca16cd/286161b5-0730-4e3c-90bb-aaf385276ac4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.1660216   0.0880461   0.2439970
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.1350965   0.0637775   0.2064155
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.2746937   0.1709145   0.3784730
Birth       ki0047075b-MAL-ED       PERU                           0%                   NA                0.1523425   0.0756086   0.2290764
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.1420425   0.0693122   0.2147728
Birth       ki0047075b-MAL-ED       PERU                           >5%                  NA                0.0867996   0.0359316   0.1376677
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.1888218   0.0972520   0.2803916
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.1400716   0.0680664   0.2120769
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.2396184   0.1436640   0.3355727
6 months    ki0047075b-MAL-ED       INDIA                          0%                   NA                0.1800000   0.0732843   0.2867157
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.1574803   0.0939953   0.2209654
6 months    ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.2881356   0.1723269   0.4039443
6 months    ki0047075b-MAL-ED       PERU                           0%                   NA                0.2637854   0.1552641   0.3723067
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.2419779   0.1497753   0.3341804
6 months    ki0047075b-MAL-ED       PERU                           >5%                  NA                0.1769452   0.1061171   0.2477734
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.3047619   0.2165390   0.3929848
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.1979167   0.1180539   0.2777794
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.1521739   0.0481643   0.2561836
6 months    ki1000109-ResPak        PAKISTAN                       0%                   NA                0.3241606   0.1761533   0.4721678
6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]             NA                0.3233518   0.2061296   0.4405739
6 months    ki1000109-ResPak        PAKISTAN                       >5%                  NA                0.3659570   0.2822976   0.4496164
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.2447741   0.1739904   0.3155579
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.2969804   0.2294777   0.3644832
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.2614572   0.2058981   0.3170164
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.1305289   0.0779437   0.1831141
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.1644279   0.1177430   0.2111128
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.1840271   0.1272002   0.2408539
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.1842561   0.1451676   0.2233445
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.2767253   0.2150934   0.3383571
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.1938069   0.1423242   0.2452896
6 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                0.3466312   0.2407595   0.4525028
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.5147623   0.3890759   0.6404486
6 months    ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.3835324   0.2903297   0.4767350
6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                0.0934598   0.0538532   0.1330664
6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                0.0773473   0.0386344   0.1160602
6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%                  NA                0.0947498   0.0592394   0.1302601
6 months    ki1114097-CMIN          PERU                           0%                   NA                0.0434783   0.0139889   0.0729676
6 months    ki1114097-CMIN          PERU                           (0%, 5%]             NA                0.0760870   0.0377470   0.1144270
6 months    ki1114097-CMIN          PERU                           >5%                  NA                0.0786517   0.0463369   0.1109664
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.4662144   0.3508904   0.5815384
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.4325039   0.3286228   0.5363851
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.4968315   0.3777418   0.6159213
24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                0.4003310   0.2596429   0.5410191
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.4244452   0.3376674   0.5112230
24 months   ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.3610396   0.2397707   0.4823084
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                0.2093436   0.1149493   0.3037378
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                0.1517832   0.0676035   0.2359629
24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  NA                0.2585659   0.1593720   0.3577599
24 months   ki0047075b-MAL-ED       PERU                           0%                   NA                0.4718938   0.3409431   0.6028444
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.4025348   0.2810156   0.5240540
24 months   ki0047075b-MAL-ED       PERU                           >5%                  NA                0.2725490   0.1805856   0.3645124
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.7179603   0.6258940   0.8100266
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.6941253   0.5951610   0.7930897
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.7327121   0.6022004   0.8632239
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.5335511   0.4462055   0.6208967
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.5127345   0.4278572   0.5976118
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.5976547   0.5303028   0.6650066
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.3040833   0.2337378   0.3744288
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.3531232   0.2949474   0.4112990
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.3384812   0.2729902   0.4039723
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.2397810   0.1911937   0.2883684
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.2843378   0.1999190   0.3687567
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.2764117   0.2040386   0.3487847
24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                0.6163143   0.5097153   0.7229133
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.7786568   0.6666958   0.8906178
24 months   ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.7356969   0.6455874   0.8258065
24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                0.3081423   0.2188857   0.3973990
24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                0.2538267   0.1537487   0.3539047
24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%                  NA                0.4326239   0.3347081   0.5305397
24 months   ki1114097-CMIN          PERU                           0%                   NA                0.2378017   0.1518422   0.3237611
24 months   ki1114097-CMIN          PERU                           (0%, 5%]             NA                0.2929145   0.1922908   0.3935381
24 months   ki1114097-CMIN          PERU                           >5%                  NA                0.3124029   0.2008379   0.4239678


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
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                0.8137286   0.4014418   1.6494398
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                1.6545662   0.9042976   3.0273102
Birth       ki0047075b-MAL-ED       PERU                           0%                   0%                1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                0.9323891   0.4545338   1.9126177
Birth       ki0047075b-MAL-ED       PERU                           >5%                  0%                0.5697663   0.2627859   1.2353540
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                0.7418193   0.3680240   1.4952714
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                1.2690186   0.6807300   2.3657078
6 months    ki0047075b-MAL-ED       INDIA                          0%                   0%                1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                0.8748906   0.4271602   1.7919125
6 months    ki0047075b-MAL-ED       INDIA                          >5%                  0%                1.6007533   0.7820878   3.2763728
6 months    ki0047075b-MAL-ED       PERU                           0%                   0%                1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                0.9173284   0.5230943   1.6086802
6 months    ki0047075b-MAL-ED       PERU                           >5%                  0%                0.6707923   0.3777503   1.1911634
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                0.6494141   0.3952255   1.0670837
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                0.4993207   0.2376933   1.0489194
6 months    ki1000109-ResPak        PAKISTAN                       0%                   0%                1.0000000   1.0000000   1.0000000
6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]             0%                0.9975050   0.5572855   1.7854691
6 months    ki1000109-ResPak        PAKISTAN                       >5%                  0%                1.1289375   0.6767622   1.8832315
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                1.2132837   0.8445987   1.7429073
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                1.0681571   0.7508115   1.5196353
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                1.2597051   0.7710844   2.0579549
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                1.4098569   0.8492942   2.3404099
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                1.5018517   1.1192987   2.0151533
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                1.0518347   0.7590298   1.4575926
6 months    ki1114097-CMIN          BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                1.4850432   1.0042548   2.1960097
6 months    ki1114097-CMIN          BANGLADESH                     >5%                  0%                1.1064566   0.7490784   1.6343366
6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                   0%                1.0000000   1.0000000   1.0000000
6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             0%                0.8276000   0.4294198   1.5949935
6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%                  0%                1.0138024   0.5757163   1.7852463
6 months    ki1114097-CMIN          PERU                           0%                   0%                1.0000000   1.0000000   1.0000000
6 months    ki1114097-CMIN          PERU                           (0%, 5%]             0%                1.7499999   0.7517625   4.0737598
6 months    ki1114097-CMIN          PERU                           >5%                  0%                1.8089887   0.8185484   3.9978577
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             0%                0.9276932   0.6668994   1.2904715
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  0%                1.0656718   0.7621281   1.4901121
24 months   ki0047075b-MAL-ED       INDIA                          0%                   0%                1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             0%                1.0602358   0.7091450   1.5851480
24 months   ki0047075b-MAL-ED       INDIA                          >5%                  0%                0.9018527   0.5600781   1.4521873
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   0%                1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             0%                0.7250435   0.3552462   1.4797855
24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  0%                1.2351272   0.6808165   2.2407494
24 months   ki0047075b-MAL-ED       PERU                           0%                   0%                1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             0%                0.8530200   0.5691484   1.2784771
24 months   ki0047075b-MAL-ED       PERU                           >5%                  0%                0.5775643   0.3769073   0.8850467
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   0%                1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                0.9668018   0.7988783   1.1700227
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  0%                1.0205469   0.8234334   1.2648454
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             0%                0.9609848   0.7670850   1.2038976
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  0%                1.1201452   0.9234217   1.3587781
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             0%                1.1612713   0.8811586   1.5304293
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  0%                1.1131201   0.8271999   1.4978682
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             0%                1.1858229   0.8330510   1.6879828
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  0%                1.1527670   0.8353162   1.5908608
24 months   ki1114097-CMIN          BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             0%                1.2634086   1.0089206   1.5820883
24 months   ki1114097-CMIN          BANGLADESH                     >5%                  0%                1.1937041   0.9642450   1.4777670
24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                   0%                1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             0%                0.8237320   0.5054970   1.3423115
24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%                  0%                1.4039743   0.9725412   2.0267972
24 months   ki1114097-CMIN          PERU                           0%                   0%                1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN          PERU                           (0%, 5%]             0%                1.2317595   0.7479284   2.0285785
24 months   ki1114097-CMIN          PERU                           >5%                  0%                1.3137119   0.7894645   2.1860881


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                 0.0168578   -0.0479625    0.0816781
Birth       ki0047075b-MAL-ED       PERU                           0%                   NA                -0.0338756   -0.0967047    0.0289535
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0020998   -0.0782101    0.0740105
6 months    ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0149153   -0.0806247    0.1104552
6 months    ki0047075b-MAL-ED       PERU                           0%                   NA                -0.0440052   -0.1372793    0.0492689
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0699441   -0.1329657   -0.0069225
6 months    ki1000109-ResPak        PAKISTAN                       0%                   NA                 0.0290309   -0.1059094    0.1639713
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0233823   -0.0382826    0.0850472
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0307061   -0.0156192    0.0770314
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0255342   -0.0025458    0.0536141
6 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.0360849   -0.0527506    0.1249204
6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                -0.0026860   -0.0352124    0.0298404
6 months    ki1114097-CMIN          PERU                           0%                   NA                 0.0242383   -0.0031144    0.0515909
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0039503   -0.0985317    0.0906312
24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0181712   -0.1064477    0.1427902
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0055687   -0.0711918    0.0823292
24 months   ki0047075b-MAL-ED       PERU                           0%                   NA                -0.1037346   -0.2134038    0.0059347
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0030070   -0.0716731    0.0656591
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0212275   -0.0527925    0.0952475
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0252061   -0.0346728    0.0850851
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0170283   -0.0157735    0.0498301
24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.0655039   -0.0188998    0.1499076
24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                 0.0287752   -0.0445974    0.1021479
24 months   ki1114097-CMIN          PERU                           0%                   NA                 0.0367885   -0.0319032    0.1054802


### Parameter: PAF


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                 0.0921798   -0.3405104    0.3852062
Birth       ki0047075b-MAL-ED       PERU                           0%                   NA                -0.2859500   -0.9384128    0.1468961
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0112456   -0.5131754    0.3241909
6 months    ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0765217   -0.5697683    0.4567274
6 months    ki0047075b-MAL-ED       PERU                           0%                   NA                -0.2002237   -0.7081543    0.1566705
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.2978654   -0.5939064   -0.0568089
6 months    ki1000109-ResPak        PAKISTAN                       0%                   NA                 0.0821960   -0.3920042    0.3948551
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0871965   -0.1740639    0.2903196
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.1904432   -0.1525806    0.4313783
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.1217128   -0.0223428    0.2454699
6 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.0942863   -0.1701464    0.2989617
6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                -0.0295897   -0.4580035    0.2729407
6 months    ki1114097-CMIN          PERU                           0%                   NA                 0.3579373   -0.1818406    0.6511843
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                -0.0085455   -0.2354073    0.1766570
24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                 0.0434197   -0.3060829    0.2993968
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                 0.0259115   -0.4058048    0.3250497
24 months   ki0047075b-MAL-ED       PERU                           0%                   NA                -0.2817655   -0.6197714   -0.0142930
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                -0.0042059   -0.1049882    0.0873844
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                 0.0382629   -0.1048676    0.1628516
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                 0.0765470   -0.1244419    0.2416101
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                 0.0663072   -0.0703457    0.1855134
24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                 0.0960723   -0.0376595    0.2125690
24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                 0.0854074   -0.1599561    0.2788695
24 months   ki1114097-CMIN          PERU                           0%                   NA                 0.1339760   -0.1557931    0.3510970
