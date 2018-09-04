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

**Intervention Variable:** pers_wast

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        pers_wast    sstunted   n_cell      n
----------  -------------------------  -----------------------------  ----------  ---------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   0      238    255
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                   1        8    255
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   0        8    255
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                   1        1    255
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   0      183    191
Birth       ki0047075b-MAL-ED          BRAZIL                         0                   1        8    191
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   0        0    191
Birth       ki0047075b-MAL-ED          BRAZIL                         1                   1        0    191
Birth       ki0047075b-MAL-ED          INDIA                          0                   0      184    206
Birth       ki0047075b-MAL-ED          INDIA                          0                   1        7    206
Birth       ki0047075b-MAL-ED          INDIA                          1                   0       15    206
Birth       ki0047075b-MAL-ED          INDIA                          1                   1        0    206
Birth       ki0047075b-MAL-ED          NEPAL                          0                   0      164    173
Birth       ki0047075b-MAL-ED          NEPAL                          0                   1        6    173
Birth       ki0047075b-MAL-ED          NEPAL                          1                   0        3    173
Birth       ki0047075b-MAL-ED          NEPAL                          1                   1        0    173
Birth       ki0047075b-MAL-ED          PERU                           0                   0      279    286
Birth       ki0047075b-MAL-ED          PERU                           0                   1        7    286
Birth       ki0047075b-MAL-ED          PERU                           1                   0        0    286
Birth       ki0047075b-MAL-ED          PERU                           1                   1        0    286
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      254    261
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        1    261
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        6    261
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0    261
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      117    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1        6    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        0    123
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0    123
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                   0       77     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                   1        1     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       10     90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        2     90
Birth       ki1000108-IRC              INDIA                          0                   0      306    388
Birth       ki1000108-IRC              INDIA                          0                   1       13    388
Birth       ki1000108-IRC              INDIA                          1                   0       66    388
Birth       ki1000108-IRC              INDIA                          1                   1        3    388
Birth       ki1000109-EE               PAKISTAN                       0                   0        4      4
Birth       ki1000109-EE               PAKISTAN                       0                   1        0      4
Birth       ki1000109-EE               PAKISTAN                       1                   0        0      4
Birth       ki1000109-EE               PAKISTAN                       1                   1        0      4
Birth       ki1000109-ResPak           PAKISTAN                       0                   0        6      7
Birth       ki1000109-ResPak           PAKISTAN                       0                   1        0      7
Birth       ki1000109-ResPak           PAKISTAN                       1                   0        1      7
Birth       ki1000109-ResPak           PAKISTAN                       1                   1        0      7
Birth       ki1101329-Keneba           GAMBIA                         0                   0     1479   1541
Birth       ki1101329-Keneba           GAMBIA                         0                   1       28   1541
Birth       ki1101329-Keneba           GAMBIA                         1                   0       33   1541
Birth       ki1101329-Keneba           GAMBIA                         1                   1        1   1541
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
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   0      227    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                   1        7    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   0        6    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                   1        1    241
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   0      208    209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                   1        0    209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   0        1    209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                   1        0    209
6 months    ki0047075b-MAL-ED          INDIA                          0                   0      210    236
6 months    ki0047075b-MAL-ED          INDIA                          0                   1        8    236
6 months    ki0047075b-MAL-ED          INDIA                          1                   0       17    236
6 months    ki0047075b-MAL-ED          INDIA                          1                   1        1    236
6 months    ki0047075b-MAL-ED          NEPAL                          0                   0      231    236
6 months    ki0047075b-MAL-ED          NEPAL                          0                   1        1    236
6 months    ki0047075b-MAL-ED          NEPAL                          1                   0        4    236
6 months    ki0047075b-MAL-ED          NEPAL                          1                   1        0    236
6 months    ki0047075b-MAL-ED          PERU                           0                   0      261    273
6 months    ki0047075b-MAL-ED          PERU                           0                   1       12    273
6 months    ki0047075b-MAL-ED          PERU                           1                   0        0    273
6 months    ki0047075b-MAL-ED          PERU                           1                   1        0    273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      246    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1        6    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        2    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0    254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      233    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       14    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        0    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0    247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   0      276    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                   1       37    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       48    366
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                   1        5    366
6 months    ki1000108-IRC              INDIA                          0                   0      309    407
6 months    ki1000108-IRC              INDIA                          0                   1       28    407
6 months    ki1000108-IRC              INDIA                          1                   0       69    407
6 months    ki1000108-IRC              INDIA                          1                   1        1    407
6 months    ki1000109-EE               PAKISTAN                       0                   0      518    744
6 months    ki1000109-EE               PAKISTAN                       0                   1      170    744
6 months    ki1000109-EE               PAKISTAN                       1                   0       38    744
6 months    ki1000109-EE               PAKISTAN                       1                   1       18    744
6 months    ki1000109-ResPak           PAKISTAN                       0                   0      166    235
6 months    ki1000109-ResPak           PAKISTAN                       0                   1       40    235
6 months    ki1000109-ResPak           PAKISTAN                       1                   0       25    235
6 months    ki1000109-ResPak           PAKISTAN                       1                   1        4    235
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   0      558    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                   1       11    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   0       11    583
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                   1        3    583
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0     1959   2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1       19   2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0       51   2029
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        0   2029
6 months    ki1101329-Keneba           GAMBIA                         0                   0     1948   2057
6 months    ki1101329-Keneba           GAMBIA                         0                   1       56   2057
6 months    ki1101329-Keneba           GAMBIA                         1                   0       42   2057
6 months    ki1101329-Keneba           GAMBIA                         1                   1       11   2057
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                   0      247    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                   1       23    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                   0        6    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                   1        4    280
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   0      966   1126
6 months    ki1113344-GMS-Nepal        NEPAL                          0                   1       28   1126
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   0      120   1126
6 months    ki1113344-GMS-Nepal        NEPAL                          1                   1       12   1126
6 months    ki1114097-CMIN             BANGLADESH                     0                   0      206    243
6 months    ki1114097-CMIN             BANGLADESH                     0                   1       26    243
6 months    ki1114097-CMIN             BANGLADESH                     1                   0        9    243
6 months    ki1114097-CMIN             BANGLADESH                     1                   1        2    243
6 months    ki1114097-CMIN             PERU                           0                   0      610    627
6 months    ki1114097-CMIN             PERU                           0                   1        4    627
6 months    ki1114097-CMIN             PERU                           1                   0       10    627
6 months    ki1114097-CMIN             PERU                           1                   1        3    627
6 months    ki1114097-CONTENT          PERU                           0                   0      211    215
6 months    ki1114097-CONTENT          PERU                           0                   1        4    215
6 months    ki1114097-CONTENT          PERU                           1                   0        0    215
6 months    ki1114097-CONTENT          PERU                           1                   1        0    215
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   0      180    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                   1       26    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   0        6    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                   1        0    212
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   0      167    169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                   1        1    169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   0        1    169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                   1        0    169
24 months   ki0047075b-MAL-ED          INDIA                          0                   0      182    227
24 months   ki0047075b-MAL-ED          INDIA                          0                   1       27    227
24 months   ki0047075b-MAL-ED          INDIA                          1                   0       17    227
24 months   ki0047075b-MAL-ED          INDIA                          1                   1        1    227
24 months   ki0047075b-MAL-ED          NEPAL                          0                   0      217    228
24 months   ki0047075b-MAL-ED          NEPAL                          0                   1        7    228
24 months   ki0047075b-MAL-ED          NEPAL                          1                   0        4    228
24 months   ki0047075b-MAL-ED          NEPAL                          1                   1        0    228
24 months   ki0047075b-MAL-ED          PERU                           0                   0      186    201
24 months   ki0047075b-MAL-ED          PERU                           0                   1       15    201
24 months   ki0047075b-MAL-ED          PERU                           1                   0        0    201
24 months   ki0047075b-MAL-ED          PERU                           1                   1        0    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   0      210    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                   1       26    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   0        2    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                   1        0    238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   0      145    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                   1       69    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   0        0    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                   1        0    214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   0      220    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                   1       92    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   0       28    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                   1       28    368
24 months   ki1000108-IRC              INDIA                          0                   0      302    409
24 months   ki1000108-IRC              INDIA                          0                   1       37    409
24 months   ki1000108-IRC              INDIA                          1                   0       66    409
24 months   ki1000108-IRC              INDIA                          1                   1        4    409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   0      515    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                   1       49    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   0       13    577
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                   1        0    577
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   0        5      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                   1        1      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   0        0      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                   1        0      6
24 months   ki1101329-Keneba           GAMBIA                         0                   0     1410   1564
24 months   ki1101329-Keneba           GAMBIA                         0                   1      112   1564
24 months   ki1101329-Keneba           GAMBIA                         1                   0       28   1564
24 months   ki1101329-Keneba           GAMBIA                         1                   1       14   1564
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   0      792    998
24 months   ki1113344-GMS-Nepal        NEPAL                          0                   1       88    998
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   0       98    998
24 months   ki1113344-GMS-Nepal        NEPAL                          1                   1       20    998
24 months   ki1114097-CMIN             BANGLADESH                     0                   0      168    242
24 months   ki1114097-CMIN             BANGLADESH                     0                   1       65    242
24 months   ki1114097-CMIN             BANGLADESH                     1                   0        6    242
24 months   ki1114097-CMIN             BANGLADESH                     1                   1        3    242
24 months   ki1114097-CMIN             PERU                           0                   0      216    234
24 months   ki1114097-CMIN             PERU                           0                   1       12    234
24 months   ki1114097-CMIN             PERU                           1                   0        5    234
24 months   ki1114097-CMIN             PERU                           1                   1        1    234
24 months   ki1114097-CONTENT          PERU                           0                   0      161    164
24 months   ki1114097-CONTENT          PERU                           0                   1        3    164
24 months   ki1114097-CONTENT          PERU                           1                   0        0    164
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
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
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
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
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
![](/tmp/c7e0acf6-1c5a-435a-a7e7-53989a4b32b1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c7e0acf6-1c5a-435a-a7e7-53989a4b32b1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c7e0acf6-1c5a-435a-a7e7-53989a4b32b1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c7e0acf6-1c5a-435a-a7e7-53989a4b32b1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ---------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA      0                    NA                0.1182109   0.0823945   0.1540272
6 months    ki1000108-CMC-V-BCS-2002   INDIA      1                    NA                0.0943396   0.0155382   0.1731410
6 months    ki1000109-EE               PAKISTAN   0                    NA                0.2470930   0.2014521   0.2927339
6 months    ki1000109-EE               PAKISTAN   1                    NA                0.3214286   0.1482103   0.4946468
6 months    ki1101329-Keneba           GAMBIA     0                    NA                0.0279441   0.0207265   0.0351618
6 months    ki1101329-Keneba           GAMBIA     1                    NA                0.2075472   0.0983376   0.3167568
6 months    ki1113344-GMS-Nepal        NEPAL      0                    NA                0.0281690   0.0136098   0.0427282
6 months    ki1113344-GMS-Nepal        NEPAL      1                    NA                0.0909091   0.0214915   0.1603267
24 months   ki1000108-CMC-V-BCS-2002   INDIA      0                    NA                0.2948718   0.2442063   0.3455373
24 months   ki1000108-CMC-V-BCS-2002   INDIA      1                    NA                0.5000000   0.3688661   0.6311339
24 months   ki1101329-Keneba           GAMBIA     0                    NA                0.0735874   0.0604659   0.0867089
24 months   ki1101329-Keneba           GAMBIA     1                    NA                0.3333333   0.1907213   0.4759453
24 months   ki1113344-GMS-Nepal        NEPAL      0                    NA                0.1000000   0.0719406   0.1280594
24 months   ki1113344-GMS-Nepal        NEPAL      1                    NA                0.1694915   0.0736610   0.2653220


### Parameter: E(Y)


agecat      studyid                    country    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ---------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA      NA                   NA                0.1147541   0.0820564   0.1474518
6 months    ki1000109-EE               PAKISTAN   NA                   NA                0.2526882   0.2084696   0.2969067
6 months    ki1101329-Keneba           GAMBIA     NA                   NA                0.0325717   0.0248987   0.0402447
6 months    ki1113344-GMS-Nepal        NEPAL      NA                   NA                0.0355240   0.0202206   0.0508273
24 months   ki1000108-CMC-V-BCS-2002   INDIA      NA                   NA                0.3260870   0.2781265   0.3740475
24 months   ki1101329-Keneba           GAMBIA     NA                   NA                0.0805627   0.0670700   0.0940553
24 months   ki1113344-GMS-Nepal        NEPAL      NA                   NA                0.1082164   0.0809323   0.1355005


### Parameter: RR


agecat      studyid                    country    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ---------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA      0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA      1                    0                 0.7980623   0.3282049    1.940567
6 months    ki1000109-EE               PAKISTAN   0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1000109-EE               PAKISTAN   1                    0                 1.3008403   0.7358954    2.299492
6 months    ki1101329-Keneba           GAMBIA     0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1101329-Keneba           GAMBIA     1                    0                 7.4272237   4.1329273   13.347356
6 months    ki1113344-GMS-Nepal        NEPAL      0                    0                 1.0000000   1.0000000    1.000000
6 months    ki1113344-GMS-Nepal        NEPAL      1                    0                 3.2272727   1.2834723    8.114931
24 months   ki1000108-CMC-V-BCS-2002   INDIA      0                    0                 1.0000000   1.0000000    1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA      1                    0                 1.6956522   1.2392763    2.320093
24 months   ki1101329-Keneba           GAMBIA     0                    0                 1.0000000   1.0000000    1.000000
24 months   ki1101329-Keneba           GAMBIA     1                    0                 4.5297619   2.8495536    7.200687
24 months   ki1113344-GMS-Nepal        NEPAL      0                    0                 1.0000000   1.0000000    1.000000
24 months   ki1113344-GMS-Nepal        NEPAL      1                    0                 1.6949152   0.9016177    3.186203


### Parameter: PAR


agecat      studyid                    country    intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  ---------  -------------------  ---------------  -----------  -----------  ----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA      0                    NA                -0.0034568   -0.0160209   0.0091073
6 months    ki1000109-EE               PAKISTAN   0                    NA                 0.0055951   -0.0080347   0.0192250
6 months    ki1101329-Keneba           GAMBIA     0                    NA                 0.0046276    0.0015510   0.0077042
6 months    ki1113344-GMS-Nepal        NEPAL      0                    NA                 0.0073550   -0.0011256   0.0158356
24 months   ki1000108-CMC-V-BCS-2002   INDIA      0                    NA                 0.0312152    0.0085331   0.0538972
24 months   ki1101329-Keneba           GAMBIA     0                    NA                 0.0069753    0.0026021   0.0113484
24 months   ki1113344-GMS-Nepal        NEPAL      0                    NA                 0.0082164   -0.0037533   0.0201862


### Parameter: PAF


agecat      studyid                    country    intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  ---------  -------------------  ---------------  -----------  -----------  ----------
6 months    ki1000108-CMC-V-BCS-2002   INDIA      0                    NA                -0.0301232   -0.1453661   0.0735243
6 months    ki1000109-EE               PAKISTAN   0                    NA                 0.0221425   -0.0332623   0.0745764
6 months    ki1101329-Keneba           GAMBIA     0                    NA                 0.1420741    0.0486350   0.2263359
6 months    ki1113344-GMS-Nepal        NEPAL      0                    NA                 0.2070423   -0.0497951   0.4010431
24 months   ki1000108-CMC-V-BCS-2002   INDIA      0                    NA                 0.0957265    0.0236154   0.1625118
24 months   ki1101329-Keneba           GAMBIA     0                    NA                 0.0865820    0.0324056   0.1377250
24 months   ki1113344-GMS-Nepal        NEPAL      0                    NA                 0.0759259   -0.0401193   0.1790241
