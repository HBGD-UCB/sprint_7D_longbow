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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** perdiar24

**Adjustment Set:**

* arm
* sex
* W_birthwt
* W_birthlen
* W_nrooms
* month
* brthmon
* impfloor
* impsan
* safeh20
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

agecat                       studyid                    country                        perdiar24    ever_stunted   n_cell      n
---------------------------  -------------------------  -----------------------------  ----------  -------------  -------  -----
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0%                      0       10    217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0%                      1        6    217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]                0       63    217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]                1       65    217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     >5%                     0       31    217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     >5%                     1       42    217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0%                      0      106    208
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0%                      1       12    208
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]                0       71    208
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]                1       17    208
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         >5%                     0        2    208
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         >5%                     1        0    208
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0%                      0        9    209
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0%                      1        3    209
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          (0%, 5%]                0       73    209
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          (0%, 5%]                1       87    209
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          >5%                     0       19    209
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          >5%                     1       18    209
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0%                      0       12    212
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0%                      1        2    212
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]                0       95    212
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]                1       36    212
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          >5%                     0       50    212
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          >5%                     1       17    212
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0%                      0       21    266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0%                      1        6    266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           (0%, 5%]                0       34    266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           (0%, 5%]                1       65    266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           >5%                     0       60    266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           >5%                     1       80    266
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                      0       59    270
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                      1       46    270
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]                0       72    270
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]                1       90    270
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                     0        2    270
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                     1        1    270
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                      0        7    219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                      1        6    219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]                0       29    219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]                1      120    219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                     0        5    219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                     1       52    219
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0%                      0       26    249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0%                      1      152    249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       (0%, 5%]                0        6    249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       (0%, 5%]                1       52    249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       >5%                     0        1    249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       >5%                     1       12    249
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0%                      0       13    201
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0%                      1        6    201
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       (0%, 5%]                0       31    201
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       (0%, 5%]                1       31    201
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       >5%                     0       52    201
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       >5%                     1       68    201
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0%                      0       13    257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0%                      1       36    257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]                0       10    257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]                1       21    257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                     0       49    257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                     1      128    257
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     0%                      0       37    528
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     0%                      1        7    528
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]                0      113    528
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]                1      185    528
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     >5%                     0       59    528
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     >5%                     1      127    528
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0%                      0       60    634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0%                      1        4    634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]                0      232    634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]                1      162    634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     >5%                     0      104    634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     >5%                     1       72    634
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0%                      0       84    653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0%                      1       46    653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]                0      209    653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]                1      140    653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                     0      103    653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                     1       71    653
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      0%                      0       20    236
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      0%                      1        5    236
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]                0       38    236
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]                1       23    236
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      >5%                     0       87    236
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      >5%                     1       63    236
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                      0      302   1892
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                      1       42   1892
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]                0     1003   1892
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]                1      219   1892
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                     0      266   1892
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                     1       60   1892
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0%                      0        6    168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0%                      1        3    168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     (0%, 5%]                0       14    168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     (0%, 5%]                1       63    168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     >5%                     0       21    168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     >5%                     1       61    168
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         0%                      0        1    114
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         0%                      1        0    114
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         (0%, 5%]                0       49    114
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         (0%, 5%]                1       16    114
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         >5%                     0       29    114
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         >5%                     1       19    114
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  0%                      0       37   1225
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  0%                      1        7   1225
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]                0      324   1225
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]                1      105   1225
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  >5%                     0      486   1225
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  >5%                     1      266   1225
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           0%                      0       52    803
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           0%                      1        9    803
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           (0%, 5%]                0      253    803
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           (0%, 5%]                1       99    803
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           >5%                     0      259    803
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           >5%                     1      131    803
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           0%                      0        3    197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           0%                      1        1    197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           (0%, 5%]                0       98    197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           (0%, 5%]                1       31    197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           >5%                     0       51    197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           >5%                     1       13    197
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0%                      0      618   3886
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0%                      1      404   3886
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]                0     1466   3886
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]                1     1046   3886
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     >5%                     0      195   3886
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     >5%                     1      157   3886
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0%                      0       12    217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0%                      1        4    217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]                0      100    217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]                1       28    217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     >5%                     0       59    217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     >5%                     1       14    217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0%                      0      109    208
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0%                      1        9    208
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]                0       77    208
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]                1       11    208
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         >5%                     0        2    208
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         >5%                     1        0    208
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0%                      0       10    209
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0%                      1        2    209
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          (0%, 5%]                0      125    209
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          (0%, 5%]                1       35    209
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          >5%                     0       30    209
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          >5%                     1        7    209
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0%                      0       13    212
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0%                      1        1    212
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]                0      120    212
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]                1       11    212
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          >5%                     0       65    212
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          >5%                     1        2    212
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0%                      0       22    266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0%                      1        5    266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           (0%, 5%]                0       65    266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           (0%, 5%]                1       34    266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           >5%                     0       87    266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           >5%                     1       53    266
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0%                      0       76    270
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0%                      1       29    270
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]                0      112    270
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]                1       50    270
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                     0        3    270
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                     1        0    270
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                      0       10    219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                      1        3    219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]                0      106    219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]                1       43    219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                     0       38    219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                     1       19    219
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0%                      0       71    249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0%                      1      107    249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       (0%, 5%]                0       21    249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       (0%, 5%]                1       37    249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       >5%                     0        7    249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       >5%                     1        6    249
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0%                      0       13    201
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0%                      1        6    201
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       (0%, 5%]                0       35    201
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       (0%, 5%]                1       27    201
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       >5%                     0       65    201
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       >5%                     1       55    201
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0%                      0       48    257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0%                      1        1    257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]                0       31    257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]                1        0    257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                     0      175    257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                     1        2    257
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     0%                      0       41    528
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     0%                      1        3    528
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]                0      238    528
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]                1       60    528
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     >5%                     0      128    528
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     >5%                     1       58    528
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0%                      0       62    634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0%                      1        2    634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]                0      325    634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]                1       69    634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     >5%                     0      146    634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     >5%                     1       30    634
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0%                      0      110    653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0%                      1       20    653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]                0      280    653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]                1       69    653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                     0      139    653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                     1       35    653
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      0%                      0       20    220
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      0%                      1        2    220
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]                0       48    220
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]                1        9    220
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      >5%                     0      131    220
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      >5%                     1       10    220
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0%                      0        8    168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0%                      1        1    168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     (0%, 5%]                0       51    168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     (0%, 5%]                1       26    168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     >5%                     0       61    168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     >5%                     1       21    168
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         0%                      0        1    114
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         0%                      1        0    114
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         (0%, 5%]                0       61    114
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         (0%, 5%]                1        4    114
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         >5%                     0       42    114
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         >5%                     1        6    114
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  0%                      0       24    826
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  0%                      1        1    826
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]                0      302    826
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]                1        6    826
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  >5%                     0      478    826
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  >5%                     1       15    826
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           0%                      0       43    658
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           0%                      1        3    658
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           (0%, 5%]                0      283    658
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           (0%, 5%]                1       21    658
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           >5%                     0      283    658
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           >5%                     1       25    658
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           0%                      0        3    197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           0%                      1        1    197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           (0%, 5%]                0      109    197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           (0%, 5%]                1       20    197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           >5%                     0       55    197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           >5%                     1        9    197
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0%                      0      869   3659
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0%                      1       88   3659
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]                0     2179   3659
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]                1      190   3659
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     >5%                     0      298   3659
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     >5%                     1       35   3659
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0%                      0        2    159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0%                      1        2    159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]                0       61    159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]                1       37    159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     >5%                     0       29    159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     >5%                     1       28    159
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0%                      0       86    168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0%                      1        3    168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]                0       71    168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]                1        6    168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         >5%                     0        2    168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         >5%                     1        0    168
6-24 months                  ki0047075b-MAL-ED          INDIA                          0%                      0        1    155
6-24 months                  ki0047075b-MAL-ED          INDIA                          0%                      1        1    155
6-24 months                  ki0047075b-MAL-ED          INDIA                          (0%, 5%]                0       72    155
6-24 months                  ki0047075b-MAL-ED          INDIA                          (0%, 5%]                1       52    155
6-24 months                  ki0047075b-MAL-ED          INDIA                          >5%                     0       18    155
6-24 months                  ki0047075b-MAL-ED          INDIA                          >5%                     1       11    155
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0%                      0       11    195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0%                      1        1    195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          (0%, 5%]                0       94    195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          (0%, 5%]                1       25    195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          >5%                     0       49    195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          >5%                     1       15    195
6-24 months                  ki0047075b-MAL-ED          PERU                           0%                      0        3    149
6-24 months                  ki0047075b-MAL-ED          PERU                           0%                      1        1    149
6-24 months                  ki0047075b-MAL-ED          PERU                           (0%, 5%]                0       31    149
6-24 months                  ki0047075b-MAL-ED          PERU                           (0%, 5%]                1       31    149
6-24 months                  ki0047075b-MAL-ED          PERU                           >5%                     0       56    149
6-24 months                  ki0047075b-MAL-ED          PERU                           >5%                     1       27    149
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0%                      0       31    159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0%                      1       17    159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]                0       69    159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]                1       40    159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                     0        1    159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                     1        1    159
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                      0        1    145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                      1        3    145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]                0       26    145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]                1       77    145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                     0        5    145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                     1       33    145
6-24 months                  ki1000109-EE               PAKISTAN                       0%                      0       24     97
6-24 months                  ki1000109-EE               PAKISTAN                       0%                      1       45     97
6-24 months                  ki1000109-EE               PAKISTAN                       (0%, 5%]                0        6     97
6-24 months                  ki1000109-EE               PAKISTAN                       (0%, 5%]                1       15     97
6-24 months                  ki1000109-EE               PAKISTAN                       >5%                     0        1     97
6-24 months                  ki1000109-EE               PAKISTAN                       >5%                     1        6     97
6-24 months                  ki1000109-ResPak           PAKISTAN                       0%                      0        4     95
6-24 months                  ki1000109-ResPak           PAKISTAN                       0%                      1        0     95
6-24 months                  ki1000109-ResPak           PAKISTAN                       (0%, 5%]                0       27     95
6-24 months                  ki1000109-ResPak           PAKISTAN                       (0%, 5%]                1        4     95
6-24 months                  ki1000109-ResPak           PAKISTAN                       >5%                     0       47     95
6-24 months                  ki1000109-ResPak           PAKISTAN                       >5%                     1       13     95
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0%                      0       10    243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0%                      1       36    243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]                0       10    243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]                1       21    243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          >5%                     0       39    243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          >5%                     1      127    243
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     0%                      0        6    345
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     0%                      1        4    345
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]                0      104    345
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]                1      125    345
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     >5%                     0       37    345
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     >5%                     1       69    345
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0%                      0        5    457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0%                      1        2    457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]                0      220    457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]                1       93    457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     >5%                     0       95    457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     >5%                     1       42    457
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0%                      0       70    506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0%                      1       26    506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]                0      205    506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]                1       71    506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     >5%                     0       98    506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     >5%                     1       36    506
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      0%                      0       12    195
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      0%                      1        3    195
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]                0       35    195
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]                1       15    195
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      >5%                     0       74    195
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      >5%                     1       56    195
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                      0      302   2452
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                      1      152   2452
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]                0     1003   2452
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]                1      552   2452
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                     0      266   2452
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                     1      177   2452
6-24 months                  ki1114097-CMIN             BANGLADESH                     0%                      0        0    111
6-24 months                  ki1114097-CMIN             BANGLADESH                     0%                      1        2    111
6-24 months                  ki1114097-CMIN             BANGLADESH                     (0%, 5%]                0       14    111
6-24 months                  ki1114097-CMIN             BANGLADESH                     (0%, 5%]                1       37    111
6-24 months                  ki1114097-CMIN             BANGLADESH                     >5%                     0       18    111
6-24 months                  ki1114097-CMIN             BANGLADESH                     >5%                     1       40    111
6-24 months                  ki1114097-CMIN             BRAZIL                         0%                      0        1    104
6-24 months                  ki1114097-CMIN             BRAZIL                         0%                      1        0    104
6-24 months                  ki1114097-CMIN             BRAZIL                         (0%, 5%]                0       49    104
6-24 months                  ki1114097-CMIN             BRAZIL                         (0%, 5%]                1       12    104
6-24 months                  ki1114097-CMIN             BRAZIL                         >5%                     0       29    104
6-24 months                  ki1114097-CMIN             BRAZIL                         >5%                     1       13    104
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  0%                      0       34   1322
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  0%                      1       24   1322
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]                0      317   1322
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]                1      127   1322
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  >5%                     0      481   1322
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  >5%                     1      339   1322
6-24 months                  ki1114097-CMIN             PERU                           0%                      0       40    797
6-24 months                  ki1114097-CMIN             PERU                           0%                      1       15    797
6-24 months                  ki1114097-CMIN             PERU                           (0%, 5%]                0      247    797
6-24 months                  ki1114097-CMIN             PERU                           (0%, 5%]                1      102    797
6-24 months                  ki1114097-CMIN             PERU                           >5%                     0      235    797
6-24 months                  ki1114097-CMIN             PERU                           >5%                     1      158    797
6-24 months                  ki1114097-CONTENT          PERU                           0%                      0        3    167
6-24 months                  ki1114097-CONTENT          PERU                           0%                      1        0    167
6-24 months                  ki1114097-CONTENT          PERU                           (0%, 5%]                0       98    167
6-24 months                  ki1114097-CONTENT          PERU                           (0%, 5%]                1       11    167
6-24 months                  ki1114097-CONTENT          PERU                           >5%                     0       51    167
6-24 months                  ki1114097-CONTENT          PERU                           >5%                     1        4    167
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0%                      0      613   3649
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0%                      1      333   3649
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]                0     1462   3649
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]                1      907   3649
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     >5%                     0      195   3649
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     >5%                     1      139   3649


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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

* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-24 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months (no birth st.), studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months (no birth st.), studyid: ki1114097-CONTENT, country: PERU
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
![](/tmp/fa62219a-639a-44c4-b4af-7f021f58cd58/e2e1c274-b811-4e4b-9261-8e34ab905641/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/fa62219a-639a-44c4-b4af-7f021f58cd58/e2e1c274-b811-4e4b-9261-8e34ab905641/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/fa62219a-639a-44c4-b4af-7f021f58cd58/e2e1c274-b811-4e4b-9261-8e34ab905641/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/fa62219a-639a-44c4-b4af-7f021f58cd58/e2e1c274-b811-4e4b-9261-8e34ab905641/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                0.3750000   0.1372357   0.6127643
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                0.5078125   0.4210038   0.5946212
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                0.5753425   0.4616917   0.6889932
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0%                   NA                0.2222222   0.0651116   0.3793329
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           (0%, 5%]             NA                0.6565657   0.5628506   0.7502807
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           >5%                  NA                0.5714286   0.4892999   0.6535572
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.4615385   0.1899249   0.7331521
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.8053691   0.7416526   0.8690857
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.9122807   0.8386742   0.9858872
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0%                   NA                0.3157895   0.1062586   0.5253203
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       (0%, 5%]             NA                0.5000000   0.3752314   0.6247686
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       >5%                  NA                0.5666667   0.4777843   0.6555490
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                0.4923852   0.2498742   0.7348963
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                0.6210469   0.4568739   0.7852199
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  NA                0.7442070   0.6712835   0.8171306
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                0.1590909   0.0509150   0.2672668
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                0.6208054   0.5656662   0.6759446
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                0.6827957   0.6158507   0.7497407
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                0.3739058   0.2964893   0.4513224
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                0.4047267   0.3553079   0.4541456
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                0.3884064   0.3182648   0.4585480
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      0%                   NA                0.2000000   0.0428696   0.3571304
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             NA                0.3770492   0.2551696   0.4989288
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      >5%                  NA                0.4200000   0.3408478   0.4991522
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                   NA                0.1269730   0.0736061   0.1803399
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]             NA                0.1788808   0.1359376   0.2218240
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                  NA                0.1789875   0.1075184   0.2504566
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  0%                   NA                0.1590909   0.0509733   0.2672085
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]             NA                0.2447552   0.2040541   0.2854564
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  >5%                  NA                0.3537234   0.3195367   0.3879101
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           0%                   NA                0.1475410   0.0584883   0.2365936
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           (0%, 5%]             NA                0.2812500   0.2342517   0.3282483
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           >5%                  NA                0.3358974   0.2889937   0.3828012
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                0.4010213   0.3664981   0.4355444
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                0.4144389   0.3924381   0.4364396
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                0.4400105   0.3856692   0.4943518
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0%                   NA                0.1851852   0.0383884   0.3319820
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           (0%, 5%]             NA                0.3434343   0.2497193   0.4371494
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           >5%                  NA                0.3785714   0.2980760   0.4590669
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0%                   NA                0.6011236   0.5290439   0.6732033
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       (0%, 5%]             NA                0.6379310   0.5139970   0.7618650
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       >5%                  NA                0.4615385   0.1899999   0.7330770
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0%                   NA                0.3157895   0.1062586   0.5253203
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       (0%, 5%]             NA                0.4354839   0.3117583   0.5592094
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       >5%                  NA                0.4583333   0.3689622   0.5477045
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                0.1629451   0.1012406   0.2246496
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                0.2009399   0.1607505   0.2411294
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                0.1943735   0.1393165   0.2494304
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                0.0933003   0.0723698   0.1142307
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                0.0803700   0.0669523   0.0937876
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                0.1002113   0.0604838   0.1399389
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                0.6258188   0.4201469   0.8314907
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                0.5800939   0.4245164   0.7356714
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  NA                0.7828623   0.7126856   0.8530390
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                0.2764641   0.1884129   0.3645153
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                0.2599978   0.2085214   0.3114741
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                0.2616002   0.1877638   0.3354366
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                   NA                0.3421363   0.0635417   0.6207309
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]             NA                0.3563226   0.3052103   0.4074349
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                  NA                0.3843848   0.3101924   0.4585772
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  0%                   NA                0.4193652   0.2970688   0.5416616
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]             NA                0.2883040   0.2457256   0.3308824
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  >5%                  NA                0.4128757   0.3790529   0.4466986
6-24 months                  ki1114097-CMIN             PERU                           0%                   NA                0.2734991   0.1584577   0.3885405
6-24 months                  ki1114097-CMIN             PERU                           (0%, 5%]             NA                0.2931203   0.2449989   0.3412416
6-24 months                  ki1114097-CMIN             PERU                           >5%                  NA                0.4022851   0.3535967   0.4509734
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                0.3535161   0.3161211   0.3909110
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                0.3828754   0.3599658   0.4057850
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                0.4085451   0.3557378   0.4613525


### Parameter: E(Y)


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.5207373   0.4541154   0.5873593
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           NA                   NA                0.5676692   0.5080232   0.6273151
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.8127854   0.7610035   0.8645672
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.5223881   0.4531624   0.5916138
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.7198444   0.6648337   0.7748550
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.6041667   0.5624147   0.6459187
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3935681   0.3560687   0.4310676
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3855932   0.3233622   0.4478242
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1696617   0.1377362   0.2015872
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.3085714   0.2826947   0.3344481
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           NA                   NA                0.2976339   0.2659904   0.3292773
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.4135358   0.3953404   0.4317312
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           NA                   NA                0.3458647   0.2885967   0.4031327
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       NA                   NA                0.6024096   0.5415000   0.6633193
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.4378109   0.3690538   0.5065681
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1898928   0.1597870   0.2199986
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0855425   0.0741829   0.0969021
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.7572016   0.7031798   0.8112234
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3592985   0.2940547   0.4245424
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.3706505   0.3446055   0.3966956
6-24 months                  ki1114097-CMIN             PERU                           NA                   NA                0.3450439   0.3120195   0.3780683
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3779118   0.3593176   0.3965059


### Parameter: RR


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             0%                1.3541667   0.7022312   2.6113443
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     >5%                  0%                1.5342466   0.7897352   2.9806354
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           (0%, 5%]             0%                2.9545455   1.4363174   6.0775834
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           >5%                  0%                2.5714286   1.2498240   5.2905409
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             0%                1.7449664   0.9636232   3.1598532
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  0%                1.9766082   1.0913124   3.5800749
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       (0%, 5%]             0%                1.5833333   0.7793038   3.2169025
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       >5%                  0%                1.7944444   0.9074595   3.5484017
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                1.2613028   0.7205550   2.2078605
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  0%                1.5114324   0.9156666   2.4948252
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             0%                3.9022052   1.9656098   7.7468099
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     >5%                  0%                4.2918587   2.1591716   8.5310733
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                1.0824296   0.8570126   1.3671371
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                1.0387813   0.7934651   1.3599421
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             0%                1.8852459   0.8061442   4.4088294
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      >5%                  0%                2.1000000   0.9361295   4.7108869
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]             0%                1.4088093   0.8747786   2.2688526
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                  0%                1.4096497   0.8304919   2.3926933
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]             0%                1.5384615   0.7642479   3.0969843
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  >5%                  0%                2.2234043   1.1191901   4.4170569
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           (0%, 5%]             0%                1.9062500   1.0190326   3.5659202
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           >5%                  0%                2.2766382   1.2252917   4.2300796
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0%                1.0334586   0.9363163   1.1406794
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0%                1.0972248   0.9412706   1.2790183
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           (0%, 5%]             0%                1.8545455   0.8019448   4.2887474
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           >5%                  0%                2.0442857   0.8997158   4.6449157
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       (0%, 5%]             0%                1.0612311   0.8446187   1.3333963
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       >5%                  0%                0.7677930   0.4211932   1.3996096
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       (0%, 5%]             0%                1.3790323   0.6700515   2.8381847
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       >5%                  0%                1.4513889   0.7268378   2.8982117
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                1.2331756   0.8099468   1.8775578
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                1.1928770   0.7502104   1.8967419
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0%                0.8614120   0.6641400   1.1172804
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0%                1.0740733   0.6778707   1.7018487
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             0%                0.9269358   0.6064089   1.4168823
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  0%                1.2509408   0.8908796   1.7565258
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             0%                0.9404395   0.6486175   1.3635561
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  0%                0.9462357   0.6212972   1.4411171
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]             0%                1.0414639   0.4631315   2.3419848
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                  0%                1.1234844   0.4902739   2.5745143
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]             0%                0.6874772   0.4958306   0.9531984
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  >5%                  0%                0.9845254   0.7272474   1.3328207
6-24 months                  ki1114097-CMIN             PERU                           0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  ki1114097-CMIN             PERU                           (0%, 5%]             0%                1.0717414   0.6823887   1.6832482
6-24 months                  ki1114097-CMIN             PERU                           >5%                  0%                1.4708828   0.9495656   2.2784063
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0%                   0%                1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             0%                1.0830495   0.9597839   1.2221463
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     >5%                  0%                1.1556622   0.9755227   1.3690661


### Parameter: PAR


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                 0.1457373   -0.0836834   0.3751581
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0%                   NA                 0.3454470    0.1930317   0.4978622
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.3512469    0.0910609   0.6114329
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0%                   NA                 0.2065986    0.0056128   0.4075844
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                 0.2274591   -0.0118613   0.4667795
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                 0.4450758    0.3378614   0.5522901
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                 0.0196623   -0.0489547   0.0882793
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      0%                   NA                 0.1855932    0.0328459   0.3383405
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                   NA                 0.0426887   -0.0077232   0.0931006
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  0%                   NA                 0.1494805    0.0421526   0.2568084
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           0%                   NA                 0.1500929    0.0621906   0.2379952
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                 0.0125145   -0.0167891   0.0418181
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0%                   NA                 0.1606795    0.0176611   0.3036979
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0%                   NA                 0.0012860   -0.0371508   0.0397229
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0%                   NA                 0.1220215   -0.0788034   0.3228463
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                 0.0269477   -0.0281862   0.0820816
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -0.0077578   -0.0248354   0.0093199
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                 0.1313828   -0.0718969   0.3346626
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.0136183   -0.0924945   0.0652580
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                   NA                 0.0171622   -0.2100180   0.2443425
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  0%                   NA                -0.0487147   -0.1681895   0.0707601
6-24 months                  ki1114097-CMIN             PERU                           0%                   NA                 0.0715449   -0.0400420   0.1831317
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                 0.0243957   -0.0074386   0.0562300


### Parameter: PAF


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                 0.2798673   -0.3292424   0.6098596
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0%                   NA                 0.6085357    0.2223258   0.8029454
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                 0.4321521   -0.0059891   0.6794685
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0%                   NA                 0.3954887   -0.1445604   0.6807212
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                 0.3159837   -0.1113270   0.5789914
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                 0.7366771    0.4861982   0.8650473
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                 0.0499591   -0.1413529   0.2092036
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      0%                   NA                 0.4813187   -0.1075266   0.7570891
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                   NA                 0.2516107   -0.1031043   0.4922633
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  0%                   NA                 0.4844276   -0.0097135   0.7367423
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           0%                   NA                 0.5042870    0.1056837   0.7252299
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                 0.0302622   -0.0432685   0.0986103
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0%                   NA                 0.4645733   -0.1523338   0.7512164
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0%                   NA                 0.0021348   -0.0637551   0.0639435
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0%                   NA                 0.2787081   -0.3628679   0.6182594
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                 0.1419101   -0.2034989   0.3881853
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                -0.0906889   -0.3095552   0.0915982
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                 0.1735110   -0.1425632   0.4021477
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                -0.0518108   -0.3991142   0.2092811
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                   NA                 0.0477659   -0.8622240   0.5130823
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  0%                   NA                -0.1314302   -0.5045424   0.1491537
6-24 months                  ki1114097-CMIN             PERU                           0%                   NA                 0.2073500   -0.1916589   0.4727568
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                 0.0645540   -0.0237731   0.1452605
