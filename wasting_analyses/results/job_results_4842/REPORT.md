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

**Intervention Variable:** pers_wast

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        pers_wast    swasted   n_cell      n
----------  -------------------------  -----------------------------  ----------  --------  -------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  0      225    241
Birth       ki0047075b-MAL-ED          BANGLADESH                     0                  1        7    241
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  0        8    241
Birth       ki0047075b-MAL-ED          BANGLADESH                     1                  1        1    241
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  0      183    183
Birth       ki0047075b-MAL-ED          BRAZIL                         0                  1        0    183
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  0        0    183
Birth       ki0047075b-MAL-ED          BRAZIL                         1                  1        0    183
Birth       ki0047075b-MAL-ED          INDIA                          0                  0      185    203
Birth       ki0047075b-MAL-ED          INDIA                          0                  1        3    203
Birth       ki0047075b-MAL-ED          INDIA                          1                  0       11    203
Birth       ki0047075b-MAL-ED          INDIA                          1                  1        4    203
Birth       ki0047075b-MAL-ED          NEPAL                          0                  0      162    168
Birth       ki0047075b-MAL-ED          NEPAL                          0                  1        3    168
Birth       ki0047075b-MAL-ED          NEPAL                          1                  0        2    168
Birth       ki0047075b-MAL-ED          NEPAL                          1                  1        1    168
Birth       ki0047075b-MAL-ED          PERU                           0                  0      279    279
Birth       ki0047075b-MAL-ED          PERU                           0                  1        0    279
Birth       ki0047075b-MAL-ED          PERU                           1                  0        0    279
Birth       ki0047075b-MAL-ED          PERU                           1                  1        0    279
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      252    258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        1    258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        4    258
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        1    258
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      117    118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        1    118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        0    118
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0    118
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  0       75     88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        3     88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  0        8     88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        2     88
Birth       ki1000108-IRC              INDIA                          0                  0      250    343
Birth       ki1000108-IRC              INDIA                          0                  1       37    343
Birth       ki1000108-IRC              INDIA                          1                  0       39    343
Birth       ki1000108-IRC              INDIA                          1                  1       17    343
Birth       ki1000109-EE               PAKISTAN                       0                  0        2      2
Birth       ki1000109-EE               PAKISTAN                       0                  1        0      2
Birth       ki1000109-EE               PAKISTAN                       1                  0        0      2
Birth       ki1000109-EE               PAKISTAN                       1                  1        0      2
Birth       ki1000109-ResPak           PAKISTAN                       0                  0        5      6
Birth       ki1000109-ResPak           PAKISTAN                       0                  1        0      6
Birth       ki1000109-ResPak           PAKISTAN                       1                  0        1      6
Birth       ki1000109-ResPak           PAKISTAN                       1                  1        0      6
Birth       ki1101329-Keneba           GAMBIA                         0                  0     1385   1423
Birth       ki1101329-Keneba           GAMBIA                         0                  1        7   1423
Birth       ki1101329-Keneba           GAMBIA                         1                  0       27   1423
Birth       ki1101329-Keneba           GAMBIA                         1                  1        4   1423
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
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  0      234    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     0                  1        0    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  0        5    241
6 months    ki0047075b-MAL-ED          BANGLADESH                     1                  1        2    241
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  0      208    209
6 months    ki0047075b-MAL-ED          BRAZIL                         0                  1        0    209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  0        1    209
6 months    ki0047075b-MAL-ED          BRAZIL                         1                  1        0    209
6 months    ki0047075b-MAL-ED          INDIA                          0                  0      217    236
6 months    ki0047075b-MAL-ED          INDIA                          0                  1        1    236
6 months    ki0047075b-MAL-ED          INDIA                          1                  0       14    236
6 months    ki0047075b-MAL-ED          INDIA                          1                  1        4    236
6 months    ki0047075b-MAL-ED          NEPAL                          0                  0      232    236
6 months    ki0047075b-MAL-ED          NEPAL                          0                  1        0    236
6 months    ki0047075b-MAL-ED          NEPAL                          1                  0        4    236
6 months    ki0047075b-MAL-ED          NEPAL                          1                  1        0    236
6 months    ki0047075b-MAL-ED          PERU                           0                  0      273    273
6 months    ki0047075b-MAL-ED          PERU                           0                  1        0    273
6 months    ki0047075b-MAL-ED          PERU                           1                  0        0    273
6 months    ki0047075b-MAL-ED          PERU                           1                  1        0    273
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      250    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        2    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        1    254
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        1    254
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      247    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        0    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        0    247
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0    247
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      311    365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        1    365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       42    365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                  1       11    365
6 months    ki1000108-IRC              INDIA                          0                  0      335    408
6 months    ki1000108-IRC              INDIA                          0                  1        4    408
6 months    ki1000108-IRC              INDIA                          1                  0       51    408
6 months    ki1000108-IRC              INDIA                          1                  1       18    408
6 months    ki1000109-EE               PAKISTAN                       0                  0      692    752
6 months    ki1000109-EE               PAKISTAN                       0                  1        2    752
6 months    ki1000109-EE               PAKISTAN                       1                  0       42    752
6 months    ki1000109-EE               PAKISTAN                       1                  1       16    752
6 months    ki1000109-ResPak           PAKISTAN                       0                  0      203    235
6 months    ki1000109-ResPak           PAKISTAN                       0                  1        3    235
6 months    ki1000109-ResPak           PAKISTAN                       1                  0       23    235
6 months    ki1000109-ResPak           PAKISTAN                       1                  1        6    235
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  0      568    582
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                  1        1    582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  0        9    582
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                  1        4    582
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0     1974   2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1        3   2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0       42   2028
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1        9   2028
6 months    ki1101329-Keneba           GAMBIA                         0                  0     1984   2057
6 months    ki1101329-Keneba           GAMBIA                         0                  1       21   2057
6 months    ki1101329-Keneba           GAMBIA                         1                  0       39   2057
6 months    ki1101329-Keneba           GAMBIA                         1                  1       13   2057
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                  0      270    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                  1        0    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                  0       10    280
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                  1        0    280
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  0      994   1126
6 months    ki1113344-GMS-Nepal        NEPAL                          0                  1        0   1126
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  0      118   1126
6 months    ki1113344-GMS-Nepal        NEPAL                          1                  1       14   1126
6 months    ki1114097-CMIN             BANGLADESH                     0                  0      232    243
6 months    ki1114097-CMIN             BANGLADESH                     0                  1        0    243
6 months    ki1114097-CMIN             BANGLADESH                     1                  0        6    243
6 months    ki1114097-CMIN             BANGLADESH                     1                  1        5    243
6 months    ki1114097-CMIN             PERU                           0                  0      613    626
6 months    ki1114097-CMIN             PERU                           0                  1        0    626
6 months    ki1114097-CMIN             PERU                           1                  0       10    626
6 months    ki1114097-CMIN             PERU                           1                  1        3    626
6 months    ki1114097-CONTENT          PERU                           0                  0      215    215
6 months    ki1114097-CONTENT          PERU                           0                  1        0    215
6 months    ki1114097-CONTENT          PERU                           1                  0        0    215
6 months    ki1114097-CONTENT          PERU                           1                  1        0    215
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  0      206    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                  1        0    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  0        6    212
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                  1        0    212
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  0      168    169
24 months   ki0047075b-MAL-ED          BRAZIL                         0                  1        0    169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  0        0    169
24 months   ki0047075b-MAL-ED          BRAZIL                         1                  1        1    169
24 months   ki0047075b-MAL-ED          INDIA                          0                  0      209    227
24 months   ki0047075b-MAL-ED          INDIA                          0                  1        0    227
24 months   ki0047075b-MAL-ED          INDIA                          1                  0       16    227
24 months   ki0047075b-MAL-ED          INDIA                          1                  1        2    227
24 months   ki0047075b-MAL-ED          NEPAL                          0                  0      224    228
24 months   ki0047075b-MAL-ED          NEPAL                          0                  1        0    228
24 months   ki0047075b-MAL-ED          NEPAL                          1                  0        4    228
24 months   ki0047075b-MAL-ED          NEPAL                          1                  1        0    228
24 months   ki0047075b-MAL-ED          PERU                           0                  0      200    201
24 months   ki0047075b-MAL-ED          PERU                           0                  1        1    201
24 months   ki0047075b-MAL-ED          PERU                           1                  0        0    201
24 months   ki0047075b-MAL-ED          PERU                           1                  1        0    201
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  0      236    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                  1        0    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  0        2    238
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                  1        0    238
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  0      214    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                  1        0    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  0        0    214
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                  1        0    214
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  0      311    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                  1        1    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  0       54    368
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                  1        2    368
24 months   ki1000108-IRC              INDIA                          0                  0      337    409
24 months   ki1000108-IRC              INDIA                          0                  1        2    409
24 months   ki1000108-IRC              INDIA                          1                  0       67    409
24 months   ki1000108-IRC              INDIA                          1                  1        3    409
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  0      559    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                  1        5    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  0       10    578
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                  1        4    578
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  0        6      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                  1        0      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  0        0      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                  1        0      6
24 months   ki1101329-Keneba           GAMBIA                         0                  0     1497   1565
24 months   ki1101329-Keneba           GAMBIA                         0                  1       26   1565
24 months   ki1101329-Keneba           GAMBIA                         1                  0       39   1565
24 months   ki1101329-Keneba           GAMBIA                         1                  1        3   1565
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  0      858    996
24 months   ki1113344-GMS-Nepal        NEPAL                          0                  1       22    996
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  0      108    996
24 months   ki1113344-GMS-Nepal        NEPAL                          1                  1        8    996
24 months   ki1114097-CMIN             BANGLADESH                     0                  0      231    243
24 months   ki1114097-CMIN             BANGLADESH                     0                  1        2    243
24 months   ki1114097-CMIN             BANGLADESH                     1                  0       10    243
24 months   ki1114097-CMIN             BANGLADESH                     1                  1        0    243
24 months   ki1114097-CMIN             PERU                           0                  0      228    234
24 months   ki1114097-CMIN             PERU                           0                  1        0    234
24 months   ki1114097-CMIN             PERU                           1                  0        6    234
24 months   ki1114097-CMIN             PERU                           1                  1        0    234
24 months   ki1114097-CONTENT          PERU                           0                  0      164    164
24 months   ki1114097-CONTENT          PERU                           0                  1        0    164
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
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
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
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
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
![](/tmp/39abb91a-98d9-426e-9c27-2286ca2b965a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/39abb91a-98d9-426e-9c27-2286ca2b965a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/39abb91a-98d9-426e-9c27-2286ca2b965a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/39abb91a-98d9-426e-9c27-2286ca2b965a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  --------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC         INDIA     0                    NA                0.1289199   0.0900932   0.1677465
Birth       ki1000108-IRC         INDIA     1                    NA                0.3035714   0.1829688   0.4241741
6 months    ki1101329-Keneba      GAMBIA    0                    NA                0.0104738   0.0060166   0.0149310
6 months    ki1101329-Keneba      GAMBIA    1                    NA                0.2500000   0.1322794   0.3677206
24 months   ki1113344-GMS-Nepal   NEPAL     0                    NA                0.0250000   0.0103974   0.0396026
24 months   ki1113344-GMS-Nepal   NEPAL     1                    NA                0.0689655   0.0036871   0.1342439


### Parameter: E(Y)


agecat      studyid               country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  --------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC         INDIA     NA                   NA                0.1574344   0.1188345   0.1960344
6 months    ki1101329-Keneba      GAMBIA    NA                   NA                0.0165289   0.0110178   0.0220400
24 months   ki1113344-GMS-Nepal   NEPAL     NA                   NA                0.0301205   0.0150939   0.0451470


### Parameter: RR


agecat      studyid               country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  --------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC         INDIA     0                    0                  1.000000    1.000000    1.000000
Birth       ki1000108-IRC         INDIA     1                    0                  2.354730    1.430315    3.876596
6 months    ki1101329-Keneba      GAMBIA    0                    0                  1.000000    1.000000    1.000000
6 months    ki1101329-Keneba      GAMBIA    1                    0                 23.869048   12.653000   45.027380
24 months   ki1113344-GMS-Nepal   NEPAL     0                    0                  1.000000    1.000000    1.000000
24 months   ki1113344-GMS-Nepal   NEPAL     1                    0                  2.758621    0.907081    8.389535


### Parameter: PAR


agecat      studyid               country   intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------------  --------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000108-IRC         INDIA     0                    NA                0.0285145    0.0067271   0.0503020
6 months    ki1101329-Keneba      GAMBIA    0                    NA                0.0060551    0.0026624   0.0094478
24 months   ki1113344-GMS-Nepal   NEPAL     0                    NA                0.0051205   -0.0027682   0.0130091


### Parameter: PAF


agecat      studyid               country   intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------------  --------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1000108-IRC         INDIA     0                    NA                0.1811201    0.0362928   0.3041826
6 months    ki1101329-Keneba      GAMBIA    0                    NA                0.3663342    0.1766678   0.5123082
24 months   ki1113344-GMS-Nepal   NEPAL     0                    NA                0.1700000   -0.1197603   0.3847790
