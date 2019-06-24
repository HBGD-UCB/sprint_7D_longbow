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

**Outcome Variable:** ever_co

## Predictor Variables

**Intervention Variable:** perdiar24

**Adjustment Set:**

* arm
* sex
* hfoodsec
* W_birthwt
* W_birthlen
* W_nrooms
* month
* brthmon
* impfloor
* impsan
* safeh20
* delta_hfoodsec
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

agecat        studyid                    country                        perdiar24    ever_co   n_cell      n
------------  -------------------------  -----------------------------  ----------  --------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                 0       18    263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                 1        2    263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]           0      125    263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]           1       23    263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                0       81    263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                1       14    263
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0%                 0      130    233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0%                 1        0    233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]           0       99    233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]           1        2    233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >5%                0        2    233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >5%                1        0    233
0-24 months   ki0047075b-MAL-ED          INDIA                          0%                 0       13    251
0-24 months   ki0047075b-MAL-ED          INDIA                          0%                 1        1    251
0-24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]           0      149    251
0-24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]           1       44    251
0-24 months   ki0047075b-MAL-ED          INDIA                          >5%                0       35    251
0-24 months   ki0047075b-MAL-ED          INDIA                          >5%                1        9    251
0-24 months   ki0047075b-MAL-ED          NEPAL                          0%                 0       16    240
0-24 months   ki0047075b-MAL-ED          NEPAL                          0%                 1        1    240
0-24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]           0      130    240
0-24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]           1       14    240
0-24 months   ki0047075b-MAL-ED          NEPAL                          >5%                0       73    240
0-24 months   ki0047075b-MAL-ED          NEPAL                          >5%                1        6    240
0-24 months   ki0047075b-MAL-ED          PERU                           0%                 0       28    302
0-24 months   ki0047075b-MAL-ED          PERU                           0%                 1        0    302
0-24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]           0      108    302
0-24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]           1        5    302
0-24 months   ki0047075b-MAL-ED          PERU                           >5%                0      154    302
0-24 months   ki0047075b-MAL-ED          PERU                           >5%                1        7    302
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                 0      110    303
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                 1        8    303
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]           0      168    303
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]           1       14    303
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                0        3    303
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                1        0    303
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 0       13    261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 1        3    261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0      169    261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1       14    261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                0       56    261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                1        6    261
0-24 months   ki1000109-EE               PAKISTAN                       0%                 0      172    379
0-24 months   ki1000109-EE               PAKISTAN                       0%                 1      105    379
0-24 months   ki1000109-EE               PAKISTAN                       (0%, 5%]           0       48    379
0-24 months   ki1000109-EE               PAKISTAN                       (0%, 5%]           1       33    379
0-24 months   ki1000109-EE               PAKISTAN                       >5%                0       15    379
0-24 months   ki1000109-EE               PAKISTAN                       >5%                1        6    379
0-24 months   ki1000109-ResPak           PAKISTAN                       0%                 0       25    277
0-24 months   ki1000109-ResPak           PAKISTAN                       0%                 1        1    277
0-24 months   ki1000109-ResPak           PAKISTAN                       (0%, 5%]           0       68    277
0-24 months   ki1000109-ResPak           PAKISTAN                       (0%, 5%]           1       13    277
0-24 months   ki1000109-ResPak           PAKISTAN                       >5%                0      144    277
0-24 months   ki1000109-ResPak           PAKISTAN                       >5%                1       26    277
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%                 0       48    418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%                 1       36    418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]           0       33    418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]           1       14    418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                0      182    418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                1      105    418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                 0       49    621
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                 1        1    621
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]           0      271    621
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]           1       87    621
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                0      164    621
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                1       49    621
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                 0       66    700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                 1        3    700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]           0      371    700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]           1       59    700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                0      173    700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                1       28    700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                 0      140    758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                 1       13    758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]           0      362    758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]           1       36    758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                0      185    758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                1       22    758
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0%                 0       31    309
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0%                 1        2    309
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]           0       64    309
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]           1        7    309
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >5%                0      191    309
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >5%                1       14    309
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                 0      398   2452
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                 1       56   2452
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]           0     1369   2452
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]           1      186   2452
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                0      386   2452
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                1       57   2452
0-24 months   ki1114097-CMIN             BANGLADESH                     0%                 0       10    271
0-24 months   ki1114097-CMIN             BANGLADESH                     0%                 1        0    271
0-24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]           0       75    271
0-24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]           1       46    271
0-24 months   ki1114097-CMIN             BANGLADESH                     >5%                0       94    271
0-24 months   ki1114097-CMIN             BANGLADESH                     >5%                1       46    271
0-24 months   ki1114097-CMIN             BRAZIL                         0%                 0        1    119
0-24 months   ki1114097-CMIN             BRAZIL                         0%                 1        0    119
0-24 months   ki1114097-CMIN             BRAZIL                         (0%, 5%]           0       69    119
0-24 months   ki1114097-CMIN             BRAZIL                         (0%, 5%]           1        0    119
0-24 months   ki1114097-CMIN             BRAZIL                         >5%                0       48    119
0-24 months   ki1114097-CMIN             BRAZIL                         >5%                1        1    119
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%                 0       62   1478
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%                 1        7   1478
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]           0      457   1478
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]           1       38   1478
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%                0      840   1478
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%                1       74   1478
0-24 months   ki1114097-CMIN             PERU                           0%                 0       71    929
0-24 months   ki1114097-CMIN             PERU                           0%                 1        1    929
0-24 months   ki1114097-CMIN             PERU                           (0%, 5%]           0      377    929
0-24 months   ki1114097-CMIN             PERU                           (0%, 5%]           1       14    929
0-24 months   ki1114097-CMIN             PERU                           >5%                0      450    929
0-24 months   ki1114097-CMIN             PERU                           >5%                1       16    929
0-24 months   ki1114097-CONTENT          PERU                           0%                 0        6    215
0-24 months   ki1114097-CONTENT          PERU                           0%                 1        0    215
0-24 months   ki1114097-CONTENT          PERU                           (0%, 5%]           0      138    215
0-24 months   ki1114097-CONTENT          PERU                           (0%, 5%]           1        4    215
0-24 months   ki1114097-CONTENT          PERU                           >5%                0       67    215
0-24 months   ki1114097-CONTENT          PERU                           >5%                1        0    215
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                 0     1203   5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                 1      216   5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]           0     2943   5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]           1      547   5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                0      418   5442
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                1      115   5442
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                 0       20    263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                 1        0    263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]           0      145    263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]           1        3    263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                0       89    263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                1        6    263
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0%                 0      130    233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0%                 1        0    233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]           0      101    233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]           1        0    233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >5%                0        2    233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >5%                1        0    233
0-6 months    ki0047075b-MAL-ED          INDIA                          0%                 0       13    251
0-6 months    ki0047075b-MAL-ED          INDIA                          0%                 1        1    251
0-6 months    ki0047075b-MAL-ED          INDIA                          (0%, 5%]           0      180    251
0-6 months    ki0047075b-MAL-ED          INDIA                          (0%, 5%]           1       13    251
0-6 months    ki0047075b-MAL-ED          INDIA                          >5%                0       40    251
0-6 months    ki0047075b-MAL-ED          INDIA                          >5%                1        4    251
0-6 months    ki0047075b-MAL-ED          NEPAL                          0%                 0       16    240
0-6 months    ki0047075b-MAL-ED          NEPAL                          0%                 1        1    240
0-6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]           0      139    240
0-6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]           1        5    240
0-6 months    ki0047075b-MAL-ED          NEPAL                          >5%                0       78    240
0-6 months    ki0047075b-MAL-ED          NEPAL                          >5%                1        1    240
0-6 months    ki0047075b-MAL-ED          PERU                           0%                 0       28    302
0-6 months    ki0047075b-MAL-ED          PERU                           0%                 1        0    302
0-6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]           0      112    302
0-6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]           1        1    302
0-6 months    ki0047075b-MAL-ED          PERU                           >5%                0      160    302
0-6 months    ki0047075b-MAL-ED          PERU                           >5%                1        1    302
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0%                 0      116    303
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0%                 1        2    303
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]           0      179    303
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]           1        3    303
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                0        3    303
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                1        0    303
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 0       15    261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 1        1    261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0      180    261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1        3    261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                0       62    261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                1        0    261
0-6 months    ki1000109-EE               PAKISTAN                       0%                 0      236    379
0-6 months    ki1000109-EE               PAKISTAN                       0%                 1       41    379
0-6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]           0       70    379
0-6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]           1       11    379
0-6 months    ki1000109-EE               PAKISTAN                       >5%                0       20    379
0-6 months    ki1000109-EE               PAKISTAN                       >5%                1        1    379
0-6 months    ki1000109-ResPak           PAKISTAN                       0%                 0       25    277
0-6 months    ki1000109-ResPak           PAKISTAN                       0%                 1        1    277
0-6 months    ki1000109-ResPak           PAKISTAN                       (0%, 5%]           0       74    277
0-6 months    ki1000109-ResPak           PAKISTAN                       (0%, 5%]           1        7    277
0-6 months    ki1000109-ResPak           PAKISTAN                       >5%                0      161    277
0-6 months    ki1000109-ResPak           PAKISTAN                       >5%                1        9    277
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                 0       77    416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                 1        6    416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]           0       42    416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]           1        5    416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                0      265    416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                1       21    416
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                 0       49    619
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                 1        1    619
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]           0      330    619
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]           1       27    619
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                0      195    619
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                1       17    619
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                 0       68    700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                 1        1    700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]           0      414    700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]           1       16    700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                0      188    700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                1       13    700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                 0      150    758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                 1        3    758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]           0      389    758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]           1        9    758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                0      202    758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                1        5    758
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                 0       29    289
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                 1        1    289
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]           0       63    289
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]           1        3    289
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%                0      189    289
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%                1        4    289
0-6 months    ki1114097-CMIN             BANGLADESH                     0%                 0       10    271
0-6 months    ki1114097-CMIN             BANGLADESH                     0%                 1        0    271
0-6 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]           0      112    271
0-6 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]           1        9    271
0-6 months    ki1114097-CMIN             BANGLADESH                     >5%                0      134    271
0-6 months    ki1114097-CMIN             BANGLADESH                     >5%                1        6    271
0-6 months    ki1114097-CMIN             BRAZIL                         0%                 0        1    119
0-6 months    ki1114097-CMIN             BRAZIL                         0%                 1        0    119
0-6 months    ki1114097-CMIN             BRAZIL                         (0%, 5%]           0       69    119
0-6 months    ki1114097-CMIN             BRAZIL                         (0%, 5%]           1        0    119
0-6 months    ki1114097-CMIN             BRAZIL                         >5%                0       49    119
0-6 months    ki1114097-CMIN             BRAZIL                         >5%                1        0    119
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  0%                 0       30    944
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  0%                 1        2    944
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]           0      345    944
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]           1        1    944
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  >5%                0      563    944
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  >5%                1        3    944
0-6 months    ki1114097-CMIN             PERU                           0%                 0       48    699
0-6 months    ki1114097-CMIN             PERU                           0%                 1        0    699
0-6 months    ki1114097-CMIN             PERU                           (0%, 5%]           0      312    699
0-6 months    ki1114097-CMIN             PERU                           (0%, 5%]           1        7    699
0-6 months    ki1114097-CMIN             PERU                           >5%                0      328    699
0-6 months    ki1114097-CMIN             PERU                           >5%                1        4    699
0-6 months    ki1114097-CONTENT          PERU                           0%                 0        6    215
0-6 months    ki1114097-CONTENT          PERU                           0%                 1        0    215
0-6 months    ki1114097-CONTENT          PERU                           (0%, 5%]           0      142    215
0-6 months    ki1114097-CONTENT          PERU                           (0%, 5%]           1        0    215
0-6 months    ki1114097-CONTENT          PERU                           >5%                0       67    215
0-6 months    ki1114097-CONTENT          PERU                           >5%                1        0    215
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                 0     1296   5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                 1       29   5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]           0     3183   5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]           1       89   5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                0      478   5092
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                1       17   5092
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                 0        4    239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                 1        2    239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]           0      119    239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]           1       23    239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                0       81    239
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                1       10    239
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0%                 0      104    207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0%                 1        0    207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]           0       99    207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]           1        2    207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >5%                0        2    207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >5%                1        0    207
6-24 months   ki0047075b-MAL-ED          INDIA                          0%                 0        3    235
6-24 months   ki0047075b-MAL-ED          INDIA                          0%                 1        0    235
6-24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]           0      151    235
6-24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]           1       39    235
6-24 months   ki0047075b-MAL-ED          INDIA                          >5%                0       34    235
6-24 months   ki0047075b-MAL-ED          INDIA                          >5%                1        8    235
6-24 months   ki0047075b-MAL-ED          NEPAL                          0%                 0       14    235
6-24 months   ki0047075b-MAL-ED          NEPAL                          0%                 1        0    235
6-24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]           0      132    235
6-24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]           1       11    235
6-24 months   ki0047075b-MAL-ED          NEPAL                          >5%                0       73    235
6-24 months   ki0047075b-MAL-ED          NEPAL                          >5%                1        5    235
6-24 months   ki0047075b-MAL-ED          PERU                           0%                 0        6    270
6-24 months   ki0047075b-MAL-ED          PERU                           0%                 1        0    270
6-24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]           0      103    270
6-24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]           1        4    270
6-24 months   ki0047075b-MAL-ED          PERU                           >5%                0      150    270
6-24 months   ki0047075b-MAL-ED          PERU                           >5%                1        7    270
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                 0       73    259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                 1        6    259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]           0      165    259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]           1       13    259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                0        2    259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                1        0    259
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 0        5    245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 1        3    245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0      164    245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1       12    245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                0       55    245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                1        6    245
6-24 months   ki1000109-EE               PAKISTAN                       0%                 0      176    373
6-24 months   ki1000109-EE               PAKISTAN                       0%                 1       95    373
6-24 months   ki1000109-EE               PAKISTAN                       (0%, 5%]           0       50    373
6-24 months   ki1000109-EE               PAKISTAN                       (0%, 5%]           1       31    373
6-24 months   ki1000109-EE               PAKISTAN                       >5%                0       15    373
6-24 months   ki1000109-EE               PAKISTAN                       >5%                1        6    373
6-24 months   ki1000109-ResPak           PAKISTAN                       0%                 0        7    230
6-24 months   ki1000109-ResPak           PAKISTAN                       0%                 1        0    230
6-24 months   ki1000109-ResPak           PAKISTAN                       (0%, 5%]           0       61    230
6-24 months   ki1000109-ResPak           PAKISTAN                       (0%, 5%]           1        8    230
6-24 months   ki1000109-ResPak           PAKISTAN                       >5%                0      133    230
6-24 months   ki1000109-ResPak           PAKISTAN                       >5%                1       21    230
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%                 0       44    401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%                 1       34    401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]           0       34    401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]           1       13    401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                0      178    401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                1       98    401
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                 0       15    542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                 1        0    542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]           0      266    542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]           1       77    542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                0      147    542
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                1       37    542
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                 0        8    614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                 1        2    614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]           0      366    614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]           1       50    614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                0      165    614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                1       23    614
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                 0      121    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                 1       13    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]           0      362    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]           1       32    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                0      184    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                1       18    730
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0%                 0       21    277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0%                 1        1    277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]           0       62    277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]           1        6    277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >5%                0      176    277
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >5%                1       11    277
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                 0      398   2452
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                 1       56   2452
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]           0     1369   2452
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]           1      186   2452
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                0      386   2452
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                1       57   2452
6-24 months   ki1114097-CMIN             BANGLADESH                     0%                 0        3    251
6-24 months   ki1114097-CMIN             BANGLADESH                     0%                 1        0    251
6-24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]           0       74    251
6-24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]           1       42    251
6-24 months   ki1114097-CMIN             BANGLADESH                     >5%                0       88    251
6-24 months   ki1114097-CMIN             BANGLADESH                     >5%                1       44    251
6-24 months   ki1114097-CMIN             BRAZIL                         0%                 0        1    119
6-24 months   ki1114097-CMIN             BRAZIL                         0%                 1        0    119
6-24 months   ki1114097-CMIN             BRAZIL                         (0%, 5%]           0       69    119
6-24 months   ki1114097-CMIN             BRAZIL                         (0%, 5%]           1        0    119
6-24 months   ki1114097-CMIN             BRAZIL                         >5%                0       48    119
6-24 months   ki1114097-CMIN             BRAZIL                         >5%                1        1    119
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%                 0       57   1452
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%                 1        6   1452
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]           0      447   1452
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]           1       37   1452
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%                0      832   1452
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%                1       73   1452
6-24 months   ki1114097-CMIN             PERU                           0%                 0       59    878
6-24 months   ki1114097-CMIN             PERU                           0%                 1        1    878
6-24 months   ki1114097-CMIN             PERU                           (0%, 5%]           0      373    878
6-24 months   ki1114097-CMIN             PERU                           (0%, 5%]           1        9    878
6-24 months   ki1114097-CMIN             PERU                           >5%                0      422    878
6-24 months   ki1114097-CMIN             PERU                           >5%                1       14    878
6-24 months   ki1114097-CONTENT          PERU                           0%                 0        6    215
6-24 months   ki1114097-CONTENT          PERU                           0%                 1        0    215
6-24 months   ki1114097-CONTENT          PERU                           (0%, 5%]           0      138    215
6-24 months   ki1114097-CONTENT          PERU                           (0%, 5%]           1        4    215
6-24 months   ki1114097-CONTENT          PERU                           >5%                0       67    215
6-24 months   ki1114097-CONTENT          PERU                           >5%                1        0    215
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                 0     1209   5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                 1      201   5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]           0     2995   5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]           1      491   5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                0      423   5429
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                1      110   5429


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
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




# Results Detail

## Results Plots
![](/tmp/d7569b73-6147-4af4-a222-dacdb1f61382/2570f727-48b5-481a-98ba-839ced7525cc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d7569b73-6147-4af4-a222-dacdb1f61382/2570f727-48b5-481a-98ba-839ced7525cc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d7569b73-6147-4af4-a222-dacdb1f61382/2570f727-48b5-481a-98ba-839ced7525cc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d7569b73-6147-4af4-a222-dacdb1f61382/2570f727-48b5-481a-98ba-839ced7525cc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE               PAKISTAN        0%                   NA                0.3790614   0.3218528   0.4362699
0-24 months   ki1000109-EE               PAKISTAN        (0%, 5%]             NA                0.4074074   0.3002624   0.5145524
0-24 months   ki1000109-EE               PAKISTAN        >5%                  NA                0.2857143   0.0922441   0.4791845
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA           0%                   NA                0.2751412   0.1026343   0.4476482
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA           (0%, 5%]             NA                0.2475586   0.1339284   0.3611888
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA           >5%                  NA                0.3594941   0.2944943   0.4244940
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH      0%                   NA                0.0829296   0.0402235   0.1256356
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH      (0%, 5%]             NA                0.0952139   0.0670482   0.1233795
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH      >5%                  NA                0.1018662   0.0609351   0.1427972
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    0%                   NA                0.1284769   0.0465776   0.2103762
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    (0%, 5%]             NA                0.1203722   0.0958684   0.1448761
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    >5%                  NA                0.1252630   0.0704397   0.1800863
0-24 months   ki1114097-CMIN             GUINEA-BISSAU   0%                   NA                0.1014493   0.0301859   0.1727126
0-24 months   ki1114097-CMIN             GUINEA-BISSAU   (0%, 5%]             NA                0.0767677   0.0533072   0.1002282
0-24 months   ki1114097-CMIN             GUINEA-BISSAU   >5%                  NA                0.0809628   0.0632727   0.0986529
0-24 months   kiGH5241-JiVitA-4          BANGLADESH      0%                   NA                0.1544946   0.1331859   0.1758033
0-24 months   kiGH5241-JiVitA-4          BANGLADESH      (0%, 5%]             NA                0.1571399   0.1445592   0.1697207
0-24 months   kiGH5241-JiVitA-4          BANGLADESH      >5%                  NA                0.2048616   0.1654694   0.2442539
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA           0%                   NA                0.0722892   0.0165097   0.1280686
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA           (0%, 5%]             NA                0.1063830   0.0181291   0.1946368
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA           >5%                  NA                0.0734266   0.0431606   0.1036925
0-6 months    kiGH5241-JiVitA-4          BANGLADESH      0%                   NA                0.0222728   0.0109923   0.0335532
0-6 months    kiGH5241-JiVitA-4          BANGLADESH      (0%, 5%]             NA                0.0272284   0.0210128   0.0334441
0-6 months    kiGH5241-JiVitA-4          BANGLADESH      >5%                  NA                0.0326972   0.0137416   0.0516528
6-24 months   ki1000109-EE               PAKISTAN        0%                   NA                0.3505535   0.2936688   0.4074382
6-24 months   ki1000109-EE               PAKISTAN        (0%, 5%]             NA                0.3827160   0.2767250   0.4887071
6-24 months   ki1000109-EE               PAKISTAN        >5%                  NA                0.2857143   0.0922400   0.4791886
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA           0%                   NA                0.3780964   0.2151330   0.5410597
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA           (0%, 5%]             NA                0.2207412   0.1106320   0.3308505
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA           >5%                  NA                0.3520188   0.2850763   0.4189612
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH      0%                   NA                0.0915359   0.0433007   0.1397710
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH      (0%, 5%]             NA                0.0843271   0.0573198   0.1113344
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH      >5%                  NA                0.0846564   0.0451229   0.1241900
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    0%                   NA                0.1267821   0.0422076   0.2113566
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    (0%, 5%]             NA                0.1204330   0.0960612   0.1448049
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    >5%                  NA                0.1222715   0.0665345   0.1780084
6-24 months   ki1114097-CMIN             GUINEA-BISSAU   0%                   NA                0.0952381   0.0227278   0.1677484
6-24 months   ki1114097-CMIN             GUINEA-BISSAU   (0%, 5%]             NA                0.0764463   0.0527661   0.1001264
6-24 months   ki1114097-CMIN             GUINEA-BISSAU   >5%                  NA                0.0806630   0.0629150   0.0984109
6-24 months   kiGH5241-JiVitA-4          BANGLADESH      0%                   NA                0.1447922   0.1239960   0.1655883
6-24 months   kiGH5241-JiVitA-4          BANGLADESH      (0%, 5%]             NA                0.1412013   0.1291399   0.1532628
6-24 months   kiGH5241-JiVitA-4          BANGLADESH      >5%                  NA                0.1941354   0.1543247   0.2339460


### Parameter: E(Y)


agecat        studyid                    country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000109-EE               PAKISTAN        NA                   NA                0.3799472   0.3310169   0.4288776
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA           NA                   NA                0.3708134   0.3244530   0.4171738
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH      NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    NA                   NA                0.1219413   0.0960094   0.1478731
0-24 months   ki1114097-CMIN             GUINEA-BISSAU   NA                   NA                0.0805142   0.0666381   0.0943903
0-24 months   kiGH5241-JiVitA-4          BANGLADESH      NA                   NA                0.1613377   0.1500062   0.1726692
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA           NA                   NA                0.0769231   0.0512858   0.1025603
0-6 months    kiGH5241-JiVitA-4          BANGLADESH      NA                   NA                0.0265122   0.0211694   0.0318550
6-24 months   ki1000109-EE               PAKISTAN        NA                   NA                0.3538874   0.3052956   0.4024792
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA           NA                   NA                0.3615960   0.3145115   0.4086805
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH      NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    NA                   NA                0.1219413   0.0960094   0.1478731
6-24 months   ki1114097-CMIN             GUINEA-BISSAU   NA                   NA                0.0798898   0.0659396   0.0938400
6-24 months   kiGH5241-JiVitA-4          BANGLADESH      NA                   NA                0.1477252   0.1371297   0.1583206


### Parameter: RR


agecat        studyid                    country         intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  --------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000109-EE               PAKISTAN        0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   ki1000109-EE               PAKISTAN        (0%, 5%]             0%                1.0747795   0.7936567   1.455480
0-24 months   ki1000109-EE               PAKISTAN        >5%                  0%                0.7537415   0.3766397   1.508408
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA           0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA           (0%, 5%]             0%                0.8997511   0.4129180   1.960564
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA           >5%                  0%                1.3065804   0.6800820   2.510216
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH      0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH      (0%, 5%]             0%                1.1481294   0.6370977   2.069072
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH      >5%                  0%                1.2283456   0.6421587   2.349626
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    (0%, 5%]             0%                0.9369172   0.5071198   1.730979
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    >5%                  0%                0.9749848   0.4675922   2.032958
0-24 months   ki1114097-CMIN             GUINEA-BISSAU   0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   ki1114097-CMIN             GUINEA-BISSAU   (0%, 5%]             0%                0.7567100   0.3517529   1.627875
0-24 months   ki1114097-CMIN             GUINEA-BISSAU   >5%                  0%                0.7980619   0.3824263   1.665426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH      0%                   0%                1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH      (0%, 5%]             0%                1.0171224   0.8756399   1.181465
0-24 months   kiGH5241-JiVitA-4          BANGLADESH      >5%                  0%                1.3260116   1.0485528   1.676889
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA           0%                   0%                1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA           (0%, 5%]             0%                1.4716312   0.4739794   4.569182
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA           >5%                  0%                1.0157343   0.4235009   2.436161
0-6 months    kiGH5241-JiVitA-4          BANGLADESH      0%                   0%                1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH      (0%, 5%]             0%                1.2224989   0.7028046   2.126485
0-6 months    kiGH5241-JiVitA-4          BANGLADESH      >5%                  0%                1.4680363   0.6979072   3.087990
6-24 months   ki1000109-EE               PAKISTAN        0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   ki1000109-EE               PAKISTAN        (0%, 5%]             0%                1.0917479   0.7919927   1.504955
6-24 months   ki1000109-EE               PAKISTAN        >5%                  0%                0.8150376   0.4062231   1.635274
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA           0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA           (0%, 5%]             0%                0.5838227   0.3017944   1.129408
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA           >5%                  0%                0.9310292   0.5811085   1.491658
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH      0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH      (0%, 5%]             0%                0.9212468   0.4998180   1.698009
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH      >5%                  0%                0.9248445   0.4590946   1.863096
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    (0%, 5%]             0%                0.9499213   0.5010375   1.800964
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    >5%                  0%                0.9644223   0.4460972   2.084995
6-24 months   ki1114097-CMIN             GUINEA-BISSAU   0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   ki1114097-CMIN             GUINEA-BISSAU   (0%, 5%]             0%                0.8026860   0.3528359   1.826075
6-24 months   ki1114097-CMIN             GUINEA-BISSAU   >5%                  0%                0.8469613   0.3834239   1.870889
6-24 months   kiGH5241-JiVitA-4          BANGLADESH      0%                   0%                1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH      (0%, 5%]             0%                0.9752002   0.8278286   1.148807
6-24 months   kiGH5241-JiVitA-4          BANGLADESH      >5%                  0%                1.3407864   1.0439361   1.722048


### Parameter: PAR


agecat        studyid                    country         intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  --------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000109-EE               PAKISTAN        0%                   NA                 0.0008859   -0.0288291   0.0306009
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA           0%                   NA                 0.0956722   -0.0753442   0.2666886
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH      0%                   NA                 0.0107380   -0.0278933   0.0493693
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    0%                   NA                -0.0065356   -0.0737837   0.0607125
0-24 months   ki1114097-CMIN             GUINEA-BISSAU   0%                   NA                -0.0209351   -0.0901943   0.0483241
0-24 months   kiGH5241-JiVitA-4          BANGLADESH      0%                   NA                 0.0068431   -0.0103984   0.0240847
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA           0%                   NA                 0.0046339   -0.0456361   0.0549039
0-6 months    kiGH5241-JiVitA-4          BANGLADESH      0%                   NA                 0.0042394   -0.0050147   0.0134936
6-24 months   ki1000109-EE               PAKISTAN        0%                   NA                 0.0033339   -0.0265835   0.0332513
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA           0%                   NA                -0.0165003   -0.1785370   0.1455363
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH      0%                   NA                -0.0052345   -0.0483570   0.0378880
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    0%                   NA                -0.0048408   -0.0747630   0.0650814
6-24 months   ki1114097-CMIN             GUINEA-BISSAU   0%                   NA                -0.0153483   -0.0860314   0.0553348
6-24 months   kiGH5241-JiVitA-4          BANGLADESH      0%                   NA                 0.0029330   -0.0145807   0.0204468


### Parameter: PAF


agecat        studyid                    country         intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  --------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000109-EE               PAKISTAN        0%                   NA                 0.0023315   -0.0790239   0.0775530
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA           0%                   NA                 0.2580062   -0.3773599   0.6002826
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH      0%                   NA                 0.1146392   -0.4094190   0.4438391
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    0%                   NA                -0.0535966   -0.7700977   0.3728788
0-24 months   ki1114097-CMIN             GUINEA-BISSAU   0%                   NA                -0.2600171   -1.4920380   0.3629138
0-24 months   kiGH5241-JiVitA-4          BANGLADESH      0%                   NA                 0.0424150   -0.0709304   0.1437641
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA           0%                   NA                 0.0602410   -0.8832383   0.5310487
0-6 months    kiGH5241-JiVitA-4          BANGLADESH      0%                   NA                 0.1599045   -0.2815045   0.4492720
6-24 months   ki1000109-EE               PAKISTAN        0%                   NA                 0.0094208   -0.0788317   0.0904539
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA           0%                   NA                -0.0456320   -0.6062963   0.3193371
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH      0%                   NA                -0.0606536   -0.6985626   0.3376835
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO    0%                   NA                -0.0396980   -0.7984601   0.3989459
6-24 months   ki1114097-CMIN             GUINEA-BISSAU   0%                   NA                -0.1921182   -1.5029787   0.4322181
6-24 months   kiGH5241-JiVitA-4          BANGLADESH      0%                   NA                 0.0198546   -0.1062379   0.1315747
