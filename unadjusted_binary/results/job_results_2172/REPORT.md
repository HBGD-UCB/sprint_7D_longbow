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
      W: []
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

unadjusted

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
![](/tmp/a19f537c-2105-41a8-a736-11d498d1b5e8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a19f537c-2105-41a8-a736-11d498d1b5e8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a19f537c-2105-41a8-a736-11d498d1b5e8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a19f537c-2105-41a8-a736-11d498d1b5e8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.5173913   0.4526833   0.5820993
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.3333333   0.1313112   0.5353555
0-24 months   ki1000108-IRC              INDIA                          0                    NA                0.4926254   0.4393408   0.5459099
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.3943662   0.2805500   0.5081824
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                0.5122951   0.4494640   0.5751261
0-24 months   ki1000109-ResPak           PAKISTAN                       1                    NA                0.5000000   0.3316314   0.6683686
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3774146   0.3407658   0.4140634
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3333333   0.1553946   0.5112720
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2261803   0.2091897   0.2431708
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2121212   0.1134732   0.3107693
0-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.3859355   0.3664105   0.4054606
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.6133333   0.5030976   0.7235690
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.5662879   0.5239809   0.6085948
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.6621622   0.5543098   0.7700145
0-24 months   ki1114097-CMIN             PERU                           0                    NA                0.2583942   0.2255890   0.2911993
0-24 months   ki1114097-CMIN             PERU                           1                    NA                0.4285714   0.1691609   0.6879819
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.1948882   0.1509454   0.2388310
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2727273   0.1548662   0.3905884
0-6 months    ki1000108-IRC              INDIA                          0                    NA                0.1297935   0.0939743   0.1656127
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.0845070   0.0197297   0.1492844
0-6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.3467049   0.2967079   0.3967019
0-6 months    ki1000109-EE               PAKISTAN                       1                    NA                0.3000000   0.1358009   0.4641991
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.2581967   0.2031850   0.3132085
0-6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                0.3823529   0.2187114   0.5459945
0-6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.0912516   0.0797019   0.1028013
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.1600000   0.0770139   0.2429861
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1079545   0.0814631   0.1344460
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1351351   0.0571788   0.2130915
0-6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                0.3686275   0.3093052   0.4279497
0-6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                0.5625000   0.3189763   0.8060237
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.6396761   0.5796985   0.6996538
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.8157895   0.6923182   0.9392607
6-24 months   ki1000108-IRC              INDIA                          0                    NA                0.2363636   0.1860765   0.2866508
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.2812500   0.1709349   0.3915651
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                0.0827586   0.0377789   0.1277383
6-24 months   ki1000109-ResPak           PAKISTAN                       1                    NA                0.2272727   0.0516310   0.4029145
6-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.2595033   0.2401558   0.2788508
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.4210526   0.2640337   0.5780716
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4299287   0.3825893   0.4772681
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5762712   0.4500500   0.7024924


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
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 0.6442577   0.3469785   1.196236
0-24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA                          1                    0                 0.8005398   0.5882062   1.089523
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000109-ResPak           PAKISTAN                       1                    0                 0.9760000   0.6820382   1.396661
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.8832021   0.5133602   1.519490
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9378414   0.5855185   1.502167
0-24 months   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba           GAMBIA                         1                    0                 1.5892119   1.3185353   1.915455
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.1693031   0.9774700   1.398784
0-24 months   ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1114097-CMIN             PERU                           1                    0                 1.6585956   0.8936053   3.078473
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.3994039   0.8595074   2.278434
0-6 months    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA                          1                    0                 0.6510883   0.2882847   1.470477
0-6 months    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1000109-EE               PAKISTAN                       1                    0                 0.8652893   0.4913001   1.523968
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1000109-ResPak           PAKISTAN                       1                    0                 1.4808590   0.9180860   2.388604
0-6 months    ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba           GAMBIA                         1                    0                 1.7533945   1.0280569   2.990489
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.2517781   0.6687556   2.343081
0-6 months    ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1114097-CMIN             BANGLADESH                     1                    0                 1.5259309   0.9614925   2.421719
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.2753165   1.0673221   1.523844
6-24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA                          1                    0                 1.1899038   0.7615921   1.859094
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000109-ResPak           PAKISTAN                       1                    0                 2.7462121   1.0676061   7.064104
6-24 months   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba           GAMBIA                         1                    0                 1.6225329   1.1092551   2.373316
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.3403877   1.0489697   1.712765


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0153993   -0.0342382   0.0034396
0-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0170156   -0.0390746   0.0050433
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0015037   -0.0234878   0.0204803
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0017003   -0.0087359   0.0053353
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0003873   -0.0031462   0.0023716
0-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0069216    0.0031810   0.0106622
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0117852   -0.0026766   0.0262470
0-24 months   ki1114097-CMIN             PERU                           0                    NA                 0.0034084   -0.0021192   0.0089360
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0116336   -0.0073792   0.0306464
0-6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0078423   -0.0207677   0.0050831
0-6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.0036970   -0.0173427   0.0099488
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0151846   -0.0064664   0.0368355
0-6 months    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0020926   -0.0005000   0.0046852
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0033411   -0.0068049   0.0134871
0-6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0114463   -0.0043238   0.0272165
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0234818    0.0038997   0.0430638
6-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0084741   -0.0144906   0.0314388
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0190378   -0.0059778   0.0440533
6-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0030526   -0.0000877   0.0061930
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0179879    0.0008683   0.0351075


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0306763   -0.0691093   0.0063750
0-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0357764   -0.0833420   0.0097008
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0029439   -0.0469215   0.0391863
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0045254   -0.0234281   0.0140281
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0017152   -0.0140084   0.0104291
0-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0176186    0.0080401   0.0271047
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0203871   -0.0050192   0.0451511
0-24 months   ki1114097-CMIN             PERU                           0                    NA                 0.0130190   -0.0083030   0.0338902
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0563309   -0.0399820   0.1437243
0-6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0643068   -0.1747216   0.0357299
0-6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.0107780   -0.0513557   0.0282335
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0555436   -0.0268424   0.1313195
0-6 months    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0224180   -0.0056422   0.0496952
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0300204   -0.0653534   0.1168560
0-6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0301161   -0.0123265   0.0707793
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0354090    0.0050059   0.0648832
6-24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0346112   -0.0638000   0.1239184
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.1870183   -0.0835852   0.3900440
6-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0116267   -0.0003975   0.0235063
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0401591    0.0010466   0.0777402
