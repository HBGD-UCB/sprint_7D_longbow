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

**Intervention Variable:** anywast06

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        anywast06    wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  ----------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      0       20    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      1       20    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      0       25    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      1       59    124
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      0        5     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      1        3     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      0        1     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      1       14     23
0-24 months   ki0047075b-MAL-ED          INDIA                          0                      0       23    178
0-24 months   ki0047075b-MAL-ED          INDIA                          0                      1       35    178
0-24 months   ki0047075b-MAL-ED          INDIA                          1                      0       48    178
0-24 months   ki0047075b-MAL-ED          INDIA                          1                      1       72    178
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                      0        6     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                      1       28     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                      0       14     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                      1       45     93
0-24 months   ki0047075b-MAL-ED          PERU                           0                      0        5     34
0-24 months   ki0047075b-MAL-ED          PERU                           0                      1       16     34
0-24 months   ki0047075b-MAL-ED          PERU                           1                      0        1     34
0-24 months   ki0047075b-MAL-ED          PERU                           1                      1       12     34
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0        8     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       32     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        9     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1       34     83
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0        5     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       20     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        3     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1       17     45
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                      0       21    325
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                      1       23    325
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0       99    325
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1      182    325
0-24 months   ki1000108-IRC              INDIA                          0                      0       21    395
0-24 months   ki1000108-IRC              INDIA                          0                      1       36    395
0-24 months   ki1000108-IRC              INDIA                          1                      0      141    395
0-24 months   ki1000108-IRC              INDIA                          1                      1      197    395
0-24 months   ki1000109-EE               PAKISTAN                       0                      0      136    514
0-24 months   ki1000109-EE               PAKISTAN                       0                      1       54    514
0-24 months   ki1000109-EE               PAKISTAN                       1                      0      164    514
0-24 months   ki1000109-EE               PAKISTAN                       1                      1      160    514
0-24 months   ki1000109-ResPak           PAKISTAN                       0                      0       39    200
0-24 months   ki1000109-ResPak           PAKISTAN                       0                      1        8    200
0-24 months   ki1000109-ResPak           PAKISTAN                       1                      0       70    200
0-24 months   ki1000109-ResPak           PAKISTAN                       1                      1       83    200
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                      0       57    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                      1       21    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      0       71    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      1      158    307
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                      0      119    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                      1      156    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0      147    713
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1      291    713
0-24 months   ki1101329-Keneba           GAMBIA                         0                      0      350   1419
0-24 months   ki1101329-Keneba           GAMBIA                         0                      1      430   1419
0-24 months   ki1101329-Keneba           GAMBIA                         1                      0      273   1419
0-24 months   ki1101329-Keneba           GAMBIA                         1                      1      366   1419
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                      0       11     35
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                      1       11     35
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                      0        9     35
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                      1        4     35
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      0      222   1122
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      1      262   1122
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      0      314   1122
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      1      324   1122
0-24 months   ki1114097-CMIN             BANGLADESH                     0                      0       40    190
0-24 months   ki1114097-CMIN             BANGLADESH                     0                      1       66    190
0-24 months   ki1114097-CMIN             BANGLADESH                     1                      0       40    190
0-24 months   ki1114097-CMIN             BANGLADESH                     1                      1       44    190
0-24 months   ki1114097-CMIN             PERU                           0                      0        5     85
0-24 months   ki1114097-CMIN             PERU                           0                      1       17     85
0-24 months   ki1114097-CMIN             PERU                           1                      0       13     85
0-24 months   ki1114097-CMIN             PERU                           1                      1       50     85
0-24 months   ki1114097-CONTENT          PERU                           0                      0        2      9
0-24 months   ki1114097-CONTENT          PERU                           0                      1        3      9
0-24 months   ki1114097-CONTENT          PERU                           1                      0        0      9
0-24 months   ki1114097-CONTENT          PERU                           1                      1        4      9
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                      0        0     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                      1        0     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                      0       13     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                      1       49     62
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                      0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                      1        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                      0        1     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                      1       13     14
0-6 months    ki0047075b-MAL-ED          INDIA                          0                      0        0     83
0-6 months    ki0047075b-MAL-ED          INDIA                          0                      1        0     83
0-6 months    ki0047075b-MAL-ED          INDIA                          1                      0       26     83
0-6 months    ki0047075b-MAL-ED          INDIA                          1                      1       57     83
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                      0        0     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                      1        0     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                      0        9     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                      1       34     43
0-6 months    ki0047075b-MAL-ED          PERU                           0                      0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           0                      1        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           1                      0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           1                      1       11     11
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0        0     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1        0     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        8     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1       25     33
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        1     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1       11     12
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                      0       66    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                      1      137    203
0-6 months    ki1000108-IRC              INDIA                          0                      0        0    240
0-6 months    ki1000108-IRC              INDIA                          0                      1        0    240
0-6 months    ki1000108-IRC              INDIA                          1                      0       87    240
0-6 months    ki1000108-IRC              INDIA                          1                      1      153    240
0-6 months    ki1000109-EE               PAKISTAN                       0                      0        0    216
0-6 months    ki1000109-EE               PAKISTAN                       0                      1        0    216
0-6 months    ki1000109-EE               PAKISTAN                       1                      0       94    216
0-6 months    ki1000109-EE               PAKISTAN                       1                      1      122    216
0-6 months    ki1000109-ResPak           PAKISTAN                       0                      0        0    112
0-6 months    ki1000109-ResPak           PAKISTAN                       0                      1        0    112
0-6 months    ki1000109-ResPak           PAKISTAN                       1                      0       43    112
0-6 months    ki1000109-ResPak           PAKISTAN                       1                      1       69    112
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                      0        0    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                      1        0    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                      0       39    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                      1      145    184
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                      0        0    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                      1        0    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0      101    340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1      239    340
0-6 months    ki1101329-Keneba           GAMBIA                         0                      0        0    416
0-6 months    ki1101329-Keneba           GAMBIA                         0                      1        0    416
0-6 months    ki1101329-Keneba           GAMBIA                         1                      0      152    416
0-6 months    ki1101329-Keneba           GAMBIA                         1                      1      264    416
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                      0        0     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                      1        0     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                      0        6     10
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                      1        4     10
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                      0        0    360
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                      1        0    360
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                      0      150    360
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                      1      210    360
0-6 months    ki1114097-CMIN             BANGLADESH                     0                      0        0     52
0-6 months    ki1114097-CMIN             BANGLADESH                     0                      1        0     52
0-6 months    ki1114097-CMIN             BANGLADESH                     1                      0       25     52
0-6 months    ki1114097-CMIN             BANGLADESH                     1                      1       27     52
0-6 months    ki1114097-CMIN             PERU                           0                      0        0     52
0-6 months    ki1114097-CMIN             PERU                           0                      1        0     52
0-6 months    ki1114097-CMIN             PERU                           1                      0       10     52
0-6 months    ki1114097-CMIN             PERU                           1                      1       42     52
0-6 months    ki1114097-CONTENT          PERU                           0                      0        0      4
0-6 months    ki1114097-CONTENT          PERU                           0                      1        0      4
0-6 months    ki1114097-CONTENT          PERU                           1                      0        0      4
0-6 months    ki1114097-CONTENT          PERU                           1                      1        4      4
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      0       20     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      1       20     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      0       12     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      1       10     62
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      0        5      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      1        3      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      1        1      9
6-24 months   ki0047075b-MAL-ED          INDIA                          0                      0       23     95
6-24 months   ki0047075b-MAL-ED          INDIA                          0                      1       35     95
6-24 months   ki0047075b-MAL-ED          INDIA                          1                      0       22     95
6-24 months   ki0047075b-MAL-ED          INDIA                          1                      1       15     95
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                      0        6     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                      1       28     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                      0        5     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                      1       11     50
6-24 months   ki0047075b-MAL-ED          PERU                           0                      0        5     23
6-24 months   ki0047075b-MAL-ED          PERU                           0                      1       16     23
6-24 months   ki0047075b-MAL-ED          PERU                           1                      0        1     23
6-24 months   ki0047075b-MAL-ED          PERU                           1                      1        1     23
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0        8     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       32     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        1     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        9     50
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0        5     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       20     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        2     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        6     33
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                      0       21    122
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                      1       23    122
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0       33    122
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1       45    122
6-24 months   ki1000108-IRC              INDIA                          0                      0       21    155
6-24 months   ki1000108-IRC              INDIA                          0                      1       36    155
6-24 months   ki1000108-IRC              INDIA                          1                      0       54    155
6-24 months   ki1000108-IRC              INDIA                          1                      1       44    155
6-24 months   ki1000109-EE               PAKISTAN                       0                      0      136    298
6-24 months   ki1000109-EE               PAKISTAN                       0                      1       54    298
6-24 months   ki1000109-EE               PAKISTAN                       1                      0       70    298
6-24 months   ki1000109-EE               PAKISTAN                       1                      1       38    298
6-24 months   ki1000109-ResPak           PAKISTAN                       0                      0       39     88
6-24 months   ki1000109-ResPak           PAKISTAN                       0                      1        8     88
6-24 months   ki1000109-ResPak           PAKISTAN                       1                      0       27     88
6-24 months   ki1000109-ResPak           PAKISTAN                       1                      1       14     88
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                      0       57    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                      1       21    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      0       32    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      1       13    123
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                      0      119    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                      1      156    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      0       46    373
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                      1       52    373
6-24 months   ki1101329-Keneba           GAMBIA                         0                      0      350   1003
6-24 months   ki1101329-Keneba           GAMBIA                         0                      1      430   1003
6-24 months   ki1101329-Keneba           GAMBIA                         1                      0      121   1003
6-24 months   ki1101329-Keneba           GAMBIA                         1                      1      102   1003
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                      0       11     25
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      0                      1       11     25
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                      0        3     25
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      1                      1        0     25
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      0      222    762
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      1      262    762
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      0      164    762
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      1      114    762
6-24 months   ki1114097-CMIN             BANGLADESH                     0                      0       40    138
6-24 months   ki1114097-CMIN             BANGLADESH                     0                      1       66    138
6-24 months   ki1114097-CMIN             BANGLADESH                     1                      0       15    138
6-24 months   ki1114097-CMIN             BANGLADESH                     1                      1       17    138
6-24 months   ki1114097-CMIN             PERU                           0                      0        5     33
6-24 months   ki1114097-CMIN             PERU                           0                      1       17     33
6-24 months   ki1114097-CMIN             PERU                           1                      0        3     33
6-24 months   ki1114097-CMIN             PERU                           1                      1        8     33
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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/e3ca5f9e-f74c-4eb2-aedb-121c459599d3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e3ca5f9e-f74c-4eb2-aedb-121c459599d3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e3ca5f9e-f74c-4eb2-aedb-121c459599d3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e3ca5f9e-f74c-4eb2-aedb-121c459599d3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.5000000   0.3382483   0.6617517
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.7023810   0.6068304   0.7979315
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.6034483   0.4600805   0.7468161
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.6000000   0.5039386   0.6960614
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.8235294   0.7031848   0.9438740
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.7627119   0.6570877   0.8683360
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.8000000   0.6919739   0.9080261
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.7906977   0.6440188   0.9373766
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.5227273   0.3399994   0.7054552
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.6476868   0.5899744   0.7053993
0-24 months   ki1000108-IRC              INDIA                          0                    NA                0.6315789   0.4855959   0.7775620
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.5828402   0.5270477   0.6386327
0-24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.2842105   0.1732100   0.3952111
0-24 months   ki1000109-EE               PAKISTAN                       1                    NA                0.4938272   0.4173063   0.5703481
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                0.1702128   0.0429124   0.2975131
0-24 months   ki1000109-ResPak           PAKISTAN                       1                    NA                0.5424837   0.4643952   0.6205722
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2692308   0.1664756   0.3719860
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.6899563   0.6327983   0.7471144
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.5672727   0.5023644   0.6321810
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6643836   0.6191308   0.7096363
0-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.5512821   0.5102869   0.5922772
0-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.5727700   0.5352381   0.6103018
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.5413223   0.4622920   0.6203526
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5078370   0.4565669   0.5591071
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.6226415   0.5160433   0.7292397
0-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.5238095   0.4112354   0.6363837
0-24 months   ki1114097-CMIN             PERU                           0                    NA                0.7727273   0.5872088   0.9582457
0-24 months   ki1114097-CMIN             PERU                           1                    NA                0.7936508   0.6855248   0.9017768
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.5000000   0.3392126   0.6607874
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.4545455   0.2415102   0.6675807
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.6034483   0.4619286   0.7449680
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.4054054   0.2165504   0.5942604
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                0.8235294   0.6987335   0.9483254
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.6875000   0.4432765   0.9317235
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.5227273   0.3626804   0.6827742
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.5769231   0.4628880   0.6909582
6-24 months   ki1000108-IRC              INDIA                          0                    NA                0.6315789   0.5100145   0.7531434
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.4489796   0.3388111   0.5591481
6-24 months   ki1000109-EE               PAKISTAN                       0                    NA                0.2842105   0.1875538   0.3808673
6-24 months   ki1000109-EE               PAKISTAN                       1                    NA                0.3518519   0.2330416   0.4706621
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                0.1702128   0.0679359   0.2724897
6-24 months   ki1000109-ResPak           PAKISTAN                       1                    NA                0.3414634   0.1967303   0.4861965
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2692308   0.1666721   0.3717895
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2888889   0.1559347   0.4218431
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.5672727   0.5079161   0.6266294
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5306122   0.4225460   0.6386785
6-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.5512821   0.5138736   0.5886906
6-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.4573991   0.3869214   0.5278768
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.5413223   0.4728132   0.6098315
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4100719   0.3233955   0.4967484
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                0.6226415   0.5235611   0.7217219
6-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                0.5312500   0.3435485   0.7189515


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.6370968   0.5511492   0.7230443
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6011236   0.5212729   0.6809743
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.7849462   0.7049947   0.8648978
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.7951807   0.7027530   0.8876084
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
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4838710   0.3544124   0.6133295
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5263158   0.4116286   0.6410029
6-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.7800000   0.6617106   0.8982894
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5573770   0.4641535   0.6506006
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5161290   0.4322562   0.6000019
6-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.3087248   0.2336906   0.3837591
6-24 months   ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2500000   0.1614745   0.3385255
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5576407   0.5054408   0.6098407
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5304088   0.4972641   0.5635534
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4934383   0.4388573   0.5480193
6-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                0.6014493   0.5131344   0.6897641


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 1.4047619   0.9887272   1.9958550
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 0.9942857   0.7466239   1.3240992
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 0.9261501   0.7569644   1.1331498
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 0.9883721   0.7861185   1.2426618
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.2390531   0.8638334   1.7772553
0-24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          1                    0                 0.9228304   0.7186034   1.1850986
0-24 months   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE               PAKISTAN                       1                    0                 1.7375400   1.1414388   2.6449470
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-ResPak           PAKISTAN                       1                    0                 3.1870915   1.4880672   6.8260037
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 2.5626949   1.7345271   3.7862800
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1711890   1.0251712   1.3380045
0-24 months   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         1                    0                 1.0389781   0.9409460   1.1472236
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.9381416   0.7855065   1.1204359
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 0.8412698   0.6392438   1.1071441
0-24 months   ki1114097-CMIN             PERU                           0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CMIN             PERU                           1                    0                 1.0270775   0.7793310   1.3535818
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                 0.9090909   0.5154537   1.6033377
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          1                    0                 0.6718147   0.3989329   1.1313555
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                    0                 0.8348214   0.5674654   1.2281397
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.1036789   0.7666178   1.5889367
6-24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          1                    0                 0.7108844   0.5204010   0.9710906
6-24 months   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE               PAKISTAN                       1                    0                 1.2379973   0.7663491   1.9999204
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-ResPak           PAKISTAN                       1                    0                 2.0060976   0.9612972   4.1864547
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.0730159   0.5905509   1.9496425
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9353742   0.7439455   1.1760603
6-24 months   ki1101329-Keneba           GAMBIA                         0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         1                    0                 0.8297007   0.7011211   0.9818606
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 0.7575375   0.5920198   0.9693309
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1114097-CMIN             BANGLADESH                     1                    0                 0.8532197   0.5791784   1.2569250


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.1370968    0.0069697    0.2672239
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0023247   -0.1186672    0.1140179
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0385832   -0.1399586    0.0627922
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0048193   -0.0989605    0.0893219
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.1080420   -0.0576648    0.2737487
0-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0417055   -0.1755095    0.0920984
0-24 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.1321319    0.0460642    0.2181995
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.2847872    0.1682321    0.4013424
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.3138311    0.2233517    0.4043105
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0596557    0.0109168    0.1083947
0-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0096764   -0.0153527    0.0347054
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0190407   -0.0727262    0.0346449
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0436941   -0.1129901    0.0256018
0-24 months   ki1114097-CMIN             PERU                           0                    NA                 0.0155080   -0.1436439    0.1746599
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0161290   -0.1115800    0.0793219
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0771325   -0.1716866    0.0174217
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0435294   -0.1341316    0.0470728
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0346498   -0.0910558    0.1603554
6-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.1154499   -0.2207767   -0.0101232
6-24 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.0245143   -0.0307789    0.0798076
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.0797872   -0.0040494    0.1636238
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0071920   -0.0542512    0.0686352
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0096320   -0.0421067    0.0228427
6-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0208733   -0.0389019   -0.0028446
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0478840   -0.0895227   -0.0062453
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0211922   -0.0712741    0.0288897


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                 0.2151899   -0.0238372    0.3984132
0-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.0038672   -0.2173045    0.1721468
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0491539   -0.1874601    0.0730435
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                -0.0060606   -0.1319609    0.1058367
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.1712860   -0.1415523    0.3983921
0-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0707025   -0.3230835    0.1335363
0-24 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.3173635    0.0640440    0.5021212
0-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.6259060    0.2503461    0.8133188
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.5382467    0.3475619    0.6732009
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0951556    0.0130378    0.1704409
0-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                 0.0172497   -0.0285722    0.0610303
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0364567   -0.1435988    0.0606473
0-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0754717   -0.2021488    0.0378567
0-24 months   ki1114097-CMIN             PERU                           0                    NA                 0.0196744   -0.2045830    0.2021817
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                -0.0333333   -0.2509370    0.1464177
6-24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                -0.1465517   -0.3478299    0.0246686
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                    NA                -0.0558069   -0.1818236    0.0567727
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0621658   -0.1937308    0.2632065
6-24 months   ki1000108-IRC              INDIA                          0                    NA                -0.2236842   -0.4574907   -0.0273843
6-24 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.0794050   -0.1214023    0.2442542
6-24 months   ki1000109-ResPak           PAKISTAN                       0                    NA                 0.3191489   -0.0901981    0.5747945
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0260181   -0.2239573    0.2249397
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0172727   -0.0773608    0.0394640
6-24 months   ki1101329-Keneba           GAMBIA                         0                    NA                -0.0393532   -0.0740483   -0.0057788
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                -0.0970415   -0.1855401   -0.0151492
6-24 months   ki1114097-CMIN             BANGLADESH                     0                    NA                -0.0352353   -0.1224286    0.0451846
