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

unadjusted

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
![](/tmp/a6b45f0d-67cd-47d6-b16c-ef9b68c07eae/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a6b45f0d-67cd-47d6-b16c-ef9b68c07eae/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a6b45f0d-67cd-47d6-b16c-ef9b68c07eae/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a6b45f0d-67cd-47d6-b16c-ef9b68c07eae/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.1354167   0.0668365   0.2039968
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.1744186   0.0940620   0.2547752
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.2533333   0.1547114   0.3519553
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.1363636   0.0645380   0.2081893
Birth       ki0047075b-MAL-ED       PERU                           0%                   NA                0.1445783   0.0687889   0.2203678
Birth       ki0047075b-MAL-ED       PERU                           >5%                  NA                0.0862069   0.0350420   0.1373718
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.1413043   0.0699773   0.2126314
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.1971831   0.1044436   0.2899226
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.2307692   0.1370732   0.3244652
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.1574803   0.0939953   0.2209654
6 months    ki0047075b-MAL-ED       INDIA                          0%                   NA                0.1800000   0.0732843   0.2867157
6 months    ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.2881356   0.1723269   0.4039443
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.2471910   0.1574050   0.3369770
6 months    ki0047075b-MAL-ED       PERU                           0%                   NA                0.2500000   0.1468923   0.3531077
6 months    ki0047075b-MAL-ED       PERU                           >5%                  NA                0.1810345   0.1108357   0.2512332
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.1979167   0.1180539   0.2777794
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.3047619   0.2165390   0.3929848
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.1521739   0.0481643   0.2561836
6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]             NA                0.3281250   0.2128466   0.4434034
6 months    ki1000109-ResPak        PAKISTAN                       0%                   NA                0.3414634   0.1960032   0.4869236
6 months    ki1000109-ResPak        PAKISTAN                       >5%                  NA                0.3692308   0.2860953   0.4523663
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.2721893   0.2050226   0.3393561
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.2403101   0.1665091   0.3141111
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.2803347   0.2233370   0.3373325
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.1652893   0.1184507   0.2121278
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.1329114   0.0799322   0.1858906
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.1803279   0.1245776   0.2360781
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.2874251   0.2187386   0.3561117
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.1818182   0.1408527   0.2227837
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.1932367   0.1394116   0.2470618
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.4915254   0.3636977   0.6193532
6 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                0.3209877   0.2191088   0.4228665
6 months    ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.3689320   0.2755558   0.4623082
6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                0.0789474   0.0405761   0.1173186
6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                0.0943396   0.0549635   0.1337158
6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%                  NA                0.0962963   0.0610829   0.1315097
6 months    ki1114097-CMIN          PERU                           (0%, 5%]             NA                0.0760870   0.0377470   0.1144270
6 months    ki1114097-CMIN          PERU                           0%                   NA                0.0434783   0.0139889   0.0729676
6 months    ki1114097-CMIN          PERU                           >5%                  NA                0.0786517   0.0463369   0.1109664
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.4337349   0.3268644   0.5406054
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.4687500   0.3462024   0.5912976
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.4923077   0.3704826   0.6141328
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.4262295   0.3382832   0.5141758
24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                0.4583333   0.3170656   0.5996011
24 months   ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.3684211   0.2429177   0.4939244
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                0.1600000   0.0768482   0.2431518
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   NA                0.2207792   0.1279325   0.3136259
24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  NA                0.2631579   0.1639397   0.3623761
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                0.4375000   0.3156596   0.5593404
24 months   ki0047075b-MAL-ED       PERU                           0%                   NA                0.4528302   0.3184851   0.5871753
24 months   ki0047075b-MAL-ED       PERU                           >5%                  NA                0.2619048   0.1676465   0.3561630
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.6987952   0.5998643   0.7977261
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.7173913   0.6251677   0.8096149
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.7435897   0.6062275   0.8809520
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.4765625   0.3899377   0.5631873
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.5327103   0.4380644   0.6273561
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.6185567   0.5501248   0.6869886
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.3448276   0.2836123   0.4060428
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.2980132   0.2249972   0.3710293
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.3350515   0.2685742   0.4015289
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.3113208   0.2230879   0.3995537
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.2382671   0.1880486   0.2884857
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.2519084   0.1774979   0.3263189
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.7586207   0.6482648   0.8689766
24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                0.5882353   0.4833927   0.6930779
24 months   ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.7171717   0.6282715   0.8060719
24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                0.2467532   0.1502854   0.3432211
24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                   NA                0.3030303   0.2123401   0.3937205
24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%                  NA                0.4368932   0.3409328   0.5328536
24 months   ki1114097-CMIN          PERU                           (0%, 5%]             NA                0.2911392   0.1907569   0.3915215
24 months   ki1114097-CMIN          PERU                           0%                   NA                0.2371134   0.1523005   0.3219263
24 months   ki1114097-CMIN          PERU                           >5%                  NA                0.3088235   0.1987875   0.4188596


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
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                   (0%, 5%]          1.2880143   0.6495079   2.5542119
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%                  (0%, 5%]          1.8707692   0.9876528   3.5435302
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED       PERU                           0%                   (0%, 5%]          1.0602410   0.5042784   2.2291473
Birth       ki0047075b-MAL-ED       PERU                           >5%                  (0%, 5%]          0.6321839   0.2859019   1.3978799
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                   (0%, 5%]          1.3954496   0.6999739   2.7819316
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                  (0%, 5%]          1.6331361   0.8544474   3.1214718
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED       INDIA                          0%                   (0%, 5%]          1.1430000   0.5580630   2.3410423
6 months    ki0047075b-MAL-ED       INDIA                          >5%                  (0%, 5%]          1.8296610   1.0354857   3.2329363
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED       PERU                           0%                   (0%, 5%]          1.0113636   0.5837546   1.7522028
6 months    ki0047075b-MAL-ED       PERU                           >5%                  (0%, 5%]          0.7323668   0.4305089   1.2458768
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   (0%, 5%]          1.5398496   0.9371337   2.5302014
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  (0%, 5%]          0.7688787   0.3476568   1.7004541
6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6 months    ki1000109-ResPak        PAKISTAN                       0%                   (0%, 5%]          1.0406504   0.5990987   1.8076375
6 months    ki1000109-ResPak        PAKISTAN                       >5%                  (0%, 5%]          1.1252747   0.7413694   1.7079788
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   (0%, 5%]          0.8828783   0.5953939   1.3091738
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  (0%, 5%]          1.0299254   0.7480758   1.4179664
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                   (0%, 5%]          0.8041139   0.4930812   1.3113441
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                  (0%, 5%]          1.0909836   0.7172710   1.6594080
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   (0%, 5%]          0.6325758   0.4554841   0.8785204
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  (0%, 5%]          0.6723027   0.4657742   0.9704079
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6 months    ki1114097-CMIN          BANGLADESH                     0%                   (0%, 5%]          0.6530438   0.4332498   0.9843426
6 months    ki1114097-CMIN          BANGLADESH                     >5%                  (0%, 5%]          0.7505859   0.5221528   1.0789545
6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                   (0%, 5%]          1.1949686   0.6296834   2.2677267
6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%                  (0%, 5%]          1.2197531   0.6639244   2.2409142
6 months    ki1114097-CMIN          PERU                           (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6 months    ki1114097-CMIN          PERU                           0%                   (0%, 5%]          0.5714286   0.2454735   1.3302074
6 months    ki1114097-CMIN          PERU                           >5%                  (0%, 5%]          1.0337079   0.5395527   1.9804405
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   (0%, 5%]          1.0807292   0.7545663   1.5478765
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  (0%, 5%]          1.1350427   0.8004851   1.6094266
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       INDIA                          0%                   (0%, 5%]          1.0753205   0.7420852   1.5581961
24 months   ki0047075b-MAL-ED       INDIA                          >5%                  (0%, 5%]          0.8643725   0.5804100   1.2872620
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       NEPAL                          0%                   (0%, 5%]          1.3798701   0.7071253   2.6926510
24 months   ki0047075b-MAL-ED       NEPAL                          >5%                  (0%, 5%]          1.6447368   0.8654749   3.1256358
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       PERU                           0%                   (0%, 5%]          1.0350404   0.6890301   1.5548067
24 months   ki0047075b-MAL-ED       PERU                           >5%                  (0%, 5%]          0.5986395   0.3797816   0.9436192
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   (0%, 5%]          1.0266117   0.8479216   1.2429587
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  (0%, 5%]          1.0641026   0.8431522   1.3429535
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   (0%, 5%]          1.1178183   0.8669281   1.4413164
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  (0%, 5%]          1.2979550   1.0491703   1.6057329
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   (0%, 5%]          0.8642384   0.6386046   1.1695939
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  (0%, 5%]          0.9716495   0.7445352   1.2680432
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   (0%, 5%]          0.7653430   0.5376081   1.0895481
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  (0%, 5%]          0.8091603   0.5373420   1.2184798
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN          BANGLADESH                     0%                   (0%, 5%]          0.7754011   0.6160446   0.9759794
24 months   ki1114097-CMIN          BANGLADESH                     >5%                  (0%, 5%]          0.9453627   0.7809005   1.1444616
24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                   (0%, 5%]          1.2280702   0.7505828   2.0093138
24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%                  (0%, 5%]          1.7705672   1.1307446   2.7724282
24 months   ki1114097-CMIN          PERU                           (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN          PERU                           0%                   (0%, 5%]          0.8144330   0.4955556   1.3384998
24 months   ki1114097-CMIN          PERU                           >5%                  (0%, 5%]          1.0607417   0.6460683   1.7415698


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                 0.0474627   -0.0111197    0.1060452
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -0.0178967   -0.0761888    0.0403953
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                 0.0454176   -0.0148643    0.1056996
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                 0.0374349   -0.0100810    0.0849509
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -0.0274108   -0.0997092    0.0448876
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.0369011   -0.0281067    0.1019090
6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]             NA                 0.0250665   -0.0739340    0.1240669
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -0.0040329   -0.0595154    0.0514496
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.0040543   -0.0396235    0.0315150
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.0776349   -0.1359950   -0.0192749
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -0.1088094   -0.2190610    0.0014422
6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                 0.0118264   -0.0215244    0.0451772
6 months    ki1114097-CMIN          PERU                           (0%, 5%]             NA                -0.0083704   -0.0400026    0.0232617
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                 0.0285292   -0.0551593    0.1122178
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -0.0077273   -0.0673701    0.0519155
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                 0.0549123   -0.0173420    0.1271665
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -0.0693408   -0.1686356    0.0299540
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.0161581   -0.0604626    0.0927788
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                 0.0782161    0.0058079    0.1506242
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.0155382   -0.0625150    0.0314386
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.0545114   -0.1319923    0.0229694
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -0.0768025   -0.1757915    0.0221865
24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                 0.0901643    0.0049797    0.1753489
24 months   ki1114097-CMIN          PERU                           (0%, 5%]             NA                -0.0165491   -0.0984056    0.0653074


### Parameter: PAF


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                 0.2595301   -0.1339723    0.5164824
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -0.1510695   -0.7625714    0.2482795
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                 0.2432367   -0.1529939    0.5033012
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                 0.1920575   -0.0882688    0.4001748
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -0.1247191   -0.5062558    0.1601738
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.1571480   -0.1690534    0.3923293
6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]             NA                 0.0709714   -0.2562162    0.3129414
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                -0.0150394   -0.2445358    0.1721370
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.0251451   -0.2712481    0.1733145
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.3700599   -0.6768285   -0.1194133
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -0.2843084   -0.6099070   -0.0245610
6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                 0.1302847   -0.3252402    0.4292320
6 months    ki1114097-CMIN          PERU                           (0%, 5%]             NA                -0.1236097   -0.7010842    0.2578270
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                 0.0617163   -0.1381354    0.2264748
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                -0.0184642   -0.1714472    0.1145403
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]             NA                 0.2555102   -0.1638476    0.5237649
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]             NA                -0.1883446   -0.4921556    0.0536089
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.0226002   -0.0907394    0.1241626
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                 0.1409861   -0.0006952    0.2626077
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                -0.0471869   -0.2000258    0.0861859
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.2122642   -0.5544956    0.0546230
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -0.1126437   -0.2691161    0.0245369
24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]             NA                 0.2676154   -0.0329562    0.4807260
24 months   ki1114097-CMIN          PERU                           (0%, 5%]             NA                -0.0602683   -0.4044333    0.1995570
