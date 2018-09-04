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

**Outcome Variable:** stunted

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

agecat      studyid                    country                        perdiar24    stunted   n_cell      n
----------  -------------------------  -----------------------------  ----------  --------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]           0      126    257
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]           1       20    257
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%                0       68    257
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%                1       21    257
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%                 0       16    257
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%                 1        6    257
Birth       ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]           0       71    191
Birth       ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]           1       10    191
Birth       ki0047075b-MAL-ED          BRAZIL                         >5%                0        2    191
Birth       ki0047075b-MAL-ED          BRAZIL                         >5%                1        0    191
Birth       ki0047075b-MAL-ED          BRAZIL                         0%                 0       97    191
Birth       ki0047075b-MAL-ED          BRAZIL                         0%                 1       11    191
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]           0      130    206
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]           1       26    206
Birth       ki0047075b-MAL-ED          INDIA                          >5%                0       33    206
Birth       ki0047075b-MAL-ED          INDIA                          >5%                1        5    206
Birth       ki0047075b-MAL-ED          INDIA                          0%                 0       10    206
Birth       ki0047075b-MAL-ED          INDIA                          0%                 1        2    206
Birth       ki0047075b-MAL-ED          NEPAL                          (0%, 5%]           0       96    173
Birth       ki0047075b-MAL-ED          NEPAL                          (0%, 5%]           1        7    173
Birth       ki0047075b-MAL-ED          NEPAL                          >5%                0       47    173
Birth       ki0047075b-MAL-ED          NEPAL                          >5%                1        9    173
Birth       ki0047075b-MAL-ED          NEPAL                          0%                 0       12    173
Birth       ki0047075b-MAL-ED          NEPAL                          0%                 1        2    173
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]           0       95    287
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]           1       14    287
Birth       ki0047075b-MAL-ED          PERU                           >5%                0      133    287
Birth       ki0047075b-MAL-ED          PERU                           >5%                1       18    287
Birth       ki0047075b-MAL-ED          PERU                           0%                 0       25    287
Birth       ki0047075b-MAL-ED          PERU                           0%                 1        2    287
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]           0      136    252
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]           1       18    252
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                0        3    252
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                1        0    252
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0%                 0       86    252
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0%                 1        9    252
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0       75    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1       15    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                0       24    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                1        1    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 0        6    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 1        2    123
Birth       ki1000109-EE               PAKISTAN                       (0%, 5%]           0        2      4
Birth       ki1000109-EE               PAKISTAN                       (0%, 5%]           1        2      4
Birth       ki1000109-EE               PAKISTAN                       >5%                0        0      4
Birth       ki1000109-EE               PAKISTAN                       >5%                1        0      4
Birth       ki1000109-EE               PAKISTAN                       0%                 0        0      4
Birth       ki1000109-EE               PAKISTAN                       0%                 1        0      4
Birth       ki1000109-ResPak           PAKISTAN                       (0%, 5%]           0        0      6
Birth       ki1000109-ResPak           PAKISTAN                       (0%, 5%]           1        2      6
Birth       ki1000109-ResPak           PAKISTAN                       >5%                0        4      6
Birth       ki1000109-ResPak           PAKISTAN                       >5%                1        0      6
Birth       ki1000109-ResPak           PAKISTAN                       0%                 0        0      6
Birth       ki1000109-ResPak           PAKISTAN                       0%                 1        0      6
Birth       ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]           0        7     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]           1        1     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     >5%                0       14     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     >5%                1        0     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%                 0        4     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%                 1        0     26
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]           0        9     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]           1        1     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%                0        9     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%                1        2     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                 0        4     27
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                 1        2     27
Birth       ki1114097-CMIN             BANGLADESH                     (0%, 5%]           0        0     13
Birth       ki1114097-CMIN             BANGLADESH                     (0%, 5%]           1        0     13
Birth       ki1114097-CMIN             BANGLADESH                     >5%                0        1     13
Birth       ki1114097-CMIN             BANGLADESH                     >5%                1        1     13
Birth       ki1114097-CMIN             BANGLADESH                     0%                 0        6     13
Birth       ki1114097-CMIN             BANGLADESH                     0%                 1        5     13
Birth       ki1114097-CMIN             BRAZIL                         (0%, 5%]           0       62    115
Birth       ki1114097-CMIN             BRAZIL                         (0%, 5%]           1        4    115
Birth       ki1114097-CMIN             BRAZIL                         >5%                0       47    115
Birth       ki1114097-CMIN             BRAZIL                         >5%                1        1    115
Birth       ki1114097-CMIN             BRAZIL                         0%                 0        1    115
Birth       ki1114097-CMIN             BRAZIL                         0%                 1        0    115
Birth       ki1114097-CMIN             PERU                           (0%, 5%]           0        8     10
Birth       ki1114097-CMIN             PERU                           (0%, 5%]           1        0     10
Birth       ki1114097-CMIN             PERU                           >5%                0        1     10
Birth       ki1114097-CMIN             PERU                           >5%                1        0     10
Birth       ki1114097-CMIN             PERU                           0%                 0        1     10
Birth       ki1114097-CMIN             PERU                           0%                 1        0     10
Birth       ki1114097-CONTENT          PERU                           (0%, 5%]           0        1      2
Birth       ki1114097-CONTENT          PERU                           (0%, 5%]           1        0      2
Birth       ki1114097-CONTENT          PERU                           >5%                0        1      2
Birth       ki1114097-CONTENT          PERU                           >5%                1        0      2
Birth       ki1114097-CONTENT          PERU                           0%                 0        0      2
Birth       ki1114097-CONTENT          PERU                           0%                 1        0      2
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]           0      760   1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]           1      334   1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%                0      114   1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%                1       46   1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%                 0      276   1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%                 1      114   1644
6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]           0      119    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]           1       23    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                0       72    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                1       21    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                 0        5    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                 1        1    241
6 months    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]           0       98    209
6 months    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]           1        3    209
6 months    ki0047075b-MAL-ED          BRAZIL                         >5%                0        2    209
6 months    ki0047075b-MAL-ED          BRAZIL                         >5%                1        0    209
6 months    ki0047075b-MAL-ED          BRAZIL                         0%                 0      103    209
6 months    ki0047075b-MAL-ED          BRAZIL                         0%                 1        3    209
6 months    ki0047075b-MAL-ED          INDIA                          (0%, 5%]           0      155    236
6 months    ki0047075b-MAL-ED          INDIA                          (0%, 5%]           1       36    236
6 months    ki0047075b-MAL-ED          INDIA                          >5%                0       32    236
6 months    ki0047075b-MAL-ED          INDIA                          >5%                1       10    236
6 months    ki0047075b-MAL-ED          INDIA                          0%                 0        3    236
6 months    ki0047075b-MAL-ED          INDIA                          0%                 1        0    236
6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]           0      137    236
6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]           1        6    236
6 months    ki0047075b-MAL-ED          NEPAL                          >5%                0       74    236
6 months    ki0047075b-MAL-ED          NEPAL                          >5%                1        5    236
6 months    ki0047075b-MAL-ED          NEPAL                          0%                 0       13    236
6 months    ki0047075b-MAL-ED          NEPAL                          0%                 1        1    236
6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]           0       88    273
6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]           1       21    273
6 months    ki0047075b-MAL-ED          PERU                           >5%                0      120    273
6 months    ki0047075b-MAL-ED          PERU                           >5%                1       37    273
6 months    ki0047075b-MAL-ED          PERU                           0%                 0        5    273
6 months    ki0047075b-MAL-ED          PERU                           0%                 1        2    273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]           0      142    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]           1       32    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                0        2    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                1        0    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0%                 0       60    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0%                 1       18    254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0      132    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1       45    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                0       52    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                1        9    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 0        5    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 1        4    247
6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]           0       82    744
6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]           1       78    744
6 months    ki1000109-EE               PAKISTAN                       >5%                0       18    744
6 months    ki1000109-EE               PAKISTAN                       >5%                1       24    744
6 months    ki1000109-EE               PAKISTAN                       0%                 0      258    744
6 months    ki1000109-EE               PAKISTAN                       0%                 1      284    744
6 months    ki1000109-ResPak           PAKISTAN                       (0%, 5%]           0       42    235
6 months    ki1000109-ResPak           PAKISTAN                       (0%, 5%]           1       28    235
6 months    ki1000109-ResPak           PAKISTAN                       >5%                0      103    235
6 months    ki1000109-ResPak           PAKISTAN                       >5%                1       51    235
6 months    ki1000109-ResPak           PAKISTAN                       0%                 0        7    235
6 months    ki1000109-ResPak           PAKISTAN                       0%                 1        4    235
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]           0       28    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]           1       18    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                0      151    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                1      110    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                 0       38    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                 1       35    380
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]           0      247    537
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]           1       92    537
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                0      136    537
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                1       47    537
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                 0       10    537
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                 1        5    537
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]           0      340    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]           1       61    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                0      140    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                1       30    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                 0        9    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                 1        3    583
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]           0      306    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]           1       80    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                0      151    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                1       44    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                 0      108    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                 1       26    715
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]           0       51    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]           1       19    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%                0      137    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%                1       63    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                 0       21    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                 1        8    299
6 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]           0       66    243
6 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]           1       46    243
6 months    ki1114097-CMIN             BANGLADESH                     >5%                0       82    243
6 months    ki1114097-CMIN             BANGLADESH                     >5%                1       47    243
6 months    ki1114097-CMIN             BANGLADESH                     0%                 0        2    243
6 months    ki1114097-CMIN             BANGLADESH                     0%                 1        0    243
6 months    ki1114097-CMIN             BRAZIL                         (0%, 5%]           0       58    108
6 months    ki1114097-CMIN             BRAZIL                         (0%, 5%]           1        2    108
6 months    ki1114097-CMIN             BRAZIL                         >5%                0       39    108
6 months    ki1114097-CMIN             BRAZIL                         >5%                1        8    108
6 months    ki1114097-CMIN             BRAZIL                         0%                 0        1    108
6 months    ki1114097-CMIN             BRAZIL                         0%                 1        0    108
6 months    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]           0      310    829
6 months    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]           1       22    829
6 months    ki1114097-CMIN             GUINEA-BISSAU                  >5%                0      425    829
6 months    ki1114097-CMIN             GUINEA-BISSAU                  >5%                1       47    829
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0%                 0       21    829
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0%                 1        4    829
6 months    ki1114097-CMIN             PERU                           (0%, 5%]           0      284    637
6 months    ki1114097-CMIN             PERU                           (0%, 5%]           1       17    637
6 months    ki1114097-CMIN             PERU                           >5%                0      278    637
6 months    ki1114097-CMIN             PERU                           >5%                1       24    637
6 months    ki1114097-CMIN             PERU                           0%                 0       32    637
6 months    ki1114097-CMIN             PERU                           0%                 1        2    637
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]           0      129    215
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]           1       13    215
6 months    ki1114097-CONTENT          PERU                           >5%                0       63    215
6 months    ki1114097-CONTENT          PERU                           >5%                1        4    215
6 months    ki1114097-CONTENT          PERU                           0%                 0        4    215
6 months    ki1114097-CONTENT          PERU                           0%                 1        2    215
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]           0     4577   9452
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]           1     1533   9452
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                0      644   9452
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                1      269   9452
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                 0     1841   9452
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                 1      588   9452
24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]           0       74    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]           1       56    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                0       36    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                1       40    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                 0        4    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                 1        2    212
24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]           0       87    169
24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]           1        4    169
24 months   ki0047075b-MAL-ED          BRAZIL                         >5%                0        2    169
24 months   ki0047075b-MAL-ED          BRAZIL                         >5%                1        0    169
24 months   ki0047075b-MAL-ED          BRAZIL                         0%                 0       74    169
24 months   ki0047075b-MAL-ED          BRAZIL                         0%                 1        2    169
24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]           0      105    227
24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]           1       78    227
24 months   ki0047075b-MAL-ED          INDIA                          >5%                0       25    227
24 months   ki0047075b-MAL-ED          INDIA                          >5%                1       16    227
24 months   ki0047075b-MAL-ED          INDIA                          0%                 0        2    227
24 months   ki0047075b-MAL-ED          INDIA                          0%                 1        1    227
24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]           0      112    228
24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]           1       28    228
24 months   ki0047075b-MAL-ED          NEPAL                          >5%                0       57    228
24 months   ki0047075b-MAL-ED          NEPAL                          >5%                1       19    228
24 months   ki0047075b-MAL-ED          NEPAL                          0%                 0       10    228
24 months   ki0047075b-MAL-ED          NEPAL                          0%                 1        2    228
24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]           0       49    201
24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]           1       35    201
24 months   ki0047075b-MAL-ED          PERU                           >5%                0       77    201
24 months   ki0047075b-MAL-ED          PERU                           >5%                1       39    201
24 months   ki0047075b-MAL-ED          PERU                           0%                 0        1    201
24 months   ki0047075b-MAL-ED          PERU                           0%                 1        0    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]           0      105    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]           1       61    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                0        1    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                1        0    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                 0       48    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                 1       23    238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0       44    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1      112    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                0       16    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                1       36    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 0        1    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 1        5    214
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]           0      128    429
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]           1      151    429
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                0       59    429
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                1       86    429
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                 0        4    429
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                 1        1    429
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]           0      268    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]           1      126    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                0      114    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                1       60    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                 0        5    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                 1        4    577
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]           0      206    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]           1       70    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                0       81    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                1       34    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                 0       95    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                 1       28    514
24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]           0       38    242
24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]           1       76    242
24 months   ki1114097-CMIN             BANGLADESH                     >5%                0       37    242
24 months   ki1114097-CMIN             BANGLADESH                     >5%                1       88    242
24 months   ki1114097-CMIN             BANGLADESH                     0%                 0        2    242
24 months   ki1114097-CMIN             BANGLADESH                     0%                 1        1    242
24 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]           0      135    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]           1       47    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%                0      202    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%                1      124    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%                 0       15    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%                 1       15    538
24 months   ki1114097-CMIN             PERU                           (0%, 5%]           0      143    426
24 months   ki1114097-CMIN             PERU                           (0%, 5%]           1       50    426
24 months   ki1114097-CMIN             PERU                           >5%                0      121    426
24 months   ki1114097-CMIN             PERU                           >5%                1       74    426
24 months   ki1114097-CMIN             PERU                           0%                 0       26    426
24 months   ki1114097-CMIN             PERU                           0%                 1       12    426
24 months   ki1114097-CONTENT          PERU                           (0%, 5%]           0       94    164
24 months   ki1114097-CONTENT          PERU                           (0%, 5%]           1       14    164
24 months   ki1114097-CONTENT          PERU                           >5%                0       46    164
24 months   ki1114097-CONTENT          PERU                           >5%                1        6    164
24 months   ki1114097-CONTENT          PERU                           0%                 0        3    164
24 months   ki1114097-CONTENT          PERU                           0%                 1        1    164
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]           0     3690   9279
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]           1     2359   9279
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                0      450   9279
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                1      417   9279
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                 0     1492   9279
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                 1      871   9279


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
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
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
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/330102fc-6774-472c-b332-55239d91f260/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/330102fc-6774-472c-b332-55239d91f260/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/330102fc-6774-472c-b332-55239d91f260/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/330102fc-6774-472c-b332-55239d91f260/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH      (0%, 5%]             NA                0.1369863   0.0811051   0.1928675
Birth       ki0047075b-MAL-ED          BANGLADESH      >5%                  NA                0.2359551   0.1475710   0.3243391
Birth       ki0047075b-MAL-ED          BANGLADESH      0%                   NA                0.2727273   0.0862627   0.4591918
Birth       kiGH5241-JiVitA-4          BANGLADESH      (0%, 5%]             NA                0.3025890   0.2668158   0.3383621
Birth       kiGH5241-JiVitA-4          BANGLADESH      >5%                  NA                0.3077849   0.2688696   0.3467001
Birth       kiGH5241-JiVitA-4          BANGLADESH      0%                   NA                0.2892355   0.2528074   0.3256636
6 months    ki1000109-EE               PAKISTAN        (0%, 5%]             NA                0.4874027   0.3813044   0.5935010
6 months    ki1000109-EE               PAKISTAN        >5%                  NA                0.5625298   0.3549093   0.7701502
6 months    ki1000109-EE               PAKISTAN        0%                   NA                0.5244984   0.4658666   0.5831302
6 months    ki1000304b-SAS-FoodSuppl   INDIA           (0%, 5%]             NA                0.3313838   0.2183309   0.4444368
6 months    ki1000304b-SAS-FoodSuppl   INDIA           >5%                  NA                0.4415284   0.3722370   0.5108197
6 months    ki1000304b-SAS-FoodSuppl   INDIA           0%                   NA                0.3422295   0.1632300   0.5212291
6 months    ki1017093-NIH-Birth        BANGLADESH      (0%, 5%]             NA                0.2713864   0.2240064   0.3187665
6 months    ki1017093-NIH-Birth        BANGLADESH      >5%                  NA                0.2568306   0.1934736   0.3201876
6 months    ki1017093-NIH-Birth        BANGLADESH      0%                   NA                0.3333333   0.0945517   0.5721150
6 months    ki1017093c-NIH-Crypto      BANGLADESH      (0%, 5%]             NA                0.2099653   0.1721679   0.2477627
6 months    ki1017093c-NIH-Crypto      BANGLADESH      >5%                  NA                0.2011500   0.1514492   0.2508509
6 months    ki1017093c-NIH-Crypto      BANGLADESH      0%                   NA                0.1575283   0.1085787   0.2064779
6 months    ki1112895-Guatemala BSC    GUATEMALA       (0%, 5%]             NA                0.2714286   0.1670791   0.3757781
6 months    ki1112895-Guatemala BSC    GUATEMALA       >5%                  NA                0.3150000   0.2505146   0.3794854
6 months    ki1112895-Guatemala BSC    GUATEMALA       0%                   NA                0.2758621   0.1129200   0.4388041
6 months    kiGH5241-JiVitA-4          BANGLADESH      (0%, 5%]             NA                0.2506348   0.2345384   0.2667312
6 months    kiGH5241-JiVitA-4          BANGLADESH      >5%                  NA                0.2552733   0.2133917   0.2971550
6 months    kiGH5241-JiVitA-4          BANGLADESH      0%                   NA                0.2358763   0.2090882   0.2626645
24 months   ki1017093c-NIH-Crypto      BANGLADESH      (0%, 5%]             NA                0.2569497   0.2093912   0.3045083
24 months   ki1017093c-NIH-Crypto      BANGLADESH      >5%                  NA                0.2761768   0.2103995   0.3419541
24 months   ki1017093c-NIH-Crypto      BANGLADESH      0%                   NA                0.2008334   0.1451461   0.2565207
24 months   ki1114097-CMIN             GUINEA-BISSAU   (0%, 5%]             NA                0.2789905   0.2152016   0.3427795
24 months   ki1114097-CMIN             GUINEA-BISSAU   >5%                  NA                0.3810379   0.3282676   0.4338081
24 months   ki1114097-CMIN             GUINEA-BISSAU   0%                   NA                0.5138404   0.3472048   0.6804760
24 months   ki1114097-CMIN             PERU            (0%, 5%]             NA                0.2579210   0.1962324   0.3196096
24 months   ki1114097-CMIN             PERU            >5%                  NA                0.3801562   0.3118756   0.4484368
24 months   ki1114097-CMIN             PERU            0%                   NA                0.3151809   0.1708115   0.4595502
24 months   kiGH5241-JiVitA-4          BANGLADESH      (0%, 5%]             NA                0.3868559   0.3664986   0.4072131
24 months   kiGH5241-JiVitA-4          BANGLADESH      >5%                  NA                0.4461681   0.4004601   0.4918760
24 months   kiGH5241-JiVitA-4          BANGLADESH      0%                   NA                0.3688133   0.3395415   0.3980851


### Parameter: E(Y)


agecat      studyid                    country         intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  --------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH      NA                   NA                0.1828794   0.1355257   0.2302330
Birth       kiGH5241-JiVitA-4          BANGLADESH      NA                   NA                0.3004866   0.2649179   0.3360553
6 months    ki1000109-EE               PAKISTAN        NA                   NA                0.5188172   0.4679751   0.5696593
6 months    ki1000304b-SAS-FoodSuppl   INDIA           NA                   NA                0.4289474   0.3791199   0.4787748
6 months    ki1017093-NIH-Birth        BANGLADESH      NA                   NA                0.2681564   0.2306532   0.3056597
6 months    ki1017093c-NIH-Crypto      BANGLADESH      NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1112895-Guatemala BSC    GUATEMALA       NA                   NA                0.3010033   0.2489243   0.3530824
6 months    kiGH5241-JiVitA-4          BANGLADESH      NA                   NA                0.2528565   0.2387323   0.2669808
24 months   ki1017093c-NIH-Crypto      BANGLADESH      NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1114097-CMIN             GUINEA-BISSAU   NA                   NA                0.3457249   0.3054989   0.3859509
24 months   ki1114097-CMIN             PERU            NA                   NA                0.3192488   0.2749275   0.3635701
24 months   kiGH5241-JiVitA-4          BANGLADESH      NA                   NA                0.3930380   0.3758543   0.4102217


### Parameter: RR


agecat      studyid                    country         intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  --------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki0047075b-MAL-ED          BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED          BANGLADESH      >5%                  (0%, 5%]          1.7224719   0.9899885   2.996913
Birth       ki0047075b-MAL-ED          BANGLADESH      0%                   (0%, 5%]          1.9909091   0.8980213   4.413836
Birth       kiGH5241-JiVitA-4          BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4          BANGLADESH      >5%                  (0%, 5%]          1.0171714   0.9577095   1.080325
Birth       kiGH5241-JiVitA-4          BANGLADESH      0%                   (0%, 5%]          0.9558692   0.9078911   1.006383
6 months    ki1000109-EE               PAKISTAN        (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
6 months    ki1000109-EE               PAKISTAN        >5%                  (0%, 5%]          1.1541376   0.7536157   1.767524
6 months    ki1000109-EE               PAKISTAN        0%                   (0%, 5%]          1.0761089   0.8454978   1.369620
6 months    ki1000304b-SAS-FoodSuppl   INDIA           (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA           >5%                  (0%, 5%]          1.3323775   0.9141957   1.941849
6 months    ki1000304b-SAS-FoodSuppl   INDIA           0%                   (0%, 5%]          1.0327285   0.5523821   1.930780
6 months    ki1017093-NIH-Birth        BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH      >5%                  (0%, 5%]          0.9463649   0.6995320   1.280294
6 months    ki1017093-NIH-Birth        BANGLADESH      0%                   (0%, 5%]          1.2282609   0.5875972   2.567447
6 months    ki1017093c-NIH-Crypto      BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH      >5%                  (0%, 5%]          0.9580157   0.7152658   1.283151
6 months    ki1017093c-NIH-Crypto      BANGLADESH      0%                   (0%, 5%]          0.7502588   0.5317682   1.058522
6 months    ki1112895-Guatemala BSC    GUATEMALA       (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
6 months    ki1112895-Guatemala BSC    GUATEMALA       >5%                  (0%, 5%]          1.1605263   0.7507521   1.793963
6 months    ki1112895-Guatemala BSC    GUATEMALA       0%                   (0%, 5%]          1.0163339   0.5023010   2.056406
6 months    kiGH5241-JiVitA-4          BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH      >5%                  (0%, 5%]          1.0185072   0.8555976   1.212435
6 months    kiGH5241-JiVitA-4          BANGLADESH      0%                   (0%, 5%]          0.9411158   0.8313388   1.065389
24 months   ki1017093c-NIH-Crypto      BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH      >5%                  (0%, 5%]          1.0748280   0.8001686   1.443765
24 months   ki1017093c-NIH-Crypto      BANGLADESH      0%                   (0%, 5%]          0.7816058   0.5654500   1.080392
24 months   ki1114097-CMIN             GUINEA-BISSAU   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
24 months   ki1114097-CMIN             GUINEA-BISSAU   >5%                  (0%, 5%]          1.3657735   1.0453379   1.784435
24 months   ki1114097-CMIN             GUINEA-BISSAU   0%                   (0%, 5%]          1.8417844   1.2404632   2.734599
24 months   ki1114097-CMIN             PERU            (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
24 months   ki1114097-CMIN             PERU            >5%                  (0%, 5%]          1.4739250   1.0934888   1.986719
24 months   ki1114097-CMIN             PERU            0%                   (0%, 5%]          1.2220055   0.7291586   2.047973
24 months   kiGH5241-JiVitA-4          BANGLADESH      (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH      >5%                  (0%, 5%]          1.1533186   1.0340881   1.286296
24 months   kiGH5241-JiVitA-4          BANGLADESH      0%                   (0%, 5%]          0.9533611   0.8694611   1.045357


### Parameter: PAR


agecat      studyid                    country         intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  --------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH      (0%, 5%]             NA                 0.0458931    0.0032656   0.0885205
Birth       kiGH5241-JiVitA-4          BANGLADESH      (0%, 5%]             NA                -0.0021024   -0.0073189   0.0031142
6 months    ki1000109-EE               PAKISTAN        (0%, 5%]             NA                 0.0314145   -0.0615809   0.1244099
6 months    ki1000304b-SAS-FoodSuppl   INDIA           (0%, 5%]             NA                 0.0975635   -0.0102201   0.2053472
6 months    ki1017093-NIH-Birth        BANGLADESH      (0%, 5%]             NA                -0.0032300   -0.0318142   0.0253542
6 months    ki1017093c-NIH-Crypto      BANGLADESH      (0%, 5%]             NA                -0.0001751   -0.0237485   0.0233983
6 months    ki1112895-Guatemala BSC    GUATEMALA       (0%, 5%]             NA                 0.0295748   -0.0626348   0.1217843
6 months    kiGH5241-JiVitA-4          BANGLADESH      (0%, 5%]             NA                 0.0022217   -0.0073546   0.0117981
24 months   ki1017093c-NIH-Crypto      BANGLADESH      (0%, 5%]             NA                -0.0001404   -0.0312052   0.0309243
24 months   ki1114097-CMIN             GUINEA-BISSAU   (0%, 5%]             NA                 0.0667344    0.0120466   0.1214222
24 months   ki1114097-CMIN             PERU            (0%, 5%]             NA                 0.0613278    0.0131905   0.1094652
24 months   kiGH5241-JiVitA-4          BANGLADESH      (0%, 5%]             NA                 0.0061822   -0.0048417   0.0172061


### Parameter: PAF


agecat      studyid                    country         intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  --------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH      (0%, 5%]             NA                 0.2509472   -0.0141903   0.4467705
Birth       kiGH5241-JiVitA-4          BANGLADESH      (0%, 5%]             NA                -0.0069965   -0.0245561   0.0102621
6 months    ki1000109-EE               PAKISTAN        (0%, 5%]             NA                 0.0605503   -0.1370729   0.2238265
6 months    ki1000304b-SAS-FoodSuppl   INDIA           (0%, 5%]             NA                 0.2274487   -0.0669299   0.4406048
6 months    ki1017093-NIH-Birth        BANGLADESH      (0%, 5%]             NA                -0.0120452   -0.1244529   0.0891254
6 months    ki1017093c-NIH-Crypto      BANGLADESH      (0%, 5%]             NA                -0.0008346   -0.1197535   0.1054551
6 months    ki1112895-Guatemala BSC    GUATEMALA       (0%, 5%]             NA                 0.0982540   -0.2664025   0.3579088
6 months    kiGH5241-JiVitA-4          BANGLADESH      (0%, 5%]             NA                 0.0087866   -0.0297618   0.0458920
24 months   ki1017093c-NIH-Crypto      BANGLADESH      (0%, 5%]             NA                -0.0005467   -0.1291321   0.1133954
24 months   ki1114097-CMIN             GUINEA-BISSAU   (0%, 5%]             NA                 0.1930274    0.0196933   0.3357132
24 months   ki1114097-CMIN             PERU            (0%, 5%]             NA                 0.1921004    0.0270738   0.3291354
24 months   kiGH5241-JiVitA-4          BANGLADESH      (0%, 5%]             NA                 0.0157292   -0.0127264   0.0433853
