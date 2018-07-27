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

**Intervention Variable:** anywast06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        anywast06    ever_stunted   n_cell      n
------------  -------------------------  -----------------------------  ----------  -------------  -------  -----
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                       0      168    263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                       1       36    263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                       0       49    263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                       1       10    263
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                       0      194    233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                       1       25    233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                       0       14    233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                       1        0    233
0-6 months    ki0047075b-MAL-ED          INDIA                          0                       0      144    251
0-6 months    ki0047075b-MAL-ED          INDIA                          0                       1       28    251
0-6 months    ki0047075b-MAL-ED          INDIA                          1                       0       65    251
0-6 months    ki0047075b-MAL-ED          INDIA                          1                       1       14    251
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                       0      177    240
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                       1       19    240
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                       0       35    240
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                       1        9    240
0-6 months    ki0047075b-MAL-ED          PERU                           0                       0      258    302
0-6 months    ki0047075b-MAL-ED          PERU                           0                       1       33    302
0-6 months    ki0047075b-MAL-ED          PERU                           1                       0        8    302
0-6 months    ki0047075b-MAL-ED          PERU                           1                       1        3    302
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      251    313
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       27    313
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0       29    313
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        6    313
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0      210    261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       40    261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        9    261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        2    261
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                       0      137    368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                       1       37    368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                       0      155    368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                       1       39    368
0-6 months    ki1000108-IRC              INDIA                          0                       0      138    410
0-6 months    ki1000108-IRC              INDIA                          0                       1       28    410
0-6 months    ki1000108-IRC              INDIA                          1                       0      222    410
0-6 months    ki1000108-IRC              INDIA                          1                       1       22    410
0-6 months    ki1000109-EE               PAKISTAN                       0                       0      177    379
0-6 months    ki1000109-EE               PAKISTAN                       0                       1       97    379
0-6 months    ki1000109-EE               PAKISTAN                       1                       0       72    379
0-6 months    ki1000109-EE               PAKISTAN                       1                       1       33    379
0-6 months    ki1000109-ResPak           PAKISTAN                       0                       0      127    278
0-6 months    ki1000109-ResPak           PAKISTAN                       0                       1       43    278
0-6 months    ki1000109-ResPak           PAKISTAN                       1                       0       75    278
0-6 months    ki1000109-ResPak           PAKISTAN                       1                       1       33    278
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                       0      475    700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                       1       44    700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                       0      159    700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                       1       22    700
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       0     1916   2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       1      138   2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       0      319   2396
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       1       23   2396
0-6 months    ki1101329-Keneba           GAMBIA                         0                       0     1867   2464
0-6 months    ki1101329-Keneba           GAMBIA                         0                       1      185   2464
0-6 months    ki1101329-Keneba           GAMBIA                         1                       0      367   2464
0-6 months    ki1101329-Keneba           GAMBIA                         1                       1       45   2464
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                       0      219    295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                       1       66    295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                       0        4    295
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                       1        6    295
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                       0      371    602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                       1       48    602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                       0      164    602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                       1       19    602
0-6 months    ki1114097-CMIN             BANGLADESH                     0                       0      137    271
0-6 months    ki1114097-CMIN             BANGLADESH                     0                       1       84    271
0-6 months    ki1114097-CMIN             BANGLADESH                     1                       0       31    271
0-6 months    ki1114097-CMIN             BANGLADESH                     1                       1       19    271
0-6 months    ki1114097-CMIN             PERU                           0                       0      614    699
0-6 months    ki1114097-CMIN             PERU                           0                       1       36    699
0-6 months    ki1114097-CMIN             PERU                           1                       0       44    699
0-6 months    ki1114097-CMIN             PERU                           1                       1        5    699
0-6 months    ki1114097-CONTENT          PERU                           0                       0      193    215
0-6 months    ki1114097-CONTENT          PERU                           0                       1       18    215
0-6 months    ki1114097-CONTENT          PERU                           1                       0        4    215
0-6 months    ki1114097-CONTENT          PERU                           1                       1        0    215
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                       0       92    195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                       1       59    195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                       0       30    195
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                       1       14    195
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                       0      182    203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                       1        7    203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                       0       13    203
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                       1        1    203
6-24 months   ki0047075b-MAL-ED          INDIA                          0                       0       84    194
6-24 months   ki0047075b-MAL-ED          INDIA                          0                       1       49    194
6-24 months   ki0047075b-MAL-ED          INDIA                          1                       0       44    194
6-24 months   ki0047075b-MAL-ED          INDIA                          1                       1       17    194
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                       0      156    224
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                       1       30    224
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                       0       32    224
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                       1        6    224
6-24 months   ki0047075b-MAL-ED          PERU                           0                       0      146    229
6-24 months   ki0047075b-MAL-ED          PERU                           0                       1       74    229
6-24 months   ki0047075b-MAL-ED          PERU                           1                       0        8    229
6-24 months   ki0047075b-MAL-ED          PERU                           1                       1        1    229
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      146    224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       53    224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0       19    224
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        6    224
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       69    187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1      110    187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        2    187
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        6    187
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                       0       52    285
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                       1       82    285
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                       0       44    285
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                       1      107    285
6-24 months   ki1000108-IRC              INDIA                          0                       0      103    339
6-24 months   ki1000108-IRC              INDIA                          0                       1       35    339
6-24 months   ki1000108-IRC              INDIA                          1                       0      153    339
6-24 months   ki1000108-IRC              INDIA                          1                       1       48    339
6-24 months   ki1000109-EE               PAKISTAN                       0                       0       35    188
6-24 months   ki1000109-EE               PAKISTAN                       0                       1      104    188
6-24 months   ki1000109-EE               PAKISTAN                       1                       0       12    188
6-24 months   ki1000109-EE               PAKISTAN                       1                       1       37    188
6-24 months   ki1000109-ResPak           PAKISTAN                       0                       0       86    167
6-24 months   ki1000109-ResPak           PAKISTAN                       0                       1        7    167
6-24 months   ki1000109-ResPak           PAKISTAN                       1                       0       64    167
6-24 months   ki1000109-ResPak           PAKISTAN                       1                       1       10    167
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                       0      290    497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                       1       84    497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                       0       88    497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                       1       35    497
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       0     1366   1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       1      217   1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       0      234   1847
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       1       30   1847
6-24 months   ki1101329-Keneba           GAMBIA                         0                       0     1271   2011
6-24 months   ki1101329-Keneba           GAMBIA                         0                       1      434   2011
6-24 months   ki1101329-Keneba           GAMBIA                         1                       0      212   2011
6-24 months   ki1101329-Keneba           GAMBIA                         1                       1       94   2011
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                       0      139    176
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                       1       35    176
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                       0        1    176
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                       1        1    176
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                       0      190    480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                       1      140    480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                       0       75    480
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                       1       75    480
6-24 months   ki1114097-CMIN             BANGLADESH                     0                       0       57    166
6-24 months   ki1114097-CMIN             BANGLADESH                     0                       1       80    166
6-24 months   ki1114097-CMIN             BANGLADESH                     1                       0       12    166
6-24 months   ki1114097-CMIN             BANGLADESH                     1                       1       17    166
6-24 months   ki1114097-CMIN             PERU                           0                       0      458    601
6-24 months   ki1114097-CMIN             PERU                           0                       1      107    601
6-24 months   ki1114097-CMIN             PERU                           1                       0       27    601
6-24 months   ki1114097-CMIN             PERU                           1                       1        9    601
6-24 months   ki1114097-CONTENT          PERU                           0                       0      177    200
6-24 months   ki1114097-CONTENT          PERU                           0                       1       19    200
6-24 months   ki1114097-CONTENT          PERU                           1                       0        4    200
6-24 months   ki1114097-CONTENT          PERU                           1                       1        0    200
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                       0       98    263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                       1      106    263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                       0       33    263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                       1       26    263
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                       0      184    233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                       1       35    233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                       0       13    233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                       1        1    233
0-24 months   ki0047075b-MAL-ED          INDIA                          0                       0       81    251
0-24 months   ki0047075b-MAL-ED          INDIA                          0                       1       91    251
0-24 months   ki0047075b-MAL-ED          INDIA                          1                       0       44    251
0-24 months   ki0047075b-MAL-ED          INDIA                          1                       1       35    251
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                       0      150    240
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                       1       46    240
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                       0       31    240
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                       1       13    240
0-24 months   ki0047075b-MAL-ED          PERU                           0                       0      159    302
0-24 months   ki0047075b-MAL-ED          PERU                           0                       1      132    302
0-24 months   ki0047075b-MAL-ED          PERU                           1                       0        8    302
0-24 months   ki0047075b-MAL-ED          PERU                           1                       1        3    302
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0      171    313
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1      107    313
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0       22    313
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1       13    313
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0       78    261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1      172    261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        2    261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        9    261
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                       0       43    369
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                       1      131    369
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                       0       32    369
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                       1      163    369
0-24 months   ki1000108-IRC              INDIA                          0                       0       80    410
0-24 months   ki1000108-IRC              INDIA                          0                       1       86    410
0-24 months   ki1000108-IRC              INDIA                          1                       0      135    410
0-24 months   ki1000108-IRC              INDIA                          1                       1      109    410
0-24 months   ki1000109-EE               PAKISTAN                       0                       0       34    379
0-24 months   ki1000109-EE               PAKISTAN                       0                       1      240    379
0-24 months   ki1000109-EE               PAKISTAN                       1                       0       11    379
0-24 months   ki1000109-EE               PAKISTAN                       1                       1       94    379
0-24 months   ki1000109-ResPak           PAKISTAN                       0                       0       80    278
0-24 months   ki1000109-ResPak           PAKISTAN                       0                       1       90    278
0-24 months   ki1000109-ResPak           PAKISTAN                       1                       0       56    278
0-24 months   ki1000109-ResPak           PAKISTAN                       1                       1       52    278
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                       0      333    700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                       1      186    700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                       0      104    700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                       1       77    700
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       0     1600   2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                       1      454   2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       0      255   2396
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                       1       87   2396
0-24 months   ki1101329-Keneba           GAMBIA                         0                       0     1283   2464
0-24 months   ki1101329-Keneba           GAMBIA                         0                       1      769   2464
0-24 months   ki1101329-Keneba           GAMBIA                         1                       0      213   2464
0-24 months   ki1101329-Keneba           GAMBIA                         1                       1      199   2464
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                       0      157    295
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                       1      128    295
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                       0        1    295
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                       1        9    295
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                       0      182    602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                       1      237    602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                       0       72    602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                       1      111    602
0-24 months   ki1114097-CMIN             BANGLADESH                     0                       0       51    271
0-24 months   ki1114097-CMIN             BANGLADESH                     0                       1      170    271
0-24 months   ki1114097-CMIN             BANGLADESH                     1                       0       14    271
0-24 months   ki1114097-CMIN             BANGLADESH                     1                       1       36    271
0-24 months   ki1114097-CMIN             PERU                           0                       0      488    699
0-24 months   ki1114097-CMIN             PERU                           0                       1      162    699
0-24 months   ki1114097-CMIN             PERU                           1                       0       28    699
0-24 months   ki1114097-CMIN             PERU                           1                       1       21    699
0-24 months   ki1114097-CONTENT          PERU                           0                       0      162    215
0-24 months   ki1114097-CONTENT          PERU                           0                       1       49    215
0-24 months   ki1114097-CONTENT          PERU                           1                       0        4    215
0-24 months   ki1114097-CONTENT          PERU                           1                       1        0    215


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

* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/d451c518-630c-4c97-9dbd-d3cc7e8d588d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d451c518-630c-4c97-9dbd-d3cc7e8d588d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d451c518-630c-4c97-9dbd-d3cc7e8d588d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d451c518-630c-4c97-9dbd-d3cc7e8d588d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.5196078   0.4509174   0.5882982
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.4406780   0.3137548   0.5676011
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.5290698   0.4543242   0.6038153
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.4430380   0.3332804   0.5527956
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.2346939   0.1752379   0.2941498
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.2954545   0.1603630   0.4305461
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.3848921   0.3276038   0.4421804
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.3714286   0.2110952   0.5317619
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.7528736   0.6886960   0.8170511
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.8358974   0.7838434   0.8879515
0-24 months   ki1000108-IRC              INDIA                          0                    NA                0.5180723   0.4419678   0.5941768
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.4467213   0.3842654   0.5091773
0-24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.8759124   0.8368246   0.9150002
0-24 months   ki1000109-EE               PAKISTAN                       1                    NA                0.8952381   0.8365840   0.9538922
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                0.5294118   0.4542454   0.6045781
0-24 months   ki1000109-ResPak           PAKISTAN                       1                    NA                0.4814815   0.3870774   0.5758855
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3583815   0.3170971   0.3996659
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4254144   0.3533364   0.4974924
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2210321   0.2030837   0.2389805
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2543860   0.2082192   0.3005527
0-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.3747563   0.3538081   0.3957045
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.4830097   0.4347475   0.5312719
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.5656325   0.5181320   0.6131329
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.6065574   0.5357204   0.6773944
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.7692308   0.7135799   0.8248816
0-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.7200000   0.5953159   0.8446841
0-24 months   ki1114097-CMIN             PERU                           0                    NA                0.2492308   0.2159528   0.2825087
0-24 months   ki1114097-CMIN             PERU                           1                    NA                0.4285714   0.2899107   0.5672322
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1764706   0.1240580   0.2288832
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1694915   0.0735746   0.2654085
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.1627907   0.1075089   0.2180725
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                0.1772152   0.0928438   0.2615865
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                0.0969388   0.0554306   0.1384470
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                0.2045455   0.0851106   0.3239803
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0971223   0.0622569   0.1319877
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.1714286   0.0463694   0.2964877
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2126437   0.1517635   0.2735239
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2010309   0.1445588   0.2575031
0-6 months    ki1000108-IRC              INDIA                          0                    NA                0.1686747   0.1116406   0.2257088
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.0901639   0.0541823   0.1261456
0-6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.3540146   0.2973165   0.4107127
0-6 months    ki1000109-EE               PAKISTAN                       1                    NA                0.3142857   0.2253736   0.4031979
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.2529412   0.1874786   0.3184038
0-6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                0.3055556   0.2185228   0.3925883
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0847784   0.0607967   0.1087602
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1215470   0.0739093   0.1691846
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0671860   0.0563573   0.0780147
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0672515   0.0407018   0.0938011
0-6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.0901559   0.0777615   0.1025504
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.1092233   0.0790981   0.1393485
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1145585   0.0840377   0.1450793
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1038251   0.0595937   0.1480566
0-6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                0.3800905   0.3159751   0.4442059
0-6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                0.3800000   0.2452113   0.5147887
0-6 months    ki1114097-CMIN             PERU                           0                    NA                0.0553846   0.0377882   0.0729810
0-6 months    ki1114097-CMIN             PERU                           1                    NA                0.1020408   0.0172251   0.1868565
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.3907285   0.3127061   0.4687508
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.3181818   0.1802037   0.4561599
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.3684211   0.2862289   0.4506132
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.2786885   0.1658840   0.3914930
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.1612903   0.1083151   0.2142656
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.1578947   0.0416977   0.2740917
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.2663317   0.2047779   0.3278854
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.2400000   0.0722115   0.4077885
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.6119403   0.5292865   0.6945941
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.7086093   0.6360047   0.7812139
6-24 months   ki1000108-IRC              INDIA                          0                    NA                0.2536232   0.1809250   0.3263214
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.2388060   0.1797775   0.2978345
6-24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.7482014   0.6758521   0.8205508
6-24 months   ki1000109-EE               PAKISTAN                       1                    NA                0.7551020   0.6343753   0.8758288
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                0.0752688   0.0214882   0.1290495
6-24 months   ki1000109-ResPak           PAKISTAN                       1                    NA                0.1351351   0.0570093   0.2132610
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2245989   0.1822623   0.2669356
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2845528   0.2047344   0.3643713
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1370815   0.1201342   0.1540288
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1136364   0.0753426   0.1519302
6-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.2545455   0.2338637   0.2752272
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.3071895   0.2554877   0.3588914
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4242424   0.3708634   0.4776215
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5000000   0.4199013   0.5800987
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.5839416   0.5011547   0.6667285
6-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.5862069   0.4064116   0.7660022
6-24 months   ki1114097-CMIN             PERU                           0                    NA                0.1893805   0.1570464   0.2217147
6-24 months   ki1114097-CMIN             PERU                           1                    NA                0.2500000   0.1084340   0.3915660


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.5019011   0.4413581   0.5624442
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5019920   0.4400130   0.5639710
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2458333   0.1912446   0.3004221
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3833866   0.3294360   0.4373371
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7967480   0.7556328   0.8378631
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4756098   0.4272105   0.5240091
0-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.8812665   0.8486571   0.9138759
0-24 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.5107914   0.4519237   0.5696591
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3757143   0.3398113   0.4116172
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2257930   0.2090482   0.2425378
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3928571   0.3735695   0.4121448
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5780731   0.5385891   0.6175571
0-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.7601476   0.7092160   0.8110792
0-24 months   ki1114097-CMIN             PERU                           NA                   NA                0.2618026   0.2291894   0.2944158
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1749049   0.1289057   0.2209042
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1673307   0.1210604   0.2136010
0-6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1166667   0.0759676   0.1573658
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1054313   0.0713542   0.1395084
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2065217   0.1651060   0.2479375
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1219512   0.0902381   0.1536643
0-6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.3430079   0.2951521   0.3908637
0-6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2733813   0.2208950   0.3258676
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0942857   0.0726222   0.1159492
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0671953   0.0571686   0.0772221
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0933442   0.0818552   0.1048331
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1112957   0.0861520   0.1364394
0-6 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                0.3800738   0.3221749   0.4379727
0-6 months    ki1114097-CMIN             PERU                           NA                   NA                0.0586552   0.0412232   0.0760873
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3743590   0.3062579   0.4424600
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3402062   0.2733649   0.4070475
6-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1607143   0.1125109   0.2089177
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2633929   0.2055812   0.3212045
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6631579   0.6081898   0.7181260
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.2448378   0.1989973   0.2906782
6-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.7500000   0.6879377   0.8120623
6-24 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.1017964   0.0557975   0.1477953
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2394366   0.2018814   0.2769918
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1337304   0.1182039   0.1492569
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.2625559   0.2433195   0.2817924
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4479167   0.4033837   0.4924496
6-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.5843373   0.5091390   0.6595357
6-24 months   ki1114097-CMIN             PERU                           NA                   NA                0.1930116   0.1614327   0.2245906


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 0.8480972   0.6177525   1.1643319
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 0.8373905   0.6296095   1.1137424
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 1.2588933   0.7464021   2.1232687
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 0.9650200   0.6112717   1.5234857
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.1102760   0.9990420   1.2338948
0-24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          1                    0                 0.8622760   0.7040008   1.0561350
0-24 months   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE               PAKISTAN                       1                    0                 1.0220635   0.9441709   1.1063821
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-ResPak           PAKISTAN                       1                    0                 0.9094650   0.7139251   1.1585622
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1870433   0.9671352   1.4569543
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1509004   0.9433887   1.4040572
0-24 months   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         1                    0                 1.2888634   1.1494323   1.4452080
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.0723525   0.9286819   1.2382495
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 0.9360000   0.7758340   1.1292313
0-24 months   ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CMIN             PERU                           1                    0                 1.7195767   1.2117522   2.4402218
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 0.9604520   0.5068882   1.8198647
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    0                 1.0886076   0.6065930   1.9536438
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    0                 2.1100478   1.0228898   4.3526699
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.7650793   0.7828152   3.9798729
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.9453887   0.6330167   1.4119054
0-6 months    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          1                    0                 0.5345433   0.3168269   0.9018698
0-6 months    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE               PAKISTAN                       1                    0                 0.8877761   0.6413842   1.2288211
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-ResPak           PAKISTAN                       1                    0                 1.2080103   0.8221131   1.7750464
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.4337017   0.8841847   2.3247410
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0009747   0.6534815   1.5332496
0-6 months    ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         1                    0                 1.2114930   0.8901874   1.6487713
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.9063069   0.5483490   1.4979369
0-6 months    ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1114097-CMIN             BANGLADESH                     1                    0                 0.9997619   0.6750204   1.4807314
0-6 months    ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1114097-CMIN             PERU                           1                    0                 1.8424036   0.7567107   4.4857978
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 0.8143297   0.5051995   1.3126160
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 0.7564403   0.4764895   1.2008700
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 0.9789474   0.4372893   2.1915419
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 0.9011321   0.4315235   1.8817957
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.1579712   0.9773953   1.3719090
6-24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          1                    0                 0.9415778   0.6448768   1.3747879
6-24 months   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE               PAKISTAN                       1                    0                 1.0092229   0.8372201   1.2165628
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-ResPak           PAKISTAN                       1                    0                 1.7953668   0.7161236   4.5010972
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.2669377   0.9036130   1.7763478
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8289694   0.5789614   1.1869363
6-24 months   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         1                    0                 1.2068161   1.0010947   1.4548124
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.1785714   0.9613674   1.4448489
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 1.0038793   0.7160401   1.4074262
6-24 months   ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1114097-CMIN             PERU                           1                    0                 1.3200935   0.7307079   2.3848747


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0177067   -0.0503269    0.0149135
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0270777   -0.0691652    0.0150097
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0111395   -0.0160836    0.0383625
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0015055   -0.0205501    0.0175391
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0438744    0.0000012    0.0877476
0-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0424625   -0.1011513    0.0162262
0-24 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.0053541   -0.0141929    0.0249011
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0186204   -0.0655814    0.0283406
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0173328   -0.0042551    0.0389207
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0047609   -0.0023248    0.0118465
0-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0181008    0.0091601    0.0270415
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0124406   -0.0135297    0.0384109
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0090832   -0.0343778    0.0162115
0-24 months   ki1114097-CMIN             PERU                           0                    NA                 0.0125718    0.0020143    0.0231293
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0015656   -0.0260886    0.0229573
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0045400   -0.0272186    0.0362985
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0197279   -0.0040466    0.0435024
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0083090   -0.0064392    0.0230573
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0061219   -0.0499021    0.0376582
0-6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0467235   -0.0870294   -0.0064176
0-6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.0110067   -0.0402764    0.0182631
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0204401   -0.0219755    0.0628557
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0095073   -0.0043348    0.0233494
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0000093   -0.0040834    0.0041021
0-6 months    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0031882   -0.0022659    0.0086423
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0032628   -0.0196037    0.0130781
0-6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0000167   -0.0275556    0.0275222
0-6 months    ki1114097-CMIN             PERU                           0                    NA                 0.0032706   -0.0028656    0.0094068
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0163695   -0.0523895    0.0196505
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0282149   -0.0724928    0.0160631
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0005760   -0.0222406    0.0210886
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0029388   -0.0229152    0.0170376
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0512176   -0.0073400    0.1097752
6-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0087854   -0.0643149    0.0467440
6-24 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.0017986   -0.0348878    0.0384849
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0265276   -0.0157433    0.0687985
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0148377   -0.0076385    0.0373139
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0033511   -0.0093484    0.0026461
6-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0080105   -0.0005029    0.0165239
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0236742   -0.0065695    0.0539180
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0003957   -0.0341843    0.0349758
6-24 months   ki1114097-CMIN             PERU                           0                    NA                 0.0036311   -0.0051429    0.0124051


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0352793   -0.1025170    0.0278579
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0539406   -0.1415280    0.0269264
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0453130   -0.0719089    0.1497158
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0039269   -0.0548517    0.0445395
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0550669   -0.0021307    0.1089998
0-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0892802   -0.2203031    0.0276749
0-24 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.0060754   -0.0163705    0.0280257
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0364540   -0.1327148    0.0516263
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0461329   -0.0131179    0.1019185
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0210850   -0.0107873    0.0519524
0-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0460748    0.0230160    0.0685893
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0215209   -0.0244944    0.0654693
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0119492   -0.0458322    0.0208360
0-24 months   ki1114097-CMIN             PERU                           0                    NA                 0.0480202    0.0069781    0.0873659
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0089514   -0.1593551    0.1219403
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0271318   -0.1823320    0.1994867
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.1690962   -0.0532238    0.3444877
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0788097   -0.0701296    0.2070198
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0296431   -0.2649841    0.1619145
0-6 months    ki1000108-IRC              INDIA                          0                    NA                -0.3831325   -0.7445994   -0.0965587
0-6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.0320887   -0.1210581    0.0498199
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0747678   -0.0939127    0.2174379
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.1008349   -0.0568831    0.2350168
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0001391   -0.0626623    0.0592290
0-6 months    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0341554   -0.0259492    0.0907388
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0293164   -0.1870003    0.1074204
0-6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0000439   -0.0751900    0.0698501
0-6 months    ki1114097-CMIN             PERU                           0                    NA                 0.0557598   -0.0535694    0.1537440
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0437268   -0.1446089    0.0482640
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0829346   -0.2213632    0.0398045
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0035842   -0.1478558    0.1225541
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0111575   -0.0899051    0.0619005
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0772329   -0.0161015    0.1619940
6-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0358827   -0.2893872    0.1677807
6-24 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.0023981   -0.0477382    0.0501352
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.2605946   -0.2719722    0.5701790
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0619692   -0.0365319    0.1511098
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0250588   -0.0708327    0.0187585
6-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0305096   -0.0024392    0.0623755
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0528541   -0.0172496    0.1181267
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0006773   -0.0602884    0.0581374
6-24 months   ki1114097-CMIN             PERU                           0                    NA                 0.0188129   -0.0276572    0.0631817
