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
        value: FALSE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''

---







## Methods
## Outcome Variable

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** pers_wast

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* W_mhtcm
* month
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_W_mhtcm
* delta_month
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        pers_wast    ever_stunted   n_cell      n
------------  -------------------------  -----------------------------  ----------  -------------  -------  -----
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                       0      210    263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                       1       44    263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                       0        7    263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                       1        2    263
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                       0      207    233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                       1       25    233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                       0        1    233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                       1        0    233
0-6 months    ki0047075b-MAL-ED          INDIA                          0                       0      190    251
0-6 months    ki0047075b-MAL-ED          INDIA                          0                       1       40    251
0-6 months    ki0047075b-MAL-ED          INDIA                          1                       0       19    251
0-6 months    ki0047075b-MAL-ED          INDIA                          1                       1        2    251
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                       0      207    240
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                       1       28    240
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                       0        5    240
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                       1        0    240
0-6 months    ki0047075b-MAL-ED          PERU                           0                       0      266    302
0-6 months    ki0047075b-MAL-ED          PERU                           0                       1       36    302
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      273    313
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       33    313
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        7    313
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0    313
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      219    261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       42    261
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                       0      252    368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                       1       61    368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                       0       40    368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                       1       15    368
0-6 months    ki1000108-IRC              INDIA                          0                       0      295    410
0-6 months    ki1000108-IRC              INDIA                          0                       1       44    410
0-6 months    ki1000108-IRC              INDIA                          1                       0       65    410
0-6 months    ki1000108-IRC              INDIA                          1                       1        6    410
0-6 months    ki1000109-EE               PAKISTAN                       0                       0      228    379
0-6 months    ki1000109-EE               PAKISTAN                       0                       1      121    379
0-6 months    ki1000109-EE               PAKISTAN                       1                       0       21    379
0-6 months    ki1000109-EE               PAKISTAN                       1                       1        9    379
0-6 months    ki1000109-ResPak           PAKISTAN                       0                       0      181    278
0-6 months    ki1000109-ResPak           PAKISTAN                       0                       1       63    278
0-6 months    ki1000109-ResPak           PAKISTAN                       1                       0       21    278
0-6 months    ki1000109-ResPak           PAKISTAN                       1                       1       13    278
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                       0      609    700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                       1       64    700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                       0       25    700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                       1        2    700
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       0     2172   2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       1      158   2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       0       63   2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       1        3   2396
0-6 months    ki1101329-Keneba           GAMBIA                         0                       0     2171   2464
0-6 months    ki1101329-Keneba           GAMBIA                         0                       1      218   2464
0-6 months    ki1101329-Keneba           GAMBIA                         1                       0       63   2464
0-6 months    ki1101329-Keneba           GAMBIA                         1                       1       12   2464
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                       0      219    295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                       1       66    295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                       0        4    295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                       1        6    295
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                       0      471    602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                       1       57    602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                       0       64    602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                       1       10    602
0-6 months    ki1114097-CMIN             BANGLADESH                     0                       0      161    271
0-6 months    ki1114097-CMIN             BANGLADESH                     0                       1       94    271
0-6 months    ki1114097-CMIN             BANGLADESH                     1                       0        7    271
0-6 months    ki1114097-CMIN             BANGLADESH                     1                       1        9    271
0-6 months    ki1114097-CMIN             PERU                           0                       0      644    699
0-6 months    ki1114097-CMIN             PERU                           0                       1       41    699
0-6 months    ki1114097-CMIN             PERU                           1                       0       14    699
0-6 months    ki1114097-CMIN             PERU                           1                       1        0    699
0-6 months    ki1114097-CONTENT          PERU                           0                       0      197    215
0-6 months    ki1114097-CONTENT          PERU                           0                       1       18    215
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                       0      117    195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                       1       72    195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                       0        5    195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                       1        1    195
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                       0      194    203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                       1        8    203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                       0        1    203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                       1        0    203
6-24 months   ki0047075b-MAL-ED          INDIA                          0                       0      116    194
6-24 months   ki0047075b-MAL-ED          INDIA                          0                       1       64    194
6-24 months   ki0047075b-MAL-ED          INDIA                          1                       0       12    194
6-24 months   ki0047075b-MAL-ED          INDIA                          1                       1        2    194
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                       0      184    224
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                       1       36    224
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                       0        4    224
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                       1        0    224
6-24 months   ki0047075b-MAL-ED          PERU                           0                       0      154    229
6-24 months   ki0047075b-MAL-ED          PERU                           0                       1       75    229
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      163    224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       59    224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        2    224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0    224
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       71    187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1      116    187
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                       0       89    285
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                       1      158    285
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        7    285
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                       1       31    285
6-24 months   ki1000108-IRC              INDIA                          0                       0      210    339
6-24 months   ki1000108-IRC              INDIA                          0                       1       65    339
6-24 months   ki1000108-IRC              INDIA                          1                       0       46    339
6-24 months   ki1000108-IRC              INDIA                          1                       1       18    339
6-24 months   ki1000109-EE               PAKISTAN                       0                       0       47    188
6-24 months   ki1000109-EE               PAKISTAN                       0                       1      129    188
6-24 months   ki1000109-EE               PAKISTAN                       1                       0        0    188
6-24 months   ki1000109-EE               PAKISTAN                       1                       1       12    188
6-24 months   ki1000109-ResPak           PAKISTAN                       0                       0      133    167
6-24 months   ki1000109-ResPak           PAKISTAN                       0                       1       12    167
6-24 months   ki1000109-ResPak           PAKISTAN                       1                       0       17    167
6-24 months   ki1000109-ResPak           PAKISTAN                       1                       1        5    167
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                       0      373    497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                       1      115    497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                       0        5    497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                       1        4    497
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       0     1562   1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       1      243   1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       0       38   1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       1        4   1847
6-24 months   ki1101329-Keneba           GAMBIA                         0                       0     1461   2011
6-24 months   ki1101329-Keneba           GAMBIA                         0                       1      512   2011
6-24 months   ki1101329-Keneba           GAMBIA                         1                       0       22   2011
6-24 months   ki1101329-Keneba           GAMBIA                         1                       1       16   2011
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                       0      139    176
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                       1       35    176
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                       0        1    176
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                       1        1    176
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                       0      240    480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                       1      181    480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                       0       25    480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                       1       34    480
6-24 months   ki1114097-CMIN             BANGLADESH                     0                       0       67    166
6-24 months   ki1114097-CMIN             BANGLADESH                     0                       1       93    166
6-24 months   ki1114097-CMIN             BANGLADESH                     1                       0        2    166
6-24 months   ki1114097-CMIN             BANGLADESH                     1                       1        4    166
6-24 months   ki1114097-CMIN             PERU                           0                       0      478    601
6-24 months   ki1114097-CMIN             PERU                           0                       1      114    601
6-24 months   ki1114097-CMIN             PERU                           1                       0        7    601
6-24 months   ki1114097-CMIN             PERU                           1                       1        2    601
6-24 months   ki1114097-CONTENT          PERU                           0                       0      181    200
6-24 months   ki1114097-CONTENT          PERU                           0                       1       19    200
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                       0      125    263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                       1      129    263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                       0        6    263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                       1        3    263
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                       0      196    233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                       1       36    233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                       0        1    233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                       1        0    233
0-24 months   ki0047075b-MAL-ED          INDIA                          0                       0      111    251
0-24 months   ki0047075b-MAL-ED          INDIA                          0                       1      119    251
0-24 months   ki0047075b-MAL-ED          INDIA                          1                       0       14    251
0-24 months   ki0047075b-MAL-ED          INDIA                          1                       1        7    251
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                       0      176    240
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                       1       59    240
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                       0        5    240
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                       1        0    240
0-24 months   ki0047075b-MAL-ED          PERU                           0                       0      167    302
0-24 months   ki0047075b-MAL-ED          PERU                           0                       1      135    302
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      186    313
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1      120    313
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        7    313
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0    313
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       80    261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1      181    261
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                       0       71    369
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                       1      242    369
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        4    369
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                       1       52    369
0-24 months   ki1000108-IRC              INDIA                          0                       0      172    410
0-24 months   ki1000108-IRC              INDIA                          0                       1      167    410
0-24 months   ki1000108-IRC              INDIA                          1                       0       43    410
0-24 months   ki1000108-IRC              INDIA                          1                       1       28    410
0-24 months   ki1000109-EE               PAKISTAN                       0                       0       44    379
0-24 months   ki1000109-EE               PAKISTAN                       0                       1      305    379
0-24 months   ki1000109-EE               PAKISTAN                       1                       0        1    379
0-24 months   ki1000109-EE               PAKISTAN                       1                       1       29    379
0-24 months   ki1000109-ResPak           PAKISTAN                       0                       0      119    278
0-24 months   ki1000109-ResPak           PAKISTAN                       0                       1      125    278
0-24 months   ki1000109-ResPak           PAKISTAN                       1                       0       17    278
0-24 months   ki1000109-ResPak           PAKISTAN                       1                       1       17    278
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                       0      419    700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                       1      254    700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                       0       18    700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                       1        9    700
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       0     1803   2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       1      527   2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       0       52   2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       1       14   2396
0-24 months   ki1101329-Keneba           GAMBIA                         0                       0     1467   2464
0-24 months   ki1101329-Keneba           GAMBIA                         0                       1      922   2464
0-24 months   ki1101329-Keneba           GAMBIA                         1                       0       29   2464
0-24 months   ki1101329-Keneba           GAMBIA                         1                       1       46   2464
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                       0      157    295
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                       1      128    295
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                       0        1    295
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                       1        9    295
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                       0      229    602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                       1      299    602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                       0       25    602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                       1       49    602
0-24 months   ki1114097-CMIN             BANGLADESH                     0                       0       61    271
0-24 months   ki1114097-CMIN             BANGLADESH                     0                       1      194    271
0-24 months   ki1114097-CMIN             BANGLADESH                     1                       0        4    271
0-24 months   ki1114097-CMIN             BANGLADESH                     1                       1       12    271
0-24 months   ki1114097-CMIN             PERU                           0                       0      508    699
0-24 months   ki1114097-CMIN             PERU                           0                       1      177    699
0-24 months   ki1114097-CMIN             PERU                           1                       0        8    699
0-24 months   ki1114097-CMIN             PERU                           1                       1        6    699
0-24 months   ki1114097-CONTENT          PERU                           0                       0      166    215
0-24 months   ki1114097-CONTENT          PERU                           0                       1       49    215


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1114097-CMIN, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##          ever_stunted
## pers_wast   0   1
##         0 167 135
##         1   0   0
##          ever_stunted
## pers_wast   0   1
##         0  80 181
##         1   0   0
##          ever_stunted
## pers_wast   0   1
##         0 166  49
##         1   0   0
##          ever_stunted
## pers_wast   0   1
##         0 266  36
##         1   0   0
##          ever_stunted
## pers_wast   0   1
##         0 219  42
##         1   0   0
##          ever_stunted
## pers_wast   0   1
##         0 197  18
##         1   0   0
##          ever_stunted
## pers_wast   0   1
##         0 154  75
##         1   0   0
##          ever_stunted
## pers_wast   0   1
##         0  71 116
##         1   0   0
##          ever_stunted
## pers_wast   0   1
##         0 181  19
##         1   0   0
```




# Results Detail

## Results Plots
![](/tmp/4bdaf90d-aff3-421b-98ae-9aeb0869280c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4bdaf90d-aff3-421b-98ae-9aeb0869280c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/4bdaf90d-aff3-421b-98ae-9aeb0869280c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4bdaf90d-aff3-421b-98ae-9aeb0869280c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.5149495   0.4505204   0.5793785
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.3579093   0.1675590   0.5482595
0-24 months   ki1000108-IRC              INDIA                          0                    NA                0.4923364   0.4391046   0.5455682
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.3958036   0.2845350   0.5070723
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                0.5122326   0.4493872   0.5750779
0-24 months   ki1000109-ResPak           PAKISTAN                       1                    NA                0.4978531   0.3301418   0.6655644
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3778351   0.3412635   0.4144067
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3265880   0.1645746   0.4886014
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2266390   0.2096616   0.2436163
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2339881   0.1691311   0.2988451
0-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.3873660   0.3678786   0.4068534
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.4871756   0.4275727   0.5467786
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.5662879   0.5239809   0.6085948
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.6621622   0.5543098   0.7700145
0-24 months   ki1114097-CMIN             PERU                           0                    NA                0.2584251   0.2256043   0.2912459
0-24 months   ki1114097-CMIN             PERU                           1                    NA                0.3844336   0.1472591   0.6216080
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.1956928   0.1519227   0.2394630
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2724265   0.1593670   0.3854860
0-6 months    ki1000108-IRC              INDIA                          0                    NA                0.1293638   0.0936616   0.1650660
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.0846922   0.0219068   0.1474775
0-6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.3467049   0.2967079   0.3967019
0-6 months    ki1000109-EE               PAKISTAN                       1                    NA                0.3000000   0.1358009   0.4641991
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.2579362   0.2029547   0.3129177
0-6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                0.3826255   0.2192016   0.5460495
0-6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.0917159   0.0801656   0.1032661
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.1229932   0.0778690   0.1681173
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1083046   0.0819241   0.1346851
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1303262   0.0569430   0.2037093
0-6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                0.3686462   0.3093031   0.4279893
0-6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                0.5545936   0.3142496   0.7949375
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.6365301   0.5766281   0.6964320
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.7201144   0.6038070   0.8364218
6-24 months   ki1000108-IRC              INDIA                          0                    NA                0.2355304   0.1854189   0.2856419
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.2851042   0.1815424   0.3886660
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                0.0823034   0.0374555   0.1271513
6-24 months   ki1000109-ResPak           PAKISTAN                       1                    NA                0.2507983   0.0762087   0.4253879
6-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.2602315   0.2409100   0.2795529
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.5377198   0.4833286   0.5921110
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4314613   0.3842727   0.4786500
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.6270742   0.5121564   0.7419919


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5019920   0.4400130   0.5639710
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4756098   0.4272105   0.5240091
0-24 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.5107914   0.4519237   0.5696591
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3757143   0.3398113   0.4116172
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2257930   0.2090482   0.2425378
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3928571   0.3735695   0.4121448
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5780731   0.5385891   0.6175571
0-24 months   ki1114097-CMIN             PERU                           NA                   NA                0.2618026   0.2291894   0.2944158
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2065217   0.1651060   0.2479375
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1219512   0.0902381   0.1536643
0-6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.3430079   0.2951521   0.3908637
0-6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2733813   0.2208950   0.3258676
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0933442   0.0818552   0.1048331
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1112957   0.0861520   0.1364394
0-6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.3800738   0.3221749   0.4379727
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6631579   0.6081898   0.7181260
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.2448378   0.1989973   0.2906782
6-24 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1017964   0.0557975   0.1477953
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.2625559   0.2433195   0.2817924
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4479167   0.4033837   0.4924496


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 0.6950376   0.4040798   1.195500
0-24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA                          1                    0                 0.8039293   0.5956305   1.085073
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000109-ResPak           PAKISTAN                       1                    0                 0.9719279   0.6790701   1.391085
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.8643665   0.5226287   1.429561
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0324267   0.7752443   1.374928
0-24 months   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba           GAMBIA                         1                    0                 1.2576624   1.1032334   1.433708
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.1693031   0.9774700   1.398784
0-24 months   ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1114097-CMIN             PERU                           1                    0                 1.4876013   0.7924265   2.792635
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.3921130   0.8703339   2.226707
0-6 months    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA                          1                    0                 0.6546821   0.2972623   1.441853
0-6 months    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1000109-EE               PAKISTAN                       1                    0                 0.8652893   0.4913001   1.523968
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1000109-ResPak           PAKISTAN                       1                    0                 1.4834115   0.9203719   2.390892
0-6 months    ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba           GAMBIA                         1                    0                 1.3410238   0.9109548   1.974132
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.2033298   0.6526586   2.218622
0-6 months    ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1114097-CMIN             BANGLADESH                     1                    0                 1.5044060   0.9475547   2.388503
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.1313125   0.9384630   1.363792
6-24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA                          1                    0                 1.2104772   0.7955068   1.841914
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000109-ResPak           PAKISTAN                       1                    0                 3.0472406   1.2618944   7.358520
6-24 months   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba           GAMBIA                         1                    0                 2.0663135   1.8259575   2.338308
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.4533727   1.1745492   1.798385


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0129575   -0.0304171   0.0045021
0-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0167267   -0.0382513   0.0047980
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0014412   -0.0234431   0.0205607
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0021208   -0.0087513   0.0045097
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0008460   -0.0035919   0.0019000
0-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0054912    0.0020303   0.0089521
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0117852   -0.0026766   0.0262470
0-24 months   ki1114097-CMIN             PERU                           0                    NA                 0.0033774   -0.0021441   0.0088990
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0108289   -0.0079590   0.0296168
0-6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0074126   -0.0202105   0.0053853
0-6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.0036970   -0.0173427   0.0099488
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0154451   -0.0061990   0.0370892
0-6 months    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0016283   -0.0009414   0.0041980
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0029911   -0.0071033   0.0130855
0-6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0114276   -0.0043439   0.0271991
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0266278    0.0063788   0.0468769
6-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0093074   -0.0134367   0.0320514
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0194930   -0.0053920   0.0443780
6-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0023245   -0.0006810   0.0053300
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0164553   -0.0005873   0.0334980


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0258121   -0.0613324   0.0085195
0-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0351689   -0.0815276   0.0092027
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0028215   -0.0468353   0.0393418
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0056447   -0.0234515   0.0118522
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0037468   -0.0159844   0.0083435
0-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0139775    0.0051234   0.0227528
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0203871   -0.0050192   0.0451511
0-24 months   ki1114097-CMIN             PERU                           0                    NA                 0.0129007   -0.0084023   0.0337537
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0524348   -0.0425827   0.1387927
0-6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0607830   -0.1701427   0.0383560
0-6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.0107780   -0.0513557   0.0282335
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0564966   -0.0258596   0.1322412
0-6 months    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0174440   -0.0103665   0.0444891
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0268751   -0.0679069   0.1132447
0-6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0300668   -0.0123855   0.0707389
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0401531    0.0087016   0.0706067
6-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0380144   -0.0594092   0.1264789
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.1914900   -0.0773581   0.3932487
6-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0088533   -0.0026459   0.0202206
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0367375   -0.0021377   0.0741046
