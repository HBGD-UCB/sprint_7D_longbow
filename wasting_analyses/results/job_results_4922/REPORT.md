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

**Outcome Variable:** wast_rec90d

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

agecat        studyid                    country                        pers_wast    wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  ----------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      0       35    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      1       76    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      0       10    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      1        3    124
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      0        5     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      1       17     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      0        1     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      1        0     23
0-24 months   ki0047075b-MAL-ED          INDIA                          0                      0       50    178
0-24 months   ki0047075b-MAL-ED          INDIA                          0                      1      101    178
0-24 months   ki0047075b-MAL-ED          INDIA                          1                      0       21    178
0-24 months   ki0047075b-MAL-ED          INDIA                          1                      1        6    178
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                      0       14     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                      1       68     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                      0        6     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                      1        5     93
0-24 months   ki0047075b-MAL-ED          PERU                           0                      0        6     34
0-24 months   ki0047075b-MAL-ED          PERU                           0                      1       28     34
0-24 months   ki0047075b-MAL-ED          PERU                           1                      0        0     34
0-24 months   ki0047075b-MAL-ED          PERU                           1                      1        0     34
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0       10     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       65     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        7     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        1     83
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0        8     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       37     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        0     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     45
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                      0       60    325
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                      1      180    325
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0       60    325
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1       25    325
0-24 months   ki1000108-IRC              INDIA                          0                      0       80    395
0-24 months   ki1000108-IRC              INDIA                          0                      1      202    395
0-24 months   ki1000108-IRC              INDIA                          1                      0       82    395
0-24 months   ki1000108-IRC              INDIA                          1                      1       31    395
0-24 months   ki1000109-EE               PAKISTAN                       0                      0      224    514
0-24 months   ki1000109-EE               PAKISTAN                       0                      1      202    514
0-24 months   ki1000109-EE               PAKISTAN                       1                      0       76    514
0-24 months   ki1000109-EE               PAKISTAN                       1                      1       12    514
0-24 months   ki1000109-ResPak           PAKISTAN                       0                      0       71    200
0-24 months   ki1000109-ResPak           PAKISTAN                       0                      1       81    200
0-24 months   ki1000109-ResPak           PAKISTAN                       1                      0       38    200
0-24 months   ki1000109-ResPak           PAKISTAN                       1                      1       10    200
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                      0      103    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                      1      174    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      0       25    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      1        5    307
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                      0      204    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                      1      427    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0       62    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1       20    713
0-24 months   ki1101329-Keneba           GAMBIA                         0                      0      530   1419
0-24 months   ki1101329-Keneba           GAMBIA                         0                      1      775   1419
0-24 months   ki1101329-Keneba           GAMBIA                         1                      0       93   1419
0-24 months   ki1101329-Keneba           GAMBIA                         1                      1       21   1419
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                      0       11     35
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                      1       11     35
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                      0        9     35
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                      1        4     35
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      0      350   1122
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      1      516   1122
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      0      186   1122
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      1       70   1122
0-24 months   ki1114097-CMIN             BANGLADESH                     0                      0       61    190
0-24 months   ki1114097-CMIN             BANGLADESH                     0                      1      105    190
0-24 months   ki1114097-CMIN             BANGLADESH                     1                      0       19    190
0-24 months   ki1114097-CMIN             BANGLADESH                     1                      1        5    190
0-24 months   ki1114097-CMIN             PERU                           0                      0       10     85
0-24 months   ki1114097-CMIN             PERU                           0                      1       55     85
0-24 months   ki1114097-CMIN             PERU                           1                      0        8     85
0-24 months   ki1114097-CMIN             PERU                           1                      1       12     85
0-24 months   ki1114097-CONTENT          PERU                           0                      0        2      9
0-24 months   ki1114097-CONTENT          PERU                           0                      1        7      9
0-24 months   ki1114097-CONTENT          PERU                           1                      0        0      9
0-24 months   ki1114097-CONTENT          PERU                           1                      1        0      9
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                      0        5     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                      1       47     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                      0        8     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                      1        2     62
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                      0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                      1       13     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                      0        1     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                      1        0     14
0-6 months    ki0047075b-MAL-ED          INDIA                          0                      0        9     83
0-6 months    ki0047075b-MAL-ED          INDIA                          0                      1       52     83
0-6 months    ki0047075b-MAL-ED          INDIA                          1                      0       17     83
0-6 months    ki0047075b-MAL-ED          INDIA                          1                      1        5     83
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                      0        4     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                      1       34     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                      0        5     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                      1        0     43
0-6 months    ki0047075b-MAL-ED          PERU                           0                      0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           0                      1       11     11
0-6 months    ki0047075b-MAL-ED          PERU                           1                      0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           1                      1        0     11
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0        2     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       25     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        6     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     33
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0        1     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       11     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     12
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                      0       17    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                      1      128    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                      0       49    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        9    203
0-6 months    ki1000108-IRC              INDIA                          0                      0       23    240
0-6 months    ki1000108-IRC              INDIA                          0                      1      137    240
0-6 months    ki1000108-IRC              INDIA                          1                      0       64    240
0-6 months    ki1000108-IRC              INDIA                          1                      1       16    240
0-6 months    ki1000109-EE               PAKISTAN                       0                      0       38    216
0-6 months    ki1000109-EE               PAKISTAN                       0                      1      112    216
0-6 months    ki1000109-EE               PAKISTAN                       1                      0       56    216
0-6 months    ki1000109-EE               PAKISTAN                       1                      1       10    216
0-6 months    ki1000109-ResPak           PAKISTAN                       0                      0       15    112
0-6 months    ki1000109-ResPak           PAKISTAN                       0                      1       61    112
0-6 months    ki1000109-ResPak           PAKISTAN                       1                      0       28    112
0-6 months    ki1000109-ResPak           PAKISTAN                       1                      1        8    112
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                      0       15    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                      1      142    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                      0       24    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                      1        3    184
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                      0       49    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                      1      225    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0       52    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1       14    340
0-6 months    ki1101329-Keneba           GAMBIA                         0                      0       87    416
0-6 months    ki1101329-Keneba           GAMBIA                         0                      1      250    416
0-6 months    ki1101329-Keneba           GAMBIA                         1                      0       65    416
0-6 months    ki1101329-Keneba           GAMBIA                         1                      1       14    416
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                      0        0     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                      1        0     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                      0        6     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                      1        4     10
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                      0       22    360
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                      1      188    360
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                      0      128    360
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                      1       22    360
0-6 months    ki1114097-CMIN             BANGLADESH                     0                      0       10     52
0-6 months    ki1114097-CMIN             BANGLADESH                     0                      1       26     52
0-6 months    ki1114097-CMIN             BANGLADESH                     1                      0       15     52
0-6 months    ki1114097-CMIN             BANGLADESH                     1                      1        1     52
0-6 months    ki1114097-CMIN             PERU                           0                      0        2     52
0-6 months    ki1114097-CMIN             PERU                           0                      1       33     52
0-6 months    ki1114097-CMIN             PERU                           1                      0        8     52
0-6 months    ki1114097-CMIN             PERU                           1                      1        9     52
0-6 months    ki1114097-CONTENT          PERU                           0                      0        0      4
0-6 months    ki1114097-CONTENT          PERU                           0                      1        4      4
0-6 months    ki1114097-CONTENT          PERU                           1                      0        0      4
0-6 months    ki1114097-CONTENT          PERU                           1                      1        0      4
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      0       30     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      1       29     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      0        2     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      1        1     62
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      0        5      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      1        4      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      1        0      9
6-24 months   ki0047075b-MAL-ED          INDIA                          0                      0       41     95
6-24 months   ki0047075b-MAL-ED          INDIA                          0                      1       49     95
6-24 months   ki0047075b-MAL-ED          INDIA                          1                      0        4     95
6-24 months   ki0047075b-MAL-ED          INDIA                          1                      1        1     95
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                      0       10     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                      1       34     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                      0        1     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                      1        5     50
6-24 months   ki0047075b-MAL-ED          PERU                           0                      0        6     23
6-24 months   ki0047075b-MAL-ED          PERU                           0                      1       17     23
6-24 months   ki0047075b-MAL-ED          PERU                           1                      0        0     23
6-24 months   ki0047075b-MAL-ED          PERU                           1                      1        0     23
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0        8     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       40     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        1     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        1     50
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0        7     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       26     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        0     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     33
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                      0       43    122
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                      1       52    122
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0       11    122
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1       16    122
6-24 months   ki1000108-IRC              INDIA                          0                      0       57    155
6-24 months   ki1000108-IRC              INDIA                          0                      1       65    155
6-24 months   ki1000108-IRC              INDIA                          1                      0       18    155
6-24 months   ki1000108-IRC              INDIA                          1                      1       15    155
6-24 months   ki1000109-EE               PAKISTAN                       0                      0      186    298
6-24 months   ki1000109-EE               PAKISTAN                       0                      1       90    298
6-24 months   ki1000109-EE               PAKISTAN                       1                      0       20    298
6-24 months   ki1000109-EE               PAKISTAN                       1                      1        2    298
6-24 months   ki1000109-ResPak           PAKISTAN                       0                      0       56     88
6-24 months   ki1000109-ResPak           PAKISTAN                       0                      1       20     88
6-24 months   ki1000109-ResPak           PAKISTAN                       1                      0       10     88
6-24 months   ki1000109-ResPak           PAKISTAN                       1                      1        2     88
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                      0       88    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                      1       32    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      0        1    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      1        2    123
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                      0      155    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                      1      202    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0       10    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1        6    373
6-24 months   ki1101329-Keneba           GAMBIA                         0                      0      443   1003
6-24 months   ki1101329-Keneba           GAMBIA                         0                      1      525   1003
6-24 months   ki1101329-Keneba           GAMBIA                         1                      0       28   1003
6-24 months   ki1101329-Keneba           GAMBIA                         1                      1        7   1003
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                      0       11     25
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                      1       11     25
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                      0        3     25
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                      1        0     25
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      0      328    762
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      1      328    762
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      0       58    762
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      1       48    762
6-24 months   ki1114097-CMIN             BANGLADESH                     0                      0       51    138
6-24 months   ki1114097-CMIN             BANGLADESH                     0                      1       79    138
6-24 months   ki1114097-CMIN             BANGLADESH                     1                      0        4    138
6-24 months   ki1114097-CMIN             BANGLADESH                     1                      1        4    138
6-24 months   ki1114097-CMIN             PERU                           0                      0        8     33
6-24 months   ki1114097-CMIN             PERU                           0                      1       22     33
6-24 months   ki1114097-CMIN             PERU                           1                      0        0     33
6-24 months   ki1114097-CMIN             PERU                           1                      1        3     33
6-24 months   ki1114097-CONTENT          PERU                           0                      0        2      5
6-24 months   ki1114097-CONTENT          PERU                           0                      1        3      5
6-24 months   ki1114097-CONTENT          PERU                           1                      0        0      5
6-24 months   ki1114097-CONTENT          PERU                           1                      1        0      5


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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/413db17b-de50-412e-98f8-c96eb78616b0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/413db17b-de50-412e-98f8-c96eb78616b0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/413db17b-de50-412e-98f8-c96eb78616b0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/413db17b-de50-412e-98f8-c96eb78616b0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.6688742   0.5893683   0.7483801
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.2222222   0.0408140   0.4036305
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.8292683   0.7489767   0.9095598
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.4545455   0.2910030   0.6180879
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.7500000   0.6924151   0.8075849
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2941176   0.2114462   0.3767891
0-24 months   ki1000108-IRC              INDIA                          0                    NA                0.7163121   0.6601221   0.7725020
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.2743363   0.2038725   0.3448001
0-24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.4741784   0.4007279   0.5476289
0-24 months   ki1000109-EE               PAKISTAN                       1                    NA                0.1363636   0.0560570   0.2166703
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                0.5328947   0.4478608   0.6179287
0-24 months   ki1000109-ResPak           PAKISTAN                       1                    NA                0.2083333   0.1019800   0.3146866
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.6281588   0.5713812   0.6849365
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1666667   0.0291913   0.3041421
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.6767036   0.6382032   0.7152041
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2439024   0.1483725   0.3394324
0-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.5938697   0.5647809   0.6229585
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.1842105   0.1177639   0.2506572
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.5958430   0.5444792   0.6472067
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2734375   0.2126806   0.3341944
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.6325301   0.5517272   0.7133331
0-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.2083333   0.0636965   0.3529702
0-24 months   ki1114097-CMIN             PERU                           0                    NA                0.8461538   0.7623275   0.9299802
0-24 months   ki1114097-CMIN             PERU                           1                    NA                0.6000000   0.3606576   0.8393424
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                0.8524590   0.7587748   0.9461432
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                0.2272727   0.0564564   0.3980890
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.8827586   0.8308565   0.9346607
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.1551724   0.0688902   0.2414546
0-6 months    ki1000108-IRC              INDIA                          0                    NA                0.8562500   0.7987756   0.9137244
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.2000000   0.1284596   0.2715404
0-6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.7466667   0.6434333   0.8499000
0-6 months    ki1000109-EE               PAKISTAN                       1                    NA                0.1515152   0.0575104   0.2455199
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.8026316   0.7118768   0.8933863
0-6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                0.2222222   0.0945632   0.3498812
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.8211679   0.7752125   0.8671233
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2121212   0.1141566   0.3100858
0-6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.7418398   0.6961160   0.7875635
0-6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.1772152   0.1003213   0.2541091
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.8952381   0.8358695   0.9546067
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1466667   0.0682258   0.2251076
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.5473684   0.4427920   0.6519449
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.5925926   0.3888059   0.7963793
6-24 months   ki1000108-IRC              INDIA                          0                    NA                0.5327869   0.4392957   0.6262780
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.4545455   0.2665805   0.6425104
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.5658263   0.5128777   0.6187750
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3750000   0.1014865   0.6485135
6-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.5423554   0.5086431   0.5760676
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.2000000   0.0753403   0.3246597
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.5000000   0.4409137   0.5590863
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4528302   0.3111755   0.5944849


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6011236   0.5212729   0.6809743
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.7849462   0.7049947   0.8648978
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6307692   0.5746323   0.6869062
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5898734   0.5376978   0.6420491
0-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.4163424   0.3511349   0.4815500
0-24 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.4550000   0.3826235   0.5273765
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.5830619   0.5262762   0.6398476
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6269285   0.5892870   0.6645700
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5609584   0.5327669   0.5891500
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5222816   0.4773852   0.5671781
0-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.5789474   0.5004470   0.6574477
0-24 months   ki1114097-CMIN             PERU                           NA                   NA                0.7882353   0.6948180   0.8816526
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6867470   0.5837430   0.7897510
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6748768   0.6092233   0.7405304
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.6375000   0.5751450   0.6998550
0-6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.5648148   0.4692893   0.6603404
0-6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.6160714   0.5252688   0.7068741
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7029412   0.6536517   0.7522307
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.6346154   0.5881865   0.6810443
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5833333   0.5108676   0.6557991
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5573770   0.4641535   0.6506006
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5161290   0.4322562   0.6000019
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5576408   0.5054408   0.6098407
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5304088   0.4972641   0.5635534
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4934383   0.4388573   0.5480193


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 0.3322332   0.1456110   0.7580394
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 0.5481283   0.3780349   0.7947539
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.3921569   0.2931154   0.5246637
0-24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          1                    0                 0.3829843   0.2928371   0.5008826
0-24 months   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE               PAKISTAN                       1                    0                 0.2875788   0.1563546   0.5289358
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-ResPak           PAKISTAN                       1                    0                 0.3909465   0.2289233   0.6676436
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.2653257   0.1157418   0.6082305
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.3604273   0.2426214   0.5354343
0-24 months   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         1                    0                 0.3101868   0.2155351   0.4464044
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.4589087   0.3615232   0.5825274
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 0.3293651   0.1626212   0.6670800
0-24 months   ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CMIN             PERU                           1                    0                 0.7090909   0.4704506   1.0687838
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          1                    0                 0.2666084   0.1247315   0.5698642
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.1757813   0.1004958   0.3074661
0-6 months    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          1                    0                 0.2335766   0.1623094   0.3361360
0-6 months    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE               PAKISTAN                       1                    0                 0.2029221   0.1074462   0.3832371
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-ResPak           PAKISTAN                       1                    0                 0.2768670   0.1541703   0.4972123
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.2583165   0.1622228   0.4113320
0-6 months    ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         1                    0                 0.2388861   0.1541304   0.3702486
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.1638298   0.0955745   0.2808300
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.0826211   0.7305206   1.6044289
6-24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          1                    0                 0.8531469   0.5443896   1.3370196
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.6627475   0.3176805   1.3826289
6-24 months   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         1                    0                 0.3687619   0.1971031   0.6899198
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.9056604   0.6481067   1.2655643


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0677506   -0.1115818   -0.0239194
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0443221   -0.0807264   -0.0079177
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1192308   -0.1578111   -0.0806505
0-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.1264386   -0.1627214   -0.0901559
0-24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.0578360   -0.0853341   -0.0303379
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                -0.0778947   -0.1182205   -0.0375690
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0450970   -0.0688903   -0.0213036
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0497752   -0.0664455   -0.0331048
0-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0329113   -0.0422329   -0.0235898
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0735613   -0.0980625   -0.0490601
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0535828   -0.0889628   -0.0182027
0-24 months   ki1114097-CMIN             PERU                           0                    NA                -0.0579186   -0.1272403    0.0114032
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.1657120   -0.2470336   -0.0843904
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.2078818   -0.2638063   -0.1519573
0-6 months    ki1000108-IRC              INDIA                          0                    NA                -0.2187500   -0.2718647   -0.1656353
0-6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.1818519   -0.2531343   -0.1105694
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.1865602   -0.2592524   -0.1138679
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1182267   -0.1520418   -0.0844116
0-6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.1072244   -0.1360910   -0.0783577
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.3119048   -0.3802975   -0.2435120
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0100086   -0.0408969    0.0609142
6-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0166579   -0.0618457    0.0285300
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0081856   -0.0209606    0.0045894
6-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0119466   -0.0185187   -0.0053745
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0065617   -0.0281982    0.0150749


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.1127066   -0.1940072   -0.0369418
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0564651   -0.1055337   -0.0095744
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1890244   -0.2592314   -0.1227317
0-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.2143488   -0.2847683   -0.1477890
0-24 months   ki1000109-EE               PAKISTAN                       0                    NA                -0.1389145   -0.2082133   -0.0735904
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                -0.1711972   -0.2659011   -0.0835783
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0773451   -0.1212390   -0.0351695
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0793953   -0.1075539   -0.0519526
0-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0586698   -0.0758799   -0.0417350
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.1408461   -0.1902149   -0.0935250
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0925520   -0.1587976   -0.0300936
0-24 months   ki1114097-CMIN             PERU                           0                    NA                -0.0734788   -0.1702185    0.0152637
0-6 months    ki0047075b-MAL-ED          INDIA                          0                    NA                -0.2413000   -0.3897144   -0.1087354
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.3080292   -0.4170912   -0.2073609
0-6 months    ki1000108-IRC              INDIA                          0                    NA                -0.3431373   -0.4519325   -0.2424941
0-6 months    ki1000109-EE               PAKISTAN                       0                    NA                -0.3219672   -0.4807148   -0.1802390
0-6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                -0.3028223   -0.4527456   -0.1683710
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1681886   -0.2237896   -0.1151138
0-6 months    ki1101329-Keneba           GAMBIA                         0                    NA                -0.1689596   -0.2210649   -0.1190778
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.5346939   -0.7122263   -0.3755690
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0179567   -0.0776897    0.1051143
6-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0322746   -0.1240693    0.0520239
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0146789   -0.0379793    0.0080984
6-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0225234   -0.0350871   -0.0101122
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0132979   -0.0581061    0.0296128
