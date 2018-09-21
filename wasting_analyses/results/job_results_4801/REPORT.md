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

**Outcome Variable:** wasted

## Predictor Variables

**Intervention Variable:** pers_wast

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        pers_wast    wasted   n_cell      n
----------  -------------------------  -----------------------------  ----------  -------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 0      196    241
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 1       36    241
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 0        5    241
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 1        4    241
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 0      177    183
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 1        6    183
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 0        0    183
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 1        0    183
Birth       ki0047075b-MAL-ED          INDIA                          0                 0      165    203
Birth       ki0047075b-MAL-ED          INDIA                          0                 1       23    203
Birth       ki0047075b-MAL-ED          INDIA                          1                 0        5    203
Birth       ki0047075b-MAL-ED          INDIA                          1                 1       10    203
Birth       ki0047075b-MAL-ED          NEPAL                          0                 0      147    168
Birth       ki0047075b-MAL-ED          NEPAL                          0                 1       18    168
Birth       ki0047075b-MAL-ED          NEPAL                          1                 0        1    168
Birth       ki0047075b-MAL-ED          NEPAL                          1                 1        2    168
Birth       ki0047075b-MAL-ED          PERU                           0                 0      273    279
Birth       ki0047075b-MAL-ED          PERU                           0                 1        6    279
Birth       ki0047075b-MAL-ED          PERU                           1                 0        0    279
Birth       ki0047075b-MAL-ED          PERU                           1                 1        0    279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      239    258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1       14    258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0        1    258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        4    258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      116    118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        2    118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        0    118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0    118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       68     88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 1       10     88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 0        6     88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 1        4     88
Birth       ki1000108-IRC              INDIA                          0                 0      224    343
Birth       ki1000108-IRC              INDIA                          0                 1       63    343
Birth       ki1000108-IRC              INDIA                          1                 0       27    343
Birth       ki1000108-IRC              INDIA                          1                 1       29    343
Birth       ki1000109-EE               PAKISTAN                       0                 0        2      2
Birth       ki1000109-EE               PAKISTAN                       0                 1        0      2
Birth       ki1000109-EE               PAKISTAN                       1                 0        0      2
Birth       ki1000109-EE               PAKISTAN                       1                 1        0      2
Birth       ki1000109-ResPak           PAKISTAN                       0                 0        5      6
Birth       ki1000109-ResPak           PAKISTAN                       0                 1        0      6
Birth       ki1000109-ResPak           PAKISTAN                       1                 0        1      6
Birth       ki1000109-ResPak           PAKISTAN                       1                 1        0      6
Birth       ki1101329-Keneba           GAMBIA                         0                 0     1373   1423
Birth       ki1101329-Keneba           GAMBIA                         0                 1       19   1423
Birth       ki1101329-Keneba           GAMBIA                         1                 0       22   1423
Birth       ki1101329-Keneba           GAMBIA                         1                 1        9   1423
Birth       ki1114097-CMIN             BANGLADESH                     0                 0        5      8
Birth       ki1114097-CMIN             BANGLADESH                     0                 1        0      8
Birth       ki1114097-CMIN             BANGLADESH                     1                 0        0      8
Birth       ki1114097-CMIN             BANGLADESH                     1                 1        3      8
Birth       ki1114097-CMIN             PERU                           0                 0       10     10
Birth       ki1114097-CMIN             PERU                           0                 1        0     10
Birth       ki1114097-CMIN             PERU                           1                 0        0     10
Birth       ki1114097-CMIN             PERU                           1                 1        0     10
Birth       ki1114097-CONTENT          PERU                           0                 0        2      2
Birth       ki1114097-CONTENT          PERU                           0                 1        0      2
Birth       ki1114097-CONTENT          PERU                           1                 0        0      2
Birth       ki1114097-CONTENT          PERU                           1                 1        0      2
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 0      230    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 1        4    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 0        3    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 1        4    241
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 0      208    209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 1        0    209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 0        0    209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 1        1    209
6 months    ki0047075b-MAL-ED          INDIA                          0                 0      212    236
6 months    ki0047075b-MAL-ED          INDIA                          0                 1        6    236
6 months    ki0047075b-MAL-ED          INDIA                          1                 0        6    236
6 months    ki0047075b-MAL-ED          INDIA                          1                 1       12    236
6 months    ki0047075b-MAL-ED          NEPAL                          0                 0      231    236
6 months    ki0047075b-MAL-ED          NEPAL                          0                 1        1    236
6 months    ki0047075b-MAL-ED          NEPAL                          1                 0        1    236
6 months    ki0047075b-MAL-ED          NEPAL                          1                 1        3    236
6 months    ki0047075b-MAL-ED          PERU                           0                 0      273    273
6 months    ki0047075b-MAL-ED          PERU                           0                 1        0    273
6 months    ki0047075b-MAL-ED          PERU                           1                 0        0    273
6 months    ki0047075b-MAL-ED          PERU                           1                 1        0    273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      247    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        5    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0        0    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        2    254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      246    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        1    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        0    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0    247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      293    365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 1       19    365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 0       26    365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 1       27    365
6 months    ki1000108-IRC              INDIA                          0                 0      325    408
6 months    ki1000108-IRC              INDIA                          0                 1       14    408
6 months    ki1000108-IRC              INDIA                          1                 0       29    408
6 months    ki1000108-IRC              INDIA                          1                 1       40    408
6 months    ki1000109-EE               PAKISTAN                       0                 0      640    752
6 months    ki1000109-EE               PAKISTAN                       0                 1       54    752
6 months    ki1000109-EE               PAKISTAN                       1                 0       14    752
6 months    ki1000109-EE               PAKISTAN                       1                 1       44    752
6 months    ki1000109-ResPak           PAKISTAN                       0                 0      196    235
6 months    ki1000109-ResPak           PAKISTAN                       0                 1       10    235
6 months    ki1000109-ResPak           PAKISTAN                       1                 0       13    235
6 months    ki1000109-ResPak           PAKISTAN                       1                 1       16    235
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 0      556    582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 1       13    582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0        2    582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1       11    582
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0     1928   2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1       49   2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0       13   2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1       38   2028
6 months    ki1101329-Keneba           GAMBIA                         0                 0     1914   2057
6 months    ki1101329-Keneba           GAMBIA                         0                 1       91   2057
6 months    ki1101329-Keneba           GAMBIA                         1                 0       22   2057
6 months    ki1101329-Keneba           GAMBIA                         1                 1       30   2057
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                 0      270    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                 1        0    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                 0        7    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                 1        3    280
6 months    ki1113344-GMS-Nepal        NEPAL                          0                 0      964   1126
6 months    ki1113344-GMS-Nepal        NEPAL                          0                 1       30   1126
6 months    ki1113344-GMS-Nepal        NEPAL                          1                 0       60   1126
6 months    ki1113344-GMS-Nepal        NEPAL                          1                 1       72   1126
6 months    ki1114097-CMIN             BANGLADESH                     0                 0      219    243
6 months    ki1114097-CMIN             BANGLADESH                     0                 1       13    243
6 months    ki1114097-CMIN             BANGLADESH                     1                 0        3    243
6 months    ki1114097-CMIN             BANGLADESH                     1                 1        8    243
6 months    ki1114097-CMIN             PERU                           0                 0      610    626
6 months    ki1114097-CMIN             PERU                           0                 1        3    626
6 months    ki1114097-CMIN             PERU                           1                 0        6    626
6 months    ki1114097-CMIN             PERU                           1                 1        7    626
6 months    ki1114097-CONTENT          PERU                           0                 0      215    215
6 months    ki1114097-CONTENT          PERU                           0                 1        0    215
6 months    ki1114097-CONTENT          PERU                           1                 0        0    215
6 months    ki1114097-CONTENT          PERU                           1                 1        0    215
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 0      189    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 1       17    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0        2    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1        4    212
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 0      166    169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 1        2    169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0        0    169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        1    169
24 months   ki0047075b-MAL-ED          INDIA                          0                 0      191    227
24 months   ki0047075b-MAL-ED          INDIA                          0                 1       18    227
24 months   ki0047075b-MAL-ED          INDIA                          1                 0        9    227
24 months   ki0047075b-MAL-ED          INDIA                          1                 1        9    227
24 months   ki0047075b-MAL-ED          NEPAL                          0                 0      219    228
24 months   ki0047075b-MAL-ED          NEPAL                          0                 1        5    228
24 months   ki0047075b-MAL-ED          NEPAL                          1                 0        4    228
24 months   ki0047075b-MAL-ED          NEPAL                          1                 1        0    228
24 months   ki0047075b-MAL-ED          PERU                           0                 0      198    201
24 months   ki0047075b-MAL-ED          PERU                           0                 1        3    201
24 months   ki0047075b-MAL-ED          PERU                           1                 0        0    201
24 months   ki0047075b-MAL-ED          PERU                           1                 1        0    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      236    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        0    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0        1    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        1    238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      210    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        4    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        0    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        0    214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      299    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 1       13    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 0       46    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 1       10    368
24 months   ki1000108-IRC              INDIA                          0                 0      320    409
24 months   ki1000108-IRC              INDIA                          0                 1       19    409
24 months   ki1000108-IRC              INDIA                          1                 0       58    409
24 months   ki1000108-IRC              INDIA                          1                 1       12    409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 0      507    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 1       57    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0        6    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1        8    578
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0        6      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1        0      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0        0      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        0      6
24 months   ki1101329-Keneba           GAMBIA                         0                 0     1369   1565
24 months   ki1101329-Keneba           GAMBIA                         0                 1      154   1565
24 months   ki1101329-Keneba           GAMBIA                         1                 0       25   1565
24 months   ki1101329-Keneba           GAMBIA                         1                 1       17   1565
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 0      742    996
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 1      138    996
24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0       72    996
24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1       44    996
24 months   ki1114097-CMIN             BANGLADESH                     0                 0      211    243
24 months   ki1114097-CMIN             BANGLADESH                     0                 1       22    243
24 months   ki1114097-CMIN             BANGLADESH                     1                 0        7    243
24 months   ki1114097-CMIN             BANGLADESH                     1                 1        3    243
24 months   ki1114097-CMIN             PERU                           0                 0      227    234
24 months   ki1114097-CMIN             PERU                           0                 1        1    234
24 months   ki1114097-CMIN             PERU                           1                 0        6    234
24 months   ki1114097-CMIN             PERU                           1                 1        0    234
24 months   ki1114097-CONTENT          PERU                           0                 0      164    164
24 months   ki1114097-CONTENT          PERU                           0                 1        0    164
24 months   ki1114097-CONTENT          PERU                           1                 0        0    164
24 months   ki1114097-CONTENT          PERU                           1                 1        0    164


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/30a6a903-065f-42c3-8b85-e7d2eea3dcdf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/30a6a903-065f-42c3-8b85-e7d2eea3dcdf/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/30a6a903-065f-42c3-8b85-e7d2eea3dcdf/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/30a6a903-065f-42c3-8b85-e7d2eea3dcdf/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                0.1223404   0.0753846   0.1692963
Birth       ki0047075b-MAL-ED          INDIA                          1                    NA                0.6666667   0.4275177   0.9058156
Birth       ki1000108-IRC              INDIA                          0                    NA                0.2195122   0.1715550   0.2674694
Birth       ki1000108-IRC              INDIA                          1                    NA                0.5178571   0.3867939   0.6489204
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                0.0136494   0.0075519   0.0197470
Birth       ki1101329-Keneba           GAMBIA                         1                    NA                0.2903226   0.1304806   0.4501645
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.0275229   0.0057594   0.0492864
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                0.6666667   0.4484300   0.8849033
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0608974   0.0343255   0.0874693
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.5094340   0.3746623   0.6442056
6 months    ki1000108-IRC              INDIA                          0                    NA                0.0412979   0.0200906   0.0625053
6 months    ki1000108-IRC              INDIA                          1                    NA                0.5797101   0.4631000   0.6963203
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.0778098   0.0495877   0.1060319
6 months    ki1000109-EE               PAKISTAN                       1                    NA                0.7586207   0.6026691   0.9145723
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.0485437   0.0191333   0.0779541
6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                0.5517241   0.3703360   0.7331122
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0247850   0.0179302   0.0316399
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.7450980   0.6254616   0.8647345
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.0453865   0.0362733   0.0544998
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.5769231   0.4426093   0.7112369
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0301811   0.0151265   0.0452357
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5454545   0.4252198   0.6656893
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.0861244   0.0480055   0.1242433
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.5000000   0.2685056   0.7314944
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0416667   0.0194635   0.0638698
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1785714   0.0781247   0.2790182
24 months   ki1000108-IRC              INDIA                          0                    NA                0.0560472   0.0315322   0.0805622
24 months   ki1000108-IRC              INDIA                          1                    NA                0.1714286   0.0830316   0.2598255
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1010638   0.0761668   0.1259608
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.5714286   0.3119792   0.8308780
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.1011162   0.0859702   0.1162623
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.4047619   0.2562684   0.5532554
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1568182   0.1228074   0.1908290
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.3793103   0.2543117   0.5043090


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1625616   0.1116803   0.2134428
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.2682216   0.2212677   0.3151755
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                0.0196767   0.0124580   0.0268954
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.0762712   0.0423347   0.1102077
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1260274   0.0919333   0.1601215
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1323529   0.0994307   0.1652752
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.1303191   0.0962457   0.1643926
6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1106383   0.0704470   0.1508296
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0428994   0.0340782   0.0517206
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0588235   0.0486529   0.0689942
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0905861   0.0668565   0.1143158
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1189427   0.0767376   0.1611478
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0625000   0.0377349   0.0872651
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.0757946   0.0501131   0.1014762
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1124567   0.0866788   0.1382347
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1092652   0.0938039   0.1247264
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1827309   0.1487560   0.2167058


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000    1.000000    1.000000
Birth       ki0047075b-MAL-ED          INDIA                          1                    0                  5.449275    3.222413    9.215020
Birth       ki1000108-IRC              INDIA                          0                    0                  1.000000    1.000000    1.000000
Birth       ki1000108-IRC              INDIA                          1                    0                  2.359127    1.688688    3.295743
Birth       ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.000000    1.000000
Birth       ki1101329-Keneba           GAMBIA                         1                    0                 21.269949   10.467670   43.219813
6 months    ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000    1.000000    1.000000
6 months    ki0047075b-MAL-ED          INDIA                          1                    0                 24.222222   10.292833   57.002389
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.000000    1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  8.365442    5.022038   13.934706
6 months    ki1000108-IRC              INDIA                          0                    0                  1.000000    1.000000    1.000000
6 months    ki1000108-IRC              INDIA                          1                    0                 14.037267    8.086552   24.366980
6 months    ki1000109-EE               PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                  9.749681    6.425808   14.792890
6 months    ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
6 months    ki1000109-ResPak           PAKISTAN                       1                    0                 11.365517    5.704612   22.643957
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000    1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 30.062425   21.834142   41.391568
6 months    ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.000000    1.000000
6 months    ki1101329-Keneba           GAMBIA                         1                    0                 12.711327    9.346998   17.286601
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000    1.000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 18.072727   10.475724   31.179083
24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000    1.000000    1.000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    0                  5.805556    3.059658   11.015766
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                  1.000000    1.000000    1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                  4.285714    1.974777    9.300973
24 months   ki1000108-IRC              INDIA                          0                    0                  1.000000    1.000000    1.000000
24 months   ki1000108-IRC              INDIA                          1                    0                  3.058647    1.555502    6.014342
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  5.654135    3.373074    9.477778
24 months   ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.000000    1.000000
24 months   ki1101329-Keneba           GAMBIA                         1                    0                  4.002937    2.693285    5.949429
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000    1.000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  2.418791    1.630296    3.588641


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                0.0402212   0.0135774   0.0668649
Birth       ki1000108-IRC              INDIA                          0                    NA                0.0487094   0.0231015   0.0743173
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                0.0060273   0.0019592   0.0100955
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.0487483   0.0213569   0.0761396
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0651300   0.0394125   0.0908474
6 months    ki1000108-IRC              INDIA                          0                    NA                0.0910550   0.0630150   0.1190950
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.0525094   0.0304327   0.0745860
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.0620946   0.0310487   0.0931406
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0181144   0.0123535   0.0238752
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.0134370   0.0084783   0.0183957
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0604051   0.0406669   0.0801432
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.0328183   0.0091823   0.0564543
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.0208333   0.0043904   0.0372763
24 months   ki1000108-IRC              INDIA                          0                    NA                0.0197474   0.0034909   0.0360039
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0113929   0.0027518   0.0200340
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.0081490   0.0034627   0.0128352
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0259127   0.0095726   0.0422529


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          INDIA                          0                    NA                0.2474210   0.0809477   0.3837401
Birth       ki1000108-IRC              INDIA                          0                    NA                0.1816013   0.0827398   0.2698075
Birth       ki1101329-Keneba           GAMBIA                         0                    NA                0.3063167   0.1078400   0.4606388
6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.6391437   0.3173553   0.8092459
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.5167921   0.3305343   0.6512295
6 months    ki1000108-IRC              INDIA                          0                    NA                0.6879712   0.5181385   0.7979461
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.4029289   0.2452208   0.5276845
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.5612397   0.3011537   0.7245309
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4222525   0.3079077   0.5177056
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.2284289   0.1491367   0.3003319
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.6668245   0.4961500   0.7796846
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.2759171   0.0737954   0.4339306
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.3333333   0.0573857   0.5284981
24 months   ki1000108-IRC              INDIA                          0                    NA                0.2605386   0.0336615   0.4341495
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1013093   0.0240909   0.1724179
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.0745796   0.0317447   0.1155196
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1418082   0.0502526   0.2245378
