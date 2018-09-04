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

**Outcome Variable:** sstunted

## Predictor Variables

**Intervention Variable:** perdiar24

**Adjustment Set:**

* arm
* sex
* meducyrs
* hhwealth_quart
* hfoodsec
* vagbrth
* hdlvry
* W_birthwt
* W_birthlen
* W_nrooms
* month
* brthmon
* impfloor
* impsan
* safeh20
* delta_meducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_vagbrth
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

agecat      studyid                    country                        perdiar24    sstunted   n_cell      n
----------  -------------------------  -----------------------------  ----------  ---------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]            0      143    257
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]            1        3    257
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%                 0       85    257
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%                 1        4    257
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%                  0       20    257
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%                  1        2    257
Birth       ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]            0       77    191
Birth       ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]            1        4    191
Birth       ki0047075b-MAL-ED          BRAZIL                         >5%                 0        2    191
Birth       ki0047075b-MAL-ED          BRAZIL                         >5%                 1        0    191
Birth       ki0047075b-MAL-ED          BRAZIL                         0%                  0      104    191
Birth       ki0047075b-MAL-ED          BRAZIL                         0%                  1        4    191
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]            0      149    206
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]            1        7    206
Birth       ki0047075b-MAL-ED          INDIA                          >5%                 0       38    206
Birth       ki0047075b-MAL-ED          INDIA                          >5%                 1        0    206
Birth       ki0047075b-MAL-ED          INDIA                          0%                  0       12    206
Birth       ki0047075b-MAL-ED          INDIA                          0%                  1        0    206
Birth       ki0047075b-MAL-ED          NEPAL                          (0%, 5%]            0      100    173
Birth       ki0047075b-MAL-ED          NEPAL                          (0%, 5%]            1        3    173
Birth       ki0047075b-MAL-ED          NEPAL                          >5%                 0       54    173
Birth       ki0047075b-MAL-ED          NEPAL                          >5%                 1        2    173
Birth       ki0047075b-MAL-ED          NEPAL                          0%                  0       13    173
Birth       ki0047075b-MAL-ED          NEPAL                          0%                  1        1    173
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]            0      106    287
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]            1        3    287
Birth       ki0047075b-MAL-ED          PERU                           >5%                 0      147    287
Birth       ki0047075b-MAL-ED          PERU                           >5%                 1        4    287
Birth       ki0047075b-MAL-ED          PERU                           0%                  0       26    287
Birth       ki0047075b-MAL-ED          PERU                           0%                  1        1    287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]            0      153    252
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]            1        1    252
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                 0        3    252
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                 1        0    252
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0%                  0       95    252
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0%                  1        0    252
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]            0       85    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]            1        5    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                 0       24    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                 1        1    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                  0        8    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                  1        0    123
Birth       ki1000109-EE               PAKISTAN                       (0%, 5%]            0        4      4
Birth       ki1000109-EE               PAKISTAN                       (0%, 5%]            1        0      4
Birth       ki1000109-EE               PAKISTAN                       >5%                 0        0      4
Birth       ki1000109-EE               PAKISTAN                       >5%                 1        0      4
Birth       ki1000109-EE               PAKISTAN                       0%                  0        0      4
Birth       ki1000109-EE               PAKISTAN                       0%                  1        0      4
Birth       ki1000109-ResPak           PAKISTAN                       (0%, 5%]            0        2      6
Birth       ki1000109-ResPak           PAKISTAN                       (0%, 5%]            1        0      6
Birth       ki1000109-ResPak           PAKISTAN                       >5%                 0        4      6
Birth       ki1000109-ResPak           PAKISTAN                       >5%                 1        0      6
Birth       ki1000109-ResPak           PAKISTAN                       0%                  0        0      6
Birth       ki1000109-ResPak           PAKISTAN                       0%                  1        0      6
Birth       ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]            0        8     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]            1        0     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     >5%                 0       14     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     >5%                 1        0     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%                  0        4     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%                  1        0     26
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]            0       10     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]            1        0     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%                 0       11     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%                 1        0     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                  0        5     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                  1        1     27
Birth       ki1114097-CMIN             BANGLADESH                     (0%, 5%]            0        0     13
Birth       ki1114097-CMIN             BANGLADESH                     (0%, 5%]            1        0     13
Birth       ki1114097-CMIN             BANGLADESH                     >5%                 0        2     13
Birth       ki1114097-CMIN             BANGLADESH                     >5%                 1        0     13
Birth       ki1114097-CMIN             BANGLADESH                     0%                  0        6     13
Birth       ki1114097-CMIN             BANGLADESH                     0%                  1        5     13
Birth       ki1114097-CMIN             BRAZIL                         (0%, 5%]            0       63    115
Birth       ki1114097-CMIN             BRAZIL                         (0%, 5%]            1        3    115
Birth       ki1114097-CMIN             BRAZIL                         >5%                 0       48    115
Birth       ki1114097-CMIN             BRAZIL                         >5%                 1        0    115
Birth       ki1114097-CMIN             BRAZIL                         0%                  0        1    115
Birth       ki1114097-CMIN             BRAZIL                         0%                  1        0    115
Birth       ki1114097-CMIN             PERU                           (0%, 5%]            0        8     10
Birth       ki1114097-CMIN             PERU                           (0%, 5%]            1        0     10
Birth       ki1114097-CMIN             PERU                           >5%                 0        1     10
Birth       ki1114097-CMIN             PERU                           >5%                 1        0     10
Birth       ki1114097-CMIN             PERU                           0%                  0        1     10
Birth       ki1114097-CMIN             PERU                           0%                  1        0     10
Birth       ki1114097-CONTENT          PERU                           (0%, 5%]            0        1      2
Birth       ki1114097-CONTENT          PERU                           (0%, 5%]            1        0      2
Birth       ki1114097-CONTENT          PERU                           >5%                 0        1      2
Birth       ki1114097-CONTENT          PERU                           >5%                 1        0      2
Birth       ki1114097-CONTENT          PERU                           0%                  0        0      2
Birth       ki1114097-CONTENT          PERU                           0%                  1        0      2
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]            0     1008   1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]            1       86   1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%                 0      148   1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%                 1       12   1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%                  0      360   1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%                  1       30   1644
6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]            0      138    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]            1        4    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                 0       89    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                 1        4    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                  0        6    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                  1        0    241
6 months    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]            0      101    209
6 months    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]            1        0    209
6 months    ki0047075b-MAL-ED          BRAZIL                         >5%                 0        2    209
6 months    ki0047075b-MAL-ED          BRAZIL                         >5%                 1        0    209
6 months    ki0047075b-MAL-ED          BRAZIL                         0%                  0      106    209
6 months    ki0047075b-MAL-ED          BRAZIL                         0%                  1        0    209
6 months    ki0047075b-MAL-ED          INDIA                          (0%, 5%]            0      184    236
6 months    ki0047075b-MAL-ED          INDIA                          (0%, 5%]            1        7    236
6 months    ki0047075b-MAL-ED          INDIA                          >5%                 0       40    236
6 months    ki0047075b-MAL-ED          INDIA                          >5%                 1        2    236
6 months    ki0047075b-MAL-ED          INDIA                          0%                  0        3    236
6 months    ki0047075b-MAL-ED          INDIA                          0%                  1        0    236
6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]            0      143    236
6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]            1        0    236
6 months    ki0047075b-MAL-ED          NEPAL                          >5%                 0       79    236
6 months    ki0047075b-MAL-ED          NEPAL                          >5%                 1        0    236
6 months    ki0047075b-MAL-ED          NEPAL                          0%                  0       13    236
6 months    ki0047075b-MAL-ED          NEPAL                          0%                  1        1    236
6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]            0      104    273
6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]            1        5    273
6 months    ki0047075b-MAL-ED          PERU                           >5%                 0      150    273
6 months    ki0047075b-MAL-ED          PERU                           >5%                 1        7    273
6 months    ki0047075b-MAL-ED          PERU                           0%                  0        7    273
6 months    ki0047075b-MAL-ED          PERU                           0%                  1        0    273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]            0      172    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]            1        2    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                 0        2    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                 1        0    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0%                  0       74    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0%                  1        4    254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]            0      166    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]            1       11    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                 0       59    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                 1        2    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                  0        8    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                  1        1    247
6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]            0      132    744
6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]            1       28    744
6 months    ki1000109-EE               PAKISTAN                       >5%                 0       28    744
6 months    ki1000109-EE               PAKISTAN                       >5%                 1       14    744
6 months    ki1000109-EE               PAKISTAN                       0%                  0      396    744
6 months    ki1000109-EE               PAKISTAN                       0%                  1      146    744
6 months    ki1000109-ResPak           PAKISTAN                       (0%, 5%]            0       53    235
6 months    ki1000109-ResPak           PAKISTAN                       (0%, 5%]            1       17    235
6 months    ki1000109-ResPak           PAKISTAN                       >5%                 0      129    235
6 months    ki1000109-ResPak           PAKISTAN                       >5%                 1       25    235
6 months    ki1000109-ResPak           PAKISTAN                       0%                  0        9    235
6 months    ki1000109-ResPak           PAKISTAN                       0%                  1        2    235
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]            0       41    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]            1        5    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                 0      225    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                 1       36    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                  0       60    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                  1       13    380
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]            0      315    537
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]            1       24    537
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                 0      173    537
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                 1       10    537
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                  0       14    537
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                  1        1    537
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]            0      391    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]            1       10    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                 0      167    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                 1        3    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                  0       11    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                  1        1    583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]            0      370    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]            1       16    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                 0      191    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                 1        4    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                  0      131    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                  1        3    715
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]            0       66    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]            1        4    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%                 0      182    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%                 1       18    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                  0       24    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                  1        5    299
6 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]            0       97    243
6 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]            1       15    243
6 months    ki1114097-CMIN             BANGLADESH                     >5%                 0      116    243
6 months    ki1114097-CMIN             BANGLADESH                     >5%                 1       13    243
6 months    ki1114097-CMIN             BANGLADESH                     0%                  0        2    243
6 months    ki1114097-CMIN             BANGLADESH                     0%                  1        0    243
6 months    ki1114097-CMIN             BRAZIL                         (0%, 5%]            0       59    108
6 months    ki1114097-CMIN             BRAZIL                         (0%, 5%]            1        1    108
6 months    ki1114097-CMIN             BRAZIL                         >5%                 0       45    108
6 months    ki1114097-CMIN             BRAZIL                         >5%                 1        2    108
6 months    ki1114097-CMIN             BRAZIL                         0%                  0        1    108
6 months    ki1114097-CMIN             BRAZIL                         0%                  1        0    108
6 months    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]            0      331    829
6 months    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]            1        1    829
6 months    ki1114097-CMIN             GUINEA-BISSAU                  >5%                 0      456    829
6 months    ki1114097-CMIN             GUINEA-BISSAU                  >5%                 1       16    829
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0%                  0       25    829
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0%                  1        0    829
6 months    ki1114097-CMIN             PERU                           (0%, 5%]            0      298    637
6 months    ki1114097-CMIN             PERU                           (0%, 5%]            1        3    637
6 months    ki1114097-CMIN             PERU                           >5%                 0      298    637
6 months    ki1114097-CMIN             PERU                           >5%                 1        4    637
6 months    ki1114097-CMIN             PERU                           0%                  0       33    637
6 months    ki1114097-CMIN             PERU                           0%                  1        1    637
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]            0      139    215
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]            1        3    215
6 months    ki1114097-CONTENT          PERU                           >5%                 0       67    215
6 months    ki1114097-CONTENT          PERU                           >5%                 1        0    215
6 months    ki1114097-CONTENT          PERU                           0%                  0        5    215
6 months    ki1114097-CONTENT          PERU                           0%                  1        1    215
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]            0     5768   9452
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]            1      342   9452
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                 0      852   9452
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                 1       61   9452
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                  0     2306   9452
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                  1      123   9452
24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]            0      114    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]            1       16    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                 0       66    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                 1       10    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                  0        6    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                  1        0    212
24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]            0       91    169
24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]            1        0    169
24 months   ki0047075b-MAL-ED          BRAZIL                         >5%                 0        2    169
24 months   ki0047075b-MAL-ED          BRAZIL                         >5%                 1        0    169
24 months   ki0047075b-MAL-ED          BRAZIL                         0%                  0       75    169
24 months   ki0047075b-MAL-ED          BRAZIL                         0%                  1        1    169
24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]            0      159    227
24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]            1       24    227
24 months   ki0047075b-MAL-ED          INDIA                          >5%                 0       37    227
24 months   ki0047075b-MAL-ED          INDIA                          >5%                 1        4    227
24 months   ki0047075b-MAL-ED          INDIA                          0%                  0        3    227
24 months   ki0047075b-MAL-ED          INDIA                          0%                  1        0    227
24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]            0      136    228
24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]            1        4    228
24 months   ki0047075b-MAL-ED          NEPAL                          >5%                 0       73    228
24 months   ki0047075b-MAL-ED          NEPAL                          >5%                 1        3    228
24 months   ki0047075b-MAL-ED          NEPAL                          0%                  0       12    228
24 months   ki0047075b-MAL-ED          NEPAL                          0%                  1        0    228
24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]            0       78    201
24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]            1        6    201
24 months   ki0047075b-MAL-ED          PERU                           >5%                 0      107    201
24 months   ki0047075b-MAL-ED          PERU                           >5%                 1        9    201
24 months   ki0047075b-MAL-ED          PERU                           0%                  0        1    201
24 months   ki0047075b-MAL-ED          PERU                           0%                  1        0    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]            0      147    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]            1       19    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                 0        1    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                 1        0    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                  0       64    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                  1        7    238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]            0      108    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]            1       48    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                 0       34    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                 1       18    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                  0        3    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                  1        3    214
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]            0      218    429
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]            1       61    429
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                 0      113    429
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                 1       32    429
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                  0        5    429
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                  1        0    429
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]            0      361    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]            1       33    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                 0      159    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                 1       15    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                  0        8    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                  1        1    577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]            0      258    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]            1       18    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                 0      105    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                 1       10    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                  0      116    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                  1        7    514
24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]            0       77    242
24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]            1       37    242
24 months   ki1114097-CMIN             BANGLADESH                     >5%                 0       94    242
24 months   ki1114097-CMIN             BANGLADESH                     >5%                 1       31    242
24 months   ki1114097-CMIN             BANGLADESH                     0%                  0        3    242
24 months   ki1114097-CMIN             BANGLADESH                     0%                  1        0    242
24 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]            0      173    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]            1        9    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%                 0      285    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%                 1       41    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%                  0       26    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%                  1        4    538
24 months   ki1114097-CMIN             PERU                           (0%, 5%]            0      183    426
24 months   ki1114097-CMIN             PERU                           (0%, 5%]            1       10    426
24 months   ki1114097-CMIN             PERU                           >5%                 0      175    426
24 months   ki1114097-CMIN             PERU                           >5%                 1       20    426
24 months   ki1114097-CMIN             PERU                           0%                  0       38    426
24 months   ki1114097-CMIN             PERU                           0%                  1        0    426
24 months   ki1114097-CONTENT          PERU                           (0%, 5%]            0      106    164
24 months   ki1114097-CONTENT          PERU                           (0%, 5%]            1        2    164
24 months   ki1114097-CONTENT          PERU                           >5%                 0       52    164
24 months   ki1114097-CONTENT          PERU                           >5%                 1        0    164
24 months   ki1114097-CONTENT          PERU                           0%                  0        3    164
24 months   ki1114097-CONTENT          PERU                           0%                  1        1    164
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]            0     5504   9279
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]            1      545   9279
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                 0      760   9279
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                 1      107   9279
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                  0     2160   9279
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                  1      203   9279


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/db370a11-f9ab-43f0-bd77-ceb27bae63df/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/db370a11-f9ab-43f0-bd77-ceb27bae63df/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/db370a11-f9ab-43f0-bd77-ceb27bae63df/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/db370a11-f9ab-43f0-bd77-ceb27bae63df/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-4          BANGLADESH   (0%, 5%]             NA                0.0768655   0.0550100   0.0987209
Birth       kiGH5241-JiVitA-4          BANGLADESH   >5%                  NA                0.0726313   0.0384611   0.1068014
Birth       kiGH5241-JiVitA-4          BANGLADESH   0%                   NA                0.0825138   0.0577712   0.1072563
6 months    ki1000109-EE               PAKISTAN     (0%, 5%]             NA                0.1748965   0.0929036   0.2568894
6 months    ki1000109-EE               PAKISTAN     >5%                  NA                0.3392830   0.1419611   0.5366050
6 months    ki1000109-EE               PAKISTAN     0%                   NA                0.2684330   0.2165909   0.3202751
6 months    ki1000304b-SAS-FoodSuppl   INDIA        (0%, 5%]             NA                0.1086957   0.0186297   0.1987616
6 months    ki1000304b-SAS-FoodSuppl   INDIA        >5%                  NA                0.1379310   0.0960418   0.1798202
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0%                   NA                0.1780822   0.0902036   0.2659608
6 months    kiGH5241-JiVitA-4          BANGLADESH   (0%, 5%]             NA                0.0554678   0.0477846   0.0631509
6 months    kiGH5241-JiVitA-4          BANGLADESH   >5%                  NA                0.0624738   0.0446676   0.0802799
6 months    kiGH5241-JiVitA-4          BANGLADESH   0%                   NA                0.0516478   0.0383360   0.0649597
24 months   ki1017093c-NIH-Crypto      BANGLADESH   (0%, 5%]             NA                0.0652174   0.0360597   0.0943751
24 months   ki1017093c-NIH-Crypto      BANGLADESH   >5%                  NA                0.0869565   0.0354077   0.1385054
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0%                   NA                0.0569106   0.0159287   0.0978924
24 months   kiGH5241-JiVitA-4          BANGLADESH   (0%, 5%]             NA                0.0890333   0.0779636   0.1001030
24 months   kiGH5241-JiVitA-4          BANGLADESH   >5%                  NA                0.1050218   0.0746329   0.1354106
24 months   kiGH5241-JiVitA-4          BANGLADESH   0%                   NA                0.0858793   0.0681166   0.1036421


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0778589   0.0559066   0.0998111
6 months    ki1000109-EE               PAKISTAN     NA                   NA                0.2526882   0.2084696   0.2969067
6 months    ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.1421053   0.1069532   0.1772573
6 months    kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0556496   0.0487560   0.0625432
24 months   ki1017093c-NIH-Crypto      BANGLADESH   NA                   NA                0.0680934   0.0462948   0.0898920
24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.0921435   0.0826637   0.1016234


### Parameter: RR


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       kiGH5241-JiVitA-4          BANGLADESH   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4          BANGLADESH   >5%                  (0%, 5%]          0.9449143   0.6575467   1.357870
Birth       kiGH5241-JiVitA-4          BANGLADESH   0%                   (0%, 5%]          1.0734827   0.9097060   1.266744
6 months    ki1000109-EE               PAKISTAN     (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
6 months    ki1000109-EE               PAKISTAN     >5%                  (0%, 5%]          1.9399077   0.9218811   4.082134
6 months    ki1000109-EE               PAKISTAN     0%                   (0%, 5%]          1.5348108   0.9296439   2.533921
6 months    ki1000304b-SAS-FoodSuppl   INDIA        (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA        >5%                  (0%, 5%]          1.2689655   0.5250268   3.067031
6 months    ki1000304b-SAS-FoodSuppl   INDIA        0%                   (0%, 5%]          1.6383562   0.6245491   4.297838
6 months    kiGH5241-JiVitA-4          BANGLADESH   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH   >5%                  (0%, 5%]          1.1263080   0.8218784   1.543500
6 months    kiGH5241-JiVitA-4          BANGLADESH   0%                   (0%, 5%]          0.9311321   0.7093575   1.222243
24 months   ki1017093c-NIH-Crypto      BANGLADESH   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH   >5%                  (0%, 5%]          1.3333333   0.6345617   2.801584
24 months   ki1017093c-NIH-Crypto      BANGLADESH   0%                   (0%, 5%]          0.8726287   0.3738671   2.036769
24 months   kiGH5241-JiVitA-4          BANGLADESH   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH   >5%                  (0%, 5%]          1.1795783   0.8642659   1.609927
24 months   kiGH5241-JiVitA-4          BANGLADESH   0%                   (0%, 5%]          0.9645755   0.7591848   1.225533


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       kiGH5241-JiVitA-4          BANGLADESH   (0%, 5%]             NA                0.0009934   -0.0036305   0.0056173
6 months    ki1000109-EE               PAKISTAN     (0%, 5%]             NA                0.0777917    0.0032369   0.1523465
6 months    ki1000304b-SAS-FoodSuppl   INDIA        (0%, 5%]             NA                0.0334096   -0.0525183   0.1193375
6 months    kiGH5241-JiVitA-4          BANGLADESH   (0%, 5%]             NA                0.0001818   -0.0043312   0.0046949
24 months   ki1017093c-NIH-Crypto      BANGLADESH   (0%, 5%]             NA                0.0028760   -0.0174298   0.0231818
24 months   kiGH5241-JiVitA-4          BANGLADESH   (0%, 5%]             NA                0.0031102   -0.0038029   0.0100234


### Parameter: PAF


agecat      studyid                    country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       kiGH5241-JiVitA-4          BANGLADESH   (0%, 5%]             NA                0.0127591   -0.0480840   0.0700701
6 months    ki1000109-EE               PAKISTAN     (0%, 5%]             NA                0.3078565   -0.0576841   0.5470646
6 months    ki1000304b-SAS-FoodSuppl   INDIA        (0%, 5%]             NA                0.2351047   -0.6816679   0.6520925
6 months    kiGH5241-JiVitA-4          BANGLADESH   (0%, 5%]             NA                0.0032677   -0.0811589   0.0811015
24 months   ki1017093c-NIH-Crypto      BANGLADESH   (0%, 5%]             NA                0.0422360   -0.3072504   0.2982891
24 months   kiGH5241-JiVitA-4          BANGLADESH   (0%, 5%]             NA                0.0337543   -0.0439145   0.1056444
