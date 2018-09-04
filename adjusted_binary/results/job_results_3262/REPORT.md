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
![](/tmp/dd1b47ff-181f-4ae8-98fe-85357688a815/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/dd1b47ff-181f-4ae8-98fe-85357688a815/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/dd1b47ff-181f-4ae8-98fe-85357688a815/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/dd1b47ff-181f-4ae8-98fe-85357688a815/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                0.5078125   0.4210038   0.5946212
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     >5%                  NA                0.5753425   0.4616917   0.6889932
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0%                   NA                0.3750000   0.1372357   0.6127643
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           (0%, 5%]             NA                0.6565657   0.5628506   0.7502807
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           >5%                  NA                0.5714286   0.4892999   0.6535572
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0%                   NA                0.2222222   0.0651116   0.3793329
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                0.8053691   0.7416526   0.8690857
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  NA                0.9122807   0.8386742   0.9858872
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   NA                0.4615385   0.1899249   0.7331521
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       (0%, 5%]             NA                0.5000000   0.3752314   0.6247686
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       >5%                  NA                0.5666667   0.4777843   0.6555490
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0%                   NA                0.3157895   0.1062586   0.5253203
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                0.5626216   0.4268999   0.6983434
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  NA                0.7409593   0.6705275   0.8113912
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                0.5138498   0.2711731   0.7565265
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                0.6208054   0.5656662   0.6759446
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     >5%                  NA                0.6827957   0.6158507   0.7497407
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     0%                   NA                0.1590909   0.0509150   0.2672668
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                0.4042059   0.3577020   0.4507098
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                0.3800411   0.3206644   0.4394178
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                0.3687198   0.3086752   0.4287644
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             NA                0.3770492   0.2551696   0.4989288
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      >5%                  NA                0.4200000   0.3408478   0.4991522
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      0%                   NA                0.2000000   0.0428696   0.3571304
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]             NA                0.1789429   0.1359880   0.2218977
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                  NA                0.1793630   0.1113731   0.2473529
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                   NA                0.1292910   0.0781877   0.1803944
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]             NA                0.2447552   0.2040541   0.2854564
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  >5%                  NA                0.3537234   0.3195367   0.3879101
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  0%                   NA                0.1590909   0.0509733   0.2672085
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           (0%, 5%]             NA                0.2812500   0.2342517   0.3282483
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           >5%                  NA                0.3358974   0.2889937   0.3828012
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           0%                   NA                0.1475410   0.0584883   0.2365936
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                0.4153011   0.3935695   0.4370328
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                0.3973307   0.3513470   0.4433143
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                0.3879207   0.3550351   0.4208063
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           (0%, 5%]             NA                0.3434343   0.2497193   0.4371494
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           >5%                  NA                0.3785714   0.2980760   0.4590669
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0%                   NA                0.1851852   0.0383884   0.3319820
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       (0%, 5%]             NA                0.6409167   0.5229124   0.7589211
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       >5%                  NA                0.4433816   0.1831267   0.7036364
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0%                   NA                0.6021141   0.5310632   0.6731649
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       (0%, 5%]             NA                0.4354839   0.3117583   0.5592094
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       >5%                  NA                0.4583333   0.3689622   0.5477045
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0%                   NA                0.3157895   0.1062586   0.5253203
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                0.2004119   0.1603487   0.2404751
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                0.1917804   0.1371351   0.2464257
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                0.1597789   0.0992638   0.2202941
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                0.0782790   0.0651894   0.0913687
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                0.0770028   0.0429054   0.1111001
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                0.0866527   0.0673656   0.1059397
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                0.5181959   0.3820777   0.6543141
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  NA                0.7769321   0.7072624   0.8466018
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0%                   NA                0.5906246   0.3499467   0.8313024
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                0.2488776   0.1983748   0.2993804
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  NA                0.2323302   0.1621060   0.3025544
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0%                   NA                0.2126663   0.1350604   0.2902722
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]             NA                0.3552348   0.3044489   0.4060208
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                  NA                0.3983530   0.3300746   0.4666313
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                   NA                0.3438804   0.0697177   0.6180431
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]             NA                0.2869585   0.2446813   0.3292358
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  >5%                  NA                0.4128553   0.3790853   0.4466253
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  0%                   NA                0.4139163   0.2952736   0.5325589
6-24 months                  ki1114097-CMIN             PERU                           (0%, 5%]             NA                0.2926449   0.2447361   0.3405537
6-24 months                  ki1114097-CMIN             PERU                           >5%                  NA                0.4000507   0.3516151   0.4484863
6-24 months                  ki1114097-CMIN             PERU                           0%                   NA                0.2693555   0.1564628   0.3822481
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                0.3774639   0.3546830   0.4002449
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     >5%                  NA                0.3625654   0.3108432   0.4142876
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0%                   NA                0.3434535   0.3066037   0.3803034


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
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.4168323   0.3985283   0.4351363
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
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3731941   0.3544912   0.3918971


### Parameter: RR


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     >5%                  (0%, 5%]          1.1329821   0.8725106   1.4712124
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     0%                   (0%, 5%]          0.7384615   0.3829445   1.4240325
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           >5%                  (0%, 5%]          0.8703297   0.7107444   1.0657471
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           0%                   (0%, 5%]          0.3384615   0.1645391   0.6962249
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                  (0%, 5%]          1.1327485   1.0117149   1.2682617
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                   (0%, 5%]          0.5730769   0.3164704   1.0377500
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       >5%                  (0%, 5%]          1.1333333   0.8440227   1.5218127
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       0%                   (0%, 5%]          0.6315789   0.3108580   1.2831965
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  (0%, 5%]          1.3169762   1.0155824   1.7078144
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          0%                   (0%, 5%]          0.9133132   0.5361915   1.5556774
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     >5%                  (0%, 5%]          1.0998547   0.9635645   1.2554223
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     0%                   (0%, 5%]          0.2562654   0.1290854   0.5087480
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  (0%, 5%]          0.9402165   0.7824055   1.1298579
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     0%                   (0%, 5%]          0.9122078   0.7555057   1.1014120
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      >5%                  (0%, 5%]          1.1139130   0.7662151   1.6193916
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      0%                   (0%, 5%]          0.5304348   0.2268176   1.2404729
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                  (0%, 5%]          1.0023480   0.6366125   1.5781993
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                   (0%, 5%]          0.7225269   0.4570274   1.1422622
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  >5%                  (0%, 5%]          1.4452128   1.1923396   1.7517156
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  0%                   (0%, 5%]          0.6500000   0.3228948   1.3084759
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           >5%                  (0%, 5%]          1.1943020   0.9605920   1.4848731
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           0%                   (0%, 5%]          0.5245902   0.2804325   0.9813228
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     >5%                  (0%, 5%]          0.9567290   0.8475029   1.0800323
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     0%                   (0%, 5%]          0.9340709   0.8481636   1.0286795
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           >5%                  (0%, 5%]          1.1023109   0.7799475   1.5579117
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           0%                   (0%, 5%]          0.5392157   0.2331683   1.2469686
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       >5%                  (0%, 5%]          0.6917928   0.3746556   1.2773791
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       0%                   (0%, 5%]          0.9394576   0.7582540   1.1639643
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       >5%                  (0%, 5%]          1.0524691   0.7456876   1.4854629
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       0%                   (0%, 5%]          0.7251462   0.3523379   1.4924226
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  (0%, 5%]          0.9569313   0.6847087   1.3373825
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     0%                   (0%, 5%]          0.7972528   0.5236233   1.2138727
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     >5%                  (0%, 5%]          0.9836963   0.6133578   1.5776410
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     0%                   (0%, 5%]          1.1069718   0.8590371   1.4264652
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          >5%                  (0%, 5%]          1.4993019   1.1357064   1.9793022
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          0%                   (0%, 5%]          1.1397708   0.7000516   1.8556880
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     >5%                  (0%, 5%]          0.9335120   0.6503572   1.3399477
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     0%                   (0%, 5%]          0.8545017   0.5649050   1.2925591
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   >5%                  (0%, 5%]          1.1213793   0.9122154   1.3785028
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   0%                   (0%, 5%]          0.9680368   0.4366548   2.1460779
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  >5%                  (0%, 5%]          1.4387281   1.2156824   1.7026968
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  0%                   (0%, 5%]          1.4424254   1.0450593   1.9908831
6-24 months                  ki1114097-CMIN             PERU                           (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months                  ki1114097-CMIN             PERU                           >5%                  (0%, 5%]          1.3670174   1.1152626   1.6756024
6-24 months                  ki1114097-CMIN             PERU                           0%                   (0%, 5%]          0.9204174   0.5869316   1.4433848
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.0000000
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     >5%                  (0%, 5%]          0.9605298   0.8248504   1.1185270
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     0%                   (0%, 5%]          0.9098976   0.8058002   1.0274428


### Parameter: PAR


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                 0.0129248   -0.0426102    0.0684598
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           (0%, 5%]             NA                -0.0888965   -0.1650725   -0.0127204
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.0074163   -0.0274674    0.0422999
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       (0%, 5%]             NA                 0.0223881   -0.0813219    0.1260980
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                 0.1572227    0.0293235    0.2851219
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                -0.0166387   -0.0534038    0.0201264
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -0.0106378   -0.0400470    0.0187715
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             NA                 0.0085440   -0.0965666    0.1136547
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]             NA                -0.0092811   -0.0309854    0.0124231
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]             NA                 0.0638162    0.0296709    0.0979615
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           (0%, 5%]             NA                 0.0163839   -0.0193041    0.0520718
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                 0.0015312   -0.0104190    0.0134814
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           (0%, 5%]             NA                 0.0024303   -0.0718985    0.0767592
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       (0%, 5%]             NA                -0.0385071   -0.1414081    0.0643939
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       (0%, 5%]             NA                 0.0023271   -0.1005894    0.1052436
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -0.0105191   -0.0361931    0.0151550
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                 0.0072635   -0.0000133    0.0145402
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                 0.2390057    0.1119651    0.3660464
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                 0.0139683   -0.0197930    0.0477295
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]             NA                 0.0040637   -0.0497195    0.0578469
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]             NA                 0.0836920    0.0480529    0.1193311
6-24 months                  ki1114097-CMIN             PERU                           (0%, 5%]             NA                 0.0523990    0.0152005    0.0895975
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                -0.0042698   -0.0172589    0.0087192


### Parameter: PAF


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]             NA                 0.0248202   -0.0879356    0.1258899
0-24 months (no birth st.)   ki0047075b-MAL-ED          PERU                           (0%, 5%]             NA                -0.1565991   -0.3011772   -0.0280855
0-24 months (no birth st.)   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]             NA                 0.0091245   -0.0347684    0.0511556
0-24 months (no birth st.)   ki1000109-ResPak           PAKISTAN                       (0%, 5%]             NA                 0.0428571   -0.1778728    0.2222229
0-24 months (no birth st.)   ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                 0.2184121    0.0193707    0.3770534
0-24 months (no birth st.)   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]             NA                -0.0275399   -0.0902979    0.0316057
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -0.0270291   -0.1047231    0.0452008
0-24 months (no birth st.)   ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]             NA                 0.0221582   -0.2922305    0.2600588
0-24 months (no birth st.)   ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]             NA                -0.0547037   -0.1881848    0.0637821
0-24 months (no birth st.)   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]             NA                 0.2068117    0.0885221    0.3097499
0-24 months (no birth st.)   ki1114097-CMIN             PERU                           (0%, 5%]             NA                 0.0550471   -0.0727659    0.1676320
0-24 months (no birth st.)   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                 0.0036734   -0.0254105    0.0319325
0-6 months (no birth st.)    ki0047075b-MAL-ED          PERU                           (0%, 5%]             NA                 0.0070268   -0.2329093    0.2002690
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       (0%, 5%]             NA                -0.0639218   -0.2495836    0.0941546
0-6 months (no birth st.)    ki1000109-ResPak           PAKISTAN                       (0%, 5%]             NA                 0.0053152   -0.2598569    0.2146745
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                -0.0553949   -0.1997088    0.0715594
0-6 months (no birth st.)    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                 0.0849106   -0.0042575    0.1661615
6-24 months                  ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]             NA                 0.3156434    0.1246922    0.4649381
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]             NA                 0.0531424   -0.0844744    0.1732960
6-24 months                  ki1112895-iLiNS-Zinc       BURKINA FASO                   (0%, 5%]             NA                 0.0113101   -0.1487596    0.1490754
6-24 months                  ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]             NA                 0.2257976    0.1234957    0.3161592
6-24 months                  ki1114097-CMIN             PERU                           (0%, 5%]             NA                 0.1518619    0.0369927    0.2530293
6-24 months                  kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]             NA                -0.0114413   -0.0468564    0.0227756
