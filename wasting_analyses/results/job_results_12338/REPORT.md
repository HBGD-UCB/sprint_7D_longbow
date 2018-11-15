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
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             0       37    375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             1        9    375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  0      217    375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  1       41    375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%                   0       56    375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%                   1       15    375
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
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]             0     1018   1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]             1      128   1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                  0      266   1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                  1       43   1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                   0      185   1669
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                   1       29   1669
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
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0     3147   5281
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             1      276   5281
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0      455   5281
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  1       56   5281
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   0     1253   5281
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   1       94   5281
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
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0      416    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             1        8    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                  0      188    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                  1        6    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   0       19    637
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                   1        0    637
0-6 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]             0      101    234
0-6 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]             1        4    234
0-6 months    ki1114097-CMIN             BANGLADESH                     >5%                  0      121    234
0-6 months    ki1114097-CMIN             BANGLADESH                     >5%                  1        5    234
0-6 months    ki1114097-CMIN             BANGLADESH                     0%                   0        3    234
0-6 months    ki1114097-CMIN             BANGLADESH                     0%                   1        0    234
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
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0      125    234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             1       13    234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  0       87    234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                  1        3    234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   0        5    234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                   1        1    234
6-24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]             0      100    197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]             1        1    197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >5%                  0        2    197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >5%                  1        0    197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0%                   0       93    197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0%                   1        1    197
6-24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]             0      165    231
6-24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]             1       21    231
6-24 months   ki0047075b-MAL-ED          INDIA                          >5%                  0       36    231
6-24 months   ki0047075b-MAL-ED          INDIA                          >5%                  1        6    231
6-24 months   ki0047075b-MAL-ED          INDIA                          0%                   0        3    231
6-24 months   ki0047075b-MAL-ED          INDIA                          0%                   1        0    231
6-24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             0      140    231
6-24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]             1        2    231
6-24 months   ki0047075b-MAL-ED          NEPAL                          >5%                  0       77    231
6-24 months   ki0047075b-MAL-ED          NEPAL                          >5%                  1        0    231
6-24 months   ki0047075b-MAL-ED          NEPAL                          0%                   0       12    231
6-24 months   ki0047075b-MAL-ED          NEPAL                          0%                   1        0    231
6-24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]             0      100    251
6-24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]             1        1    251
6-24 months   ki0047075b-MAL-ED          PERU                           >5%                  0      146    251
6-24 months   ki0047075b-MAL-ED          PERU                           >5%                  1        1    251
6-24 months   ki0047075b-MAL-ED          PERU                           0%                   0        3    251
6-24 months   ki0047075b-MAL-ED          PERU                           0%                   1        0    251
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]             0      175    255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]             1        1    255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                  0        2    255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                  1        0    255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                   0       76    255
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                   1        1    255
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0      173    238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             1        0    238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0       59    238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  1        0    238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0        6    238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   1        0    238
6-24 months   ki1000109-EE               PAKISTAN                       (0%, 5%]             0       74    368
6-24 months   ki1000109-EE               PAKISTAN                       (0%, 5%]             1        7    368
6-24 months   ki1000109-EE               PAKISTAN                       >5%                  0       20    368
6-24 months   ki1000109-EE               PAKISTAN                       >5%                  1        1    368
6-24 months   ki1000109-EE               PAKISTAN                       0%                   0      231    368
6-24 months   ki1000109-EE               PAKISTAN                       0%                   1       35    368
6-24 months   ki1000109-ResPak           PAKISTAN                       (0%, 5%]             0       46    206
6-24 months   ki1000109-ResPak           PAKISTAN                       (0%, 5%]             1       14    206
6-24 months   ki1000109-ResPak           PAKISTAN                       >5%                  0      115    206
6-24 months   ki1000109-ResPak           PAKISTAN                       >5%                  1       27    206
6-24 months   ki1000109-ResPak           PAKISTAN                       0%                   0        3    206
6-24 months   ki1000109-ResPak           PAKISTAN                       0%                   1        1    206
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             0       33    348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             1        8    348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  0      202    348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  1       39    348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%                   0       54    348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0%                   1       12    348
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0      280    492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             1       39    492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  0      149    492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                  1       16    492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   0        8    492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                   1        0    492
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             0      382    601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]             1       27    601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  0      172    601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                  1       11    601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   0        9    601
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                   1        0    601
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0      356    697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             1       21    697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0      177    697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  1       12    697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0      122    697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   1        9    697
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             0       56    218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             1        1    218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >5%                  0      149    218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >5%                  1        2    218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0%                   0       10    218
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0%                   1        0    218
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]             0     1018   1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]             1      128   1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                  0      266   1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                  1       43   1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                   0      185   1669
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                   1       29   1669
6-24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]             0      101    251
6-24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]             1       15    251
6-24 months   ki1114097-CMIN             BANGLADESH                     >5%                  0      122    251
6-24 months   ki1114097-CMIN             BANGLADESH                     >5%                  1       10    251
6-24 months   ki1114097-CMIN             BANGLADESH                     0%                   0        3    251
6-24 months   ki1114097-CMIN             BANGLADESH                     0%                   1        0    251
6-24 months   ki1114097-CMIN             BRAZIL                         (0%, 5%]             0       68    117
6-24 months   ki1114097-CMIN             BRAZIL                         (0%, 5%]             1        0    117
6-24 months   ki1114097-CMIN             BRAZIL                         >5%                  0       48    117
6-24 months   ki1114097-CMIN             BRAZIL                         >5%                  1        0    117
6-24 months   ki1114097-CMIN             BRAZIL                         0%                   0        1    117
6-24 months   ki1114097-CMIN             BRAZIL                         0%                   1        0    117
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]             0      348    968
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]             1       12    968
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%                  0      561    968
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%                  1       23    968
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%                   0       23    968
6-24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%                   1        1    968
6-24 months   ki1114097-CMIN             PERU                           (0%, 5%]             0      339    734
6-24 months   ki1114097-CMIN             PERU                           (0%, 5%]             1        3    734
6-24 months   ki1114097-CMIN             PERU                           >5%                  0      364    734
6-24 months   ki1114097-CMIN             PERU                           >5%                  1        1    734
6-24 months   ki1114097-CMIN             PERU                           0%                   0       27    734
6-24 months   ki1114097-CMIN             PERU                           0%                   1        0    734
6-24 months   ki1114097-CONTENT          PERU                           (0%, 5%]             0      142    215
6-24 months   ki1114097-CONTENT          PERU                           (0%, 5%]             1        0    215
6-24 months   ki1114097-CONTENT          PERU                           >5%                  0       67    215
6-24 months   ki1114097-CONTENT          PERU                           >5%                  1        0    215
6-24 months   ki1114097-CONTENT          PERU                           0%                   0        6    215
6-24 months   ki1114097-CONTENT          PERU                           0%                   1        0    215
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0     2949   5057
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             1      345   5057
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0      419   5057
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  1       66   5057
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   0     1151   5057
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                   1      127   5057


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
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
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
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
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







# Results Detail

## Results Plots
![](/tmp/3fe4ec62-197b-41d5-94f1-553c08f25dec/c5c8a47c-7495-413f-a3c5-1e2e485e7d84/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3fe4ec62-197b-41d5-94f1-553c08f25dec/c5c8a47c-7495-413f-a3c5-1e2e485e7d84/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3fe4ec62-197b-41d5-94f1-553c08f25dec/c5c8a47c-7495-413f-a3c5-1e2e485e7d84/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3fe4ec62-197b-41d5-94f1-553c08f25dec/c5c8a47c-7495-413f-a3c5-1e2e485e7d84/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          (0%, 5%]             NA                0.1956522   0.0808597   0.3104446
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          >5%                  NA                0.1589147   0.1142443   0.2035852
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          0%                   NA                0.2112676   0.1161896   0.3063456
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   (0%, 5%]             NA                0.1116928   0.0896103   0.1337754
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   >5%                  NA                0.1391586   0.0823572   0.1959599
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   0%                   NA                0.1355140   0.0309117   0.2401163
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     (0%, 5%]             NA                0.0806310   0.0702342   0.0910279
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     >5%                  NA                0.1095890   0.0808274   0.1383506
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     0%                   NA                0.0697847   0.0535981   0.0859713
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          (0%, 5%]             NA                0.1951220   0.0736435   0.3166004
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          >5%                  NA                0.1618257   0.1152612   0.2083903
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          0%                   NA                0.1818182   0.0886335   0.2750029
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     (0%, 5%]             NA                0.0557029   0.0325352   0.0788706
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     >5%                  NA                0.0634921   0.0287029   0.0982813
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0%                   NA                0.0687023   0.0253558   0.1120488
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   (0%, 5%]             NA                0.1116928   0.0896103   0.1337754
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   >5%                  NA                0.1391586   0.0823572   0.1959599
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   0%                   NA                0.1355140   0.0309117   0.2401163
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     (0%, 5%]             NA                0.1047359   0.0915197   0.1179521
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     >5%                  NA                0.1360825   0.1033177   0.1688472
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     0%                   NA                0.0993740   0.0803773   0.1183708


### Parameter: E(Y)


agecat        studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          NA                   NA                0.1733333   0.1349698   0.2116969
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   NA                   NA                0.1198322   0.0943748   0.1452897
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.0806665   0.0720540   0.0892791
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          NA                   NA                0.1695402   0.1300601   0.2090204
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                0.0602582   0.0425793   0.0779372
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   NA                   NA                0.1198322   0.0943748   0.1452897
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     NA                   NA                0.1063872   0.0957820   0.1169924


### Parameter: RR


agecat        studyid                    country        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          >5%                  (0%, 5%]          0.8122308   0.4237765   1.556761
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          0%                   (0%, 5%]          1.0798122   0.5154829   2.261946
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   >5%                  (0%, 5%]          1.2459041   0.8510261   1.824007
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   0%                   (0%, 5%]          1.2132739   0.5527335   2.663189
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     >5%                  (0%, 5%]          1.3591423   1.0210914   1.809111
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     0%                   (0%, 5%]          0.8654821   0.6659770   1.124752
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          >5%                  (0%, 5%]          0.8293568   0.4177127   1.646665
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          0%                   (0%, 5%]          0.9318182   0.4160235   2.087106
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     >5%                  (0%, 5%]          1.1398337   0.5729127   2.267747
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     0%                   (0%, 5%]          1.2333697   0.5792994   2.625932
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   >5%                  (0%, 5%]          1.2459041   0.8510261   1.824007
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   0%                   (0%, 5%]          1.2132739   0.5527335   2.663189
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     >5%                  (0%, 5%]          1.2992918   0.9978450   1.691805
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     0%                   (0%, 5%]          0.9488059   0.7559826   1.190811


### Parameter: PAR


agecat        studyid                    country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          (0%, 5%]             NA                -0.0223188   -0.1291656   0.0845279
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   (0%, 5%]             NA                 0.0081394   -0.0079574   0.0242362
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     (0%, 5%]             NA                 0.0000355   -0.0059875   0.0060585
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          (0%, 5%]             NA                -0.0255817   -0.1388887   0.0877252
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     (0%, 5%]             NA                 0.0045553   -0.0118352   0.0209459
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   (0%, 5%]             NA                 0.0081394   -0.0079574   0.0242362
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     (0%, 5%]             NA                 0.0016513   -0.0055321   0.0088347


### Parameter: PAF


agecat        studyid                    country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA          (0%, 5%]             NA                -0.1287625   -0.9482279   0.3460186
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   (0%, 5%]             NA                 0.0679232   -0.0687602   0.1871262
0-24 months   kiGH5241-JiVitA-4          BANGLADESH     (0%, 5%]             NA                 0.0004403   -0.0770832   0.0723840
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA          (0%, 5%]             NA                -0.1508888   -1.0560919   0.3557948
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH     (0%, 5%]             NA                 0.0755968   -0.2395880   0.3106409
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO   (0%, 5%]             NA                 0.0679232   -0.0687602   0.1871262
6-24 months   kiGH5241-JiVitA-4          BANGLADESH     (0%, 5%]             NA                 0.0155216   -0.0545028   0.0808961
