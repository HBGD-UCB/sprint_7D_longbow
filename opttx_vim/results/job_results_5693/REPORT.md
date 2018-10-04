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
* hhwealth_quart
* hfoodsec
* hdlvry
* W_birthwt
* W_birthlen
* W_nrooms
* month
* brthmon
* impfloor
* impsan
* safeh20
* delta_hhwealth_quart
* delta_hfoodsec
* delta_hdlvry
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
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       (0%, 5%]                0       12    498
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       (0%, 5%]                1      104    498
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       >5%                     0        2    498
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       >5%                     1       24    498
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0%                      0       52    498
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       0%                      1      304    498
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
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]                0     2830   7545
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]                1     2051   7545
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     >5%                     0      379   7545
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     >5%                     1      306   7545
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0%                      0     1191   7545
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0%                      1      788   7545
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
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       (0%, 5%]                0       42    498
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       (0%, 5%]                1       74    498
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       >5%                     0       14    498
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       >5%                     1       12    498
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0%                      0      142    498
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0%                      1      214    498
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
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]                0     4358   7318
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]                1      380   7318
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     >5%                     0      596   7318
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     >5%                     1       70   7318
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0%                      0     1738   7318
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0%                      1      176   7318
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
6-24 months                  ki1000109-EE               PAKISTAN                       (0%, 5%]                0       12    194
6-24 months                  ki1000109-EE               PAKISTAN                       (0%, 5%]                1       30    194
6-24 months                  ki1000109-EE               PAKISTAN                       >5%                     0        2    194
6-24 months                  ki1000109-EE               PAKISTAN                       >5%                     1       12    194
6-24 months                  ki1000109-EE               PAKISTAN                       0%                      0       48    194
6-24 months                  ki1000109-EE               PAKISTAN                       0%                      1       90    194
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
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]                0     2822   6991
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]                1     1724   6991
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     >5%                     0      379   6991
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     >5%                     1      254   6991
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0%                      0     1181   6991
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0%                      1      631   6991


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
![](/tmp/8ce8296f-b60f-42f9-af76-8b94a20efa4c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8ce8296f-b60f-42f9-af76-8b94a20efa4c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.3623841   0.1245450   0.6002232
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           optimal              NA                0.2014302   0.0441432   0.3587173
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.4592786   0.1876624   0.7308948
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       optimal              NA                0.3146730   0.1051416   0.5242044
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.6247246   0.4053496   0.8440997
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.1648512   0.0566630   0.2730395
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2975711   0.2374049   0.3577373
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.1979971   0.0408649   0.3551292
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.1277823   0.0764348   0.1791298
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                0.1595820   0.0514644   0.2676997
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           optimal              NA                0.1513429   0.0622855   0.2404003
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.3302776   0.2982648   0.3622905
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           optimal              NA                0.1874554   0.0406563   0.3342545
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       optimal              NA                0.5055426   0.2391842   0.7719009
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       optimal              NA                0.3268671   0.1172823   0.5364518
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.1578918   0.1026474   0.2131361
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.0546603   0.0448431   0.0644774
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.5479868   0.4132137   0.6827599
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2074169   0.1588322   0.2560016
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.3099146   0.2572062   0.3626230
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  optimal              NA                0.2870537   0.2447765   0.3293310
6-24 months                  ki1114097-CMIN             PERU                           optimal              NA                0.2721684   0.1592829   0.3850539
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.3191644   0.2842790   0.3540499


### Parameter: E(Y)


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.5210563   0.4544343   0.5876783
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           observed             NA                0.5674738   0.5078278   0.6271197
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             NA                0.8134511   0.7616693   0.8652330
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       observed             NA                0.5224318   0.4532061   0.5916575
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.7187821   0.6637714   0.7737928
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.6044846   0.5627326   0.6462366
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.3965585   0.3590590   0.4340580
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      observed             NA                0.3852865   0.3230555   0.4475175
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.1694204   0.1374948   0.2013459
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  observed             NA                0.3083861   0.2825093   0.3342628
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           observed             NA                0.2977435   0.2661000   0.3293869
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.4178988   0.3995948   0.4362028
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           observed             NA                0.3455817   0.2883137   0.4028497
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       observed             NA                0.6038740   0.5429643   0.6647836
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       observed             NA                0.4381290   0.3693719   0.5068861
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.1902894   0.1601836   0.2203951
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.0868850   0.0755254   0.0982447
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.7569037   0.7028819   0.8109255
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.2627353   0.2243440   0.3011265
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.3598765   0.2946326   0.4251203
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  observed             NA                0.3706119   0.3445668   0.3966569
6-24 months                  ki1114097-CMIN             PERU                           observed             NA                0.3451627   0.3121383   0.3781871
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.3739422   0.3552392   0.3926451


### Parameter: RR


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          0.6954798   0.3685384   1.3124605
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           optimal              observed          0.3549596   0.1658761   0.7595808
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.5646050   0.3177586   1.0032106
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       optimal              observed          0.6023236   0.3173760   1.1431040
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          0.8691433   0.6156717   1.2269688
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          0.2727137   0.1431382   0.5195871
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.7503838   0.6291800   0.8949361
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          0.5138958   0.2387795   1.1059947
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              observed          0.7542323   0.5189375   1.0962136
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          0.5174748   0.2647802   1.0113304
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           optimal              observed          0.5082996   0.2860025   0.9033784
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          0.7903292   0.7274194   0.8586797
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           optimal              observed          0.5424345   0.2544426   1.1563909
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       optimal              observed          0.8371657   0.5021490   1.3956942
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       optimal              observed          0.7460522   0.4036053   1.3790548
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.8297456   0.6076997   1.1329243
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          0.6291101   0.5490473   0.7208476
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          0.7239848   0.5755181   0.9107516
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.7894520   0.6649251   0.9373003
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              observed          0.8611694   0.7362789   1.0072444
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  optimal              observed          0.7745400   0.6841700   0.8768468
6-24 months                  ki1114097-CMIN             PERU                           optimal              observed          0.7885219   0.5275021   1.1787002
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          0.8535128   0.7771812   0.9373413
