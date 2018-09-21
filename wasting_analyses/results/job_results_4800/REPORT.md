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

**Intervention Variable:** anywast06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        anywast06    wasted   n_cell      n
----------  -------------------------  -----------------------------  ----------  -------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 0      186    241
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                 1        0    241
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 0       15    241
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                 1       40    241
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 0      170    183
Birth       ki0047075b-MAL-ED          BRAZIL                         0                 1        0    183
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 0        7    183
Birth       ki0047075b-MAL-ED          BRAZIL                         1                 1        6    183
Birth       ki0047075b-MAL-ED          INDIA                          0                 0      142    203
Birth       ki0047075b-MAL-ED          INDIA                          0                 1        0    203
Birth       ki0047075b-MAL-ED          INDIA                          1                 0       28    203
Birth       ki0047075b-MAL-ED          INDIA                          1                 1       33    203
Birth       ki0047075b-MAL-ED          NEPAL                          0                 0      138    168
Birth       ki0047075b-MAL-ED          NEPAL                          0                 1        0    168
Birth       ki0047075b-MAL-ED          NEPAL                          1                 0       10    168
Birth       ki0047075b-MAL-ED          NEPAL                          1                 1       20    168
Birth       ki0047075b-MAL-ED          PERU                           0                 0      268    279
Birth       ki0047075b-MAL-ED          PERU                           0                 1        0    279
Birth       ki0047075b-MAL-ED          PERU                           1                 0        5    279
Birth       ki0047075b-MAL-ED          PERU                           1                 1        6    279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      229    258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        0    258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0       11    258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1       18    258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      112    118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        0    118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0        4    118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        2    118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 0       35     88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        0     88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 0       39     88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                 1       14     88
Birth       ki1000108-IRC              INDIA                          0                 0      151    343
Birth       ki1000108-IRC              INDIA                          0                 1        0    343
Birth       ki1000108-IRC              INDIA                          1                 0      100    343
Birth       ki1000108-IRC              INDIA                          1                 1       92    343
Birth       ki1000109-EE               PAKISTAN                       0                 0        0      2
Birth       ki1000109-EE               PAKISTAN                       0                 1        0      2
Birth       ki1000109-EE               PAKISTAN                       1                 0        2      2
Birth       ki1000109-EE               PAKISTAN                       1                 1        0      2
Birth       ki1000109-ResPak           PAKISTAN                       0                 0        5      6
Birth       ki1000109-ResPak           PAKISTAN                       0                 1        0      6
Birth       ki1000109-ResPak           PAKISTAN                       1                 0        1      6
Birth       ki1000109-ResPak           PAKISTAN                       1                 1        0      6
Birth       ki1101329-Keneba           GAMBIA                         0                 0     1181   1423
Birth       ki1101329-Keneba           GAMBIA                         0                 1        0   1423
Birth       ki1101329-Keneba           GAMBIA                         1                 0      214   1423
Birth       ki1101329-Keneba           GAMBIA                         1                 1       28   1423
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
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 0      184    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                 1        0    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 0       49    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                 1        8    241
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 0      195    209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                 1        0    209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 0       13    209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                 1        1    209
6 months    ki0047075b-MAL-ED          INDIA                          0                 0      161    236
6 months    ki0047075b-MAL-ED          INDIA                          0                 1        1    236
6 months    ki0047075b-MAL-ED          INDIA                          1                 0       57    236
6 months    ki0047075b-MAL-ED          INDIA                          1                 1       17    236
6 months    ki0047075b-MAL-ED          NEPAL                          0                 0      193    236
6 months    ki0047075b-MAL-ED          NEPAL                          0                 1        0    236
6 months    ki0047075b-MAL-ED          NEPAL                          1                 0       39    236
6 months    ki0047075b-MAL-ED          NEPAL                          1                 1        4    236
6 months    ki0047075b-MAL-ED          PERU                           0                 0      263    273
6 months    ki0047075b-MAL-ED          PERU                           0                 1        0    273
6 months    ki0047075b-MAL-ED          PERU                           1                 0       10    273
6 months    ki0047075b-MAL-ED          PERU                           1                 1        0    273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      225    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        1    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0       22    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        6    254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      236    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        0    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       10    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        1    247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      172    365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        1    365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 0      147    365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                 1       45    365
6 months    ki1000108-IRC              INDIA                          0                 0      165    408
6 months    ki1000108-IRC              INDIA                          0                 1        1    408
6 months    ki1000108-IRC              INDIA                          1                 0      189    408
6 months    ki1000108-IRC              INDIA                          1                 1       53    408
6 months    ki1000109-EE               PAKISTAN                       0                 0      534    752
6 months    ki1000109-EE               PAKISTAN                       0                 1       10    752
6 months    ki1000109-EE               PAKISTAN                       1                 0      120    752
6 months    ki1000109-EE               PAKISTAN                       1                 1       88    752
6 months    ki1000109-ResPak           PAKISTAN                       0                 0      140    235
6 months    ki1000109-ResPak           PAKISTAN                       0                 1        0    235
6 months    ki1000109-ResPak           PAKISTAN                       1                 0       69    235
6 months    ki1000109-ResPak           PAKISTAN                       1                 1       26    235
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 0      435    582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                 1        0    582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 0      123    582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                 1       24    582
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0     1716   2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1       12   2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0      225   2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1       75   2028
6 months    ki1101329-Keneba           GAMBIA                         0                 0     1680   2057
6 months    ki1101329-Keneba           GAMBIA                         0                 1       16   2057
6 months    ki1101329-Keneba           GAMBIA                         1                 0      256   2057
6 months    ki1101329-Keneba           GAMBIA                         1                 1      105   2057
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                 0      270    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                 1        0    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                 0        7    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                 1        3    280
6 months    ki1113344-GMS-Nepal        NEPAL                          0                 0      770   1126
6 months    ki1113344-GMS-Nepal        NEPAL                          0                 1       12   1126
6 months    ki1113344-GMS-Nepal        NEPAL                          1                 0      254   1126
6 months    ki1113344-GMS-Nepal        NEPAL                          1                 1       90   1126
6 months    ki1114097-CMIN             BANGLADESH                     0                 0      199    243
6 months    ki1114097-CMIN             BANGLADESH                     0                 1        2    243
6 months    ki1114097-CMIN             BANGLADESH                     1                 0       23    243
6 months    ki1114097-CMIN             BANGLADESH                     1                 1       19    243
6 months    ki1114097-CMIN             PERU                           0                 0      581    626
6 months    ki1114097-CMIN             PERU                           0                 1        0    626
6 months    ki1114097-CMIN             PERU                           1                 0       35    626
6 months    ki1114097-CMIN             PERU                           1                 1       10    626
6 months    ki1114097-CONTENT          PERU                           0                 0      211    215
6 months    ki1114097-CONTENT          PERU                           0                 1        0    215
6 months    ki1114097-CONTENT          PERU                           1                 0        4    215
6 months    ki1114097-CONTENT          PERU                           1                 1        0    215
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 0      153    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                 1       10    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 0       38    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                 1       11    212
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 0      155    169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                 1        2    169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 0       11    169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                 1        1    169
24 months   ki0047075b-MAL-ED          INDIA                          0                 0      146    227
24 months   ki0047075b-MAL-ED          INDIA                          0                 1        8    227
24 months   ki0047075b-MAL-ED          INDIA                          1                 0       54    227
24 months   ki0047075b-MAL-ED          INDIA                          1                 1       19    227
24 months   ki0047075b-MAL-ED          NEPAL                          0                 0      183    228
24 months   ki0047075b-MAL-ED          NEPAL                          0                 1        4    228
24 months   ki0047075b-MAL-ED          NEPAL                          1                 0       40    228
24 months   ki0047075b-MAL-ED          NEPAL                          1                 1        1    228
24 months   ki0047075b-MAL-ED          PERU                           0                 0      191    201
24 months   ki0047075b-MAL-ED          PERU                           0                 1        2    201
24 months   ki0047075b-MAL-ED          PERU                           1                 0        7    201
24 months   ki0047075b-MAL-ED          PERU                           1                 1        1    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 0      214    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                 1        0    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 0       23    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                 1        1    238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 0      200    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                 1        3    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 0       10    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                 1        1    214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 0      170    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                 1        4    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 0      175    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                 1       19    368
24 months   ki1000108-IRC              INDIA                          0                 0      162    409
24 months   ki1000108-IRC              INDIA                          0                 1        4    409
24 months   ki1000108-IRC              INDIA                          1                 0      216    409
24 months   ki1000108-IRC              INDIA                          1                 1       27    409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 0      400    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                 1       31    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 0      113    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                 1       34    578
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 0        5      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                 1        0      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 0        1      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                 1        0      6
24 months   ki1101329-Keneba           GAMBIA                         0                 0     1184   1565
24 months   ki1101329-Keneba           GAMBIA                         0                 1      114   1565
24 months   ki1101329-Keneba           GAMBIA                         1                 0      210   1565
24 months   ki1101329-Keneba           GAMBIA                         1                 1       57   1565
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 0      596    996
24 months   ki1113344-GMS-Nepal        NEPAL                          0                 1      106    996
24 months   ki1113344-GMS-Nepal        NEPAL                          1                 0      218    996
24 months   ki1113344-GMS-Nepal        NEPAL                          1                 1       76    996
24 months   ki1114097-CMIN             BANGLADESH                     0                 0      183    243
24 months   ki1114097-CMIN             BANGLADESH                     0                 1       17    243
24 months   ki1114097-CMIN             BANGLADESH                     1                 0       35    243
24 months   ki1114097-CMIN             BANGLADESH                     1                 1        8    243
24 months   ki1114097-CMIN             PERU                           0                 0      220    234
24 months   ki1114097-CMIN             PERU                           0                 1        0    234
24 months   ki1114097-CMIN             PERU                           1                 0       13    234
24 months   ki1114097-CMIN             PERU                           1                 1        1    234
24 months   ki1114097-CONTENT          PERU                           0                 0      161    164
24 months   ki1114097-CONTENT          PERU                           0                 1        0    164
24 months   ki1114097-CONTENT          PERU                           1                 0        3    164
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
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
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
![](/tmp/221c5c03-dc89-4898-88df-b062abe949a1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/221c5c03-dc89-4898-88df-b062abe949a1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/221c5c03-dc89-4898-88df-b062abe949a1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/221c5c03-dc89-4898-88df-b062abe949a1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.0183824   0.0023973   0.0343674
6 months    ki1000109-EE               PAKISTAN                       1                    NA                0.4230769   0.3279993   0.5181546
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0069444   0.0030280   0.0108609
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2500000   0.2009888   0.2990112
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.0094340   0.0048321   0.0140358
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.2908587   0.2439982   0.3377193
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0153453   0.0031505   0.0275401
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2616279   0.1958849   0.3273709
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0613497   0.0244231   0.0982763
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.2244898   0.1073866   0.3415930
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.0519481   0.0168206   0.0870755
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.2602740   0.1593960   0.3611519
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0719258   0.0475129   0.0963386
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2312925   0.1630702   0.2995149
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.0878274   0.0724245   0.1032303
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.2134831   0.1643169   0.2626494
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1509972   0.1135024   0.1884919
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2585034   0.1876577   0.3293491
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.0850000   0.0462699   0.1237301
24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.1860465   0.0694945   0.3025986


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.1303191   0.0962457   0.1643926
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0428994   0.0340782   0.0517206
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0588235   0.0486529   0.0689942
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0905861   0.0668565   0.1143158
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.0990566   0.0587480   0.1393652
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1189427   0.0767376   0.1611478
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1124567   0.0866788   0.1382347
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1092652   0.0938039   0.1247264
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1827309   0.1487560   0.2167058
24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.1028807   0.0646041   0.1411572


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1000109-EE               PAKISTAN                       0                    0                  1.000000    1.000000    1.000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                 23.015384    9.374634   56.504380
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.000000    1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 35.999999   19.815254   65.404155
6 months    ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.000000    1.000000
6 months    ki1101329-Keneba           GAMBIA                         1                    0                 30.831025   18.445323   51.533502
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000    1.000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 17.049419    7.408582   39.235940
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  3.659184    1.649957    8.115135
24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000    1.000000    1.000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    0                  5.010274    2.298105   10.923280
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                  3.215712    2.051097    5.041596
24 months   ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.000000    1.000000
24 months   ki1101329-Keneba           GAMBIA                         1                    0                  2.430712    1.819762    3.246775
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                  1.000000    1.000000    1.000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                  1.711975    1.182729    2.478048
24 months   ki1114097-CMIN             BANGLADESH                     0                    0                  1.000000    1.000000    1.000000
24 months   ki1114097-CMIN             BANGLADESH                     1                    0                  2.188782    1.008737    4.749273


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.1119368    0.0795820   0.1442916
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0359550    0.0277688   0.0441411
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.0493896    0.0399187   0.0588605
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0752409    0.0527631   0.0977186
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0377069    0.0078483   0.0675656
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.0669947    0.0303755   0.1036139
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0405310    0.0212525   0.0598095
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.0214377    0.0123409   0.0305346
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.0317338    0.0076837   0.0557838
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.0178807   -0.0043891   0.0401504


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.8589436    0.6801573   0.9377916
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8381226    0.7271430   0.9039633
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.8396226    0.7478059   0.8980115
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.8306003    0.6439986   0.9193928
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.3806602    0.0502002   0.5961446
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.5632516    0.2363554   0.7502121
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3604141    0.1864847   0.4971574
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.1961993    0.1126876   0.2718510
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1736639    0.0339409   0.2931785
24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.1738000   -0.0633525   0.3580619
