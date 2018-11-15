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

**Intervention Variable:** impfloor

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        impfloor    wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  ---------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     0        6    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     1        4    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     0       38    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     1       73    121
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     0        0     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     1        0     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     0        6     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     1       17     23
0-24 months   ki0047075b-MAL-ED          INDIA                          0                     0        6    173
0-24 months   ki0047075b-MAL-ED          INDIA                          0                     1        9    173
0-24 months   ki0047075b-MAL-ED          INDIA                          1                     0       61    173
0-24 months   ki0047075b-MAL-ED          INDIA                          1                     1       97    173
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                     0       10     87
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                     1       36     87
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                     0        9     87
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                     1       32     87
0-24 months   ki0047075b-MAL-ED          PERU                           0                     0        4     33
0-24 months   ki0047075b-MAL-ED          PERU                           0                     1       22     33
0-24 months   ki0047075b-MAL-ED          PERU                           1                     0        2     33
0-24 months   ki0047075b-MAL-ED          PERU                           1                     1        5     33
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0        0     77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        3     77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0       12     77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1       62     77
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0        8     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1       36     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0        0     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        1     45
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                     0        0    225
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                     1        0    225
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     0       78    225
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     1      147    225
0-24 months   ki1000108-IRC              INDIA                          0                     0        0    308
0-24 months   ki1000108-IRC              INDIA                          0                     1        0    308
0-24 months   ki1000108-IRC              INDIA                          1                     0      128    308
0-24 months   ki1000108-IRC              INDIA                          1                     1      180    308
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                     0       33    418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                     1       24    418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                     0      168    418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                     1      193    418
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                     0       24    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                     1       14    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     0      104    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     1      165    307
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                     0       31    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                     1       55    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0       86    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1      139    311
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                     0      172    445
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                     1      203    445
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     0       39    445
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     1       31    445
0-24 months   ki1114097-CONTENT          PERU                           0                     0        0      9
0-24 months   ki1114097-CONTENT          PERU                           0                     1        0      9
0-24 months   ki1114097-CONTENT          PERU                           1                     0        2      9
0-24 months   ki1114097-CONTENT          PERU                           1                     1        7      9
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                     0     4063   7549
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                     1     2933   7549
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0      294   7549
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1      259   7549
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     0     1395   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     1      474   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     0      135   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     1       58   2062
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                     0        2     59
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                     1        2     59
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                     0       10     59
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                     1       45     59
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                     0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                     1        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                     0        1     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                     1       13     14
0-6 months    ki0047075b-MAL-ED          INDIA                          0                     0        1     78
0-6 months    ki0047075b-MAL-ED          INDIA                          0                     1        4     78
0-6 months    ki0047075b-MAL-ED          INDIA                          1                     0       21     78
0-6 months    ki0047075b-MAL-ED          INDIA                          1                     1       52     78
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                     0        3     41
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                     1       13     41
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                     0        5     41
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                     1       20     41
0-6 months    ki0047075b-MAL-ED          PERU                           0                     0        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           0                     1        8     10
0-6 months    ki0047075b-MAL-ED          PERU                           1                     0        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           1                     1        2     10
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0        0     27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        1     27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0        3     27
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1       23     27
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0        1     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1       11     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        0     12
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                     0        0    141
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                     1        0    141
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                     0       39    141
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                     1      102    141
0-6 months    ki1000108-IRC              INDIA                          0                     0        0    187
0-6 months    ki1000108-IRC              INDIA                          0                     1        0    187
0-6 months    ki1000108-IRC              INDIA                          1                     0       72    187
0-6 months    ki1000108-IRC              INDIA                          1                     1      115    187
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                     0       12    221
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     0                     1       17    221
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                     0       52    221
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     1                     1      140    221
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                     0        7    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                     1       13    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     0       32    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     1      132    184
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                     0        4    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                     1       54    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                     0       17    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                     1      123    198
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                     0       43    142
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                     1       74    142
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                     0       15    142
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                     1       10    142
0-6 months    ki1114097-CONTENT          PERU                           0                     0        0      4
0-6 months    ki1114097-CONTENT          PERU                           0                     1        0      4
0-6 months    ki1114097-CONTENT          PERU                           1                     0        0      4
0-6 months    ki1114097-CONTENT          PERU                           1                     1        4      4
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                     0     1428   4723
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                     1     2933   4723
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     0      103   4723
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     1      259   4723
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                     0      213    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                     1      270    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                     0       29    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                     1       36    548
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     0        4     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                     1        2     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     0       28     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                     1       28     62
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                     1        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     0        5      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                     1        4      9
6-24 months   ki0047075b-MAL-ED          INDIA                          0                     0        5     95
6-24 months   ki0047075b-MAL-ED          INDIA                          0                     1        5     95
6-24 months   ki0047075b-MAL-ED          INDIA                          1                     0       40     95
6-24 months   ki0047075b-MAL-ED          INDIA                          1                     1       45     95
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                     0        7     46
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                     1       23     46
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                     0        4     46
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                     1       12     46
6-24 months   ki0047075b-MAL-ED          PERU                           0                     0        4     23
6-24 months   ki0047075b-MAL-ED          PERU                           0                     1       14     23
6-24 months   ki0047075b-MAL-ED          PERU                           1                     0        2     23
6-24 months   ki0047075b-MAL-ED          PERU                           1                     1        3     23
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     0        0     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                     1        2     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     0        9     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                     1       39     50
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     0        7     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                     1       25     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     0        0     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                     1        1     33
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                     0        0     84
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                     1        0     84
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     0       39     84
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                     1       45     84
6-24 months   ki1000108-IRC              INDIA                          0                     0        0    121
6-24 months   ki1000108-IRC              INDIA                          0                     1        0    121
6-24 months   ki1000108-IRC              INDIA                          1                     0       56    121
6-24 months   ki1000108-IRC              INDIA                          1                     1       65    121
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                     0       21    197
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     0                     1        7    197
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                     0      116    197
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                     1       53    197
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                     0       17    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                     1        1    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     0       72    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     1       33    123
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                     0       27    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                     1        1    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0       69    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1       16    113
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                     0      129    303
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                     1      129    303
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     0       24    303
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                     1       21    303
6-24 months   ki1114097-CONTENT          PERU                           0                     0        0      5
6-24 months   ki1114097-CONTENT          PERU                           0                     1        0      5
6-24 months   ki1114097-CONTENT          PERU                           1                     0        2      5
6-24 months   ki1114097-CONTENT          PERU                           1                     1        3      5
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                     0     2635   2826
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                     1        0   2826
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0      191   2826
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1        0   2826
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     0     1182   1514
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                     1      204   1514
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     0      106   1514
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                     1       22   1514


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
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
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
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/deb22f48-dad0-493a-a74e-4cfddd28c48f/6bebc1f7-9716-4dd7-8692-13f3c33cc6bd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/deb22f48-dad0-493a-a74e-4cfddd28c48f/6bebc1f7-9716-4dd7-8692-13f3c33cc6bd/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/deb22f48-dad0-493a-a74e-4cfddd28c48f/6bebc1f7-9716-4dd7-8692-13f3c33cc6bd/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/deb22f48-dad0-493a-a74e-4cfddd28c48f/6bebc1f7-9716-4dd7-8692-13f3c33cc6bd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       INDIA        0                    NA                0.6000000   0.3636292   0.8363708
0-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                0.6139241   0.5287779   0.6990702
0-24 months   ki0047075b-MAL-ED       NEPAL        0                    NA                0.7826087   0.6870003   0.8782171
0-24 months   ki0047075b-MAL-ED       NEPAL        1                    NA                0.7804878   0.6404037   0.9205719
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.4210526   0.2806014   0.5615038
0-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.5346260   0.4802983   0.5889538
0-24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.3684211   0.2299001   0.5069420
0-24 months   ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.6133829   0.5527675   0.6739983
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                0.6395349   0.5427423   0.7363275
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    NA                0.6177778   0.5528630   0.6826926
0-24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                0.5413333   0.4874212   0.5952455
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.4428571   0.3030616   0.5826527
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.4192396   0.4076805   0.4307986
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.4683544   0.4268392   0.5098697
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.2536116   0.2335788   0.2736443
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.3005181   0.2296821   0.3713542
0-6 months    ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.5862069   0.4057286   0.7666852
0-6 months    ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.7291667   0.6663418   0.7919916
0-6 months    ki1017093b-PROVIDE      BANGLADESH   0                    NA                0.6500000   0.4495198   0.8504802
0-6 months    ki1017093b-PROVIDE      BANGLADESH   1                    NA                0.8048780   0.7444925   0.8652636
0-6 months    ki1113344-GMS-Nepal     NEPAL        0                    NA                0.6324786   0.5444051   0.7205521
0-6 months    ki1113344-GMS-Nepal     NEPAL        1                    NA                0.4000000   0.2059121   0.5940879
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                0.6725522   0.6586245   0.6864799
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    NA                0.7154696   0.6689663   0.7619729
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.5590062   0.5146866   0.6033258
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.5538462   0.4328908   0.6748015
6-24 months   ki0047075b-MAL-ED       INDIA        0                    NA                0.5000000   0.1687592   0.8312408
6-24 months   ki0047075b-MAL-ED       INDIA        1                    NA                0.5294118   0.4074100   0.6514135
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                0.2500000   0.0656374   0.4343626
6-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    NA                0.3136095   0.2434845   0.3837345
6-24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                0.5000000   0.4349044   0.5650956
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    NA                0.4666667   0.2867434   0.6465900
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                0.1471861   0.1289272   0.1654451
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    NA                0.1718750   0.1065288   0.2372212


### Parameter: E(Y)


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED       INDIA        NA                   NA                0.6127168   0.5323061   0.6931274
0-24 months   ki0047075b-MAL-ED       NEPAL        NA                   NA                0.7816092   0.6987929   0.8644255
0-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.5191388   0.4683286   0.5699489
0-24 months   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.5830619   0.5262762   0.6398476
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.6237942   0.5698223   0.6777662
0-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.5258427   0.4754454   0.5762400
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.4228375   0.4116972   0.4339777
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.2580019   0.2386523   0.2773515
0-6 months    ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.7104072   0.6505603   0.7702542
0-6 months    ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.7880435   0.7295878   0.8464992
0-6 months    ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.5915493   0.5100380   0.6730606
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   NA                   NA                0.6758416   0.6624927   0.6891906
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.5583942   0.5167799   0.6000084
6-24 months   ki0047075b-MAL-ED       INDIA        NA                   NA                0.5263158   0.4116286   0.6410029
6-24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.3045685   0.2390070   0.3701301
6-24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.4950495   0.4335437   0.5565553
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   NA                   NA                0.1492734   0.1316631   0.1668838


### Parameter: RR


agecat        studyid                 country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED       INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED       INDIA        1                    0                 1.0232068   0.6738891   1.553597
0-24 months   ki0047075b-MAL-ED       NEPAL        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED       NEPAL        1                    0                 0.9972900   0.8019800   1.240165
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    0                 1.2697368   0.8958452   1.799677
0-24 months   ki1017093b-PROVIDE      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE      BANGLADESH   1                    0                 1.6648964   1.1286469   2.455932
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   1                    0                 0.9659798   0.8030974   1.161898
0-24 months   ki1113344-GMS-Nepal     NEPAL        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal     NEPAL        1                    0                 0.8180859   0.5877699   1.138650
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   1                    0                 1.1171523   1.0181153   1.225823
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    0                 1.1849544   0.9241461   1.519367
0-6 months    ki1017093-NIH-Birth     BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth     BANGLADESH   1                    0                 1.2438725   0.9035046   1.712464
0-6 months    ki1017093b-PROVIDE      BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE      BANGLADESH   1                    0                 1.2382739   0.9014868   1.700882
0-6 months    ki1113344-GMS-Nepal     NEPAL        0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal     NEPAL        1                    0                 0.6324324   0.3817505   1.047728
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   1                    0                 1.0638128   0.9936634   1.138915
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   1                    0                 0.9907692   0.7853617   1.249900
6-24 months   ki0047075b-MAL-ED       INDIA        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED       INDIA        1                    0                 1.0588235   0.5250494   2.135242
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth     BANGLADESH   1                    0                 1.2544379   0.5807596   2.709580
6-24 months   ki1113344-GMS-Nepal     NEPAL        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal     NEPAL        1                    0                 0.9333333   0.6214496   1.401741
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   1                    0                 1.1677390   0.7828146   1.741938


### Parameter: PAR


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED       INDIA        0                    NA                 0.0127168   -0.2167752    0.2422087
0-24 months   ki0047075b-MAL-ED       NEPAL        0                    NA                -0.0009995   -0.0812049    0.0792059
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                 0.0980861   -0.0323735    0.2285457
0-24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                 0.2146408    0.0818143    0.3474674
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                -0.0157407   -0.1001191    0.0686377
0-24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                -0.0154906   -0.0391127    0.0081314
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                 0.0035979    0.0004262    0.0067696
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                 0.0043904   -0.0025401    0.0113209
0-6 months    ki1017093-NIH-Birth     BANGLADESH   0                    NA                 0.1242003   -0.0419492    0.2903499
0-6 months    ki1017093b-PROVIDE      BANGLADESH   0                    NA                 0.1380435   -0.0488204    0.3249074
0-6 months    ki1113344-GMS-Nepal     NEPAL        0                    NA                -0.0409293   -0.0812484   -0.0006103
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                 0.0032895   -0.0004455    0.0070244
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0006121   -0.0158924    0.0146683
6-24 months   ki0047075b-MAL-ED       INDIA        0                    NA                 0.0263158   -0.2893065    0.3419381
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                 0.0545685   -0.1147328    0.2238699
6-24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                -0.0049505   -0.0333508    0.0234498
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                 0.0020873   -0.0036577    0.0078323


### Parameter: PAF


agecat        studyid                 country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED       INDIA        0                    NA                 0.0207547   -0.4351619    0.3318375
0-24 months   ki0047075b-MAL-ED       NEPAL        0                    NA                -0.0012788   -0.1093840    0.0962920
0-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                 0.1889401   -0.1068084    0.4056621
0-24 months   ki1017093b-PROVIDE      BANGLADESH   0                    NA                 0.3681270    0.0955195    0.5585715
0-24 months   ki1017093c-NIH-Crypto   BANGLADESH   0                    NA                -0.0252338   -0.1700308    0.1016439
0-24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                -0.0294587   -0.0757042    0.0147987
0-24 months   kiGH5241-JiVitA-3       BANGLADESH   0                    NA                 0.0085089    0.0009779    0.0159832
0-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                 0.0170169   -0.0101434    0.0434468
0-6 months    ki1017093-NIH-Birth     BANGLADESH   0                    NA                 0.1748298   -0.0975335    0.3796035
0-6 months    ki1017093b-PROVIDE      BANGLADESH   0                    NA                 0.1751724   -0.1014940    0.3823475
0-6 months    ki1113344-GMS-Nepal     NEPAL        0                    NA                -0.0691901   -0.1410570   -0.0018495
0-6 months    kiGH5241-JiVitA-3       BANGLADESH   0                    NA                 0.0048672   -0.0006772    0.0103809
0-6 months    kiGH5241-JiVitA-4       BANGLADESH   0                    NA                -0.0010961   -0.0288384    0.0258982
6-24 months   ki0047075b-MAL-ED       INDIA        0                    NA                 0.0500000   -0.7852745    0.4944755
6-24 months   ki1017093-NIH-Birth     BANGLADESH   0                    NA                 0.1791667   -0.6218475    0.5845680
6-24 months   ki1113344-GMS-Nepal     NEPAL        0                    NA                -0.0100000   -0.0691757    0.0459005
6-24 months   kiGH5241-JiVitA-4       BANGLADESH   0                    NA                 0.0139831   -0.0252188    0.0516859
