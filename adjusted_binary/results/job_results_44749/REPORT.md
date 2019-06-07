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

**Intervention Variable:** perdiar24

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid                    country                        perdiar24    ever_wasted   n_cell      n
----------------------------  -------------------------  -----------------------------  ----------  ------------  -------  -----
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]               0      112    261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]               1       36    261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     >5%                    0       76    261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     >5%                    1       19    261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0%                     0       15    261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0%                     1        3    261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]               0       95    229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]               1        5    229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         >5%                    0        1    229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         >5%                    1        1    229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0%                     0      121    229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0%                     1        6    229
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          (0%, 5%]               0      118    242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          (0%, 5%]               1       73    242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          >5%                    0       27    242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          >5%                    1       15    242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0%                     0        8    242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0%                     1        1    242
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]               0      113    238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]               1       30    238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          >5%                    0       65    238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          >5%                    1       14    238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0%                     0       15    238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0%                     1        1    238
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           (0%, 5%]               0      106    299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           (0%, 5%]               1        7    299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           >5%                    0      148    299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           >5%                    1       13    299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0%                     0       25    299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0%                     1        0    299
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]               0      157    294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]               1       24    294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                    0        3    294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                    1        0    294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                     0       90    294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                     1       20    294
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               0      163    261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               1       20    261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                    0       55    261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                    1        7    261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                     0       13    261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                     1        3    261
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       (0%, 5%]               0       42    377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       (0%, 5%]               1       38    377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       >5%                    0       13    377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       >5%                    1        8    377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0%                     0      157    377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0%                     1      119    377
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       (0%, 5%]               0       43    273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       (0%, 5%]               1       37    273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       >5%                    0       87    273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       >5%                    1       82    273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0%                     0       18    273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0%                     1        6    273
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]               0        0    100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]               1        0    100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                    0       17    100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                    1        9    100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0%                     0       43    100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0%                     1       31    100
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]               0      242    597
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]               1      112    597
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     >5%                    0      138    597
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     >5%                    1       64    597
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0%                     0       39    597
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0%                     1        2    597
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]               0      340    687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]               1       87    687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     >5%                    0      168    687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     >5%                    1       32    687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0%                     0       57    687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0%                     1        3    687
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]               0      340    754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]               1       58    754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                    0      175    754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                    1       28    754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0%                     0      131    754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0%                     1       22    754
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]               0       63    307
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]               1        8    307
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      >5%                    0      188    307
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      >5%                    1       16    307
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      0%                     0       30    307
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      0%                     1        2    307
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     (0%, 5%]               0       69    263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     (0%, 5%]               1       51    263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     >5%                    0       75    263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     >5%                    1       63    263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0%                     0        4    263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0%                     1        1    263
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         (0%, 5%]               0       67    119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         (0%, 5%]               1        2    119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         >5%                    0       47    119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         >5%                    1        2    119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         0%                     0        1    119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         0%                     1        0    119
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]               0      409   1471
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]               1       84   1471
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  >5%                    0      774   1471
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  >5%                    1      136   1471
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  0%                     0       60   1471
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  0%                     1        8   1471
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           (0%, 5%]               0      372    927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           (0%, 5%]               1       19    927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           >5%                    0      438    927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           >5%                    1       27    927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           0%                     0       69    927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           0%                     1        2    927
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           (0%, 5%]               0      136    215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           (0%, 5%]               1        6    215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           >5%                    0       66    215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           >5%                    1        1    215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           0%                     0        6    215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           0%                     1        0    215
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]               0      671   1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]               1      240   1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     >5%                    0      105   1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     >5%                    1       55   1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0%                     0      262   1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0%                     1       88   1421
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]               0      136    260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]               1       11    260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     >5%                    0       88    260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     >5%                    1        7    260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0%                     0       17    260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0%                     1        1    260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]               0       97    229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]               1        3    229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         >5%                    0        2    229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         >5%                    1        0    229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0%                     0      123    229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0%                     1        4    229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          (0%, 5%]               0      162    241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          (0%, 5%]               1       29    241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          >5%                    0       32    241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          >5%                    1        9    241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0%                     0        9    241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0%                     1        0    241
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]               0      129    236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]               1       13    236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          >5%                    0       77    236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          >5%                    1        2    236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0%                     0       15    236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0%                     1        0    236
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           (0%, 5%]               0      112    299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           (0%, 5%]               1        1    299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           >5%                    0      157    299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           >5%                    1        4    299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0%                     0       25    299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0%                     1        0    299
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]               0      173    293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]               1        7    293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                    0        3    293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                    1        0    293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0%                     0      105    293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0%                     1        5    293
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               0      176    261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               1        7    261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                    0       62    261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                    1        0    261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                     0       15    261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                     1        1    261
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       (0%, 5%]               0       63    373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       (0%, 5%]               1       17    373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       >5%                    0       17    373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       >5%                    1        4    373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0%                     0      221    373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0%                     1       51    373
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       (0%, 5%]               0       63    271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       (0%, 5%]               1       16    271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       >5%                    0      128    271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       >5%                    1       40    271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0%                     0       18    271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0%                     1        6    271
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]               0        0     89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]               1        0     89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                    0       24     89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                    1        0     89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0%                     0       65     89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0%                     1        0     89
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]               0      316    579
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]               1       23    579
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     >5%                    0      177    579
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     >5%                    1       22    579
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0%                     0       40    579
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0%                     1        1    579
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]               0      398    683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]               1       25    683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     >5%                    0      189    683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     >5%                    1       11    683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0%                     0       60    683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0%                     1        0    683
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]               0      383    749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]               1       13    749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                    0      197    749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                    1        4    749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0%                     0      149    749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0%                     1        3    749
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]               0       63    284
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]               1        2    284
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      >5%                    0      187    284
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      >5%                    1        3    284
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      0%                     0       29    284
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      0%                     1        0    284
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     (0%, 5%]               0      102    262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     (0%, 5%]               1       17    262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     >5%                    0      124    262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     >5%                    1       14    262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     0%                     0        5    262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     0%                     1        0    262
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         (0%, 5%]               0       56    101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         (0%, 5%]               1        0    101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         >5%                    0       43    101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         >5%                    1        1    101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         0%                     0        1    101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         0%                     1        0    101
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]               0      335    937
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]               1        7    937
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  >5%                    0      553    937
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  >5%                    1       11    937
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  0%                     0       29    937
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  0%                     1        2    937
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           (0%, 5%]               0      308    694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           (0%, 5%]               1        8    694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           >5%                    0      321    694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           >5%                    1       10    694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           0%                     0       47    694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           0%                     1        0    694
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           (0%, 5%]               0      140    215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           (0%, 5%]               1        2    215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           >5%                    0       66    215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           >5%                    1        1    215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           0%                     0        6    215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           0%                     1        0    215
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]               0      797   1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]               1       19   1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     >5%                    0      133   1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     >5%                    1        6   1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0%                     0      315   1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0%                     1        6   1276
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]               0      114    240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]               1       28    240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     >5%                    0       78    240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     >5%                    1       14    240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0%                     0        4    240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0%                     1        2    240
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]               0       98    207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]               1        3    207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         >5%                    0        1    207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         >5%                    1        1    207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0%                     0      102    207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0%                     1        2    207
6-24 months                   ki0047075b-MAL-ED          INDIA                          (0%, 5%]               0      137    235
6-24 months                   ki0047075b-MAL-ED          INDIA                          (0%, 5%]               1       53    235
6-24 months                   ki0047075b-MAL-ED          INDIA                          >5%                    0       32    235
6-24 months                   ki0047075b-MAL-ED          INDIA                          >5%                    1       10    235
6-24 months                   ki0047075b-MAL-ED          INDIA                          0%                     0        2    235
6-24 months                   ki0047075b-MAL-ED          INDIA                          0%                     1        1    235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]               0      120    235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]               1       23    235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          >5%                    0       66    235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          >5%                    1       12    235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0%                     0       13    235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0%                     1        1    235
6-24 months                   ki0047075b-MAL-ED          PERU                           (0%, 5%]               0      101    270
6-24 months                   ki0047075b-MAL-ED          PERU                           (0%, 5%]               1        6    270
6-24 months                   ki0047075b-MAL-ED          PERU                           >5%                    0      146    270
6-24 months                   ki0047075b-MAL-ED          PERU                           >5%                    1       11    270
6-24 months                   ki0047075b-MAL-ED          PERU                           0%                     0        6    270
6-24 months                   ki0047075b-MAL-ED          PERU                           0%                     1        0    270
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]               0      157    259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]               1       21    259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                    0        2    259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                    1        0    259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                     0       64    259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                     1       15    259
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               0      159    245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]               1       17    245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                    0       54    245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                    1        7    245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                     0        6    245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                     1        2    245
6-24 months                   ki1000109-EE               PAKISTAN                       (0%, 5%]               0       53    375
6-24 months                   ki1000109-EE               PAKISTAN                       (0%, 5%]               1       28    375
6-24 months                   ki1000109-EE               PAKISTAN                       >5%                    0       15    375
6-24 months                   ki1000109-EE               PAKISTAN                       >5%                    1        6    375
6-24 months                   ki1000109-EE               PAKISTAN                       0%                     0      183    375
6-24 months                   ki1000109-EE               PAKISTAN                       0%                     1       90    375
6-24 months                   ki1000109-ResPak           PAKISTAN                       (0%, 5%]               0       44    230
6-24 months                   ki1000109-ResPak           PAKISTAN                       (0%, 5%]               1       25    230
6-24 months                   ki1000109-ResPak           PAKISTAN                       >5%                    0       96    230
6-24 months                   ki1000109-ResPak           PAKISTAN                       >5%                    1       58    230
6-24 months                   ki1000109-ResPak           PAKISTAN                       0%                     0        6    230
6-24 months                   ki1000109-ResPak           PAKISTAN                       0%                     1        1    230
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]               0        0    103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]               1        0    103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                    0       18    103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                    1        9    103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0%                     0       45    103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0%                     1       31    103
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]               0      240    541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]               1      102    541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     >5%                    0      128    541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     >5%                    1       56    541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0%                     0       14    541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0%                     1        1    541
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]               0      344    615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]               1       73    615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     >5%                    0      165    615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     >5%                    1       23    615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0%                     0        7    615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0%                     1        3    615
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]               0      343    730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]               1       51    730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                    0      177    730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                    1       25    730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0%                     0      114    730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0%                     1       20    730
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]               0       61    277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]               1        7    277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      >5%                    0      173    277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      >5%                    1       14    277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      0%                     0       20    277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      0%                     1        2    277
6-24 months                   ki1114097-CMIN             BANGLADESH                     (0%, 5%]               0       74    252
6-24 months                   ki1114097-CMIN             BANGLADESH                     (0%, 5%]               1       42    252
6-24 months                   ki1114097-CMIN             BANGLADESH                     >5%                    0       79    252
6-24 months                   ki1114097-CMIN             BANGLADESH                     >5%                    1       54    252
6-24 months                   ki1114097-CMIN             BANGLADESH                     0%                     0        2    252
6-24 months                   ki1114097-CMIN             BANGLADESH                     0%                     1        1    252
6-24 months                   ki1114097-CMIN             BRAZIL                         (0%, 5%]               0       67    119
6-24 months                   ki1114097-CMIN             BRAZIL                         (0%, 5%]               1        2    119
6-24 months                   ki1114097-CMIN             BRAZIL                         >5%                    0       47    119
6-24 months                   ki1114097-CMIN             BRAZIL                         >5%                    1        2    119
6-24 months                   ki1114097-CMIN             BRAZIL                         0%                     0        1    119
6-24 months                   ki1114097-CMIN             BRAZIL                         0%                     1        0    119
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]               0      398   1453
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]               1       86   1453
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  >5%                    0      759   1453
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  >5%                    1      147   1453
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  0%                     0       56   1453
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  0%                     1        7   1453
6-24 months                   ki1114097-CMIN             PERU                           (0%, 5%]               0      370    878
6-24 months                   ki1114097-CMIN             PERU                           (0%, 5%]               1       12    878
6-24 months                   ki1114097-CMIN             PERU                           >5%                    0      415    878
6-24 months                   ki1114097-CMIN             PERU                           >5%                    1       21    878
6-24 months                   ki1114097-CMIN             PERU                           0%                     0       58    878
6-24 months                   ki1114097-CMIN             PERU                           0%                     1        2    878
6-24 months                   ki1114097-CONTENT          PERU                           (0%, 5%]               0      138    215
6-24 months                   ki1114097-CONTENT          PERU                           (0%, 5%]               1        4    215
6-24 months                   ki1114097-CONTENT          PERU                           >5%                    0       67    215
6-24 months                   ki1114097-CONTENT          PERU                           >5%                    1        0    215
6-24 months                   ki1114097-CONTENT          PERU                           0%                     0        6    215
6-24 months                   ki1114097-CONTENT          PERU                           0%                     1        0    215
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]               0      685   1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]               1      235   1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     >5%                    0      109   1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     >5%                    1       52   1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0%                     0      269   1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0%                     1       82   1432


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months (no birth wast), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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

* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth wast), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
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
![](/tmp/1d24b5f8-4f95-4bad-82e1-dbcfb6c1d910/40b7e49a-b325-47e1-9b0d-aca9687436ca/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1d24b5f8-4f95-4bad-82e1-dbcfb6c1d910/40b7e49a-b325-47e1-9b0d-aca9687436ca/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1d24b5f8-4f95-4bad-82e1-dbcfb6c1d910/40b7e49a-b325-47e1-9b0d-aca9687436ca/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1d24b5f8-4f95-4bad-82e1-dbcfb6c1d910/40b7e49a-b325-47e1-9b0d-aca9687436ca/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                 country         intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  ----------------------  --------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-EE            PAKISTAN        (0%, 5%]             NA                0.4750000    0.3654263   0.5845737
0-24 months (no birth wast)   ki1000109-EE            PAKISTAN        >5%                  NA                0.3809524    0.1729767   0.5889281
0-24 months (no birth wast)   ki1000109-EE            PAKISTAN        0%                   NA                0.4311594    0.3726556   0.4896633
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        (0%, 5%]             NA                0.4625000    0.3530426   0.5719574
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        >5%                  NA                0.4852071    0.4097185   0.5606957
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        0%                   NA                0.2500000    0.0764439   0.4235561
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             NA                0.1457286    0.1110418   0.1804155
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      >5%                  NA                0.1379310    0.0904642   0.1853979
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      0%                   NA                0.1437908    0.0881561   0.1994256
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             NA                0.1703854    0.1371863   0.2035845
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   >5%                  NA                0.1494505    0.1262780   0.1726231
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   0%                   NA                0.1176471    0.0410428   0.1942513
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH      (0%, 5%]             NA                0.2634468    0.2291491   0.2977444
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH      >5%                  NA                0.3437500    0.2569975   0.4305025
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH      0%                   NA                0.2514286    0.1960686   0.3067885
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        (0%, 5%]             NA                0.2025316    0.1137465   0.2913168
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        >5%                  NA                0.2380952    0.1735711   0.3026193
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        0%                   NA                0.2500000    0.0764415   0.4235585
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH      (0%, 5%]             NA                0.0232843    0.0144277   0.0321409
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH      >5%                  NA                0.0431655   -0.0051963   0.0915272
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH      0%                   NA                0.0186916   -0.0039453   0.0413285
6-24 months                   ki1000109-EE            PAKISTAN        (0%, 5%]             NA                0.3456790    0.2419698   0.4493882
6-24 months                   ki1000109-EE            PAKISTAN        >5%                  NA                0.2857143    0.0922413   0.4791872
6-24 months                   ki1000109-EE            PAKISTAN        0%                   NA                0.3296703    0.2738322   0.3855084
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             NA                0.1294416    0.0962725   0.1626107
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH      >5%                  NA                0.1237624    0.0783185   0.1692062
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH      0%                   NA                0.1492537    0.0888789   0.2096286
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             NA                0.1776860    0.1436200   0.2117519
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU   >5%                  NA                0.1622517    0.1382365   0.1862668
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU   0%                   NA                0.1111111    0.0334811   0.1887411
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH      (0%, 5%]             NA                0.2554348    0.2216721   0.2891974
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH      >5%                  NA                0.3229814    0.2363277   0.4096351
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH      0%                   NA                0.2336182    0.1828643   0.2843722


### Parameter: E(Y)


agecat                        studyid                 country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000109-EE            PAKISTAN        NA                   NA                0.4376658   0.3875213   0.4878102
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        NA                   NA                0.4578755   0.3986666   0.5170843
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      NA                   NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   NA                   NA                0.1549966   0.1364963   0.1734969
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH      NA                   NA                0.2695285   0.2427999   0.2962571
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        NA                   NA                0.2287823   0.1786790   0.2788855
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH      NA                   NA                0.0242947   0.0148797   0.0337096
6-24 months                   ki1000109-EE            PAKISTAN        NA                   NA                0.3306667   0.2829875   0.3783458
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH      NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU   NA                   NA                0.1651755   0.1460754   0.1842756
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH      NA                   NA                0.2576816   0.2314541   0.2839091


### Parameter: RR


agecat                        studyid                 country         intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  ----------------------  --------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki1000109-EE            PAKISTAN        (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000109-EE            PAKISTAN        >5%                  (0%, 5%]          0.8020050   0.4433869   1.450679
0-24 months (no birth wast)   ki1000109-EE            PAKISTAN        0%                   (0%, 5%]          0.9077040   0.6945671   1.186245
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        >5%                  (0%, 5%]          1.0490964   0.7903386   1.392572
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        0%                   (0%, 5%]          0.5405405   0.2595926   1.125549
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      >5%                  (0%, 5%]          0.9464923   0.6228667   1.438265
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      0%                   (0%, 5%]          0.9867027   0.6264709   1.554074
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   >5%                  (0%, 5%]          0.8771324   0.6837874   1.125147
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   0%                   (0%, 5%]          0.6904762   0.3499243   1.362459
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH      >5%                  (0%, 5%]          1.3048177   0.9833158   1.731437
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH      0%                   (0%, 5%]          0.9543810   0.7322019   1.243978
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        >5%                  (0%, 5%]          1.1755952   0.7021524   1.968268
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        0%                   (0%, 5%]          1.2343750   0.5430833   2.805613
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH      >5%                  (0%, 5%]          1.8538432   0.5571720   6.168176
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH      0%                   (0%, 5%]          0.8027546   0.2228840   2.891257
6-24 months                   ki1000109-EE            PAKISTAN        (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
6-24 months                   ki1000109-EE            PAKISTAN        >5%                  (0%, 5%]          0.8265306   0.3940966   1.733465
6-24 months                   ki1000109-EE            PAKISTAN        0%                   (0%, 5%]          0.9536892   0.6757428   1.345960
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH      >5%                  (0%, 5%]          0.9561250   0.6110196   1.496147
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH      0%                   (0%, 5%]          1.1530582   0.7143181   1.861276
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU   >5%                  (0%, 5%]          0.9131372   0.7167161   1.163389
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU   0%                   (0%, 5%]          0.6253230   0.3030115   1.290475
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH      >5%                  (0%, 5%]          1.2644377   0.9405992   1.699770
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH      0%                   (0%, 5%]          0.9145905   0.7021821   1.191252


### Parameter: PAR


agecat                        studyid                 country         intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------------------  --------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-EE            PAKISTAN        (0%, 5%]             NA                -0.0373342   -0.1344182   0.0597498
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        (0%, 5%]             NA                -0.0046245   -0.0966290   0.0873800
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             NA                -0.0024926   -0.0261365   0.0211514
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             NA                -0.0153888   -0.0419531   0.0111755
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH      (0%, 5%]             NA                 0.0060817   -0.0152986   0.0274621
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        (0%, 5%]             NA                 0.0262506   -0.0498891   0.1023904
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH      (0%, 5%]             NA                 0.0010104   -0.0075682   0.0095889
6-24 months                   ki1000109-EE            PAKISTAN        (0%, 5%]             NA                -0.0150123   -0.1065683   0.0765436
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             NA                 0.0020652   -0.0206158   0.0247463
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             NA                -0.0125105   -0.0399363   0.0149154
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH      (0%, 5%]             NA                 0.0022468   -0.0183852   0.0228788


### Parameter: PAF


agecat                        studyid                 country         intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------------------  --------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-EE            PAKISTAN        (0%, 5%]             NA                -0.0853030   -0.3316028   0.1154400
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        (0%, 5%]             NA                -0.0101000   -0.2324215   0.1721160
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             NA                -0.0174018   -0.1965957   0.1349572
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             NA                -0.0992847   -0.2844674   0.0592000
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH      (0%, 5%]             NA                 0.0225644   -0.0601128   0.0987936
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        (0%, 5%]             NA                 0.1147407   -0.2885999   0.3918329
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH      (0%, 5%]             NA                 0.0415876   -0.3737071   0.3313318
6-24 months                   ki1000109-EE            PAKISTAN        (0%, 5%]             NA                -0.0454002   -0.3624171   0.1978509
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH      (0%, 5%]             NA                 0.0157043   -0.1727785   0.1738952
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU   (0%, 5%]             NA                -0.0757404   -0.2551256   0.0780068
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH      (0%, 5%]             NA                 0.0087192   -0.0746997   0.0856631
