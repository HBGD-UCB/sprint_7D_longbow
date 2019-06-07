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

**Outcome Variable:** pers_wast

## Predictor Variables

**Intervention Variable:** perdiar24

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        perdiar24    pers_wast   n_cell      n
------------  -------------------------  -----------------------------  ----------  ----------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0      136    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             1       10    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  0       91    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  1        3    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   0        8    248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   1        0    248
0-24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]             0      100    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]             1        1    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >5%                  0        2    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >5%                  1        0    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0%                   0      113    217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0%                   1        1    217
0-24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]             0      178    241
0-24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]             1       15    241
0-24 months   ki0047075b-MAL-ED          INDIA                          >5%                  0       38    241
0-24 months   ki0047075b-MAL-ED          INDIA                          >5%                  1        5    241
0-24 months   ki0047075b-MAL-ED          INDIA                          0%                   0        4    241
0-24 months   ki0047075b-MAL-ED          INDIA                          0%                   1        1    241
0-24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0      140    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             1        4    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          >5%                  0       79    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          >5%                  1        0    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          0%                   0       15    238
0-24 months   ki0047075b-MAL-ED          NEPAL                          0%                   1        0    238
0-24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]             0      112    284
0-24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]             1        1    284
0-24 months   ki0047075b-MAL-ED          PERU                           >5%                  0      160    284
0-24 months   ki0047075b-MAL-ED          PERU                           >5%                  1        0    284
0-24 months   ki0047075b-MAL-ED          PERU                           0%                   0       11    284
0-24 months   ki0047075b-MAL-ED          PERU                           0%                   1        0    284
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]             0      179    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]             1        1    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                  0        3    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                  1        0    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                   0       89    273
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                   1        1    273
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0      182    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             1        0    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0       62    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  1        0    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0        9    253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   1        0    253
0-24 months   ki1000109-EE               PAKISTAN                       (0%, 5%]             0       75    377
0-24 months   ki1000109-EE               PAKISTAN                       (0%, 5%]             1        6    377
0-24 months   ki1000109-EE               PAKISTAN                       >5%                  0       21    377
0-24 months   ki1000109-EE               PAKISTAN                       >5%                  1        0    377
0-24 months   ki1000109-EE               PAKISTAN                       0%                   0      253    377
0-24 months   ki1000109-EE               PAKISTAN                       0%                   1       22    377
0-24 months   ki1000109-ResPak           PAKISTAN                       (0%, 5%]             0       63    251
0-24 months   ki1000109-ResPak           PAKISTAN                       (0%, 5%]             1       14    251
0-24 months   ki1000109-ResPak           PAKISTAN                       >5%                  0      143    251
0-24 months   ki1000109-ResPak           PAKISTAN                       >5%                  1       18    251
0-24 months   ki1000109-ResPak           PAKISTAN                       0%                   0       11    251
0-24 months   ki1000109-ResPak           PAKISTAN                       0%                   1        2    251
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             0        0     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             1        0     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  0       21     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  1        4     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%                   0       55     94
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%                   1       14     94
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0      302    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             1       36    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  0      175    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  1       11    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   0       10    534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   1        0    534
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0      414    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             1       12    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  0      192    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  1        3    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   0       19    640
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   1        0    640
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0      382    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             1       12    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0      192    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  1       10    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0      130    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   1        4    730
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             0       63    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             1        1    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >5%                  0      177    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >5%                  1        3    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0%                   0       12    256
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0%                   1        0    256
0-24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]             0      106    257
0-24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]             1       12    257
0-24 months   ki1114097-CMIN             BANGLADESH                     >5%                  0      128    257
0-24 months   ki1114097-CMIN             BANGLADESH                     >5%                  1        8    257
0-24 months   ki1114097-CMIN             BANGLADESH                     0%                   0        3    257
0-24 months   ki1114097-CMIN             BANGLADESH                     0%                   1        0    257
0-24 months   ki1114097-CMIN             BRAZIL                         (0%, 5%]             0       69    119
0-24 months   ki1114097-CMIN             BRAZIL                         (0%, 5%]             1        0    119
0-24 months   ki1114097-CMIN             BRAZIL                         >5%                  0       49    119
0-24 months   ki1114097-CMIN             BRAZIL                         >5%                  1        0    119
0-24 months   ki1114097-CMIN             BRAZIL                         0%                   0        1    119
0-24 months   ki1114097-CMIN             BRAZIL                         0%                   1        0    119
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]             0      389   1132
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]             1       10   1132
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%                  0      679   1132
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%                  1       25   1132
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%                   0       28   1132
0-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%                   1        1   1132
0-24 months   ki1114097-CMIN             PERU                           (0%, 5%]             0      366    830
0-24 months   ki1114097-CMIN             PERU                           (0%, 5%]             1        3    830
0-24 months   ki1114097-CMIN             PERU                           >5%                  0      413    830
0-24 months   ki1114097-CMIN             PERU                           >5%                  1        2    830
0-24 months   ki1114097-CMIN             PERU                           0%                   0       46    830
0-24 months   ki1114097-CMIN             PERU                           0%                   1        0    830
0-24 months   ki1114097-CONTENT          PERU                           (0%, 5%]             0      142    215
0-24 months   ki1114097-CONTENT          PERU                           (0%, 5%]             1        0    215
0-24 months   ki1114097-CONTENT          PERU                           >5%                  0       67    215
0-24 months   ki1114097-CONTENT          PERU                           >5%                  1        0    215
0-24 months   ki1114097-CONTENT          PERU                           0%                   0        6    215
0-24 months   ki1114097-CONTENT          PERU                           0%                   1        0    215
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0      825   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             1       75   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0      135   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  1       16   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   0      306   1378
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   1       21   1378
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0      140    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             1        6    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                  0       93    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                  1        1    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   0        8    248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                   1        0    248
0-6 months    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]             0      100    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]             1        1    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >5%                  0        2    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >5%                  1        0    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0%                   0      114    217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0%                   1        0    217
0-6 months    ki0047075b-MAL-ED          INDIA                          (0%, 5%]             0      179    240
0-6 months    ki0047075b-MAL-ED          INDIA                          (0%, 5%]             1       13    240
0-6 months    ki0047075b-MAL-ED          INDIA                          >5%                  0       38    240
0-6 months    ki0047075b-MAL-ED          INDIA                          >5%                  1        5    240
0-6 months    ki0047075b-MAL-ED          INDIA                          0%                   0        4    240
0-6 months    ki0047075b-MAL-ED          INDIA                          0%                   1        1    240
0-6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0      140    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             1        3    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          >5%                  0       79    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          >5%                  1        0    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          0%                   0       13    237
0-6 months    ki0047075b-MAL-ED          NEPAL                          0%                   1        2    237
0-6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]             0      113    284
0-6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]             1        0    284
0-6 months    ki0047075b-MAL-ED          PERU                           >5%                  0      160    284
0-6 months    ki0047075b-MAL-ED          PERU                           >5%                  1        0    284
0-6 months    ki0047075b-MAL-ED          PERU                           0%                   0       11    284
0-6 months    ki0047075b-MAL-ED          PERU                           0%                   1        0    284
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]             0      176    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]             1        2    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                  0        3    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                  1        0    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0%                   0       90    271
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0%                   1        0    271
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0      182    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             1        0    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0       62    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  1        0    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0        9    253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   1        0    253
0-6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]             0       76    366
0-6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]             1        5    366
0-6 months    ki1000109-EE               PAKISTAN                       >5%                  0       20    366
0-6 months    ki1000109-EE               PAKISTAN                       >5%                  1        1    366
0-6 months    ki1000109-EE               PAKISTAN                       0%                   0      243    366
0-6 months    ki1000109-EE               PAKISTAN                       0%                   1       21    366
0-6 months    ki1000109-ResPak           PAKISTAN                       (0%, 5%]             0       66    240
0-6 months    ki1000109-ResPak           PAKISTAN                       (0%, 5%]             1        8    240
0-6 months    ki1000109-ResPak           PAKISTAN                       >5%                  0      138    240
0-6 months    ki1000109-ResPak           PAKISTAN                       >5%                  1       15    240
0-6 months    ki1000109-ResPak           PAKISTAN                       0%                   0       11    240
0-6 months    ki1000109-ResPak           PAKISTAN                       0%                   1        2    240
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0       45    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             1        5    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                  0      113    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                  1        6    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   0        0    169
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                   1        0    169
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0      416    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             1        8    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                  0      188    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                  1        6    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   0       19    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   1        0    637
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0      125    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             1        0    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0      108    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  1        5    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0       12    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   1        0    250
0-6 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]             0      101    234
0-6 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]             1        4    234
0-6 months    ki1114097-CMIN             BANGLADESH                     >5%                  0      121    234
0-6 months    ki1114097-CMIN             BANGLADESH                     >5%                  1        5    234
0-6 months    ki1114097-CMIN             BANGLADESH                     0%                   0        3    234
0-6 months    ki1114097-CMIN             BANGLADESH                     0%                   1        0    234
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]             0        1     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]             1        0     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  >5%                  0       10     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  >5%                  1        0     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  0%                   0        0     11
0-6 months    ki1114097-CMIN             GUINEA-BISSAU                  0%                   1        0     11
0-6 months    ki1114097-CMIN             PERU                           (0%, 5%]             0      268    558
0-6 months    ki1114097-CMIN             PERU                           (0%, 5%]             1        6    558
0-6 months    ki1114097-CMIN             PERU                           >5%                  0      243    558
0-6 months    ki1114097-CMIN             PERU                           >5%                  1        6    558
0-6 months    ki1114097-CMIN             PERU                           0%                   0       35    558
0-6 months    ki1114097-CMIN             PERU                           0%                   1        0    558
0-6 months    ki1114097-CONTENT          PERU                           (0%, 5%]             0      142    215
0-6 months    ki1114097-CONTENT          PERU                           (0%, 5%]             1        0    215
0-6 months    ki1114097-CONTENT          PERU                           >5%                  0       67    215
0-6 months    ki1114097-CONTENT          PERU                           >5%                  1        0    215
0-6 months    ki1114097-CONTENT          PERU                           0%                   0        6    215
0-6 months    ki1114097-CONTENT          PERU                           0%                   1        0    215
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0      136    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             1       10    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  0       91    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  1        3    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   0        8    248
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   1        0    248
6-24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]             0      100    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]             1        1    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >5%                  0        2    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >5%                  1        0    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0%                   0      113    217
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0%                   1        1    217
6-24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]             0      178    241
6-24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]             1       15    241
6-24 months   ki0047075b-MAL-ED          INDIA                          >5%                  0       38    241
6-24 months   ki0047075b-MAL-ED          INDIA                          >5%                  1        5    241
6-24 months   ki0047075b-MAL-ED          INDIA                          0%                   0        4    241
6-24 months   ki0047075b-MAL-ED          INDIA                          0%                   1        1    241
6-24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0      140    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             1        4    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          >5%                  0       79    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          >5%                  1        0    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          0%                   0       15    238
6-24 months   ki0047075b-MAL-ED          NEPAL                          0%                   1        0    238
6-24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]             0      112    284
6-24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]             1        1    284
6-24 months   ki0047075b-MAL-ED          PERU                           >5%                  0      160    284
6-24 months   ki0047075b-MAL-ED          PERU                           >5%                  1        0    284
6-24 months   ki0047075b-MAL-ED          PERU                           0%                   0       11    284
6-24 months   ki0047075b-MAL-ED          PERU                           0%                   1        0    284
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]             0      179    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]             1        1    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                  0        3    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                  1        0    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                   0       89    273
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                   1        1    273
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0      182    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             1        0    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0       62    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  1        0    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0        9    253
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   1        0    253
6-24 months   ki1000109-EE               PAKISTAN                       (0%, 5%]             0       75    377
6-24 months   ki1000109-EE               PAKISTAN                       (0%, 5%]             1        6    377
6-24 months   ki1000109-EE               PAKISTAN                       >5%                  0       21    377
6-24 months   ki1000109-EE               PAKISTAN                       >5%                  1        0    377
6-24 months   ki1000109-EE               PAKISTAN                       0%                   0      253    377
6-24 months   ki1000109-EE               PAKISTAN                       0%                   1       22    377
6-24 months   ki1000109-ResPak           PAKISTAN                       (0%, 5%]             0       63    251
6-24 months   ki1000109-ResPak           PAKISTAN                       (0%, 5%]             1       14    251
6-24 months   ki1000109-ResPak           PAKISTAN                       >5%                  0      143    251
6-24 months   ki1000109-ResPak           PAKISTAN                       >5%                  1       18    251
6-24 months   ki1000109-ResPak           PAKISTAN                       0%                   0       11    251
6-24 months   ki1000109-ResPak           PAKISTAN                       0%                   1        2    251
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             0        0     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             1        0     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  0       21     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  1        4     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%                   0       55     94
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%                   1       14     94
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0      302    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             1       36    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  0      175    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  1       11    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   0       10    534
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   1        0    534
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0      414    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             1       12    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  0      192    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  1        3    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   0       19    640
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   1        0    640
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0      382    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             1       12    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0      192    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  1       10    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0      130    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   1        4    730
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             0       63    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             1        1    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >5%                  0      177    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >5%                  1        3    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0%                   0       12    256
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0%                   1        0    256
6-24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]             0      106    257
6-24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]             1       12    257
6-24 months   ki1114097-CMIN             BANGLADESH                     >5%                  0      128    257
6-24 months   ki1114097-CMIN             BANGLADESH                     >5%                  1        8    257
6-24 months   ki1114097-CMIN             BANGLADESH                     0%                   0        3    257
6-24 months   ki1114097-CMIN             BANGLADESH                     0%                   1        0    257
6-24 months   ki1114097-CMIN             BRAZIL                         (0%, 5%]             0       69    119
6-24 months   ki1114097-CMIN             BRAZIL                         (0%, 5%]             1        0    119
6-24 months   ki1114097-CMIN             BRAZIL                         >5%                  0       49    119
6-24 months   ki1114097-CMIN             BRAZIL                         >5%                  1        0    119
6-24 months   ki1114097-CMIN             BRAZIL                         0%                   0        1    119
6-24 months   ki1114097-CMIN             BRAZIL                         0%                   1        0    119
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]             0      389   1132
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]             1       10   1132
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%                  0      679   1132
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%                  1       25   1132
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%                   0       28   1132
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%                   1        1   1132
6-24 months   ki1114097-CMIN             PERU                           (0%, 5%]             0      366    830
6-24 months   ki1114097-CMIN             PERU                           (0%, 5%]             1        3    830
6-24 months   ki1114097-CMIN             PERU                           >5%                  0      413    830
6-24 months   ki1114097-CMIN             PERU                           >5%                  1        2    830
6-24 months   ki1114097-CMIN             PERU                           0%                   0       46    830
6-24 months   ki1114097-CMIN             PERU                           0%                   1        0    830
6-24 months   ki1114097-CONTENT          PERU                           (0%, 5%]             0      142    215
6-24 months   ki1114097-CONTENT          PERU                           (0%, 5%]             1        0    215
6-24 months   ki1114097-CONTENT          PERU                           >5%                  0       67    215
6-24 months   ki1114097-CONTENT          PERU                           >5%                  1        0    215
6-24 months   ki1114097-CONTENT          PERU                           0%                   0        6    215
6-24 months   ki1114097-CONTENT          PERU                           0%                   1        0    215
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0      825   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             1       75   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0      135   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  1       16   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   0      306   1378
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   1       21   1378


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
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
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
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
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




# Results Detail

## Results Plots
![](/tmp/0e8ce659-921f-4eca-81ce-e97f498f8123/b2c5fd15-c809-40f7-be67-872a32c84f2b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0e8ce659-921f-4eca-81ce-e97f498f8123/b2c5fd15-c809-40f7-be67-872a32c84f2b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0e8ce659-921f-4eca-81ce-e97f498f8123/b2c5fd15-c809-40f7-be67-872a32c84f2b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0e8ce659-921f-4eca-81ce-e97f498f8123/b2c5fd15-c809-40f7-be67-872a32c84f2b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid             country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   kiGH5241-JiVitA-4   BANGLADESH   (0%, 5%]             NA                0.0833333   0.0638075   0.1028592
0-24 months   kiGH5241-JiVitA-4   BANGLADESH   >5%                  NA                0.1059603   0.0465214   0.1653991
0-24 months   kiGH5241-JiVitA-4   BANGLADESH   0%                   NA                0.0642202   0.0355875   0.0928529
6-24 months   kiGH5241-JiVitA-4   BANGLADESH   (0%, 5%]             NA                0.0833333   0.0638075   0.1028592
6-24 months   kiGH5241-JiVitA-4   BANGLADESH   >5%                  NA                0.1059603   0.0465214   0.1653991
6-24 months   kiGH5241-JiVitA-4   BANGLADESH   0%                   NA                0.0642202   0.0355875   0.0928529


### Parameter: E(Y)


agecat        studyid             country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   kiGH5241-JiVitA-4   BANGLADESH   NA                   NA                0.0812772   0.0652971   0.0972574
6-24 months   kiGH5241-JiVitA-4   BANGLADESH   NA                   NA                0.0812772   0.0652971   0.0972574


### Parameter: RR


agecat        studyid             country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   kiGH5241-JiVitA-4   BANGLADESH   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4   BANGLADESH   >5%                  (0%, 5%]          1.2715232   0.6958937   2.323302
0-24 months   kiGH5241-JiVitA-4   BANGLADESH   0%                   (0%, 5%]          0.7706422   0.4666812   1.272580
6-24 months   kiGH5241-JiVitA-4   BANGLADESH   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4   BANGLADESH   >5%                  (0%, 5%]          1.2715232   0.6958937   2.323302
6-24 months   kiGH5241-JiVitA-4   BANGLADESH   0%                   (0%, 5%]          0.7706422   0.4666812   1.272580


### Parameter: PAR


agecat        studyid             country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   kiGH5241-JiVitA-4   BANGLADESH   (0%, 5%]             NA                -0.0020561   -0.0132975   0.0091852
6-24 months   kiGH5241-JiVitA-4   BANGLADESH   (0%, 5%]             NA                -0.0020561   -0.0132975   0.0091852


### Parameter: PAF


agecat        studyid             country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   kiGH5241-JiVitA-4   BANGLADESH   (0%, 5%]             NA                -0.0252976   -0.1734786   0.1041718
6-24 months   kiGH5241-JiVitA-4   BANGLADESH   (0%, 5%]             NA                -0.0252976   -0.1734786   0.1041718
