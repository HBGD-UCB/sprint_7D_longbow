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

**Intervention Variable:** pers_wast

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        pers_wast    stunted   n_cell      n
----------  -------------------------  -----------------------------  ----------  --------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  0      203    255
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  1       43    255
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  0        7    255
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  1        2    255
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  0      170    191
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  1       21    191
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  0        0    191
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  1        0    191
Birth       ki0047075b-MAL-ED          INDIA                          0                  0      159    206
Birth       ki0047075b-MAL-ED          INDIA                          0                  1       32    206
Birth       ki0047075b-MAL-ED          INDIA                          1                  0       14    206
Birth       ki0047075b-MAL-ED          INDIA                          1                  1        1    206
Birth       ki0047075b-MAL-ED          NEPAL                          0                  0      152    173
Birth       ki0047075b-MAL-ED          NEPAL                          0                  1       18    173
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0        3    173
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1        0    173
Birth       ki0047075b-MAL-ED          PERU                           0                  0      253    286
Birth       ki0047075b-MAL-ED          PERU                           0                  1       33    286
Birth       ki0047075b-MAL-ED          PERU                           1                  0        0    286
Birth       ki0047075b-MAL-ED          PERU                           1                  1        0    286
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      228    261
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       27    261
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        6    261
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0    261
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      105    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       18    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        0    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0    123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       67     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  1       11     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        7     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        5     90
Birth       ki1000108-IRC              INDIA                          0                  0      279    388
Birth       ki1000108-IRC              INDIA                          0                  1       40    388
Birth       ki1000108-IRC              INDIA                          1                  0       64    388
Birth       ki1000108-IRC              INDIA                          1                  1        5    388
Birth       ki1000109-EE               PAKISTAN                       0                  0        2      4
Birth       ki1000109-EE               PAKISTAN                       0                  1        2      4
Birth       ki1000109-EE               PAKISTAN                       1                  0        0      4
Birth       ki1000109-EE               PAKISTAN                       1                  1        0      4
Birth       ki1000109-ResPak           PAKISTAN                       0                  0        4      7
Birth       ki1000109-ResPak           PAKISTAN                       0                  1        2      7
Birth       ki1000109-ResPak           PAKISTAN                       1                  0        1      7
Birth       ki1000109-ResPak           PAKISTAN                       1                  1        0      7
Birth       ki1101329-Keneba           GAMBIA                         0                  0     1427   1541
Birth       ki1101329-Keneba           GAMBIA                         0                  1       80   1541
Birth       ki1101329-Keneba           GAMBIA                         1                  0       32   1541
Birth       ki1101329-Keneba           GAMBIA                         1                  1        2   1541
Birth       ki1114097-CMIN             BANGLADESH                     0                  0        5      8
Birth       ki1114097-CMIN             BANGLADESH                     0                  1        0      8
Birth       ki1114097-CMIN             BANGLADESH                     1                  0        2      8
Birth       ki1114097-CMIN             BANGLADESH                     1                  1        1      8
Birth       ki1114097-CMIN             PERU                           0                  0       10     10
Birth       ki1114097-CMIN             PERU                           0                  1        0     10
Birth       ki1114097-CMIN             PERU                           1                  0        0     10
Birth       ki1114097-CMIN             PERU                           1                  1        0     10
Birth       ki1114097-CONTENT          PERU                           0                  0        2      2
Birth       ki1114097-CONTENT          PERU                           0                  1        0      2
Birth       ki1114097-CONTENT          PERU                           1                  0        0      2
Birth       ki1114097-CONTENT          PERU                           1                  1        0      2
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0      190    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1       44    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0        6    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1        1    241
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      202    209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        6    209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0        1    209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        0    209
6 months    ki0047075b-MAL-ED          INDIA                          0                  0      176    236
6 months    ki0047075b-MAL-ED          INDIA                          0                  1       42    236
6 months    ki0047075b-MAL-ED          INDIA                          1                  0       14    236
6 months    ki0047075b-MAL-ED          INDIA                          1                  1        4    236
6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      220    236
6 months    ki0047075b-MAL-ED          NEPAL                          0                  1       12    236
6 months    ki0047075b-MAL-ED          NEPAL                          1                  0        4    236
6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        0    236
6 months    ki0047075b-MAL-ED          PERU                           0                  0      213    273
6 months    ki0047075b-MAL-ED          PERU                           0                  1       60    273
6 months    ki0047075b-MAL-ED          PERU                           1                  0        0    273
6 months    ki0047075b-MAL-ED          PERU                           1                  1        0    273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      202    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       50    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        2    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0    254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      189    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1       58    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        0    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0    247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      219    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  1       94    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       36    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1       17    366
6 months    ki1000108-IRC              INDIA                          0                  0      246    407
6 months    ki1000108-IRC              INDIA                          0                  1       91    407
6 months    ki1000108-IRC              INDIA                          1                  0       61    407
6 months    ki1000108-IRC              INDIA                          1                  1        9    407
6 months    ki1000109-EE               PAKISTAN                       0                  0      338    744
6 months    ki1000109-EE               PAKISTAN                       0                  1      350    744
6 months    ki1000109-EE               PAKISTAN                       1                  0       20    744
6 months    ki1000109-EE               PAKISTAN                       1                  1       36    744
6 months    ki1000109-ResPak           PAKISTAN                       0                  0      128    235
6 months    ki1000109-ResPak           PAKISTAN                       0                  1       78    235
6 months    ki1000109-ResPak           PAKISTAN                       1                  0       24    235
6 months    ki1000109-ResPak           PAKISTAN                       1                  1        5    235
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  0      480    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  1       89    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0        9    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1        5    583
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0     1785   2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1      193   2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0       47   2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1        4   2029
6 months    ki1101329-Keneba           GAMBIA                         0                  0     1735   2057
6 months    ki1101329-Keneba           GAMBIA                         0                  1      269   2057
6 months    ki1101329-Keneba           GAMBIA                         1                  0       30   2057
6 months    ki1101329-Keneba           GAMBIA                         1                  1       23   2057
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                  0      192    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                  1       78    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                  0        2    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                  1        8    280
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0      782   1126
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1      212   1126
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      106   1126
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1       26   1126
6 months    ki1114097-CMIN             BANGLADESH                     0                  0      146    243
6 months    ki1114097-CMIN             BANGLADESH                     0                  1       86    243
6 months    ki1114097-CMIN             BANGLADESH                     1                  0        4    243
6 months    ki1114097-CMIN             BANGLADESH                     1                  1        7    243
6 months    ki1114097-CMIN             PERU                           0                  0      578    627
6 months    ki1114097-CMIN             PERU                           0                  1       36    627
6 months    ki1114097-CMIN             PERU                           1                  0        8    627
6 months    ki1114097-CMIN             PERU                           1                  1        5    627
6 months    ki1114097-CONTENT          PERU                           0                  0      196    215
6 months    ki1114097-CONTENT          PERU                           0                  1       19    215
6 months    ki1114097-CONTENT          PERU                           1                  0        0    215
6 months    ki1114097-CONTENT          PERU                           1                  1        0    215
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0      109    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1       97    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0        5    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1        1    212
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      162    169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        6    169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0        1    169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        0    169
24 months   ki0047075b-MAL-ED          INDIA                          0                  0      118    227
24 months   ki0047075b-MAL-ED          INDIA                          0                  1       91    227
24 months   ki0047075b-MAL-ED          INDIA                          1                  0       14    227
24 months   ki0047075b-MAL-ED          INDIA                          1                  1        4    227
24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      175    228
24 months   ki0047075b-MAL-ED          NEPAL                          0                  1       49    228
24 months   ki0047075b-MAL-ED          NEPAL                          1                  0        4    228
24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        0    228
24 months   ki0047075b-MAL-ED          PERU                           0                  0      127    201
24 months   ki0047075b-MAL-ED          PERU                           0                  1       74    201
24 months   ki0047075b-MAL-ED          PERU                           1                  0        0    201
24 months   ki0047075b-MAL-ED          PERU                           1                  1        0    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      152    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1       84    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        2    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0    238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0       61    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1      153    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        0    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0    214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       93    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1      219    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       12    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1       44    368
24 months   ki1000108-IRC              INDIA                          0                  0      192    409
24 months   ki1000108-IRC              INDIA                          0                  1      147    409
24 months   ki1000108-IRC              INDIA                          1                  0       47    409
24 months   ki1000108-IRC              INDIA                          1                  1       23    409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      377    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1      187    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0       10    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1        3    577
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0        5      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1        1      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0        0      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1        0      6
24 months   ki1101329-Keneba           GAMBIA                         0                  0     1026   1564
24 months   ki1101329-Keneba           GAMBIA                         0                  1      496   1564
24 months   ki1101329-Keneba           GAMBIA                         1                  0       19   1564
24 months   ki1101329-Keneba           GAMBIA                         1                  1       23   1564
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0      492    998
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1      388    998
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0       60    998
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1       58    998
24 months   ki1114097-CMIN             BANGLADESH                     0                  0       75    242
24 months   ki1114097-CMIN             BANGLADESH                     0                  1      158    242
24 months   ki1114097-CMIN             BANGLADESH                     1                  0        2    242
24 months   ki1114097-CMIN             BANGLADESH                     1                  1        7    242
24 months   ki1114097-CMIN             PERU                           0                  0      167    234
24 months   ki1114097-CMIN             PERU                           0                  1       61    234
24 months   ki1114097-CMIN             PERU                           1                  0        3    234
24 months   ki1114097-CMIN             PERU                           1                  1        3    234
24 months   ki1114097-CONTENT          PERU                           0                  0      143    164
24 months   ki1114097-CONTENT          PERU                           0                  1       21    164
24 months   ki1114097-CONTENT          PERU                           1                  0        0    164
24 months   ki1114097-CONTENT          PERU                           1                  1        0    164


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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
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
![](/tmp/72b1cc6b-cac6-4a73-81cf-fb9ecaaa0c9f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/72b1cc6b-cac6-4a73-81cf-fb9ecaaa0c9f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/72b1cc6b-cac6-4a73-81cf-fb9ecaaa0c9f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/72b1cc6b-cac6-4a73-81cf-fb9ecaaa0c9f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.1410256   0.0633533   0.2186979
Birth       ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.4166667   0.1361643   0.6971690
Birth       ki1000108-IRC              INDIA        0                    NA                0.1253918   0.0890042   0.1617795
Birth       ki1000108-IRC              INDIA        1                    NA                0.0724638   0.0112132   0.1337143
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.3003195   0.2494671   0.3511719
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.3207547   0.1949189   0.4465905
6 months    ki1000108-IRC              INDIA        0                    NA                0.2700297   0.2225699   0.3174894
6 months    ki1000108-IRC              INDIA        1                    NA                0.1285714   0.0500621   0.2070808
6 months    ki1000109-EE               PAKISTAN     0                    NA                0.5087209   0.4558207   0.5616211
6 months    ki1000109-EE               PAKISTAN     1                    NA                0.6428571   0.4651390   0.8205753
6 months    ki1000109-ResPak           PAKISTAN     0                    NA                0.3786408   0.3122626   0.4450190
6 months    ki1000109-ResPak           PAKISTAN     1                    NA                0.1724138   0.0346396   0.3101879
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.1564148   0.1265425   0.1862870
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.3571429   0.1059339   0.6083518
6 months    ki1101329-Keneba           GAMBIA       0                    NA                0.1342315   0.1193025   0.1491606
6 months    ki1101329-Keneba           GAMBIA       1                    NA                0.4339623   0.3004982   0.5674264
6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                0.2132797   0.1772350   0.2493243
6 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                0.1969697   0.1009351   0.2930043
6 months    ki1114097-CMIN             PERU         0                    NA                0.0586319   0.0400343   0.0772295
6 months    ki1114097-CMIN             PERU         1                    NA                0.3846154   0.1199424   0.6492884
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.7019231   0.6510989   0.7527473
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.7857143   0.6780990   0.8933296
24 months   ki1000108-IRC              INDIA        0                    NA                0.4336283   0.3808094   0.4864472
24 months   ki1000108-IRC              INDIA        1                    NA                0.3285714   0.2184060   0.4387369
24 months   ki1101329-Keneba           GAMBIA       0                    NA                0.3258870   0.3023322   0.3494418
24 months   ki1101329-Keneba           GAMBIA       1                    NA                0.5476190   0.3970437   0.6981944
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.4409091   0.3944711   0.4873470
24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.4915254   0.3638329   0.6192179


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.1777778   0.0983474   0.2572081
Birth       ki1000108-IRC              INDIA        NA                   NA                0.1159794   0.0840777   0.1478811
6 months    ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.3032787   0.2561210   0.3504363
6 months    ki1000108-IRC              INDIA        NA                   NA                0.2457002   0.2038248   0.2875757
6 months    ki1000109-EE               PAKISTAN     NA                   NA                0.5188172   0.4679751   0.5696593
6 months    ki1000109-ResPak           PAKISTAN     NA                   NA                0.3531915   0.2919518   0.4144312
6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1612350   0.1313580   0.1911120
6 months    ki1101329-Keneba           GAMBIA       NA                   NA                0.1419543   0.1268686   0.1570400
6 months    ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.2113677   0.1776128   0.2451225
6 months    ki1114097-CMIN             PERU         NA                   NA                0.0653907   0.0460250   0.0847565
24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.7146739   0.6684741   0.7608737
24 months   ki1000108-IRC              INDIA        NA                   NA                0.4156479   0.3678270   0.4634689
24 months   ki1101329-Keneba           GAMBIA       NA                   NA                0.3318414   0.3084975   0.3551853
24 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.4468938   0.4032281   0.4905594


### Parameter: RR


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000    1.000000
Birth       ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 2.9545455   1.2380602    7.050820
Birth       ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000    1.000000
Birth       ki1000108-IRC              INDIA        1                    0                 0.5778986   0.2364447    1.412452
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 1.0680450   0.6966555    1.637423
6 months    ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1000108-IRC              INDIA        1                    0                 0.4761381   0.2522167    0.898860
6 months    ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1000109-EE               PAKISTAN     1                    0                 1.2636735   0.9405053    1.697886
6 months    ki1000109-ResPak           PAKISTAN     0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1000109-ResPak           PAKISTAN     1                    0                 0.4553492   0.2009329    1.031901
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    0                 2.2833066   1.1016106    4.732606
6 months    ki1101329-Keneba           GAMBIA       0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1101329-Keneba           GAMBIA       1                    0                 3.2329382   2.3311258    4.483623
6 months    ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1113344-GMS-Nepal        NEPAL        1                    0                 0.9235277   0.5512457    1.547229
6 months    ki1114097-CMIN             PERU         0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1114097-CMIN             PERU         1                    0                 6.5598291   3.0747702   13.994983
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000    1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 1.1193738   0.9587193    1.306949
24 months   ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000    1.000000
24 months   ki1000108-IRC              INDIA        1                    0                 0.7577259   0.5303809    1.082521
24 months   ki1101329-Keneba           GAMBIA       0                    0                 1.0000000   1.0000000    1.000000
24 months   ki1101329-Keneba           GAMBIA       1                    0                 1.6803955   1.2645602    2.232973
24 months   ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000    1.000000
24 months   ki1113344-GMS-Nepal        NEPAL        1                    0                 1.1147999   0.8422728    1.475506


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.0367521   -0.0066643    0.0801686
Birth       ki1000108-IRC              INDIA        0                    NA                -0.0094125   -0.0222416    0.0034166
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.0029592   -0.0167085    0.0226269
6 months    ki1000108-IRC              INDIA        0                    NA                -0.0243294   -0.0409402   -0.0077187
6 months    ki1000109-EE               PAKISTAN     0                    NA                 0.0100963   -0.0043175    0.0245100
6 months    ki1000109-ResPak           PAKISTAN     0                    NA                -0.0254493   -0.0462264   -0.0046721
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0048202   -0.0017477    0.0113882
6 months    ki1101329-Keneba           GAMBIA       0                    NA                 0.0077228    0.0036995    0.0117460
6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0019120   -0.0139447    0.0101207
6 months    ki1114097-CMIN             PERU         0                    NA                 0.0067588    0.0001632    0.0133545
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.0127508   -0.0056198    0.0311214
24 months   ki1000108-IRC              INDIA        0                    NA                -0.0179804   -0.0392398    0.0032790
24 months   ki1101329-Keneba           GAMBIA       0                    NA                 0.0059544    0.0014926    0.0104163
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0059847   -0.0101446    0.0221140


### Parameter: PAF


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.2067308   -0.0633741    0.4082270
Birth       ki1000108-IRC              INDIA        0                    NA                -0.0811564   -0.1958293    0.0225200
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.0097574   -0.0572607    0.0725273
6 months    ki1000108-IRC              INDIA        0                    NA                -0.0990208   -0.1681104   -0.0340176
6 months    ki1000109-EE               PAKISTAN     0                    NA                 0.0194602   -0.0087940    0.0469230
6 months    ki1000109-ResPak           PAKISTAN     0                    NA                -0.0720552   -0.1327650   -0.0145991
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0298957   -0.0114600    0.0695604
6 months    ki1101329-Keneba           GAMBIA       0                    NA                 0.0544032    0.0260526    0.0819285
6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                -0.0090459   -0.0676014    0.0462981
6 months    ki1114097-CMIN             PERU         0                    NA                 0.1033606    0.0012333    0.1950450
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.0178415   -0.0083067    0.0433115
24 months   ki1000108-IRC              INDIA        0                    NA                -0.0432587   -0.0958039    0.0067668
24 months   ki1101329-Keneba           GAMBIA       0                    NA                 0.0179436    0.0044068    0.0312964
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0133918   -0.0233832    0.0488452
