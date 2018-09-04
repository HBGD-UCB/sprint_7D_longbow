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

* arm
* sex
* W_mage
* meducyrs
* W_nrooms
* month
* brthmon
* delta_W_mage
* delta_meducyrs
* delta_W_nrooms
* delta_month
* delta_brthmon

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
![](/tmp/11a6f271-ddfe-4221-ba75-e1269ed5c4ce/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/11a6f271-ddfe-4221-ba75-e1269ed5c4ce/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/11a6f271-ddfe-4221-ba75-e1269ed5c4ce/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/11a6f271-ddfe-4221-ba75-e1269ed5c4ce/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA        0                    NA                0.0548780   0.0199777   0.0897784
Birth       ki1000108-IRC              INDIA        1                    NA                0.0312500   0.0084353   0.0540647
Birth       ki1101329-Keneba           GAMBIA       0                    NA                0.0186480   0.0112549   0.0260412
Birth       ki1101329-Keneba           GAMBIA       1                    NA                0.0196850   0.0025958   0.0367743
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.1249539   0.0756207   0.1742872
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.1053235   0.0622279   0.1484192
6 months    ki1000108-IRC              INDIA        0                    NA                0.1023627   0.0561871   0.1485382
6 months    ki1000108-IRC              INDIA        1                    NA                0.0498269   0.0225174   0.0771364
6 months    ki1000109-EE               PAKISTAN     0                    NA                0.2369951   0.1866233   0.2873670
6 months    ki1000109-EE               PAKISTAN     1                    NA                0.2842872   0.1995399   0.3690345
6 months    ki1000109-ResPak           PAKISTAN     0                    NA                0.2048399   0.1381615   0.2715183
6 months    ki1000109-ResPak           PAKISTAN     1                    NA                0.1596338   0.0859388   0.2333289
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0160920   0.0042572   0.0279267
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0472973   0.0130689   0.0815257
6 months    ki1101329-Keneba           GAMBIA       0                    NA                0.0216062   0.0147301   0.0284822
6 months    ki1101329-Keneba           GAMBIA       1                    NA                0.0771937   0.0491935   0.1051939
6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                0.0284656   0.0119910   0.0449401
6 months    ki1113344-GMS-Nepal        NEPAL        1                    NA                0.0519187   0.0188237   0.0850138
6 months    ki1114097-CMIN             BANGLADESH   0                    NA                0.1094527   0.0662026   0.1527029
6 months    ki1114097-CMIN             BANGLADESH   1                    NA                0.1428571   0.0368106   0.2489037
24 months   ki0047075b-MAL-ED          BANGLADESH   0                    NA                0.1104294   0.0621999   0.1586590
24 months   ki0047075b-MAL-ED          BANGLADESH   1                    NA                0.1632653   0.0595321   0.2669985
24 months   ki0047075b-MAL-ED          INDIA        0                    NA                0.1363636   0.0820435   0.1906838
24 months   ki0047075b-MAL-ED          INDIA        1                    NA                0.0958904   0.0281975   0.1635834
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                0.2809063   0.2140243   0.3477883
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    NA                0.3667357   0.2996091   0.4338624
24 months   ki1000108-IRC              INDIA        0                    NA                0.0963855   0.0514362   0.1413349
24 months   ki1000108-IRC              INDIA        1                    NA                0.1028807   0.0646362   0.1411251
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                0.0928074   0.0653900   0.1202249
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    NA                0.0616438   0.0225978   0.1006899
24 months   ki1101329-Keneba           GAMBIA       0                    NA                0.0727282   0.0586151   0.0868413
24 months   ki1101329-Keneba           GAMBIA       1                    NA                0.1080304   0.0702905   0.1457702
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                0.0997151   0.0683389   0.1310913
24 months   ki1113344-GMS-Nepal        NEPAL        1                    NA                0.1283784   0.0744319   0.1823248
24 months   ki1114097-CMIN             BANGLADESH   0                    NA                0.2645457   0.2033099   0.3257815
24 months   ki1114097-CMIN             BANGLADESH   1                    NA                0.3546935   0.2103619   0.4990252


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
6 months    ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 0.8428988   0.4782483   1.4855847
6 months    ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA        1                    0                 0.4867683   0.2397456   0.9883116
6 months    ki1000109-EE               PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-EE               PAKISTAN     1                    0                 1.1995488   0.8325711   1.7282816
6 months    ki1000109-ResPak           PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1000109-ResPak           PAKISTAN     1                    0                 0.7793103   0.4436756   1.3688480
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH   1                    0                 2.9391892   1.0474302   8.2476460
6 months    ki1101329-Keneba           GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA       1                    0                 3.5727636   2.2067125   5.7844597
6 months    ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL        1                    0                 1.8239143   0.7721465   4.3083320
6 months    ki1114097-CMIN             BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6 months    ki1114097-CMIN             BANGLADESH   1                    0                 1.3051948   0.5629336   3.0261714
24 months   ki0047075b-MAL-ED          BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH   1                    0                 1.4784580   0.6838633   3.1963088
24 months   ki0047075b-MAL-ED          INDIA        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          INDIA        1                    0                 0.7031964   0.3126424   1.5816316
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA        1                    0                 1.3055447   0.9683651   1.7601286
24 months   ki1000108-IRC              INDIA        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA        1                    0                 1.0673868   0.5879186   1.9378781
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH   1                    0                 0.6642123   0.3301949   1.3361141
24 months   ki1101329-Keneba           GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA       1                    0                 1.4853980   0.9965706   2.2139999
24 months   ki1113344-GMS-Nepal        NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL        1                    0                 1.2874517   0.7616242   2.1763119
24 months   ki1114097-CMIN             BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN             BANGLADESH   1                    0                 1.3407646   0.8394498   2.1414617


### Parameter: PAR


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA        0                    NA                -0.0136409   -0.0377409   0.0104590
Birth       ki1101329-Keneba           GAMBIA       0                    NA                 0.0001709   -0.0028982   0.0032401
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0101998   -0.0444580   0.0240583
6 months    ki1000108-IRC              INDIA        0                    NA                -0.0311096   -0.0629796   0.0007605
6 months    ki1000109-EE               PAKISTAN     0                    NA                 0.0156930   -0.0121800   0.0435661
6 months    ki1000109-ResPak           PAKISTAN     0                    NA                -0.0176058   -0.0575088   0.0222971
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.0079218   -0.0013381   0.0171817
6 months    ki1101329-Keneba           GAMBIA       0                    NA                 0.0109655    0.0056599   0.0162712
6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0070584   -0.0043337   0.0184506
6 months    ki1114097-CMIN             BANGLADESH   0                    NA                 0.0057736   -0.0140851   0.0256323
24 months   ki0047075b-MAL-ED          BANGLADESH   0                    NA                 0.0122121   -0.0143990   0.0388231
24 months   ki0047075b-MAL-ED          INDIA        0                    NA                -0.0130156   -0.0410356   0.0150044
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.0451807   -0.0047163   0.0950776
24 months   ki1000108-IRC              INDIA        0                    NA                 0.0038590   -0.0312067   0.0389246
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.0078854   -0.0200084   0.0042376
24 months   ki1101329-Keneba           GAMBIA       0                    NA                 0.0078344    0.0007400   0.0149288
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0085013   -0.0100440   0.0270466
24 months   ki1114097-CMIN             BANGLADESH   0                    NA                 0.0164460   -0.0112759   0.0441680


### Parameter: PAF


agecat      studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA        0                    NA                -0.3307927   -1.0346200    0.1295627
Birth       ki1101329-Keneba           GAMBIA       0                    NA                 0.0090829   -0.1681561    0.1594302
6 months    ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                -0.0888844   -0.4309252    0.1713968
6 months    ki1000108-IRC              INDIA        0                    NA                -0.4366070   -0.9323843   -0.0680275
6 months    ki1000109-EE               PAKISTAN     0                    NA                 0.0621044   -0.0545855    0.1658825
6 months    ki1000109-ResPak           PAKISTAN     0                    NA                -0.0940312   -0.3283996    0.0989878
6 months    ki1017093b-PROVIDE         BANGLADESH   0                    NA                 0.3298851   -0.1248313    0.6007810
6 months    ki1101329-Keneba           GAMBIA       0                    NA                 0.3366586    0.1781102    0.4646219
6 months    ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.1986947   -0.1786109    0.4552145
6 months    ki1114097-CMIN             BANGLADESH   0                    NA                 0.0501066   -0.1380606    0.2071622
24 months   ki0047075b-MAL-ED          BANGLADESH   0                    NA                 0.0995753   -0.1429394    0.2906320
24 months   ki0047075b-MAL-ED          INDIA        0                    NA                -0.1055195   -0.3551906    0.0981539
24 months   ki1000108-CMC-V-BCS-2002   INDIA        0                    NA                 0.1385540   -0.0289053    0.2787586
24 months   ki1000108-IRC              INDIA        0                    NA                 0.0384954   -0.3832055    0.3316314
24 months   ki1017093b-PROVIDE         BANGLADESH   0                    NA                -0.0928548   -0.2433703    0.0394401
24 months   ki1101329-Keneba           GAMBIA       0                    NA                 0.0972465    0.0062112    0.1799426
24 months   ki1113344-GMS-Nepal        NEPAL        0                    NA                 0.0785586   -0.1087129    0.2341983
24 months   ki1114097-CMIN             BANGLADESH   0                    NA                 0.0585285   -0.0452725    0.1520216
