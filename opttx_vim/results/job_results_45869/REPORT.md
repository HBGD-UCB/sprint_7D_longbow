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
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]                0       63    217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]                1       65    217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     >5%                     0       31    217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     >5%                     1       42    217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0%                      0       10    217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0%                      1        6    217
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]                0       71    208
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]                1       17    208
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         >5%                     0        2    208
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         >5%                     1        0    208
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0%                      0      106    208
0-24 months (no birth st.)   ki0047075b-MAL-ED          BRAZIL                         0%                      1       12    208
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          (0%, 5%]                0       73    209
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          (0%, 5%]                1       87    209
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          >5%                     0       19    209
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          >5%                     1       18    209
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0%                      0        9    209
0-24 months (no birth st.)   ki0047075b-MAL-ED          INDIA                          0%                      1        3    209
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]                0       95    212
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]                1       36    212
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          >5%                     0       50    212
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          >5%                     1       17    212
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0%                      0       12    212
0-24 months (no birth st.)   ki0047075b-MAL-ED          NEPAL                          0%                      1        2    212
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           (0%, 5%]                0       34    266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           (0%, 5%]                1       65    266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           >5%                     0       60    266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           >5%                     1       80    266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0%                      0       21    266
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0%                      1        6    266
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]                0       72    270
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]                1       90    270
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                     0        2    270
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                     1        1    270
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                      0       59    270
0-24 months (no birth st.)   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                      1       46    270
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]                0       29    219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]                1      120    219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                     0        5    219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                     1       52    219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                      0        7    219
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                      1        6    219
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       (0%, 5%]                0        6    249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       (0%, 5%]                1       52    249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       >5%                     0        1    249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       >5%                     1       12    249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0%                      0       26    249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0%                      1      152    249
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       (0%, 5%]                0       31    201
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       (0%, 5%]                1       31    201
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       >5%                     0       52    201
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       >5%                     1       68    201
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0%                      0       13    201
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0%                      1        6    201
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]                0       10    257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]                1       21    257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                     0       49    257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                     1      128    257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0%                      0       13    257
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0%                      1       36    257
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]                0      113    528
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]                1      185    528
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     >5%                     0       59    528
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     >5%                     1      127    528
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     0%                      0       37    528
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     0%                      1        7    528
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]                0      232    634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]                1      162    634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     >5%                     0      104    634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     >5%                     1       72    634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0%                      0       60    634
0-24 months (no birth st.)   ki1017093b-PROVIDE         BANGLADESH                     0%                      1        4    634
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]                0      209    653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]                1      140    653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                     0      103    653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                     1       71    653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0%                      0       84    653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0%                      1       46    653
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]                0       38    236
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]                1       23    236
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      >5%                     0       87    236
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      >5%                     1       63    236
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      0%                      0       20    236
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      0%                      1        5    236
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]                0     1003   1892
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]                1      219   1892
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                     0      266   1892
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                     1       60   1892
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                      0      302   1892
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                      1       42   1892
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     (0%, 5%]                0       14    168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     (0%, 5%]                1       63    168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     >5%                     0       21    168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     >5%                     1       61    168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0%                      0        6    168
0-24 months (no birth st.)   ki1114097-CMIN             BANGLADESH                     0%                      1        3    168
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         (0%, 5%]                0       49    114
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         (0%, 5%]                1       16    114
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         >5%                     0       29    114
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         >5%                     1       19    114
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         0%                      0        1    114
0-24 months (no birth st.)   ki1114097-CMIN             BRAZIL                         0%                      1        0    114
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]                0      324   1225
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]                1      105   1225
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  >5%                     0      486   1225
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  >5%                     1      266   1225
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  0%                      0       37   1225
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  0%                      1        7   1225
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           (0%, 5%]                0      253    803
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           (0%, 5%]                1       99    803
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           >5%                     0      259    803
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           >5%                     1      131    803
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           0%                      0       52    803
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           0%                      1        9    803
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           (0%, 5%]                0       98    197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           (0%, 5%]                1       31    197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           >5%                     0       51    197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           >5%                     1       13    197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           0%                      0        3    197
0-24 months (no birth st.)   ki1114097-CONTENT          PERU                           0%                      1        1    197
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]                0     1466   3886
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]                1     1046   3886
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     >5%                     0      195   3886
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     >5%                     1      157   3886
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0%                      0      618   3886
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0%                      1      404   3886
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]                0      100    217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]                1       28    217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     >5%                     0       59    217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     >5%                     1       14    217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0%                      0       12    217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BANGLADESH                     0%                      1        4    217
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]                0       77    208
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]                1       11    208
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         >5%                     0        2    208
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         >5%                     1        0    208
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0%                      0      109    208
0-6 months (no birth st.)    ki0047075b-MAL-ED          BRAZIL                         0%                      1        9    208
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          (0%, 5%]                0      125    209
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          (0%, 5%]                1       35    209
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          >5%                     0       30    209
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          >5%                     1        7    209
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0%                      0       10    209
0-6 months (no birth st.)    ki0047075b-MAL-ED          INDIA                          0%                      1        2    209
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]                0      120    212
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]                1       11    212
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          >5%                     0       65    212
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          >5%                     1        2    212
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0%                      0       13    212
0-6 months (no birth st.)    ki0047075b-MAL-ED          NEPAL                          0%                      1        1    212
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           (0%, 5%]                0       65    266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           (0%, 5%]                1       34    266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           >5%                     0       87    266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           >5%                     1       53    266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0%                      0       22    266
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0%                      1        5    266
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]                0      112    270
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]                1       50    270
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                     0        3    270
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                     1        0    270
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0%                      0       76    270
0-6 months (no birth st.)    ki0047075b-MAL-ED          SOUTH AFRICA                   0%                      1       29    270
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]                0      106    219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]                1       43    219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                     0       38    219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                     1       19    219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                      0       10    219
0-6 months (no birth st.)    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                      1        3    219
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       (0%, 5%]                0       21    249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       (0%, 5%]                1       37    249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       >5%                     0        7    249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       >5%                     1        6    249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0%                      0       71    249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0%                      1      107    249
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       (0%, 5%]                0       35    201
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       (0%, 5%]                1       27    201
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       >5%                     0       65    201
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       >5%                     1       55    201
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0%                      0       13    201
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0%                      1        6    201
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]                0       31    257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]                1        0    257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                     0      175    257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                     1        2    257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0%                      0       48    257
0-6 months (no birth st.)    ki1000304b-SAS-FoodSuppl   INDIA                          0%                      1        1    257
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]                0      238    528
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]                1       60    528
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     >5%                     0      128    528
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     >5%                     1       58    528
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     0%                      0       41    528
0-6 months (no birth st.)    ki1017093-NIH-Birth        BANGLADESH                     0%                      1        3    528
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]                0      325    634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]                1       69    634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     >5%                     0      146    634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     >5%                     1       30    634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0%                      0       62    634
0-6 months (no birth st.)    ki1017093b-PROVIDE         BANGLADESH                     0%                      1        2    634
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]                0      280    653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]                1       69    653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                     0      139    653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                     1       35    653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0%                      0      110    653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0%                      1       20    653
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]                0       48    220
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]                1        9    220
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      >5%                     0      131    220
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      >5%                     1       10    220
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      0%                      0       20    220
0-6 months (no birth st.)    ki1112895-Guatemala BSC    GUATEMALA                      0%                      1        2    220
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     (0%, 5%]                0       51    168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     (0%, 5%]                1       26    168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     >5%                     0       61    168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     >5%                     1       21    168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0%                      0        8    168
0-6 months (no birth st.)    ki1114097-CMIN             BANGLADESH                     0%                      1        1    168
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         (0%, 5%]                0       61    114
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         (0%, 5%]                1        4    114
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         >5%                     0       42    114
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         >5%                     1        6    114
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         0%                      0        1    114
0-6 months (no birth st.)    ki1114097-CMIN             BRAZIL                         0%                      1        0    114
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]                0      302    826
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]                1        6    826
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  >5%                     0      478    826
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  >5%                     1       15    826
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  0%                      0       24    826
0-6 months (no birth st.)    ki1114097-CMIN             GUINEA-BISSAU                  0%                      1        1    826
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           (0%, 5%]                0      283    658
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           (0%, 5%]                1       21    658
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           >5%                     0      283    658
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           >5%                     1       25    658
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           0%                      0       43    658
0-6 months (no birth st.)    ki1114097-CMIN             PERU                           0%                      1        3    658
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           (0%, 5%]                0      109    197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           (0%, 5%]                1       20    197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           >5%                     0       55    197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           >5%                     1        9    197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           0%                      0        3    197
0-6 months (no birth st.)    ki1114097-CONTENT          PERU                           0%                      1        1    197
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]                0     2179   3659
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]                1      190   3659
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     >5%                     0      298   3659
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     >5%                     1       35   3659
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0%                      0      869   3659
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0%                      1       88   3659
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]                0       61    159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]                1       37    159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     >5%                     0       29    159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     >5%                     1       28    159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0%                      0        2    159
6-24 months                  ki0047075b-MAL-ED          BANGLADESH                     0%                      1        2    159
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]                0       71    168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]                1        6    168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         >5%                     0        2    168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         >5%                     1        0    168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0%                      0       86    168
6-24 months                  ki0047075b-MAL-ED          BRAZIL                         0%                      1        3    168
6-24 months                  ki0047075b-MAL-ED          INDIA                          (0%, 5%]                0       72    155
6-24 months                  ki0047075b-MAL-ED          INDIA                          (0%, 5%]                1       52    155
6-24 months                  ki0047075b-MAL-ED          INDIA                          >5%                     0       18    155
6-24 months                  ki0047075b-MAL-ED          INDIA                          >5%                     1       11    155
6-24 months                  ki0047075b-MAL-ED          INDIA                          0%                      0        1    155
6-24 months                  ki0047075b-MAL-ED          INDIA                          0%                      1        1    155
6-24 months                  ki0047075b-MAL-ED          NEPAL                          (0%, 5%]                0       94    195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          (0%, 5%]                1       25    195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          >5%                     0       49    195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          >5%                     1       15    195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0%                      0       11    195
6-24 months                  ki0047075b-MAL-ED          NEPAL                          0%                      1        1    195
6-24 months                  ki0047075b-MAL-ED          PERU                           (0%, 5%]                0       31    149
6-24 months                  ki0047075b-MAL-ED          PERU                           (0%, 5%]                1       31    149
6-24 months                  ki0047075b-MAL-ED          PERU                           >5%                     0       56    149
6-24 months                  ki0047075b-MAL-ED          PERU                           >5%                     1       27    149
6-24 months                  ki0047075b-MAL-ED          PERU                           0%                      0        3    149
6-24 months                  ki0047075b-MAL-ED          PERU                           0%                      1        1    149
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]                0       69    159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]                1       40    159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                     0        1    159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                     1        1    159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0%                      0       31    159
6-24 months                  ki0047075b-MAL-ED          SOUTH AFRICA                   0%                      1       17    159
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]                0       26    145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]                1       77    145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                     0        5    145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                     1       33    145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                      0        1    145
6-24 months                  ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                      1        3    145
6-24 months                  ki1000109-EE               PAKISTAN                       (0%, 5%]                0        6     97
6-24 months                  ki1000109-EE               PAKISTAN                       (0%, 5%]                1       15     97
6-24 months                  ki1000109-EE               PAKISTAN                       >5%                     0        1     97
6-24 months                  ki1000109-EE               PAKISTAN                       >5%                     1        6     97
6-24 months                  ki1000109-EE               PAKISTAN                       0%                      0       24     97
6-24 months                  ki1000109-EE               PAKISTAN                       0%                      1       45     97
6-24 months                  ki1000109-ResPak           PAKISTAN                       (0%, 5%]                0       27     95
6-24 months                  ki1000109-ResPak           PAKISTAN                       (0%, 5%]                1        4     95
6-24 months                  ki1000109-ResPak           PAKISTAN                       >5%                     0       47     95
6-24 months                  ki1000109-ResPak           PAKISTAN                       >5%                     1       13     95
6-24 months                  ki1000109-ResPak           PAKISTAN                       0%                      0        4     95
6-24 months                  ki1000109-ResPak           PAKISTAN                       0%                      1        0     95
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]                0       10    243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]                1       21    243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          >5%                     0       39    243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          >5%                     1      127    243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0%                      0       10    243
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0%                      1       36    243
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]                0      104    345
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]                1      125    345
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     >5%                     0       37    345
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     >5%                     1       69    345
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     0%                      0        6    345
6-24 months                  ki1017093-NIH-Birth        BANGLADESH                     0%                      1        4    345
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]                0      220    457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]                1       93    457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     >5%                     0       95    457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     >5%                     1       42    457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0%                      0        5    457
6-24 months                  ki1017093b-PROVIDE         BANGLADESH                     0%                      1        2    457
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]                0      205    506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]                1       71    506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     >5%                     0       98    506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     >5%                     1       36    506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0%                      0       70    506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0%                      1       26    506
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]                0       35    195
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]                1       15    195
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      >5%                     0       74    195
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      >5%                     1       56    195
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      0%                      0       12    195
6-24 months                  ki1112895-Guatemala BSC    GUATEMALA                      0%                      1        3    195
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]                0     1003   2452
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]                1      552   2452
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                     0      266   2452
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                     1      177   2452
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                      0      302   2452
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                      1      152   2452
6-24 months                  ki1114097-CMIN             BANGLADESH                     (0%, 5%]                0       14    111
6-24 months                  ki1114097-CMIN             BANGLADESH                     (0%, 5%]                1       37    111
6-24 months                  ki1114097-CMIN             BANGLADESH                     >5%                     0       18    111
6-24 months                  ki1114097-CMIN             BANGLADESH                     >5%                     1       40    111
6-24 months                  ki1114097-CMIN             BANGLADESH                     0%                      0        0    111
6-24 months                  ki1114097-CMIN             BANGLADESH                     0%                      1        2    111
6-24 months                  ki1114097-CMIN             BRAZIL                         (0%, 5%]                0       49    104
6-24 months                  ki1114097-CMIN             BRAZIL                         (0%, 5%]                1       12    104
6-24 months                  ki1114097-CMIN             BRAZIL                         >5%                     0       29    104
6-24 months                  ki1114097-CMIN             BRAZIL                         >5%                     1       13    104
6-24 months                  ki1114097-CMIN             BRAZIL                         0%                      0        1    104
6-24 months                  ki1114097-CMIN             BRAZIL                         0%                      1        0    104
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]                0      317   1322
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]                1      127   1322
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  >5%                     0      481   1322
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  >5%                     1      339   1322
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  0%                      0       34   1322
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  0%                      1       24   1322
6-24 months                  ki1114097-CMIN             PERU                           (0%, 5%]                0      247    797
6-24 months                  ki1114097-CMIN             PERU                           (0%, 5%]                1      102    797
6-24 months                  ki1114097-CMIN             PERU                           >5%                     0      235    797
6-24 months                  ki1114097-CMIN             PERU                           >5%                     1      158    797
6-24 months                  ki1114097-CMIN             PERU                           0%                      0       40    797
6-24 months                  ki1114097-CMIN             PERU                           0%                      1       15    797
6-24 months                  ki1114097-CONTENT          PERU                           (0%, 5%]                0       98    167
6-24 months                  ki1114097-CONTENT          PERU                           (0%, 5%]                1       11    167
6-24 months                  ki1114097-CONTENT          PERU                           >5%                     0       51    167
6-24 months                  ki1114097-CONTENT          PERU                           >5%                     1        4    167
6-24 months                  ki1114097-CONTENT          PERU                           0%                      0        3    167
6-24 months                  ki1114097-CONTENT          PERU                           0%                      1        0    167
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]                0     1462   3649
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]                1      907   3649
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     >5%                     0      195   3649
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     >5%                     1      139   3649
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0%                      0      613   3649
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0%                      1      333   3649


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







# Results Detail

## Results Plots
![](/tmp/bc3e5297-727a-4ab0-8db1-efd17bf01935/588d5ac9-2fd5-4a38-888a-4e562819301b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bc3e5297-727a-4ab0-8db1-efd17bf01935/588d5ac9-2fd5-4a38-888a-4e562819301b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.3699780   0.1111913   0.6287647
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           optimal              NA                0.2465189   0.0682972   0.4247407
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.4775259   0.1552909   0.7997608
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       optimal              NA                0.3326033   0.0953972   0.5698093
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.5486134   0.2882427   0.8089840
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.1572120   0.0454811   0.2689428
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.3839718   0.3046899   0.4632537
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.2096518   0.0368527   0.3824509
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.1354745   0.0875177   0.1834313
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                0.1606464   0.0476989   0.2735939
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           optimal              NA                0.1540213   0.0600615   0.2479811
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.4019117   0.3674132   0.4364101
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           optimal              NA                0.1900910   0.0368630   0.3433190
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       optimal              NA                0.4777167   0.1711432   0.7842902
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       optimal              NA                0.3455034   0.1108943   0.5801125
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.1737989   0.1116951   0.2359028
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.0838422   0.0635586   0.1041259
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.8951382   0.7973285   0.9929479
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.3044225   0.2430452   0.3657998
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.3304376   0.2701519   0.3907234
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                0.2875250   0.2450550   0.3299950
6-24 months                  ki1114097-CMIN             PERU                           optimal              NA                0.3104193   0.2015891   0.4192496
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.3710533   0.3305562   0.4115504


### Parameter: E(Y)


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.5207373   0.4541154   0.5873593
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           observed             NA                0.5676692   0.5080232   0.6273151
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             NA                0.8127854   0.7610035   0.8645672
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       observed             NA                0.5223881   0.4531624   0.5916138
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.7198444   0.6648337   0.7748550
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.6041667   0.5624147   0.6459187
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.3935681   0.3560687   0.4310676
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      observed             NA                0.3855932   0.3233622   0.4478242
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.1696617   0.1377362   0.2015872
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  observed             NA                0.3085714   0.2826947   0.3344481
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           observed             NA                0.2976339   0.2659904   0.3292773
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.4135358   0.3953404   0.4317312
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           observed             NA                0.3458647   0.2885967   0.4031327
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       observed             NA                0.6024096   0.5415000   0.6633193
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       observed             NA                0.4378109   0.3690538   0.5065681
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.1898928   0.1597870   0.2199986
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.0855425   0.0741829   0.0969021
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.7572016   0.7031798   0.8112234
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.2628458   0.2244546   0.3012371
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.3592985   0.2940547   0.4245424
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  observed             NA                0.3706505   0.3446055   0.3966956
6-24 months                  ki1114097-CMIN             PERU                           observed             NA                0.3450439   0.3120195   0.3780683
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.3779118   0.3593176   0.3965059


### Parameter: RR


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.4074819   0.7150056   2.7706150
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           observed             optimal           2.3027406   1.1408074   4.6481240
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.7020761   0.8817333   3.2856453
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       observed             optimal           1.5706041   0.7898475   3.1231313
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.3121159   0.8241711   2.0889451
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           3.8430070   1.9102790   7.7311756
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.0249924   0.8633025   1.2169655
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      observed             optimal           1.8392075   0.8292701   4.0791105
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.2523518   0.9119832   1.7197521
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  observed             optimal           1.9208115   0.9581720   3.8505788
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           observed             optimal           1.9324199   1.0642373   3.5088476
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.0289220   0.9566507   1.1066532
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           observed             optimal           1.8194685   0.8343678   3.9676336
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       observed             optimal           1.2610186   0.6741419   2.3588033
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       observed             optimal           1.2671683   0.6604219   2.4313480
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.0926005   0.7993947   1.4933498
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.0202793   0.8431400   1.2346347
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           0.8459047   0.7583842   0.9435255
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           0.8634244   0.7416985   1.0051277
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.0873415   0.9207350   1.2840953
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  observed             optimal           1.2891072   1.1382683   1.4599347
6-24 months                  ki1114097-CMIN             PERU                           observed             optimal           1.1115413   0.7916651   1.5606652
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.0184838   0.9266251   1.1194487


### Parameter: PAR


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.1507593   -0.0989759    0.4004945
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.3211502    0.1489039    0.4933966
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.3352595    0.0252524    0.6452666
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       optimal              NA                 0.1897848   -0.0376540    0.4172236
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.1712310   -0.0836377    0.4260996
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.4469547    0.3364680    0.5574414
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0095964   -0.0562142    0.0754070
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.1759414    0.0086079    0.3432749
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0341872   -0.0098243    0.0781988
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                 0.1479250    0.0358945    0.2599556
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           optimal              NA                 0.1436125    0.0510746    0.2361505
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0116241   -0.0176408    0.0408891
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           optimal              NA                 0.1557736    0.0067828    0.3047645
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       optimal              NA                 0.1246930   -0.1737941    0.4231800
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       optimal              NA                 0.0923076   -0.1324768    0.3170919
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0160939   -0.0381448    0.0703325
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0017003   -0.0142697    0.0176703
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                -0.1379366   -0.2329500   -0.0429232
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                -0.0415767   -0.0877197    0.0045663
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0288609   -0.0286602    0.0863820
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                 0.0831255    0.0473344    0.1189167
6-24 months                  ki1114097-CMIN             PERU                           optimal              NA                 0.0346246   -0.0708449    0.1400941
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0068585   -0.0281954    0.0419123


### Parameter: PAF


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.2895113   -0.3985905    0.6390693
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.5657348    0.1234278    0.7848594
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.4124822   -0.1341297    0.6956458
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       optimal              NA                 0.3633023   -0.2660673    0.6798085
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.2378722   -0.2133402    0.5212895
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.7397871    0.4765163    0.8706536
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0243830   -0.1583425    0.1782840
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.4562876   -0.2058797    0.7548485
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.2015023   -0.0965114    0.4185208
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                 0.4793867   -0.0436540    0.7402988
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           optimal              NA                 0.4825141    0.0603600    0.7150061
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0281091   -0.0453136    0.0963746
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           optimal              NA                 0.4503890   -0.1985122    0.7479606
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       optimal              NA                 0.2069903   -0.4833673    0.5760562
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       optimal              NA                 0.2108389   -0.5141835    0.5887055
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0847524   -0.2509466    0.3303645
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0198762   -0.1860427    0.1900438
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                -0.1821662   -0.3185929   -0.0598548
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                -0.1581790   -0.3482567    0.0051015
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0803257   -0.0860889    0.2212416
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                 0.2242693    0.1214725    0.3150379
6-24 months                  ki1114097-CMIN             PERU                           optimal              NA                 0.1003483   -0.2631605    0.3592476
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0181484   -0.0791851    0.1067031
