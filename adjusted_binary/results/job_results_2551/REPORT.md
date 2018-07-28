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

**Intervention Variable:** anywast06

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
![](/tmp/f1a9d992-00f5-48d9-8e66-e5c0359c38b1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f1a9d992-00f5-48d9-8e66-e5c0359c38b1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f1a9d992-00f5-48d9-8e66-e5c0359c38b1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f1a9d992-00f5-48d9-8e66-e5c0359c38b1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.5189610   0.4517559   0.5861660
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.4430664   0.3254390   0.5606939
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.5283498   0.4551331   0.6015666
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.4446969   0.3417412   0.5476526
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.2392725   0.1803168   0.2982283
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.3507744   0.2351835   0.4663652
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.3874861   0.3309737   0.4439985
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.3519501   0.2016593   0.5022409
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.7520850   0.6880161   0.8161540
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.8363882   0.7845885   0.8881879
0-24 months   ki1000108-IRC              INDIA                          0                    NA                0.5290562   0.4541406   0.6039718
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.4549089   0.3927151   0.5171027
0-24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.8763300   0.8374029   0.9152572
0-24 months   ki1000109-EE               PAKISTAN                       1                    NA                0.9021079   0.8467679   0.9574479
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                0.5299167   0.4547913   0.6050422
0-24 months   ki1000109-ResPak           PAKISTAN                       1                    NA                0.4824016   0.3881068   0.5766964
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3653721   0.3247821   0.4059621
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4063871   0.3364811   0.4762932
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2219621   0.2041591   0.2397650
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2688097   0.2292779   0.3083415
0-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.3742733   0.3536521   0.3948944
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.4461613   0.4068261   0.4854965
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.5656325   0.5181320   0.6131329
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.6065574   0.5357204   0.6773944
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.7701151   0.7146052   0.8256250
0-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.7207900   0.5961866   0.8453934
0-24 months   ki1114097-CMIN             PERU                           0                    NA                0.2492539   0.2159659   0.2825419
0-24 months   ki1114097-CMIN             PERU                           1                    NA                0.4256323   0.2881379   0.5631268
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1764706   0.1240580   0.2288832
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.1694915   0.0735746   0.2654085
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.1575367   0.1034206   0.2116528
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                0.1557016   0.0786444   0.2327587
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                0.1017455   0.0608201   0.1426710
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                0.2178984   0.1287243   0.3070725
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.0966897   0.0619338   0.1314455
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.1181855   0.0073507   0.2290204
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2133619   0.1530091   0.2737147
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2005764   0.1443618   0.2567910
0-6 months    ki1000108-IRC              INDIA                          0                    NA                0.1670209   0.1114206   0.2226212
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.0909542   0.0553411   0.1265673
0-6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.3580688   0.3015651   0.4145725
0-6 months    ki1000109-EE               PAKISTAN                       1                    NA                0.3341927   0.2472796   0.4211059
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.2536778   0.1882505   0.3191052
0-6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                0.3054319   0.2184266   0.3924371
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0868378   0.0634523   0.1102232
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1162118   0.0736427   0.1587810
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0679429   0.0571820   0.0787038
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0798868   0.0565016   0.1032721
0-6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.0892367   0.0770184   0.1014550
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.0953530   0.0703292   0.1203768
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1142560   0.0840360   0.1444760
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1036488   0.0605218   0.1467759
0-6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                0.3789557   0.3148920   0.4430193
0-6 months    ki1114097-CMIN             BANGLADESH                     1                    NA                0.3524120   0.2268443   0.4779797
0-6 months    ki1114097-CMIN             PERU                           0                    NA                0.0554389   0.0378296   0.0730481
0-6 months    ki1114097-CMIN             PERU                           1                    NA                0.1047855   0.0199387   0.1896323
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.3909131   0.3150098   0.4668164
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.3156002   0.1865828   0.4446175
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.4114514   0.3315231   0.4913797
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.4871858   0.3852033   0.5891683
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.1689937   0.1164730   0.2215144
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.1908603   0.0982401   0.2834804
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.2668632   0.2055418   0.3281846
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.2357605   0.0728591   0.3986619
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.6101516   0.5275738   0.6927293
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.7099748   0.6375992   0.7823504
6-24 months   ki1000108-IRC              INDIA                          0                    NA                0.2595904   0.1876575   0.3315234
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.2424421   0.1837314   0.3011528
6-24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.7429036   0.6708861   0.8149211
6-24 months   ki1000109-EE               PAKISTAN                       1                    NA                0.7259957   0.6122052   0.8397862
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                0.0757040   0.0215769   0.1298310
6-24 months   ki1000109-ResPak           PAKISTAN                       1                    NA                0.1341105   0.0565054   0.2117157
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2334725   0.1917917   0.2751532
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3321879   0.2597542   0.4046216
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1372771   0.1204468   0.1541074
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1141845   0.0807929   0.1475761
6-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.2539283   0.2335260   0.2743307
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.3116755   0.2700974   0.3532536
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4246648   0.3714130   0.4779167
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4990718   0.4197441   0.5783995
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.5860672   0.5035525   0.6685819
6-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.5879921   0.4079283   0.7680560
6-24 months   ki1114097-CMIN             PERU                           0                    NA                0.1892638   0.1569301   0.2215976
6-24 months   ki1114097-CMIN             PERU                           1                    NA                0.2365687   0.1013412   0.3717962


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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 0.8537567   0.6403995   1.1381966
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 0.8416714   0.6481303   1.0930067
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 1.4660036   0.9748980   2.2045038
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 0.9082908   0.5833532   1.4142241
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.1120925   1.0012917   1.2351544
0-24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          1                    0                 0.8598498   0.7065938   1.0463461
0-24 months   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE               PAKISTAN                       1                    0                 1.0294157   0.9543301   1.1104090
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-ResPak           PAKISTAN                       1                    0                 0.9103347   0.7149281   1.1591504
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1122556   0.9097569   1.3598276
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.2110614   1.0259559   1.4295640
0-24 months   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         1                    0                 1.1920737   1.0765375   1.3200094
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.0723525   0.9286819   1.2382495
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 0.9359511   0.7760278   1.1288313
0-24 months   ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CMIN             PERU                           1                    0                 1.7076256   1.2039198   2.4220758
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                    0                 0.9604520   0.5068882   1.8198647
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    0                 0.9883511   0.5469741   1.7858942
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                    0                 2.1416018   1.2270483   3.7377977
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.2223182   0.4493798   3.3247198
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.9400762   0.6324709   1.3972868
0-6 months    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          1                    0                 0.5445680   0.3260295   0.9095936
0-6 months    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE               PAKISTAN                       1                    0                 0.9333198   0.6883352   1.2654967
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-ResPak           PAKISTAN                       1                    0                 1.2040148   0.8199542   1.7679667
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.3382636   0.8655268   2.0692015
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1757944   0.8454198   1.6352733
0-6 months    ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         1                    0                 1.0685401   0.7970801   1.4324508
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.9071630   0.5552054   1.4822349
0-6 months    ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1114097-CMIN             BANGLADESH                     1                    0                 0.9299557   0.6261200   1.3812332
0-6 months    ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1114097-CMIN             PERU                           1                    0                 1.8901082   0.7916526   4.5127235
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 0.8073410   0.5190234   1.2558191
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 1.1840665   0.8935846   1.5689767
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 1.1293926   0.6438197   1.9811876
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 0.8834510   0.4283100   1.8222447
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.1636040   0.9825993   1.3779514
6-24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          1                    0                 0.9339406   0.6465593   1.3490567
6-24 months   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE               PAKISTAN                       1                    0                 0.9772408   0.8124944   1.1753921
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-ResPak           PAKISTAN                       1                    0                 1.7715129   0.7061299   4.4443068
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.4228141   1.0827473   1.8696883
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8317813   0.6064227   1.1408877
6-24 months   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         1                    0                 1.2274153   1.0529947   1.4307274
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.1752134   0.9604835   1.4379493
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 1.0032845   0.7160081   1.4058220
6-24 months   ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1114097-CMIN             PERU                           1                    0                 1.2499413   0.6881196   2.2704679


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0170598   -0.0472798    0.0131602
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0263578   -0.0651686    0.0124531
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0065608   -0.0197335    0.0328551
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0040995   -0.0218336    0.0136346
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0446629    0.0010833    0.0882426
0-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0534465   -0.1114660    0.0045731
0-24 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.0049365   -0.0145831    0.0244560
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0191254   -0.0661805    0.0279297
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0103422   -0.0103496    0.0310341
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0038309   -0.0030481    0.0107099
0-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0185839    0.0101471    0.0270206
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0124406   -0.0135297    0.0384109
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0099675   -0.0352230    0.0152880
0-24 months   ki1114097-CMIN             PERU                           0                    NA                 0.0125487    0.0019943    0.0231030
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0015656   -0.0260886    0.0229573
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0097940   -0.0202679    0.0398559
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0149211   -0.0067079    0.0365502
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0087416   -0.0057976    0.0232808
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0068401   -0.0500856    0.0364053
0-6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0450697   -0.0842898   -0.0058496
0-6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.0150609   -0.0443339    0.0142120
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0197034   -0.0226816    0.0620885
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0074480   -0.0052184    0.0201143
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0007475   -0.0047098    0.0032147
0-6 months    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0041075   -0.0011897    0.0094046
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0029604   -0.0190648    0.0131441
0-6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0011181   -0.0269616    0.0291978
0-6 months    ki1114097-CMIN             PERU                           0                    NA                 0.0032163   -0.0029404    0.0093730
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0165541   -0.0503240    0.0172157
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0712452   -0.1154820   -0.0270084
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0082795   -0.0283057    0.0117468
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0034703   -0.0228131    0.0158724
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0530063   -0.0053229    0.1113356
6-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0147527   -0.0697219    0.0402165
6-24 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.0070964   -0.0295652    0.0437580
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0260925   -0.0164122    0.0685971
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0059642   -0.0148988    0.0268271
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0035467   -0.0094552    0.0023617
6-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0086276    0.0005245    0.0167308
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0232518   -0.0067297    0.0532333
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0017298   -0.0362511    0.0327915
6-24 months   ki1114097-CMIN             PERU                           0                    NA                 0.0037478   -0.0050733    0.0125690


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0339904   -0.0962106    0.0246982
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0525064   -0.1330037    0.0222718
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.0266880   -0.0861026    0.1277654
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0106930   -0.0580758    0.0345679
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0560565   -0.0007757    0.1096613
0-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.1123746   -0.2421199    0.0038182
0-24 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.0056016   -0.0168092    0.0275184
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0374427   -0.1339193    0.0508255
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0275268   -0.0290719    0.0810126
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0169665   -0.0139428    0.0469335
0-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0473044    0.0255879    0.0685370
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0215209   -0.0244944    0.0654693
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0131125   -0.0469529    0.0196340
0-24 months   ki1114097-CMIN             PERU                           0                    NA                 0.0479318    0.0068964    0.0872716
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0089514   -0.1593551    0.1219403
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                 0.0585306   -0.1394756    0.2221294
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                    NA                 0.1278956   -0.0711332    0.2899425
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0829131   -0.0637350    0.2093441
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0331206   -0.2652496    0.1564209
0-6 months    ki1000108-IRC              INDIA                          0                    NA                -0.3695713   -0.7234147   -0.0883774
0-6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.0439084   -0.1329661    0.0381489
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0720731   -0.0964066    0.2146634
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0789934   -0.0638774    0.2026778
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0111249   -0.0718788    0.0461856
0-6 months    ki1101329-Keneba           GAMBIA                         0                    NA                 0.0440034   -0.0142283    0.0988918
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0265990   -0.1819514    0.1083343
0-6 months    ki1114097-CMIN             BANGLADESH                     0                    NA                 0.0029419   -0.0737398    0.0741473
0-6 months    ki1114097-CMIN             PERU                           0                    NA                 0.0548347   -0.0548983    0.1531530
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0442199   -0.1388604    0.0425558
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.2094177   -0.3540566   -0.0802290
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0515166   -0.1845803    0.0666001
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0131755   -0.0893392    0.0576631
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0799302   -0.0130896    0.1644091
6-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0602550   -0.3105171    0.1422160
6-24 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.0094619   -0.0406514    0.0571620
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.2563200   -0.2802780    0.5680157
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0249092   -0.0660361    0.1080958
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0265215   -0.0716525    0.0167089
6-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0328602    0.0015582    0.0631808
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0519111   -0.0175612    0.1166402
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0029603   -0.0638168    0.0544149
6-24 months   ki1114097-CMIN             PERU                           0                    NA                 0.0194176   -0.0273059    0.0640160
