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

**Intervention Variable:** anywast06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        anywast06    swasted   n_cell      n
----------  -------------------------  -----------------------------  ----------  --------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  0      186    241
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  1        0    241
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  0       47    241
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  1        8    241
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  0      170    183
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  1        0    183
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  0       13    183
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  1        0    183
Birth       ki0047075b-MAL-ED          INDIA                          0                  0      142    203
Birth       ki0047075b-MAL-ED          INDIA                          0                  1        0    203
Birth       ki0047075b-MAL-ED          INDIA                          1                  0       54    203
Birth       ki0047075b-MAL-ED          INDIA                          1                  1        7    203
Birth       ki0047075b-MAL-ED          NEPAL                          0                  0      138    168
Birth       ki0047075b-MAL-ED          NEPAL                          0                  1        0    168
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0       26    168
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1        4    168
Birth       ki0047075b-MAL-ED          PERU                           0                  0      268    279
Birth       ki0047075b-MAL-ED          PERU                           0                  1        0    279
Birth       ki0047075b-MAL-ED          PERU                           1                  0       11    279
Birth       ki0047075b-MAL-ED          PERU                           1                  1        0    279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      229    258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        0    258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       27    258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        2    258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      112    118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        0    118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        5    118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        1    118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       35     88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0     88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       48     88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        5     88
Birth       ki1000108-IRC              INDIA                          0                  0      151    343
Birth       ki1000108-IRC              INDIA                          0                  1        0    343
Birth       ki1000108-IRC              INDIA                          1                  0      138    343
Birth       ki1000108-IRC              INDIA                          1                  1       54    343
Birth       ki1000109-EE               PAKISTAN                       0                  0        0      2
Birth       ki1000109-EE               PAKISTAN                       0                  1        0      2
Birth       ki1000109-EE               PAKISTAN                       1                  0        2      2
Birth       ki1000109-EE               PAKISTAN                       1                  1        0      2
Birth       ki1000109-ResPak           PAKISTAN                       0                  0        5      6
Birth       ki1000109-ResPak           PAKISTAN                       0                  1        0      6
Birth       ki1000109-ResPak           PAKISTAN                       1                  0        1      6
Birth       ki1000109-ResPak           PAKISTAN                       1                  1        0      6
Birth       ki1101329-Keneba           GAMBIA                         0                  0     1181   1423
Birth       ki1101329-Keneba           GAMBIA                         0                  1        0   1423
Birth       ki1101329-Keneba           GAMBIA                         1                  0      231   1423
Birth       ki1101329-Keneba           GAMBIA                         1                  1       11   1423
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
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0      184    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1        0    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0       55    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1        2    241
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      195    209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        0    209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0       14    209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        0    209
6 months    ki0047075b-MAL-ED          INDIA                          0                  0      162    236
6 months    ki0047075b-MAL-ED          INDIA                          0                  1        0    236
6 months    ki0047075b-MAL-ED          INDIA                          1                  0       69    236
6 months    ki0047075b-MAL-ED          INDIA                          1                  1        5    236
6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      193    236
6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        0    236
6 months    ki0047075b-MAL-ED          NEPAL                          1                  0       43    236
6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        0    236
6 months    ki0047075b-MAL-ED          PERU                           0                  0      263    273
6 months    ki0047075b-MAL-ED          PERU                           0                  1        0    273
6 months    ki0047075b-MAL-ED          PERU                           1                  0       10    273
6 months    ki0047075b-MAL-ED          PERU                           1                  1        0    273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      226    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        0    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       25    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        3    254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      236    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        0    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       11    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0    247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      173    365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0    365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0      180    365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1       12    365
6 months    ki1000108-IRC              INDIA                          0                  0      166    408
6 months    ki1000108-IRC              INDIA                          0                  1        0    408
6 months    ki1000108-IRC              INDIA                          1                  0      220    408
6 months    ki1000108-IRC              INDIA                          1                  1       22    408
6 months    ki1000109-EE               PAKISTAN                       0                  0      544    752
6 months    ki1000109-EE               PAKISTAN                       0                  1        0    752
6 months    ki1000109-EE               PAKISTAN                       1                  0      190    752
6 months    ki1000109-EE               PAKISTAN                       1                  1       18    752
6 months    ki1000109-ResPak           PAKISTAN                       0                  0      140    235
6 months    ki1000109-ResPak           PAKISTAN                       0                  1        0    235
6 months    ki1000109-ResPak           PAKISTAN                       1                  0       86    235
6 months    ki1000109-ResPak           PAKISTAN                       1                  1        9    235
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  0      435    582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  1        0    582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0      142    582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1        5    582
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0     1727   2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1        1   2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0      289   2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1       11   2028
6 months    ki1101329-Keneba           GAMBIA                         0                  0     1693   2057
6 months    ki1101329-Keneba           GAMBIA                         0                  1        3   2057
6 months    ki1101329-Keneba           GAMBIA                         1                  0      330   2057
6 months    ki1101329-Keneba           GAMBIA                         1                  1       31   2057
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                  0      270    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                  1        0    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                  0       10    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                  1        0    280
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0      782   1126
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1        0   1126
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      330   1126
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1       14   1126
6 months    ki1114097-CMIN             BANGLADESH                     0                  0      201    243
6 months    ki1114097-CMIN             BANGLADESH                     0                  1        0    243
6 months    ki1114097-CMIN             BANGLADESH                     1                  0       37    243
6 months    ki1114097-CMIN             BANGLADESH                     1                  1        5    243
6 months    ki1114097-CMIN             PERU                           0                  0      581    626
6 months    ki1114097-CMIN             PERU                           0                  1        0    626
6 months    ki1114097-CMIN             PERU                           1                  0       42    626
6 months    ki1114097-CMIN             PERU                           1                  1        3    626
6 months    ki1114097-CONTENT          PERU                           0                  0      211    215
6 months    ki1114097-CONTENT          PERU                           0                  1        0    215
6 months    ki1114097-CONTENT          PERU                           1                  0        4    215
6 months    ki1114097-CONTENT          PERU                           1                  1        0    215
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0      163    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1        0    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0       49    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1        0    212
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      157    169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        0    169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0       11    169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        1    169
24 months   ki0047075b-MAL-ED          INDIA                          0                  0      154    227
24 months   ki0047075b-MAL-ED          INDIA                          0                  1        0    227
24 months   ki0047075b-MAL-ED          INDIA                          1                  0       71    227
24 months   ki0047075b-MAL-ED          INDIA                          1                  1        2    227
24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      187    228
24 months   ki0047075b-MAL-ED          NEPAL                          0                  1        0    228
24 months   ki0047075b-MAL-ED          NEPAL                          1                  0       41    228
24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        0    228
24 months   ki0047075b-MAL-ED          PERU                           0                  0      192    201
24 months   ki0047075b-MAL-ED          PERU                           0                  1        1    201
24 months   ki0047075b-MAL-ED          PERU                           1                  0        8    201
24 months   ki0047075b-MAL-ED          PERU                           1                  1        0    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      214    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        0    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0       24    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0    238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      203    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        0    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0       11    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0    214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      174    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        0    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0      191    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        3    368
24 months   ki1000108-IRC              INDIA                          0                  0      166    409
24 months   ki1000108-IRC              INDIA                          0                  1        0    409
24 months   ki1000108-IRC              INDIA                          1                  0      238    409
24 months   ki1000108-IRC              INDIA                          1                  1        5    409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      430    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1        1    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0      139    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1        8    578
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0        5      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1        0      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0        1      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1        0      6
24 months   ki1101329-Keneba           GAMBIA                         0                  0     1283   1565
24 months   ki1101329-Keneba           GAMBIA                         0                  1       15   1565
24 months   ki1101329-Keneba           GAMBIA                         1                  0      253   1565
24 months   ki1101329-Keneba           GAMBIA                         1                  1       14   1565
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0      688    996
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       14    996
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      278    996
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1       16    996
24 months   ki1114097-CMIN             BANGLADESH                     0                  0      198    243
24 months   ki1114097-CMIN             BANGLADESH                     0                  1        2    243
24 months   ki1114097-CMIN             BANGLADESH                     1                  0       43    243
24 months   ki1114097-CMIN             BANGLADESH                     1                  1        0    243
24 months   ki1114097-CMIN             PERU                           0                  0      220    234
24 months   ki1114097-CMIN             PERU                           0                  1        0    234
24 months   ki1114097-CMIN             PERU                           1                  0       14    234
24 months   ki1114097-CMIN             PERU                           1                  1        0    234
24 months   ki1114097-CONTENT          PERU                           0                  0      161    164
24 months   ki1114097-CONTENT          PERU                           0                  1        0    164
24 months   ki1114097-CONTENT          PERU                           1                  0        3    164
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
![](/tmp/b6176b3f-7ef8-4cb4-a598-827408c6000a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b6176b3f-7ef8-4cb4-a598-827408c6000a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b6176b3f-7ef8-4cb4-a598-827408c6000a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b6176b3f-7ef8-4cb4-a598-827408c6000a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  --------  -------------------  ---------------  ----------  ----------  ----------
24 months   ki1101329-Keneba      GAMBIA    0                    NA                0.0115562   0.0057401   0.0173724
24 months   ki1101329-Keneba      GAMBIA    1                    NA                0.0524345   0.0256894   0.0791796
24 months   ki1113344-GMS-Nepal   NEPAL     0                    NA                0.0199430   0.0053026   0.0345834
24 months   ki1113344-GMS-Nepal   NEPAL     1                    NA                0.0544218   0.0177137   0.0911298


### Parameter: E(Y)


agecat      studyid               country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  --------  -------------------  ---------------  ----------  ----------  ----------
24 months   ki1101329-Keneba      GAMBIA    NA                   NA                0.0185304   0.0118468   0.0252139
24 months   ki1113344-GMS-Nepal   NEPAL     NA                   NA                0.0301205   0.0150939   0.0451470


### Parameter: RR


agecat      studyid               country   intervention_level   baseline_level    estimate   ci_lower   ci_upper
----------  --------------------  --------  -------------------  ---------------  ---------  ---------  ---------
24 months   ki1101329-Keneba      GAMBIA    0                    0                 1.000000   1.000000   1.000000
24 months   ki1101329-Keneba      GAMBIA    1                    0                 4.537328   2.216150   9.289692
24 months   ki1113344-GMS-Nepal   NEPAL     0                    0                 1.000000   1.000000   1.000000
24 months   ki1113344-GMS-Nepal   NEPAL     1                    0                 2.728863   1.006973   7.395124


### Parameter: PAR


agecat      studyid               country   intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------------  --------  -------------------  ---------------  ----------  -----------  ----------
24 months   ki1101329-Keneba      GAMBIA    0                    NA                0.0069741    0.0022428   0.0117054
24 months   ki1113344-GMS-Nepal   NEPAL     0                    NA                0.0101775   -0.0015697   0.0219246


### Parameter: PAF


agecat      studyid               country   intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------------  --------  -------------------  ---------------  ----------  -----------  ----------
24 months   ki1101329-Keneba      GAMBIA    0                    NA                0.3763615    0.1164607   0.5598102
24 months   ki1113344-GMS-Nepal   NEPAL     0                    NA                0.3378917   -0.1290209   0.6117101
