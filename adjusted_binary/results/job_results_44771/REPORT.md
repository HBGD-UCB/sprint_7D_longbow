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

**Intervention Variable:** perdiar24

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid                    country                        perdiar24    ever_swasted   n_cell      n
----------------------------  -------------------------  -----------------------------  ----------  -------------  -------  -----
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]                0      138    261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]                1       10    261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     >5%                     0       94    261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     >5%                     1        1    261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0%                      0       17    261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BANGLADESH                     0%                      1        1    261
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]                0       99    229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]                1        1    229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         >5%                     0        2    229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         >5%                     1        0    229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0%                      0      125    229
0-24 months (no birth wast)   ki0047075b-MAL-ED          BRAZIL                         0%                      1        2    229
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          (0%, 5%]                0      182    242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          (0%, 5%]                1        9    242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          >5%                     0       41    242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          >5%                     1        1    242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0%                      0        9    242
0-24 months (no birth wast)   ki0047075b-MAL-ED          INDIA                          0%                      1        0    242
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]                0      141    238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]                1        2    238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          >5%                     0       78    238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          >5%                     1        1    238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0%                      0       16    238
0-24 months (no birth wast)   ki0047075b-MAL-ED          NEPAL                          0%                      1        0    238
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           (0%, 5%]                0      112    299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           (0%, 5%]                1        1    299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           >5%                     0      159    299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           >5%                     1        2    299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0%                      0       25    299
0-24 months (no birth wast)   ki0047075b-MAL-ED          PERU                           0%                      1        0    299
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]                0      174    294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]                1        7    294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                     0        3    294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                     1        0    294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                      0      106    294
0-24 months (no birth wast)   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                      1        4    294
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]                0      181    261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]                1        2    261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                     0       59    261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                     1        3    261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                      0       15    261
0-24 months (no birth wast)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                      1        1    261
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       (0%, 5%]                0       69    377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       (0%, 5%]                1       11    377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       >5%                     0       18    377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       >5%                     1        3    377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0%                      0      239    377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       0%                      1       37    377
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       (0%, 5%]                0       66    273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       (0%, 5%]                1       14    273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       >5%                     0      132    273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       >5%                     1       37    273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0%                      0       23    273
0-24 months (no birth wast)   ki1000109-ResPak           PAKISTAN                       0%                      1        1    273
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]                0        0    100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]                1        0    100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                     0       23    100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                     1        3    100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0%                      0       64    100
0-24 months (no birth wast)   ki1000304b-SAS-FoodSuppl   INDIA                          0%                      1       10    100
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]                0      321    597
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]                1       33    597
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     >5%                     0      181    597
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     >5%                     1       21    597
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0%                      0       41    597
0-24 months (no birth wast)   ki1017093-NIH-Birth        BANGLADESH                     0%                      1        0    597
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]                0      417    687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]                1       10    687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     >5%                     0      191    687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     >5%                     1        9    687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0%                      0       60    687
0-24 months (no birth wast)   ki1017093b-PROVIDE         BANGLADESH                     0%                      1        0    687
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]                0      387    754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]                1       11    754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                     0      199    754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                     1        4    754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0%                      0      148    754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     0%                      1        5    754
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]                0       71    307
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]                1        0    307
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      >5%                     0      202    307
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      >5%                     1        2    307
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      0%                      0       32    307
0-24 months (no birth wast)   ki1112895-Guatemala BSC    GUATEMALA                      0%                      1        0    307
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     (0%, 5%]                0      102    263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     (0%, 5%]                1       18    263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     >5%                     0      119    263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     >5%                     1       19    263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0%                      0        5    263
0-24 months (no birth wast)   ki1114097-CMIN             BANGLADESH                     0%                      1        0    263
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         (0%, 5%]                0       69    119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         (0%, 5%]                1        0    119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         >5%                     0       49    119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         >5%                     1        0    119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         0%                      0        1    119
0-24 months (no birth wast)   ki1114097-CMIN             BRAZIL                         0%                      1        0    119
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]                0      468   1471
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]                1       25   1471
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  >5%                     0      876   1471
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  >5%                     1       34   1471
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  0%                      0       66   1471
0-24 months (no birth wast)   ki1114097-CMIN             GUINEA-BISSAU                  0%                      1        2   1471
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           (0%, 5%]                0      389    927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           (0%, 5%]                1        2    927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           >5%                     0      460    927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           >5%                     1        5    927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           0%                      0       71    927
0-24 months (no birth wast)   ki1114097-CMIN             PERU                           0%                      1        0    927
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           (0%, 5%]                0      142    215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           (0%, 5%]                1        0    215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           >5%                     0       67    215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           >5%                     1        0    215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           0%                      0        6    215
0-24 months (no birth wast)   ki1114097-CONTENT          PERU                           0%                      1        0    215
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]                0      872   1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]                1       39   1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     >5%                     0      150   1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     >5%                     1       10   1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0%                      0      339   1421
0-24 months (no birth wast)   kiGH5241-JiVitA-4          BANGLADESH                     0%                      1       11   1421
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]                0      141    260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]                1        6    260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     >5%                     0       94    260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     >5%                     1        1    260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0%                      0       18    260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BANGLADESH                     0%                      1        0    260
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]                0      100    229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]                1        0    229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         >5%                     0        2    229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         >5%                     1        0    229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0%                      0      125    229
0-6 months (no birth wast)    ki0047075b-MAL-ED          BRAZIL                         0%                      1        2    229
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          (0%, 5%]                0      187    241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          (0%, 5%]                1        4    241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          >5%                     0       40    241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          >5%                     1        1    241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0%                      0        9    241
0-6 months (no birth wast)    ki0047075b-MAL-ED          INDIA                          0%                      1        0    241
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]                0      141    236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]                1        1    236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          >5%                     0       79    236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          >5%                     1        0    236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0%                      0       15    236
0-6 months (no birth wast)    ki0047075b-MAL-ED          NEPAL                          0%                      1        0    236
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           (0%, 5%]                0      113    299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           (0%, 5%]                1        0    299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           >5%                     0      160    299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           >5%                     1        1    299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0%                      0       25    299
0-6 months (no birth wast)    ki0047075b-MAL-ED          PERU                           0%                      1        0    299
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]                0      178    293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]                1        2    293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                     0        3    293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                     1        0    293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0%                      0      109    293
0-6 months (no birth wast)    ki0047075b-MAL-ED          SOUTH AFRICA                   0%                      1        1    293
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]                0      181    261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]                1        2    261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                     0       62    261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                     1        0    261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                      0       16    261
0-6 months (no birth wast)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                      1        0    261
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       (0%, 5%]                0       76    373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       (0%, 5%]                1        4    373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       >5%                     0       20    373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       >5%                     1        1    373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0%                      0      261    373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       0%                      1       11    373
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       (0%, 5%]                0       74    271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       (0%, 5%]                1        5    271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       >5%                     0      152    271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       >5%                     1       16    271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0%                      0       23    271
0-6 months (no birth wast)    ki1000109-ResPak           PAKISTAN                       0%                      1        1    271
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]                0        0     89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]                1        0     89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                     0       24     89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                     1        0     89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0%                      0       65     89
0-6 months (no birth wast)    ki1000304b-SAS-FoodSuppl   INDIA                          0%                      1        0     89
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]                0      334    579
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]                1        5    579
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     >5%                     0      195    579
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     >5%                     1        4    579
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0%                      0       41    579
0-6 months (no birth wast)    ki1017093-NIH-Birth        BANGLADESH                     0%                      1        0    579
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]                0      420    683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]                1        3    683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     >5%                     0      197    683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     >5%                     1        3    683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0%                      0       60    683
0-6 months (no birth wast)    ki1017093b-PROVIDE         BANGLADESH                     0%                      1        0    683
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]                0      396    749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]                1        0    749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                     0      201    749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                     1        0    749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0%                      0      151    749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     0%                      1        1    749
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]                0       65    284
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]                1        0    284
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      >5%                     0      190    284
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      >5%                     1        0    284
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      0%                      0       29    284
0-6 months (no birth wast)    ki1112895-Guatemala BSC    GUATEMALA                      0%                      1        0    284
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     (0%, 5%]                0      115    262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     (0%, 5%]                1        4    262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     >5%                     0      133    262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     >5%                     1        5    262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     0%                      0        5    262
0-6 months (no birth wast)    ki1114097-CMIN             BANGLADESH                     0%                      1        0    262
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         (0%, 5%]                0       56    101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         (0%, 5%]                1        0    101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         >5%                     0       44    101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         >5%                     1        0    101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         0%                      0        1    101
0-6 months (no birth wast)    ki1114097-CMIN             BRAZIL                         0%                      1        0    101
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]                0      341    937
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]                1        1    937
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  >5%                     0      560    937
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  >5%                     1        4    937
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  0%                      0       31    937
0-6 months (no birth wast)    ki1114097-CMIN             GUINEA-BISSAU                  0%                      1        0    937
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           (0%, 5%]                0      315    694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           (0%, 5%]                1        1    694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           >5%                     0      328    694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           >5%                     1        3    694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           0%                      0       47    694
0-6 months (no birth wast)    ki1114097-CMIN             PERU                           0%                      1        0    694
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           (0%, 5%]                0      142    215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           (0%, 5%]                1        0    215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           >5%                     0       67    215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           >5%                     1        0    215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           0%                      0        6    215
0-6 months (no birth wast)    ki1114097-CONTENT          PERU                           0%                      1        0    215
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]                0      814   1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]                1        2   1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     >5%                     0      139   1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     >5%                     1        0   1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0%                      0      319   1276
0-6 months (no birth wast)    kiGH5241-JiVitA-4          BANGLADESH                     0%                      1        2   1276
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]                0      138    240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]                1        4    240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     >5%                     0       92    240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     >5%                     1        0    240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0%                      0        5    240
6-24 months                   ki0047075b-MAL-ED          BANGLADESH                     0%                      1        1    240
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]                0       99    207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]                1        2    207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         >5%                     0        2    207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         >5%                     1        0    207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0%                      0      104    207
6-24 months                   ki0047075b-MAL-ED          BRAZIL                         0%                      1        0    207
6-24 months                   ki0047075b-MAL-ED          INDIA                          (0%, 5%]                0      185    235
6-24 months                   ki0047075b-MAL-ED          INDIA                          (0%, 5%]                1        5    235
6-24 months                   ki0047075b-MAL-ED          INDIA                          >5%                     0       42    235
6-24 months                   ki0047075b-MAL-ED          INDIA                          >5%                     1        0    235
6-24 months                   ki0047075b-MAL-ED          INDIA                          0%                      0        3    235
6-24 months                   ki0047075b-MAL-ED          INDIA                          0%                      1        0    235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]                0      142    235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]                1        1    235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          >5%                     0       77    235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          >5%                     1        1    235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0%                      0       14    235
6-24 months                   ki0047075b-MAL-ED          NEPAL                          0%                      1        0    235
6-24 months                   ki0047075b-MAL-ED          PERU                           (0%, 5%]                0      106    270
6-24 months                   ki0047075b-MAL-ED          PERU                           (0%, 5%]                1        1    270
6-24 months                   ki0047075b-MAL-ED          PERU                           >5%                     0      156    270
6-24 months                   ki0047075b-MAL-ED          PERU                           >5%                     1        1    270
6-24 months                   ki0047075b-MAL-ED          PERU                           0%                      0        6    270
6-24 months                   ki0047075b-MAL-ED          PERU                           0%                      1        0    270
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]                0      172    259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]                1        6    259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                     0        2    259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                     1        0    259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                      0       76    259
6-24 months                   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                      1        3    259
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]                0      176    245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]                1        0    245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                     0       58    245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                     1        3    245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                      0        7    245
6-24 months                   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                      1        1    245
6-24 months                   ki1000109-EE               PAKISTAN                       (0%, 5%]                0       73    375
6-24 months                   ki1000109-EE               PAKISTAN                       (0%, 5%]                1        8    375
6-24 months                   ki1000109-EE               PAKISTAN                       >5%                     0       19    375
6-24 months                   ki1000109-EE               PAKISTAN                       >5%                     1        2    375
6-24 months                   ki1000109-EE               PAKISTAN                       0%                      0      244    375
6-24 months                   ki1000109-EE               PAKISTAN                       0%                      1       29    375
6-24 months                   ki1000109-ResPak           PAKISTAN                       (0%, 5%]                0       60    230
6-24 months                   ki1000109-ResPak           PAKISTAN                       (0%, 5%]                1        9    230
6-24 months                   ki1000109-ResPak           PAKISTAN                       >5%                     0      130    230
6-24 months                   ki1000109-ResPak           PAKISTAN                       >5%                     1       24    230
6-24 months                   ki1000109-ResPak           PAKISTAN                       0%                      0        7    230
6-24 months                   ki1000109-ResPak           PAKISTAN                       0%                      1        0    230
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]                0        0    103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]                1        0    103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                     0       24    103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                     1        3    103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0%                      0       61    103
6-24 months                   ki1000304b-SAS-FoodSuppl   INDIA                          0%                      1       15    103
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]                0      312    541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]                1       30    541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     >5%                     0      167    541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     >5%                     1       17    541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0%                      0       15    541
6-24 months                   ki1017093-NIH-Birth        BANGLADESH                     0%                      1        0    541
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]                0      410    615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]                1        7    615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     >5%                     0      182    615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     >5%                     1        6    615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0%                      0       10    615
6-24 months                   ki1017093b-PROVIDE         BANGLADESH                     0%                      1        0    615
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]                0      383    730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]                1       11    730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                     0      197    730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                     1        5    730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0%                      0      130    730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     0%                      1        4    730
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]                0       68    277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]                1        0    277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      >5%                     0      185    277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      >5%                     1        2    277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      0%                      0       22    277
6-24 months                   ki1112895-Guatemala BSC    GUATEMALA                      0%                      1        0    277
6-24 months                   ki1114097-CMIN             BANGLADESH                     (0%, 5%]                0      101    252
6-24 months                   ki1114097-CMIN             BANGLADESH                     (0%, 5%]                1       15    252
6-24 months                   ki1114097-CMIN             BANGLADESH                     >5%                     0      119    252
6-24 months                   ki1114097-CMIN             BANGLADESH                     >5%                     1       14    252
6-24 months                   ki1114097-CMIN             BANGLADESH                     0%                      0        3    252
6-24 months                   ki1114097-CMIN             BANGLADESH                     0%                      1        0    252
6-24 months                   ki1114097-CMIN             BRAZIL                         (0%, 5%]                0       69    119
6-24 months                   ki1114097-CMIN             BRAZIL                         (0%, 5%]                1        0    119
6-24 months                   ki1114097-CMIN             BRAZIL                         >5%                     0       49    119
6-24 months                   ki1114097-CMIN             BRAZIL                         >5%                     1        0    119
6-24 months                   ki1114097-CMIN             BRAZIL                         0%                      0        1    119
6-24 months                   ki1114097-CMIN             BRAZIL                         0%                      1        0    119
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]                0      456   1453
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]                1       28   1453
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  >5%                     0      870   1453
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  >5%                     1       36   1453
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  0%                      0       61   1453
6-24 months                   ki1114097-CMIN             GUINEA-BISSAU                  0%                      1        2   1453
6-24 months                   ki1114097-CMIN             PERU                           (0%, 5%]                0      381    878
6-24 months                   ki1114097-CMIN             PERU                           (0%, 5%]                1        1    878
6-24 months                   ki1114097-CMIN             PERU                           >5%                     0      432    878
6-24 months                   ki1114097-CMIN             PERU                           >5%                     1        4    878
6-24 months                   ki1114097-CMIN             PERU                           0%                      0       60    878
6-24 months                   ki1114097-CMIN             PERU                           0%                      1        0    878
6-24 months                   ki1114097-CONTENT          PERU                           (0%, 5%]                0      142    215
6-24 months                   ki1114097-CONTENT          PERU                           (0%, 5%]                1        0    215
6-24 months                   ki1114097-CONTENT          PERU                           >5%                     0       67    215
6-24 months                   ki1114097-CONTENT          PERU                           >5%                     1        0    215
6-24 months                   ki1114097-CONTENT          PERU                           0%                      0        6    215
6-24 months                   ki1114097-CONTENT          PERU                           0%                      1        0    215
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]                0      877   1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]                1       43   1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     >5%                     0      151   1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     >5%                     1       10   1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0%                      0      340   1432
6-24 months                   kiGH5241-JiVitA-4          BANGLADESH                     0%                      1       11   1432


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
![](/tmp/f4055c88-28c4-4932-b925-a6a56db9505d/0b3496a5-2647-43d8-b5a4-b6ec25477ddc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f4055c88-28c4-4932-b925-a6a56db9505d/0b3496a5-2647-43d8-b5a4-b6ec25477ddc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f4055c88-28c4-4932-b925-a6a56db9505d/0b3496a5-2647-43d8-b5a4-b6ec25477ddc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f4055c88-28c4-4932-b925-a6a56db9505d/0b3496a5-2647-43d8-b5a4-b6ec25477ddc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid             country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   kiGH5241-JiVitA-4   BANGLADESH   (0%, 5%]             NA                0.0428101   0.0296679   0.0559523
0-24 months (no birth wast)   kiGH5241-JiVitA-4   BANGLADESH   >5%                  NA                0.0625000   0.0116117   0.1133883
0-24 months (no birth wast)   kiGH5241-JiVitA-4   BANGLADESH   0%                   NA                0.0314286   0.0073651   0.0554920
6-24 months                   kiGH5241-JiVitA-4   BANGLADESH   (0%, 5%]             NA                0.0467391   0.0332995   0.0601788
6-24 months                   kiGH5241-JiVitA-4   BANGLADESH   >5%                  NA                0.0621118   0.0120481   0.1121755
6-24 months                   kiGH5241-JiVitA-4   BANGLADESH   0%                   NA                0.0313390   0.0117490   0.0509291


### Parameter: E(Y)


agecat                        studyid             country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   kiGH5241-JiVitA-4   BANGLADESH   NA                   NA                0.0422238   0.0310459   0.0534017
6-24 months                   kiGH5241-JiVitA-4   BANGLADESH   NA                   NA                0.0446927   0.0336526   0.0557329


### Parameter: RR


agecat                        studyid             country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------------------------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth wast)   kiGH5241-JiVitA-4   BANGLADESH   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-4   BANGLADESH   >5%                  (0%, 5%]          1.4599359   0.6097174   3.495739
0-24 months (no birth wast)   kiGH5241-JiVitA-4   BANGLADESH   0%                   (0%, 5%]          0.7341392   0.3131083   1.721322
6-24 months                   kiGH5241-JiVitA-4   BANGLADESH   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-4   BANGLADESH   >5%                  (0%, 5%]          1.3289037   0.5708431   3.093643
6-24 months                   kiGH5241-JiVitA-4   BANGLADESH   0%                   (0%, 5%]          0.6705095   0.3272328   1.373894


### Parameter: PAR


agecat                        studyid             country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   kiGH5241-JiVitA-4   BANGLADESH   (0%, 5%]             NA                -0.0005863   -0.0102294   0.0090568
6-24 months                   kiGH5241-JiVitA-4   BANGLADESH   (0%, 5%]             NA                -0.0020464   -0.0108929   0.0068001


### Parameter: PAF


agecat                        studyid             country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  ------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   kiGH5241-JiVitA-4   BANGLADESH   (0%, 5%]             NA                -0.0138858   -0.2710345   0.1912379
6-24 months                   kiGH5241-JiVitA-4   BANGLADESH   (0%, 5%]             NA                -0.0457880   -0.2654517   0.1357453
