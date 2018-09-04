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

**Outcome Variable:** sstunted

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

agecat      studyid                 country                        perdiar6    sstunted   n_cell     n
----------  ----------------------  -----------------------------  ---------  ---------  -------  ----
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]           0       93   257
Birth       ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]           1        3   257
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                 0       83   257
Birth       ki0047075b-MAL-ED       BANGLADESH                     0%                 1        3   257
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%                0       72   257
Birth       ki0047075b-MAL-ED       BANGLADESH                     >5%                1        3   257
Birth       ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]           0       12   191
Birth       ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]           1        1   191
Birth       ki0047075b-MAL-ED       BRAZIL                         0%                 0      169   191
Birth       ki0047075b-MAL-ED       BRAZIL                         0%                 1        7   191
Birth       ki0047075b-MAL-ED       BRAZIL                         >5%                0        2   191
Birth       ki0047075b-MAL-ED       BRAZIL                         >5%                1        0   191
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]           0      105   206
Birth       ki0047075b-MAL-ED       INDIA                          (0%, 5%]           1        4   206
Birth       ki0047075b-MAL-ED       INDIA                          0%                 0       44   206
Birth       ki0047075b-MAL-ED       INDIA                          0%                 1        3   206
Birth       ki0047075b-MAL-ED       INDIA                          >5%                0       50   206
Birth       ki0047075b-MAL-ED       INDIA                          >5%                1        0   206
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]           0       55   173
Birth       ki0047075b-MAL-ED       NEPAL                          (0%, 5%]           1        2   173
Birth       ki0047075b-MAL-ED       NEPAL                          0%                 0       57   173
Birth       ki0047075b-MAL-ED       NEPAL                          0%                 1        3   173
Birth       ki0047075b-MAL-ED       NEPAL                          >5%                0       55   173
Birth       ki0047075b-MAL-ED       NEPAL                          >5%                1        1   173
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]           0       84   287
Birth       ki0047075b-MAL-ED       PERU                           (0%, 5%]           1        4   287
Birth       ki0047075b-MAL-ED       PERU                           0%                 0       81   287
Birth       ki0047075b-MAL-ED       PERU                           0%                 1        2   287
Birth       ki0047075b-MAL-ED       PERU                           >5%                0      114   287
Birth       ki0047075b-MAL-ED       PERU                           >5%                1        2   287
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]           0       50   252
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]           1        0   252
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%                 0      192   252
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   0%                 1        1   252
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                0        9   252
Birth       ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                1        0   252
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0       40   123
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1        2   123
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                 0       58   123
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                 1        2   123
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                0       19   123
Birth       ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                1        2   123
Birth       ki1000109-ResPak        PAKISTAN                       (0%, 5%]           0        2     6
Birth       ki1000109-ResPak        PAKISTAN                       (0%, 5%]           1        0     6
Birth       ki1000109-ResPak        PAKISTAN                       0%                 0        1     6
Birth       ki1000109-ResPak        PAKISTAN                       0%                 1        0     6
Birth       ki1000109-ResPak        PAKISTAN                       >5%                0        3     6
Birth       ki1000109-ResPak        PAKISTAN                       >5%                1        0     6
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]           0        3    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]           1        0    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%                 0        4    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     0%                 1        0    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%                0       19    26
Birth       ki1017093-NIH-Birth     BANGLADESH                     >5%                1        0    26
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]           0        7    27
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]           1        0    27
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                 0        7    27
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     0%                 1        1    27
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%                0       12    27
Birth       ki1017093c-NIH-Crypto   BANGLADESH                     >5%                1        0    27
Birth       ki1114097-CMIN          BANGLADESH                     (0%, 5%]           0        0    13
Birth       ki1114097-CMIN          BANGLADESH                     (0%, 5%]           1        0    13
Birth       ki1114097-CMIN          BANGLADESH                     0%                 0        6    13
Birth       ki1114097-CMIN          BANGLADESH                     0%                 1        5    13
Birth       ki1114097-CMIN          BANGLADESH                     >5%                0        2    13
Birth       ki1114097-CMIN          BANGLADESH                     >5%                1        0    13
Birth       ki1114097-CMIN          BRAZIL                         (0%, 5%]           0       46   115
Birth       ki1114097-CMIN          BRAZIL                         (0%, 5%]           1        1   115
Birth       ki1114097-CMIN          BRAZIL                         0%                 0       36   115
Birth       ki1114097-CMIN          BRAZIL                         0%                 1        2   115
Birth       ki1114097-CMIN          BRAZIL                         >5%                0       30   115
Birth       ki1114097-CMIN          BRAZIL                         >5%                1        0   115
Birth       ki1114097-CMIN          PERU                           (0%, 5%]           0        5    10
Birth       ki1114097-CMIN          PERU                           (0%, 5%]           1        0    10
Birth       ki1114097-CMIN          PERU                           0%                 0        4    10
Birth       ki1114097-CMIN          PERU                           0%                 1        0    10
Birth       ki1114097-CMIN          PERU                           >5%                0        1    10
Birth       ki1114097-CMIN          PERU                           >5%                1        0    10
Birth       ki1114097-CONTENT       PERU                           (0%, 5%]           0        1     2
Birth       ki1114097-CONTENT       PERU                           (0%, 5%]           1        0     2
Birth       ki1114097-CONTENT       PERU                           0%                 0        0     2
Birth       ki1114097-CONTENT       PERU                           0%                 1        0     2
Birth       ki1114097-CONTENT       PERU                           >5%                0        1     2
Birth       ki1114097-CONTENT       PERU                           >5%                1        0     2
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]           0       90   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]           1        2   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                 0       69   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     0%                 1        2   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                0       74   241
6 months    ki0047075b-MAL-ED       BANGLADESH                     >5%                1        4   241
6 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]           0       15   209
6 months    ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]           1        0   209
6 months    ki0047075b-MAL-ED       BRAZIL                         0%                 0      192   209
6 months    ki0047075b-MAL-ED       BRAZIL                         0%                 1        0   209
6 months    ki0047075b-MAL-ED       BRAZIL                         >5%                0        2   209
6 months    ki0047075b-MAL-ED       BRAZIL                         >5%                1        0   209
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]           0      122   236
6 months    ki0047075b-MAL-ED       INDIA                          (0%, 5%]           1        5   236
6 months    ki0047075b-MAL-ED       INDIA                          0%                 0       48   236
6 months    ki0047075b-MAL-ED       INDIA                          0%                 1        2   236
6 months    ki0047075b-MAL-ED       INDIA                          >5%                0       57   236
6 months    ki0047075b-MAL-ED       INDIA                          >5%                1        2   236
6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]           0       76   236
6 months    ki0047075b-MAL-ED       NEPAL                          (0%, 5%]           1        0   236
6 months    ki0047075b-MAL-ED       NEPAL                          0%                 0       79   236
6 months    ki0047075b-MAL-ED       NEPAL                          0%                 1        1   236
6 months    ki0047075b-MAL-ED       NEPAL                          >5%                0       80   236
6 months    ki0047075b-MAL-ED       NEPAL                          >5%                1        0   236
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]           0       86   273
6 months    ki0047075b-MAL-ED       PERU                           (0%, 5%]           1        3   273
6 months    ki0047075b-MAL-ED       PERU                           0%                 0       63   273
6 months    ki0047075b-MAL-ED       PERU                           0%                 1        5   273
6 months    ki0047075b-MAL-ED       PERU                           >5%                0      112   273
6 months    ki0047075b-MAL-ED       PERU                           >5%                1        4   273
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]           0       54   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]           1        1   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                 0      185   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   0%                 1        5   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                0        9   254
6 months    ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                1        0   254
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0       90   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1        6   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                 0       98   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                 1        7   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                0       45   247
6 months    ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                1        1   247
6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]           0       54   235
6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]           1       10   235
6 months    ki1000109-ResPak        PAKISTAN                       0%                 0       34   235
6 months    ki1000109-ResPak        PAKISTAN                       0%                 1        7   235
6 months    ki1000109-ResPak        PAKISTAN                       >5%                0      103   235
6 months    ki1000109-ResPak        PAKISTAN                       >5%                1       27   235
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]           0      159   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]           1       10   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                 0      120   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                 1        9   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                0      223   537
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                1       16   537
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]           0      236   583
6 months    ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]           1        6   583
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                 0      154   583
6 months    ki1017093b-PROVIDE      BANGLADESH                     0%                 1        4   583
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                0      179   583
6 months    ki1017093b-PROVIDE      BANGLADESH                     >5%                1        4   583
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]           0      156   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]           1       11   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                 0      335   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                 1        6   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                0      201   715
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                1        6   715
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]           0       49   243
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]           1       10   243
6 months    ki1114097-CMIN          BANGLADESH                     0%                 0       71   243
6 months    ki1114097-CMIN          BANGLADESH                     0%                 1       10   243
6 months    ki1114097-CMIN          BANGLADESH                     >5%                0       95   243
6 months    ki1114097-CMIN          BANGLADESH                     >5%                1        8   243
6 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]           0       40   108
6 months    ki1114097-CMIN          BRAZIL                         (0%, 5%]           1        1   108
6 months    ki1114097-CMIN          BRAZIL                         0%                 0       38   108
6 months    ki1114097-CMIN          BRAZIL                         0%                 1        0   108
6 months    ki1114097-CMIN          BRAZIL                         >5%                0       27   108
6 months    ki1114097-CMIN          BRAZIL                         >5%                1        2   108
6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]           0      187   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]           1        3   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                 0      209   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  0%                 1        3   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%                0      260   672
6 months    ki1114097-CMIN          GUINEA-BISSAU                  >5%                1       10   672
6 months    ki1114097-CMIN          PERU                           (0%, 5%]           0      179   635
6 months    ki1114097-CMIN          PERU                           (0%, 5%]           1        5   635
6 months    ki1114097-CMIN          PERU                           0%                 0      183   635
6 months    ki1114097-CMIN          PERU                           0%                 1        1   635
6 months    ki1114097-CMIN          PERU                           >5%                0      265   635
6 months    ki1114097-CMIN          PERU                           >5%                1        2   635
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]           0       42   215
6 months    ki1114097-CONTENT       PERU                           (0%, 5%]           1        1   215
6 months    ki1114097-CONTENT       PERU                           0%                 0      112   215
6 months    ki1114097-CONTENT       PERU                           0%                 1        3   215
6 months    ki1114097-CONTENT       PERU                           >5%                0       57   215
6 months    ki1114097-CONTENT       PERU                           >5%                1        0   215
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]           0       74   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]           1        9   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                 0       53   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                 1       11   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                0       59   212
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                1        6   212
24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]           0       13   169
24 months   ki0047075b-MAL-ED       BRAZIL                         (0%, 5%]           1        0   169
24 months   ki0047075b-MAL-ED       BRAZIL                         0%                 0      153   169
24 months   ki0047075b-MAL-ED       BRAZIL                         0%                 1        1   169
24 months   ki0047075b-MAL-ED       BRAZIL                         >5%                0        2   169
24 months   ki0047075b-MAL-ED       BRAZIL                         >5%                1        0   169
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]           0      108   227
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]           1       14   227
24 months   ki0047075b-MAL-ED       INDIA                          0%                 0       43   227
24 months   ki0047075b-MAL-ED       INDIA                          0%                 1        5   227
24 months   ki0047075b-MAL-ED       INDIA                          >5%                0       48   227
24 months   ki0047075b-MAL-ED       INDIA                          >5%                1        9   227
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]           0       72   228
24 months   ki0047075b-MAL-ED       NEPAL                          (0%, 5%]           1        3   228
24 months   ki0047075b-MAL-ED       NEPAL                          0%                 0       75   228
24 months   ki0047075b-MAL-ED       NEPAL                          0%                 1        2   228
24 months   ki0047075b-MAL-ED       NEPAL                          >5%                0       74   228
24 months   ki0047075b-MAL-ED       NEPAL                          >5%                1        2   228
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]           0       58   201
24 months   ki0047075b-MAL-ED       PERU                           (0%, 5%]           1        6   201
24 months   ki0047075b-MAL-ED       PERU                           0%                 0       46   201
24 months   ki0047075b-MAL-ED       PERU                           0%                 1        7   201
24 months   ki0047075b-MAL-ED       PERU                           >5%                0       82   201
24 months   ki0047075b-MAL-ED       PERU                           >5%                1        2   201
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]           0       42   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   (0%, 5%]           1       10   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                 0      161   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   0%                 1       16   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                0        9   238
24 months   ki0047075b-MAL-ED       SOUTH AFRICA                   >5%                1        0   238
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0       57   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1       26   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                 0       61   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                 1       31   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                0       27   214
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                1       12   214
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]           0      103   429
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]           1       25   429
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                 0       84   429
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                 1       23   429
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                0      149   429
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                1       45   429
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]           0      214   577
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]           1       18   577
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                 0      138   577
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                 1       13   577
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                0      176   577
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                1       18   577
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]           0       96   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]           1       10   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                 0      261   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                 1       16   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                0      122   514
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                1        9   514
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]           0       34   242
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]           1       24   242
24 months   ki1114097-CMIN          BANGLADESH                     0%                 0       65   242
24 months   ki1114097-CMIN          BANGLADESH                     0%                 1       20   242
24 months   ki1114097-CMIN          BANGLADESH                     >5%                0       75   242
24 months   ki1114097-CMIN          BANGLADESH                     >5%                1       24   242
24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]           0       73   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  (0%, 5%]           1        4   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                 0       89   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  0%                 1       10   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%                0       88   279
24 months   ki1114097-CMIN          GUINEA-BISSAU                  >5%                1       15   279
24 months   ki1114097-CMIN          PERU                           (0%, 5%]           0       74   244
24 months   ki1114097-CMIN          PERU                           (0%, 5%]           1        5   244
24 months   ki1114097-CMIN          PERU                           0%                 0       95   244
24 months   ki1114097-CMIN          PERU                           0%                 1        2   244
24 months   ki1114097-CMIN          PERU                           >5%                0       62   244
24 months   ki1114097-CMIN          PERU                           >5%                1        6   244
24 months   ki1114097-CONTENT       PERU                           (0%, 5%]           0       36   164
24 months   ki1114097-CONTENT       PERU                           (0%, 5%]           1        0   164
24 months   ki1114097-CONTENT       PERU                           0%                 0       81   164
24 months   ki1114097-CONTENT       PERU                           0%                 1        3   164
24 months   ki1114097-CONTENT       PERU                           >5%                0       44   164
24 months   ki1114097-CONTENT       PERU                           >5%                1        0   164


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
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/f9778278-d703-4668-ba9c-1e6d65d3ef0a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f9778278-d703-4668-ba9c-1e6d65d3ef0a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f9778278-d703-4668-ba9c-1e6d65d3ef0a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f9778278-d703-4668-ba9c-1e6d65d3ef0a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]             NA                0.1562500   0.0671042   0.2453958
6 months    ki1000109-ResPak        PAKISTAN                       0%                   NA                0.1707317   0.0553102   0.2861532
6 months    ki1000109-ResPak        PAKISTAN                       >5%                  NA                0.2076923   0.1378112   0.2775734
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.0591716   0.0235657   0.0947774
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.0697674   0.0257647   0.1137702
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.0669456   0.0352303   0.0986609
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.0658683   0.0282208   0.1035157
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.0175953   0.0036310   0.0315596
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.0289855   0.0061153   0.0518557
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.1694915   0.0735595   0.2654235
6 months    ki1114097-CMIN          BANGLADESH                     0%                   NA                0.1234568   0.0516699   0.1952437
6 months    ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.0776699   0.0258741   0.1294657
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                0.1084337   0.0413844   0.1754831
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   NA                0.1718750   0.0792263   0.2645237
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  NA                0.0923077   0.0217724   0.1628430
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                0.1147541   0.0580724   0.1714358
24 months   ki0047075b-MAL-ED       INDIA                          0%                   NA                0.1041667   0.0175574   0.1907759
24 months   ki0047075b-MAL-ED       INDIA                          >5%                  NA                0.1578947   0.0630231   0.2527664
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.3065078   0.2118460   0.4011696
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.3380191   0.2465513   0.4294869
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.2866533   0.1564159   0.4168906
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                0.2084765   0.1475726   0.2693805
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   NA                0.2411277   0.1726188   0.3096367
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  NA                0.2357655   0.1799438   0.2915872
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                0.0771217   0.0426955   0.1115479
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   NA                0.0847970   0.0401391   0.1294548
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  NA                0.0918934   0.0510431   0.1327437
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                0.0943396   0.0386406   0.1500387
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   NA                0.0577617   0.0302618   0.0852617
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  NA                0.0687023   0.0253447   0.1120599
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                0.4063352   0.2810080   0.5316625
24 months   ki1114097-CMIN          BANGLADESH                     0%                   NA                0.2382678   0.1476725   0.3288631
24 months   ki1114097-CMIN          BANGLADESH                     >5%                  NA                0.2453731   0.1605325   0.3302137


### Parameter: E(Y)


agecat      studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000109-ResPak        PAKISTAN                       NA                   NA                0.1872340   0.1372518   0.2372162
6 months    ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.0651769   0.0442802   0.0860736
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.0321678   0.0192256   0.0451101
6 months    ki1114097-CMIN          BANGLADESH                     NA                   NA                0.1152263   0.0749980   0.1554547
24 months   ki0047075b-MAL-ED       BANGLADESH                     NA                   NA                0.1226415   0.0783812   0.1669018
24 months   ki0047075b-MAL-ED       INDIA                          NA                   NA                0.1233480   0.0804760   0.1662200
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3224299   0.2596598   0.3852000
24 months   ki1017093-NIH-Birth     BANGLADESH                     NA                   NA                0.2167832   0.1777459   0.2558205
24 months   ki1017093b-PROVIDE      BANGLADESH                     NA                   NA                0.0849220   0.0621566   0.1076874
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     NA                   NA                0.0680934   0.0462948   0.0898920
24 months   ki1114097-CMIN          BANGLADESH                     NA                   NA                0.2809917   0.2242434   0.3377401


### Parameter: RR


agecat      studyid                 country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6 months    ki1000109-ResPak        PAKISTAN                       0%                   (0%, 5%]          1.0926829   0.4511406   2.6465272
6 months    ki1000109-ResPak        PAKISTAN                       >5%                  (0%, 5%]          1.3292308   0.6853974   2.5778538
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth     BANGLADESH                     0%                   (0%, 5%]          1.1790698   0.4931285   2.8191544
6 months    ki1017093-NIH-Birth     BANGLADESH                     >5%                  (0%, 5%]          1.1313808   0.5260227   2.4333976
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     0%                   (0%, 5%]          0.2671288   0.1004544   0.7103499
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  (0%, 5%]          0.4400527   0.1661030   1.1658209
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6 months    ki1114097-CMIN          BANGLADESH                     0%                   (0%, 5%]          0.7283951   0.3235598   1.6397567
6 months    ki1114097-CMIN          BANGLADESH                     >5%                  (0%, 5%]          0.4582524   0.1910885   1.0989427
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       BANGLADESH                     0%                   (0%, 5%]          1.5850694   0.6978931   3.6000432
24 months   ki0047075b-MAL-ED       BANGLADESH                     >5%                  (0%, 5%]          0.8512821   0.3185453   2.2749708
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       INDIA                          0%                   (0%, 5%]          0.9077381   0.3451072   2.3876306
24 months   ki0047075b-MAL-ED       INDIA                          >5%                  (0%, 5%]          1.3759398   0.6321162   2.9950355
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   0%                   (0%, 5%]          1.1028075   0.7358591   1.6527407
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   >5%                  (0%, 5%]          0.9352233   0.5425451   1.6121103
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth     BANGLADESH                     0%                   (0%, 5%]          1.1566182   0.7751935   1.7257182
24 months   ki1017093-NIH-Birth     BANGLADESH                     >5%                  (0%, 5%]          1.1308971   0.7793182   1.6410859
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE      BANGLADESH                     0%                   (0%, 5%]          1.0995210   0.5512997   2.1929025
24 months   ki1017093b-PROVIDE      BANGLADESH                     >5%                  (0%, 5%]          1.1915369   0.6346017   2.2372460
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     0%                   (0%, 5%]          0.6122744   0.2867840   1.3071854
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     >5%                  (0%, 5%]          0.7282443   0.3068699   1.7282232
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN          BANGLADESH                     0%                   (0%, 5%]          0.5863824   0.3596238   0.9561222
24 months   ki1114097-CMIN          BANGLADESH                     >5%                  (0%, 5%]          0.6038685   0.3802049   0.9591071


### Parameter: PAR


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]             NA                 0.0309840   -0.0472249    0.1091929
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                 0.0060053   -0.0241025    0.0361131
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.0337004   -0.0640773   -0.0033236
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -0.0542652   -0.1339668    0.0254364
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                 0.0142078   -0.0399627    0.0683782
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                 0.0085939   -0.0313736    0.0485614
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.0159221   -0.0574274    0.0892715
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                 0.0083067   -0.0435326    0.0601460
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                 0.0078003   -0.0195791    0.0351797
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.0262462   -0.0741835    0.0216910
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -0.1253435   -0.2318190   -0.0188680


### Parameter: PAF


agecat      studyid                 country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki1000109-ResPak        PAKISTAN                       (0%, 5%]             NA                 0.1654830   -0.3742511    0.4932377
6 months    ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                 0.0921386   -0.5087008    0.4536940
6 months    ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -1.0476438   -2.1152367   -0.3459154
6 months    ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -0.4709443   -1.3346838    0.0732462
24 months   ki0047075b-MAL-ED       BANGLADESH                     (0%, 5%]             NA                 0.1158480   -0.4546393    0.4625989
24 months   ki0047075b-MAL-ED       INDIA                          (0%, 5%]             NA                 0.0696721   -0.3169930    0.3428135
24 months   ki0047075b-MAL-ED       TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.0493815   -0.2074170    0.2515630
24 months   ki1017093-NIH-Birth     BANGLADESH                     (0%, 5%]             NA                 0.0383179   -0.2321971    0.2494444
24 months   ki1017093b-PROVIDE      BANGLADESH                     (0%, 5%]             NA                 0.0918523   -0.2942119    0.3627533
24 months   ki1017093c-NIH-Crypto   BANGLADESH                     (0%, 5%]             NA                -0.3854447   -1.2884906    0.1612563
24 months   ki1114097-CMIN          BANGLADESH                     (0%, 5%]             NA                -0.4460753   -0.8820609   -0.1110873
