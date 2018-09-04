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

**Intervention Variable:** anywast06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        anywast06    sstunted   n_cell      n
----------  -------------------------  -----------------------------  ----------  ---------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   0      191    255
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   1        7    255
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   0       55    255
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   1        2    255
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   0      170    191
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   1        8    191
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   0       13    191
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   1        0    191
Birth       ki0047075b-MAL-ED          INDIA                          0                   0      139    206
Birth       ki0047075b-MAL-ED          INDIA                          0                   1        5    206
Birth       ki0047075b-MAL-ED          INDIA                          1                   0       60    206
Birth       ki0047075b-MAL-ED          INDIA                          1                   1        2    206
Birth       ki0047075b-MAL-ED          NEPAL                          0                   0      137    173
Birth       ki0047075b-MAL-ED          NEPAL                          0                   1        4    173
Birth       ki0047075b-MAL-ED          NEPAL                          1                   0       30    173
Birth       ki0047075b-MAL-ED          NEPAL                          1                   1        2    173
Birth       ki0047075b-MAL-ED          PERU                           0                   0      268    286
Birth       ki0047075b-MAL-ED          PERU                           0                   1        7    286
Birth       ki0047075b-MAL-ED          PERU                           1                   0       11    286
Birth       ki0047075b-MAL-ED          PERU                           1                   1        0    286
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      229    261
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        1    261
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       31    261
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0    261
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      111    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        6    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        6    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0    123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                   0       36     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        0     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       51     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        3     90
Birth       ki1000108-IRC              INDIA                          0                   0      155    388
Birth       ki1000108-IRC              INDIA                          0                   1        9    388
Birth       ki1000108-IRC              INDIA                          1                   0      217    388
Birth       ki1000108-IRC              INDIA                          1                   1        7    388
Birth       ki1000109-EE               PAKISTAN                       0                   0        0      4
Birth       ki1000109-EE               PAKISTAN                       0                   1        0      4
Birth       ki1000109-EE               PAKISTAN                       1                   0        4      4
Birth       ki1000109-EE               PAKISTAN                       1                   1        0      4
Birth       ki1000109-ResPak           PAKISTAN                       0                   0        6      7
Birth       ki1000109-ResPak           PAKISTAN                       0                   1        0      7
Birth       ki1000109-ResPak           PAKISTAN                       1                   0        1      7
Birth       ki1000109-ResPak           PAKISTAN                       1                   1        0      7
Birth       ki1101329-Keneba           GAMBIA                         0                   0     1263   1541
Birth       ki1101329-Keneba           GAMBIA                         0                   1       24   1541
Birth       ki1101329-Keneba           GAMBIA                         1                   0      249   1541
Birth       ki1101329-Keneba           GAMBIA                         1                   1        5   1541
Birth       ki1114097-CMIN             BANGLADESH                     0                   0        5      8
Birth       ki1114097-CMIN             BANGLADESH                     0                   1        0      8
Birth       ki1114097-CMIN             BANGLADESH                     1                   0        3      8
Birth       ki1114097-CMIN             BANGLADESH                     1                   1        0      8
Birth       ki1114097-CMIN             PERU                           0                   0       10     10
Birth       ki1114097-CMIN             PERU                           0                   1        0     10
Birth       ki1114097-CMIN             PERU                           1                   0        0     10
Birth       ki1114097-CMIN             PERU                           1                   1        0     10
Birth       ki1114097-CONTENT          PERU                           0                   0        2      2
Birth       ki1114097-CONTENT          PERU                           0                   1        0      2
Birth       ki1114097-CONTENT          PERU                           1                   0        0      2
Birth       ki1114097-CONTENT          PERU                           1                   1        0      2
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   0      180    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   1        4    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0       53    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1        4    241
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   0      195    209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   1        0    209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0       14    209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        0    209
6 months    ki0047075b-MAL-ED          INDIA                          0                   0      157    236
6 months    ki0047075b-MAL-ED          INDIA                          0                   1        5    236
6 months    ki0047075b-MAL-ED          INDIA                          1                   0       70    236
6 months    ki0047075b-MAL-ED          INDIA                          1                   1        4    236
6 months    ki0047075b-MAL-ED          NEPAL                          0                   0      193    236
6 months    ki0047075b-MAL-ED          NEPAL                          0                   1        0    236
6 months    ki0047075b-MAL-ED          NEPAL                          1                   0       42    236
6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        1    236
6 months    ki0047075b-MAL-ED          PERU                           0                   0      252    273
6 months    ki0047075b-MAL-ED          PERU                           0                   1       11    273
6 months    ki0047075b-MAL-ED          PERU                           1                   0        9    273
6 months    ki0047075b-MAL-ED          PERU                           1                   1        1    273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      221    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        5    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       27    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        1    254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      222    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       14    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0       11    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0    247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   0      152    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   1       22    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   0      172    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   1       20    366
6 months    ki1000108-IRC              INDIA                          0                   0      148    407
6 months    ki1000108-IRC              INDIA                          0                   1       17    407
6 months    ki1000108-IRC              INDIA                          1                   0      230    407
6 months    ki1000108-IRC              INDIA                          1                   1       12    407
6 months    ki1000109-EE               PAKISTAN                       0                   0      412    744
6 months    ki1000109-EE               PAKISTAN                       0                   1      128    744
6 months    ki1000109-EE               PAKISTAN                       1                   0      144    744
6 months    ki1000109-EE               PAKISTAN                       1                   1       60    744
6 months    ki1000109-ResPak           PAKISTAN                       0                   0      111    235
6 months    ki1000109-ResPak           PAKISTAN                       0                   1       29    235
6 months    ki1000109-ResPak           PAKISTAN                       1                   0       80    235
6 months    ki1000109-ResPak           PAKISTAN                       1                   1       15    235
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   0      428    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   1        7    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0      141    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1        7    583
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0     1713   2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1       15   2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0      297   2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        4   2029
6 months    ki1101329-Keneba           GAMBIA                         0                   0     1659   2057
6 months    ki1101329-Keneba           GAMBIA                         0                   1       36   2057
6 months    ki1101329-Keneba           GAMBIA                         1                   0      331   2057
6 months    ki1101329-Keneba           GAMBIA                         1                   1       31   2057
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                   0      247    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                   1       23    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                   0        6    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                   1        4    280
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   0      760   1126
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   1       22   1126
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0      326   1126
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       18   1126
6 months    ki1114097-CMIN             BANGLADESH                     0                   0      179    243
6 months    ki1114097-CMIN             BANGLADESH                     0                   1       22    243
6 months    ki1114097-CMIN             BANGLADESH                     1                   0       36    243
6 months    ki1114097-CMIN             BANGLADESH                     1                   1        6    243
6 months    ki1114097-CMIN             PERU                           0                   0      577    627
6 months    ki1114097-CMIN             PERU                           0                   1        4    627
6 months    ki1114097-CMIN             PERU                           1                   0       43    627
6 months    ki1114097-CMIN             PERU                           1                   1        3    627
6 months    ki1114097-CONTENT          PERU                           0                   0      207    215
6 months    ki1114097-CONTENT          PERU                           0                   1        4    215
6 months    ki1114097-CONTENT          PERU                           1                   0        4    215
6 months    ki1114097-CONTENT          PERU                           1                   1        0    215
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0      145    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1       18    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0       41    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1        8    212
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0      157    169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        0    169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0       11    169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        1    169
24 months   ki0047075b-MAL-ED          INDIA                          0                   0      133    227
24 months   ki0047075b-MAL-ED          INDIA                          0                   1       21    227
24 months   ki0047075b-MAL-ED          INDIA                          1                   0       66    227
24 months   ki0047075b-MAL-ED          INDIA                          1                   1        7    227
24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      183    228
24 months   ki0047075b-MAL-ED          NEPAL                          0                   1        4    228
24 months   ki0047075b-MAL-ED          NEPAL                          1                   0       38    228
24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        3    228
24 months   ki0047075b-MAL-ED          PERU                           0                   0      179    201
24 months   ki0047075b-MAL-ED          PERU                           0                   1       14    201
24 months   ki0047075b-MAL-ED          PERU                           1                   0        7    201
24 months   ki0047075b-MAL-ED          PERU                           1                   1        1    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      192    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       22    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0       20    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        4    238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      138    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       65    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        7    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        4    214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   0      125    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   1       49    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0      123    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1       71    368
24 months   ki1000108-IRC              INDIA                          0                   0      150    409
24 months   ki1000108-IRC              INDIA                          0                   1       16    409
24 months   ki1000108-IRC              INDIA                          1                   0      218    409
24 months   ki1000108-IRC              INDIA                          1                   1       25    409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   0      391    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   1       40    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0      137    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1        9    577
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0        4      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1        1      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0        1      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        0      6
24 months   ki1101329-Keneba           GAMBIA                         0                   0     1203   1564
24 months   ki1101329-Keneba           GAMBIA                         0                   1       94   1564
24 months   ki1101329-Keneba           GAMBIA                         1                   0      235   1564
24 months   ki1101329-Keneba           GAMBIA                         1                   1       32   1564
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0      632    998
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1       70    998
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0      258    998
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       38    998
24 months   ki1114097-CMIN             BANGLADESH                     0                   0      147    242
24 months   ki1114097-CMIN             BANGLADESH                     0                   1       53    242
24 months   ki1114097-CMIN             BANGLADESH                     1                   0       27    242
24 months   ki1114097-CMIN             BANGLADESH                     1                   1       15    242
24 months   ki1114097-CMIN             PERU                           0                   0      209    234
24 months   ki1114097-CMIN             PERU                           0                   1       11    234
24 months   ki1114097-CMIN             PERU                           1                   0       12    234
24 months   ki1114097-CMIN             PERU                           1                   1        2    234
24 months   ki1114097-CONTENT          PERU                           0                   0      158    164
24 months   ki1114097-CONTENT          PERU                           0                   1        3    164
24 months   ki1114097-CONTENT          PERU                           1                   0        3    164
24 months   ki1114097-CONTENT          PERU                           1                   1        0    164


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
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
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
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/c3f2d4f2-1fa0-4225-82e9-828c9a9fc995/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c3f2d4f2-1fa0-4225-82e9-828c9a9fc995/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c3f2d4f2-1fa0-4225-82e9-828c9a9fc995/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c3f2d4f2-1fa0-4225-82e9-828c9a9fc995/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA        0                    NA                0.0548780   0.0199777   0.0897784
Birth       ki1000108-IRC              INDIA        1                    NA                0.0312500   0.0084353   0.0540647
Birth       ki1101329-Keneba           GAMBIA       0                    NA                0.0186480   0.0112549   0.0260412
Birth       ki1101329-Keneba           GAMBIA       1                    NA                0.0196850   0.0025958   0.0367743
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.1264368   0.0769885   0.1758851
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.1041667   0.0608984   0.1474349
6 months    ki1000108-IRC              INDIA        0                    NA                0.1030303   0.0565882   0.1494724
6 months    ki1000108-IRC              INDIA        1                    NA                0.0495868   0.0222017   0.0769718
6 months    ki1000109-EE               PAKISTAN     0                    NA                0.2370370   0.1862433   0.2878308
6 months    ki1000109-EE               PAKISTAN     1                    NA                0.2941176   0.2055736   0.3826617
6 months    ki1000109-ResPak           PAKISTAN     0                    NA                0.2071429   0.1398696   0.2744161
6 months    ki1000109-ResPak           PAKISTAN     1                    NA                0.1578947   0.0844130   0.2313765
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0160920   0.0042572   0.0279267
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0472973   0.0130689   0.0815257
6 months    ki1101329-Keneba           GAMBIA       0                    NA                0.0212389   0.0143734   0.0281045
6 months    ki1101329-Keneba           GAMBIA       1                    NA                0.0856354   0.0568026   0.1144681
6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                0.0281330   0.0117287   0.0445373
6 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                0.0523256   0.0190170   0.0856342
6 months    ki1114097-CMIN             BANGLADESH   0                    NA                0.1094527   0.0662026   0.1527029
6 months    ki1114097-CMIN             BANGLADESH   1                    NA                0.1428571   0.0368106   0.2489037
24 months   ki0047075b-MAL-ED          BANGLADESH   0                    NA                0.1104294   0.0621999   0.1586590
24 months   ki0047075b-MAL-ED          BANGLADESH   1                    NA                0.1632653   0.0595321   0.2669985
24 months   ki0047075b-MAL-ED          INDIA        0                    NA                0.1363636   0.0820435   0.1906838
24 months   ki0047075b-MAL-ED          INDIA        1                    NA                0.0958904   0.0281975   0.1635834
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.2816092   0.2146873   0.3485311
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.3659794   0.2981031   0.4338557
24 months   ki1000108-IRC              INDIA        0                    NA                0.0963855   0.0514362   0.1413349
24 months   ki1000108-IRC              INDIA        1                    NA                0.1028807   0.0646362   0.1411251
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0928074   0.0653900   0.1202249
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0616438   0.0225978   0.1006899
24 months   ki1101329-Keneba           GAMBIA       0                    NA                0.0724749   0.0583602   0.0865897
24 months   ki1101329-Keneba           GAMBIA       1                    NA                0.1198502   0.0808803   0.1588201
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.0997151   0.0683389   0.1310913
24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.1283784   0.0744319   0.1823248
24 months   ki1114097-CMIN             BANGLADESH   0                    NA                0.2650000   0.2037087   0.3262913
24 months   ki1114097-CMIN             BANGLADESH   1                    NA                0.3571429   0.2119314   0.5023543


### Parameter: E(Y)


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA        NA                   NA                0.0412371   0.0214268   0.0610475
Birth       ki1101329-Keneba           GAMBIA       NA                   NA                0.0188189   0.0120322   0.0256057
6 months    ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.1147541   0.0820564   0.1474518
6 months    ki1000108-IRC              INDIA        NA                   NA                0.0712531   0.0462303   0.0962759
6 months    ki1000109-EE               PAKISTAN     NA                   NA                0.2526882   0.2084696   0.2969067
6 months    ki1000109-ResPak           PAKISTAN     NA                   NA                0.1872340   0.1372518   0.2372162
6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0240137   0.0115761   0.0364514
6 months    ki1101329-Keneba           GAMBIA       NA                   NA                0.0325717   0.0248987   0.0402447
6 months    ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.0355240   0.0202206   0.0508273
6 months    ki1114097-CMIN             BANGLADESH   NA                   NA                0.1152263   0.0749980   0.1554547
24 months   ki0047075b-MAL-ED          BANGLADESH   NA                   NA                0.1226415   0.0783812   0.1669018
24 months   ki0047075b-MAL-ED          INDIA        NA                   NA                0.1233480   0.0804760   0.1662200
24 months   ki1000108-CMC-V-BCS-2002   INDIA        NA                   NA                0.3260870   0.2781265   0.3740475
24 months   ki1000108-IRC              INDIA        NA                   NA                0.1002445   0.0711031   0.1293859
24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.0849220   0.0621566   0.1076874
24 months   ki1101329-Keneba           GAMBIA       NA                   NA                0.0805627   0.0670700   0.0940553
24 months   ki1113344-GMS-Nepal        NEPAL        NA                   NA                0.1082164   0.0809323   0.1355005
24 months   ki1114097-CMIN             BANGLADESH   NA                   NA                0.2809917   0.2242434   0.3377401


### Parameter: RR


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA        1                    0                 0.5694444   0.2162511   1.4994928
Birth       ki1101329-Keneba           GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba           GAMBIA       1                    0                 1.0556102   0.4064649   2.7414740
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 0.8238636   0.4656753   1.4575636
6 months    ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA        1                    0                 0.4812834   0.2359422   0.9817394
6 months    ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE               PAKISTAN     1                    0                 1.2408088   0.8574756   1.7955107
6 months    ki1000109-ResPak           PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-ResPak           PAKISTAN     1                    0                 0.7622505   0.4321510   1.3444971
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    0                 2.9391892   1.0474302   8.2476460
6 months    ki1101329-Keneba           GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA       1                    0                 4.0319981   2.5282182   6.4302238
6 months    ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL        1                    0                 1.8599366   0.7844933   4.4096795
6 months    ki1114097-CMIN             BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1114097-CMIN             BANGLADESH   1                    0                 1.3051948   0.5629336   3.0261714
24 months   ki0047075b-MAL-ED          BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH   1                    0                 1.4784580   0.6838633   3.1963088
24 months   ki0047075b-MAL-ED          INDIA        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          INDIA        1                    0                 0.7031964   0.3126424   1.5816316
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 1.2996003   0.9613752   1.7568175
24 months   ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA        1                    0                 1.0673868   0.5879186   1.9378781
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 0.6642123   0.3301949   1.3361141
24 months   ki1101329-Keneba           GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA       1                    0                 1.6536776   1.1319972   2.4157741
24 months   ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL        1                    0                 1.2874517   0.7616242   2.1763119
24 months   ki1114097-CMIN             BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN             BANGLADESH   1                    0                 1.3477089   0.8441994   2.1515287


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA        0                    NA                -0.0136409   -0.0377409   0.0104590
Birth       ki1101329-Keneba           GAMBIA       0                    NA                 0.0001709   -0.0028982   0.0032401
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0116827   -0.0461703   0.0228049
6 months    ki1000108-IRC              INDIA        0                    NA                -0.0317772   -0.0639361   0.0003817
6 months    ki1000109-EE               PAKISTAN     0                    NA                 0.0156511   -0.0124579   0.0437601
6 months    ki1000109-ResPak           PAKISTAN     0                    NA                -0.0199088   -0.0603019   0.0204842
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0079218   -0.0013381   0.0171817
6 months    ki1101329-Keneba           GAMBIA       0                    NA                 0.0113328    0.0060102   0.0166554
6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0073910   -0.0039895   0.0187715
6 months    ki1114097-CMIN             BANGLADESH   0                    NA                 0.0057736   -0.0140851   0.0256323
24 months   ki0047075b-MAL-ED          BANGLADESH   0                    NA                 0.0122121   -0.0143990   0.0388231
24 months   ki0047075b-MAL-ED          INDIA        0                    NA                -0.0130156   -0.0410356   0.0150044
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.0444778   -0.0059564   0.0949120
24 months   ki1000108-IRC              INDIA        0                    NA                 0.0038590   -0.0312067   0.0389246
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.0078854   -0.0200084   0.0042376
24 months   ki1101329-Keneba           GAMBIA       0                    NA                 0.0080877    0.0009570   0.0152184
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0085013   -0.0100440   0.0270466
24 months   ki1114097-CMIN             BANGLADESH   0                    NA                 0.0159917   -0.0117157   0.0436992


### Parameter: PAF


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        0                    NA                -0.3307927   -1.0346200    0.1295627
Birth       ki1101329-Keneba           GAMBIA       0                    NA                 0.0090829   -0.1681561    0.1594302
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.1018062   -0.4460089    0.1604637
6 months    ki1000108-IRC              INDIA        0                    NA                -0.4459770   -0.9463049   -0.0742662
6 months    ki1000109-EE               PAKISTAN     0                    NA                 0.0619385   -0.0559481    0.1666642
6 months    ki1000109-ResPak           PAKISTAN     0                    NA                -0.1063312   -0.3434231    0.0889179
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.3298851   -0.1248313    0.6007810
6 months    ki1101329-Keneba           GAMBIA       0                    NA                 0.3479329    0.1887766    0.4758638
6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.2080563   -0.1689041    0.4634505
6 months    ki1114097-CMIN             BANGLADESH   0                    NA                 0.0501066   -0.1380606    0.2071622
24 months   ki0047075b-MAL-ED          BANGLADESH   0                    NA                 0.0995753   -0.1429394    0.2906320
24 months   ki0047075b-MAL-ED          INDIA        0                    NA                -0.1055195   -0.3551906    0.0981539
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.1363985   -0.0327255    0.2778259
24 months   ki1000108-IRC              INDIA        0                    NA                 0.0384954   -0.3832055    0.3316314
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.0928548   -0.2433703    0.0394401
24 months   ki1101329-Keneba           GAMBIA       0                    NA                 0.1003904    0.0088732    0.1834572
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0785586   -0.1087129    0.2341983
24 months   ki1114097-CMIN             BANGLADESH   0                    NA                 0.0569118   -0.0468380    0.1503791
