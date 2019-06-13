---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      W: []
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
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** ever_wasted

## Predictor Variables

**Intervention Variable:** perdiar24

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
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







# Results Detail

## Results Plots
![](/tmp/b9c305ee-ee81-463c-a435-d2773e047c1d/c4ef4300-7820-4cae-a82e-eeb1bc504f94/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b9c305ee-ee81-463c-a435-d2773e047c1d/c4ef4300-7820-4cae-a82e-eeb1bc504f94/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                        studyid                 country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000109-EE            PAKISTAN        optimal              NA                0.3792803   0.1516022   0.6069584
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        optimal              NA                0.2533842   0.0748233   0.4319451
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      optimal              NA                0.1373954   0.0896769   0.1851138
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   optimal              NA                0.1186669   0.0394782   0.1978555
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH      optimal              NA                0.2529811   0.2071288   0.2988333
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        optimal              NA                0.2553958   0.1606347   0.3501570
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH      optimal              NA                0.0234806   0.0010174   0.0459437
6-24 months                   ki1000109-EE            PAKISTAN        optimal              NA                0.3264780   0.1100151   0.5429410
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH      optimal              NA                0.1235294   0.0781332   0.1689255
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU   optimal              NA                0.1097368   0.0316841   0.1877895
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH      optimal              NA                0.2351939   0.1900509   0.2803369


### Parameter: E(Y)


agecat                        studyid                 country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ----------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000109-EE            PAKISTAN        observed             NA                0.4376658   0.3875213   0.4878102
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        observed             NA                0.4578755   0.3986666   0.5170843
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      observed             NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   observed             NA                0.1549966   0.1364963   0.1734969
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH      observed             NA                0.2695285   0.2427999   0.2962571
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        observed             NA                0.2287823   0.1786790   0.2788855
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH      observed             NA                0.0242947   0.0148797   0.0337096
6-24 months                   ki1000109-EE            PAKISTAN        observed             NA                0.3306667   0.2829875   0.3783458
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH      observed             NA                0.1315068   0.1069744   0.1560393
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU   observed             NA                0.1651755   0.1460754   0.1842756
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH      observed             NA                0.2576816   0.2314541   0.2839091


### Parameter: RR


agecat                        studyid                 country         intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  ----------------------  --------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki1000109-EE            PAKISTAN        observed             optimal           1.1539376   0.6430638   2.070669
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        observed             optimal           1.8070403   0.9127760   3.577433
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      observed             optimal           1.0425102   0.7717744   1.408219
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   observed             optimal           1.3061490   0.6784220   2.514696
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH      observed             optimal           1.0654098   0.9087917   1.249019
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        observed             optimal           0.8957949   0.6621412   1.211899
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH      observed             optimal           1.0346705   0.4715197   2.270410
6-24 months                   ki1000109-EE            PAKISTAN        observed             optimal           1.0128298   0.5309435   1.932078
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH      observed             optimal           1.0645797   0.7789360   1.454972
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU   observed             optimal           1.5051973   0.7472961   3.031755
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH      observed             optimal           1.0956134   0.9201737   1.304502


### Parameter: PAR


agecat                        studyid                 country         intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------------------  --------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-EE            PAKISTAN        optimal              NA                 0.0583855   -0.1632098   0.2799808
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        optimal              NA                 0.2044913    0.0314358   0.3775468
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      optimal              NA                 0.0058407   -0.0354889   0.0471703
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   optimal              NA                 0.0363297   -0.0414720   0.1141315
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH      optimal              NA                 0.0165474   -0.0238273   0.0569222
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        optimal              NA                -0.0266135   -0.1039503   0.0507232
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH      optimal              NA                 0.0008141   -0.0175650   0.0191931
6-24 months                   ki1000109-EE            PAKISTAN        optimal              NA                 0.0041886   -0.2066618   0.2150391
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH      optimal              NA                 0.0079775   -0.0306087   0.0465637
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU   optimal              NA                 0.0554387   -0.0215798   0.1324572
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH      optimal              NA                 0.0224877   -0.0188738   0.0638492


### Parameter: PAF


agecat                        studyid                 country         intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ----------------------  --------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000109-EE            PAKISTAN        optimal              NA                 0.1334020   -0.5550556   0.5170642
0-24 months (no birth wast)   ki1000109-ResPak        PAKISTAN        optimal              NA                 0.4466089   -0.0955591   0.7204699
0-24 months (no birth wast)   ki1017093c-NIH-Crypto   BANGLADESH      optimal              NA                 0.0407768   -0.2957155   0.2898833
0-24 months (no birth wast)   ki1114097-CMIN          GUINEA-BISSAU   optimal              NA                 0.2343906   -0.4740088   0.6023377
0-24 months (no birth wast)   kiGH5241-JiVitA-4       BANGLADESH      optimal              NA                 0.0613940   -0.1003622   0.1993716
0-6 months (no birth wast)    ki1000109-ResPak        PAKISTAN        optimal              NA                -0.1163269   -0.5102518   0.1748490
0-6 months (no birth wast)    kiGH5241-JiVitA-4       BANGLADESH      optimal              NA                 0.0335087   -1.1208021   0.5595509
6-24 months                   ki1000109-EE            PAKISTAN        optimal              NA                 0.0126673   -0.8834394   0.4824225
6-24 months                   ki1017093c-NIH-Crypto   BANGLADESH      optimal              NA                 0.0606622   -0.2838024   0.3127014
6-24 months                   ki1114097-CMIN          GUINEA-BISSAU   optimal              NA                 0.3356353   -0.3381577   0.6701581
6-24 months                   kiGH5241-JiVitA-4       BANGLADESH      optimal              NA                 0.0872692   -0.0867513   0.2334240
