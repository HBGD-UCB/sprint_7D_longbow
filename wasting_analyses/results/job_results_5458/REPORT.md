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

**Outcome Variable:** swasted

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

agecat      studyid                    country                        perdiar24    swasted   n_cell      n
----------  -------------------------  -----------------------------  ----------  --------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]           0      138    241
Birth       ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]           1        4    241
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%                0       77    241
Birth       ki0047075b-MAL-ED          BANGLADESH                     >5%                1        4    241
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%                 0       18    241
Birth       ki0047075b-MAL-ED          BANGLADESH                     0%                 1        0    241
Birth       ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]           0       76    183
Birth       ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]           1        0    183
Birth       ki0047075b-MAL-ED          BRAZIL                         >5%                0        2    183
Birth       ki0047075b-MAL-ED          BRAZIL                         >5%                1        0    183
Birth       ki0047075b-MAL-ED          BRAZIL                         0%                 0      105    183
Birth       ki0047075b-MAL-ED          BRAZIL                         0%                 1        0    183
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]           0      148    203
Birth       ki0047075b-MAL-ED          INDIA                          (0%, 5%]           1        5    203
Birth       ki0047075b-MAL-ED          INDIA                          >5%                0       37    203
Birth       ki0047075b-MAL-ED          INDIA                          >5%                1        1    203
Birth       ki0047075b-MAL-ED          INDIA                          0%                 0       11    203
Birth       ki0047075b-MAL-ED          INDIA                          0%                 1        1    203
Birth       ki0047075b-MAL-ED          NEPAL                          (0%, 5%]           0       99    168
Birth       ki0047075b-MAL-ED          NEPAL                          (0%, 5%]           1        2    168
Birth       ki0047075b-MAL-ED          NEPAL                          >5%                0       54    168
Birth       ki0047075b-MAL-ED          NEPAL                          >5%                1        0    168
Birth       ki0047075b-MAL-ED          NEPAL                          0%                 0       11    168
Birth       ki0047075b-MAL-ED          NEPAL                          0%                 1        2    168
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]           0      107    279
Birth       ki0047075b-MAL-ED          PERU                           (0%, 5%]           1        0    279
Birth       ki0047075b-MAL-ED          PERU                           >5%                0      146    279
Birth       ki0047075b-MAL-ED          PERU                           >5%                1        0    279
Birth       ki0047075b-MAL-ED          PERU                           0%                 0       26    279
Birth       ki0047075b-MAL-ED          PERU                           0%                 1        0    279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]           0      151    250
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]           1        1    250
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                0        3    250
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                1        0    250
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0%                 0       94    250
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0%                 1        1    250
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0       86    118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1        0    118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                0       23    118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                1        1    118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 0        8    118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 1        0    118
Birth       ki1000109-EE               PAKISTAN                       (0%, 5%]           0        2      2
Birth       ki1000109-EE               PAKISTAN                       (0%, 5%]           1        0      2
Birth       ki1000109-EE               PAKISTAN                       >5%                0        0      2
Birth       ki1000109-EE               PAKISTAN                       >5%                1        0      2
Birth       ki1000109-EE               PAKISTAN                       0%                 0        0      2
Birth       ki1000109-EE               PAKISTAN                       0%                 1        0      2
Birth       ki1000109-ResPak           PAKISTAN                       (0%, 5%]           0        1      5
Birth       ki1000109-ResPak           PAKISTAN                       (0%, 5%]           1        0      5
Birth       ki1000109-ResPak           PAKISTAN                       >5%                0        4      5
Birth       ki1000109-ResPak           PAKISTAN                       >5%                1        0      5
Birth       ki1000109-ResPak           PAKISTAN                       0%                 0        0      5
Birth       ki1000109-ResPak           PAKISTAN                       0%                 1        0      5
Birth       ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]           0        7     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]           1        1     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     >5%                0       13     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     >5%                1        1     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%                 0        4     26
Birth       ki1017093-NIH-Birth        BANGLADESH                     0%                 1        0     26
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]           0       10     23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]           1        0     23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%                0        8     23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >5%                1        1     23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                 0        4     23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0%                 1        0     23
Birth       ki1114097-CMIN             BANGLADESH                     (0%, 5%]           0        0      8
Birth       ki1114097-CMIN             BANGLADESH                     (0%, 5%]           1        0      8
Birth       ki1114097-CMIN             BANGLADESH                     >5%                0        2      8
Birth       ki1114097-CMIN             BANGLADESH                     >5%                1        0      8
Birth       ki1114097-CMIN             BANGLADESH                     0%                 0        5      8
Birth       ki1114097-CMIN             BANGLADESH                     0%                 1        1      8
Birth       ki1114097-CMIN             BRAZIL                         (0%, 5%]           0       62    111
Birth       ki1114097-CMIN             BRAZIL                         (0%, 5%]           1        1    111
Birth       ki1114097-CMIN             BRAZIL                         >5%                0       47    111
Birth       ki1114097-CMIN             BRAZIL                         >5%                1        0    111
Birth       ki1114097-CMIN             BRAZIL                         0%                 0        1    111
Birth       ki1114097-CMIN             BRAZIL                         0%                 1        0    111
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
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]           0      910   1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]           1        4   1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%                0      128   1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >5%                1        0   1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%                 0      318   1366
Birth       kiGH5241-JiVitA-4          BANGLADESH                     0%                 1        6   1366
6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]           0      140    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]           1        2    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                0       93    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     >5%                1        0    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                 0        6    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     0%                 1        0    241
6 months    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]           0      101    209
6 months    ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]           1        0    209
6 months    ki0047075b-MAL-ED          BRAZIL                         >5%                0        2    209
6 months    ki0047075b-MAL-ED          BRAZIL                         >5%                1        0    209
6 months    ki0047075b-MAL-ED          BRAZIL                         0%                 0      106    209
6 months    ki0047075b-MAL-ED          BRAZIL                         0%                 1        0    209
6 months    ki0047075b-MAL-ED          INDIA                          (0%, 5%]           0      187    236
6 months    ki0047075b-MAL-ED          INDIA                          (0%, 5%]           1        4    236
6 months    ki0047075b-MAL-ED          INDIA                          >5%                0       41    236
6 months    ki0047075b-MAL-ED          INDIA                          >5%                1        1    236
6 months    ki0047075b-MAL-ED          INDIA                          0%                 0        3    236
6 months    ki0047075b-MAL-ED          INDIA                          0%                 1        0    236
6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]           0      143    236
6 months    ki0047075b-MAL-ED          NEPAL                          (0%, 5%]           1        0    236
6 months    ki0047075b-MAL-ED          NEPAL                          >5%                0       79    236
6 months    ki0047075b-MAL-ED          NEPAL                          >5%                1        0    236
6 months    ki0047075b-MAL-ED          NEPAL                          0%                 0       14    236
6 months    ki0047075b-MAL-ED          NEPAL                          0%                 1        0    236
6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]           0      109    273
6 months    ki0047075b-MAL-ED          PERU                           (0%, 5%]           1        0    273
6 months    ki0047075b-MAL-ED          PERU                           >5%                0      157    273
6 months    ki0047075b-MAL-ED          PERU                           >5%                1        0    273
6 months    ki0047075b-MAL-ED          PERU                           0%                 0        7    273
6 months    ki0047075b-MAL-ED          PERU                           0%                 1        0    273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]           0      172    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]           1        2    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                0        2    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                1        0    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0%                 0       77    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0%                 1        1    254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0      177    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1        0    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                0       61    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                1        0    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 0        9    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 1        0    247
6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]           0      154    752
6 months    ki1000109-EE               PAKISTAN                       (0%, 5%]           1        6    752
6 months    ki1000109-EE               PAKISTAN                       >5%                0       42    752
6 months    ki1000109-EE               PAKISTAN                       >5%                1        0    752
6 months    ki1000109-EE               PAKISTAN                       0%                 0      538    752
6 months    ki1000109-EE               PAKISTAN                       0%                 1       12    752
6 months    ki1000109-ResPak           PAKISTAN                       (0%, 5%]           0       66    235
6 months    ki1000109-ResPak           PAKISTAN                       (0%, 5%]           1        4    235
6 months    ki1000109-ResPak           PAKISTAN                       >5%                0      150    235
6 months    ki1000109-ResPak           PAKISTAN                       >5%                1        4    235
6 months    ki1000109-ResPak           PAKISTAN                       0%                 0       10    235
6 months    ki1000109-ResPak           PAKISTAN                       0%                 1        1    235
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]           0       44    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          (0%, 5%]           1        2    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                0      248    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >5%                1       12    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                 0       69    380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0%                 1        5    380
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]           0      335    536
6 months    ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]           1        3    536
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                0      181    536
6 months    ki1017093-NIH-Birth        BANGLADESH                     >5%                1        2    536
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                 0       15    536
6 months    ki1017093-NIH-Birth        BANGLADESH                     0%                 1        0    536
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]           0      395    582
6 months    ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]           1        5    582
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                0      170    582
6 months    ki1017093b-PROVIDE         BANGLADESH                     >5%                1        0    582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                 0       12    582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0%                 1        0    582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]           0      386    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]           1        0    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                0      195    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >5%                1        0    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                 0      134    715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0%                 1        0    715
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]           0       70    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      (0%, 5%]           1        0    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%                0      200    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >5%                1        0    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                 0       29    299
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0%                 1        0    299
6 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]           0      109    243
6 months    ki1114097-CMIN             BANGLADESH                     (0%, 5%]           1        2    243
6 months    ki1114097-CMIN             BANGLADESH                     >5%                0      127    243
6 months    ki1114097-CMIN             BANGLADESH                     >5%                1        3    243
6 months    ki1114097-CMIN             BANGLADESH                     0%                 0        2    243
6 months    ki1114097-CMIN             BANGLADESH                     0%                 1        0    243
6 months    ki1114097-CMIN             BRAZIL                         (0%, 5%]           0       60    108
6 months    ki1114097-CMIN             BRAZIL                         (0%, 5%]           1        0    108
6 months    ki1114097-CMIN             BRAZIL                         >5%                0       47    108
6 months    ki1114097-CMIN             BRAZIL                         >5%                1        0    108
6 months    ki1114097-CMIN             BRAZIL                         0%                 0        1    108
6 months    ki1114097-CMIN             BRAZIL                         0%                 1        0    108
6 months    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]           0      328    830
6 months    ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]           1        4    830
6 months    ki1114097-CMIN             GUINEA-BISSAU                  >5%                0      468    830
6 months    ki1114097-CMIN             GUINEA-BISSAU                  >5%                1        5    830
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0%                 0       24    830
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0%                 1        1    830
6 months    ki1114097-CMIN             PERU                           (0%, 5%]           0      299    636
6 months    ki1114097-CMIN             PERU                           (0%, 5%]           1        2    636
6 months    ki1114097-CMIN             PERU                           >5%                0      300    636
6 months    ki1114097-CMIN             PERU                           >5%                1        1    636
6 months    ki1114097-CMIN             PERU                           0%                 0       34    636
6 months    ki1114097-CMIN             PERU                           0%                 1        0    636
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]           0      142    215
6 months    ki1114097-CONTENT          PERU                           (0%, 5%]           1        0    215
6 months    ki1114097-CONTENT          PERU                           >5%                0       67    215
6 months    ki1114097-CONTENT          PERU                           >5%                1        0    215
6 months    ki1114097-CONTENT          PERU                           0%                 0        6    215
6 months    ki1114097-CONTENT          PERU                           0%                 1        0    215
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]           0     6067   9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]           1       43   9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                0      905   9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >5%                1       12   9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                 0     2419   9456
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0%                 1       10   9456
24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]           0      130    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     (0%, 5%]           1        0    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                0       76    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     >5%                1        0    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                 0        6    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0%                 1        0    212
24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]           0       90    169
24 months   ki0047075b-MAL-ED          BRAZIL                         (0%, 5%]           1        1    169
24 months   ki0047075b-MAL-ED          BRAZIL                         >5%                0        2    169
24 months   ki0047075b-MAL-ED          BRAZIL                         >5%                1        0    169
24 months   ki0047075b-MAL-ED          BRAZIL                         0%                 0       76    169
24 months   ki0047075b-MAL-ED          BRAZIL                         0%                 1        0    169
24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]           0      182    227
24 months   ki0047075b-MAL-ED          INDIA                          (0%, 5%]           1        1    227
24 months   ki0047075b-MAL-ED          INDIA                          >5%                0       40    227
24 months   ki0047075b-MAL-ED          INDIA                          >5%                1        1    227
24 months   ki0047075b-MAL-ED          INDIA                          0%                 0        3    227
24 months   ki0047075b-MAL-ED          INDIA                          0%                 1        0    227
24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]           0      140    228
24 months   ki0047075b-MAL-ED          NEPAL                          (0%, 5%]           1        0    228
24 months   ki0047075b-MAL-ED          NEPAL                          >5%                0       76    228
24 months   ki0047075b-MAL-ED          NEPAL                          >5%                1        0    228
24 months   ki0047075b-MAL-ED          NEPAL                          0%                 0       12    228
24 months   ki0047075b-MAL-ED          NEPAL                          0%                 1        0    228
24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]           0       83    201
24 months   ki0047075b-MAL-ED          PERU                           (0%, 5%]           1        1    201
24 months   ki0047075b-MAL-ED          PERU                           >5%                0      116    201
24 months   ki0047075b-MAL-ED          PERU                           >5%                1        0    201
24 months   ki0047075b-MAL-ED          PERU                           0%                 0        1    201
24 months   ki0047075b-MAL-ED          PERU                           0%                 1        0    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]           0      166    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   (0%, 5%]           1        0    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                0        1    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >5%                1        0    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                 0       71    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0%                 1        0    238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           0      156    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   (0%, 5%]           1        0    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                0       52    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >5%                1        0    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 0        6    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0%                 1        0    214
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]           0      271    428
24 months   ki1017093-NIH-Birth        BANGLADESH                     (0%, 5%]           1        7    428
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                0      142    428
24 months   ki1017093-NIH-Birth        BANGLADESH                     >5%                1        3    428
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                 0        5    428
24 months   ki1017093-NIH-Birth        BANGLADESH                     0%                 1        0    428
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]           0      389    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     (0%, 5%]           1        6    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                0      171    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     >5%                1        3    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                 0        9    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0%                 1        0    578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]           0      274    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     (0%, 5%]           1        2    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                0      115    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >5%                1        0    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                 0      121    514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0%                 1        2    514
24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]           0      113    243
24 months   ki1114097-CMIN             BANGLADESH                     (0%, 5%]           1        1    243
24 months   ki1114097-CMIN             BANGLADESH                     >5%                0      125    243
24 months   ki1114097-CMIN             BANGLADESH                     >5%                1        1    243
24 months   ki1114097-CMIN             BANGLADESH                     0%                 0        3    243
24 months   ki1114097-CMIN             BANGLADESH                     0%                 1        0    243
24 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]           0      182    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  (0%, 5%]           1        0    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%                0      321    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  >5%                1        5    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%                 0       30    538
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0%                 1        0    538
24 months   ki1114097-CMIN             PERU                           (0%, 5%]           0      193    426
24 months   ki1114097-CMIN             PERU                           (0%, 5%]           1        0    426
24 months   ki1114097-CMIN             PERU                           >5%                0      194    426
24 months   ki1114097-CMIN             PERU                           >5%                1        1    426
24 months   ki1114097-CMIN             PERU                           0%                 0       38    426
24 months   ki1114097-CMIN             PERU                           0%                 1        0    426
24 months   ki1114097-CONTENT          PERU                           (0%, 5%]           0      108    164
24 months   ki1114097-CONTENT          PERU                           (0%, 5%]           1        0    164
24 months   ki1114097-CONTENT          PERU                           >5%                0       52    164
24 months   ki1114097-CONTENT          PERU                           >5%                1        0    164
24 months   ki1114097-CONTENT          PERU                           0%                 0        4    164
24 months   ki1114097-CONTENT          PERU                           0%                 1        0    164
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]           0     5860   9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     (0%, 5%]           1      170   9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                0      838   9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >5%                1       23   9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                 0     2296   9246
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0%                 1       59   9246


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
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/6d6b8f8f-ad7f-4b7b-b67e-d65cd9f78e30/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6d6b8f8f-ad7f-4b7b-b67e-d65cd9f78e30/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6d6b8f8f-ad7f-4b7b-b67e-d65cd9f78e30/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6d6b8f8f-ad7f-4b7b-b67e-d65cd9f78e30/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid             country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
6 months    kiGH5241-JiVitA-4   BANGLADESH   (0%, 5%]             NA                0.0070376    0.0038299   0.0102454
6 months    kiGH5241-JiVitA-4   BANGLADESH   >5%                  NA                0.0130862    0.0023504   0.0238219
6 months    kiGH5241-JiVitA-4   BANGLADESH   0%                   NA                0.0041169   -0.0051819   0.0134157
24 months   kiGH5241-JiVitA-4   BANGLADESH   (0%, 5%]             NA                0.0281924    0.0218618   0.0345229
24 months   kiGH5241-JiVitA-4   BANGLADESH   >5%                  NA                0.0267131    0.0143551   0.0390712
24 months   kiGH5241-JiVitA-4   BANGLADESH   0%                   NA                0.0250531    0.0136572   0.0364490


### Parameter: E(Y)


agecat      studyid             country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
6 months    kiGH5241-JiVitA-4   BANGLADESH   NA                   NA                0.0068739   0.0035659   0.0101820
24 months   kiGH5241-JiVitA-4   BANGLADESH   NA                   NA                0.0272550   0.0219628   0.0325472


### Parameter: RR


agecat      studyid             country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
6 months    kiGH5241-JiVitA-4   BANGLADESH   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4   BANGLADESH   >5%                  (0%, 5%]          1.8594507   0.7228344   4.783332
6 months    kiGH5241-JiVitA-4   BANGLADESH   0%                   (0%, 5%]          0.5849857   0.0582878   5.871011
24 months   kiGH5241-JiVitA-4   BANGLADESH   (0%, 5%]             (0%, 5%]          1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4   BANGLADESH   >5%                  (0%, 5%]          0.9475302   0.5698057   1.575649
24 months   kiGH5241-JiVitA-4   BANGLADESH   0%                   (0%, 5%]          0.8886474   0.5397647   1.463034


### Parameter: PAR


agecat      studyid             country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
6 months    kiGH5241-JiVitA-4   BANGLADESH   (0%, 5%]             NA                -0.0001637   -0.0030111   0.0026837
24 months   kiGH5241-JiVitA-4   BANGLADESH   (0%, 5%]             NA                -0.0009373   -0.0046560   0.0027813


### Parameter: PAF


agecat      studyid             country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
6 months    kiGH5241-JiVitA-4   BANGLADESH   (0%, 5%]             NA                -0.0238147   -0.5425716   0.3204876
24 months   kiGH5241-JiVitA-4   BANGLADESH   (0%, 5%]             NA                -0.0343915   -0.1807628   0.0938351
