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

**Intervention Variable:** exclfeed3

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        exclfeed3    wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  ----------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      0       32    118
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      1       62    118
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      0       10    118
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      1       14    118
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      0        3     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      1        6     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      0        3     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      1       11     23
0-24 months   ki0047075b-MAL-ED          INDIA                          1                      0       34    177
0-24 months   ki0047075b-MAL-ED          INDIA                          1                      1       65    177
0-24 months   ki0047075b-MAL-ED          INDIA                          0                      0       36    177
0-24 months   ki0047075b-MAL-ED          INDIA                          0                      1       42    177
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                      0        6     92
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                      1       21     92
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                      0       14     92
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                      1       51     92
0-24 months   ki0047075b-MAL-ED          PERU                           1                      0        2     32
0-24 months   ki0047075b-MAL-ED          PERU                           1                      1        3     32
0-24 months   ki0047075b-MAL-ED          PERU                           0                      0        4     32
0-24 months   ki0047075b-MAL-ED          PERU                           0                      1       23     32
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        1     78
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        3     78
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0       12     78
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       62     78
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        1     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1       12     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0        7     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       25     45
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0        5     11
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        6     11
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0     11
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0     11
0-24 months   ki1000108-IRC              INDIA                          1                      0        0     14
0-24 months   ki1000108-IRC              INDIA                          1                      1        0     14
0-24 months   ki1000108-IRC              INDIA                          0                      0        8     14
0-24 months   ki1000108-IRC              INDIA                          0                      1        6     14
0-24 months   ki1000109-EE               PAKISTAN                       1                      0      131    257
0-24 months   ki1000109-EE               PAKISTAN                       1                      1      104    257
0-24 months   ki1000109-EE               PAKISTAN                       0                      0       19    257
0-24 months   ki1000109-EE               PAKISTAN                       0                      1        3    257
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                      0       41     61
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                      1       14     61
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                      0        4     61
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                      1        2     61
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      0       88    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      1      125    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                      0       40    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                      1       54    307
0-24 months   ki1101329-Keneba           GAMBIA                         1                      0      453   1234
0-24 months   ki1101329-Keneba           GAMBIA                         1                      1      620   1234
0-24 months   ki1101329-Keneba           GAMBIA                         0                      0       81   1234
0-24 months   ki1101329-Keneba           GAMBIA                         0                      1       80   1234
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      0      185    470
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      1      208    470
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      0       34    470
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      1       43    470
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     1853   3719
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     1390   3719
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      0      260   3719
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      1      216   3719
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      0       13     17
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      1        3     17
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      0        1     17
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      1        0     17
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                      0        8     58
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                      1       35     58
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                      0        4     58
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                      1       11     58
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                      0        1     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                      1        5     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                      0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                      1        8     14
0-6 months    ki0047075b-MAL-ED          INDIA                          1                      0        7     82
0-6 months    ki0047075b-MAL-ED          INDIA                          1                      1       30     82
0-6 months    ki0047075b-MAL-ED          INDIA                          0                      0       18     82
0-6 months    ki0047075b-MAL-ED          INDIA                          0                      1       27     82
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                      0        4     42
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                      1        9     42
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                      0        5     42
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                      1       24     42
0-6 months    ki0047075b-MAL-ED          PERU                           1                      0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           1                      1        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           0                      0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           0                      1       11     11
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        0     28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        1     28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0        4     28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       23     28
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        5     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0        1     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1        6     12
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                      0        3      6
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        3      6
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0      6
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0      6
0-6 months    ki1000108-IRC              INDIA                          1                      0        0     10
0-6 months    ki1000108-IRC              INDIA                          1                      1        0     10
0-6 months    ki1000108-IRC              INDIA                          0                      0        5     10
0-6 months    ki1000108-IRC              INDIA                          0                      1        5     10
0-6 months    ki1000109-EE               PAKISTAN                       1                      0       38    108
0-6 months    ki1000109-EE               PAKISTAN                       1                      1       59    108
0-6 months    ki1000109-EE               PAKISTAN                       0                      0        9    108
0-6 months    ki1000109-EE               PAKISTAN                       0                      1        2    108
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                      0       14     26
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                      1        9     26
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                      0        3     26
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                      1        0     26
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                      0       23    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                      1      100    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                      0       16    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                      1       45    184
0-6 months    ki1101329-Keneba           GAMBIA                         1                      0       95    377
0-6 months    ki1101329-Keneba           GAMBIA                         1                      1      215    377
0-6 months    ki1101329-Keneba           GAMBIA                         0                      0       31    377
0-6 months    ki1101329-Keneba           GAMBIA                         0                      1       36    377
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                      0       48    150
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                      1       71    150
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                      0       14    150
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                      1       17    150
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      0      616   2344
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      1     1390   2344
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                      0      122   2344
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                      1      216   2344
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                      0        3      3
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                      1        0      3
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                      0        0      3
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                      1        0      3
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      0       24     60
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      1       27     60
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      0        6     60
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      1        3     60
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      0        2      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      1        1      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      0        3      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      1        3      9
6-24 months   ki0047075b-MAL-ED          INDIA                          1                      0       27     95
6-24 months   ki0047075b-MAL-ED          INDIA                          1                      1       35     95
6-24 months   ki0047075b-MAL-ED          INDIA                          0                      0       18     95
6-24 months   ki0047075b-MAL-ED          INDIA                          0                      1       15     95
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                      0        2     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                      1       12     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                      0        9     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                      1       27     50
6-24 months   ki0047075b-MAL-ED          PERU                           1                      0        2     21
6-24 months   ki0047075b-MAL-ED          PERU                           1                      1        3     21
6-24 months   ki0047075b-MAL-ED          PERU                           0                      0        4     21
6-24 months   ki0047075b-MAL-ED          PERU                           0                      1       12     21
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        1     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        2     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0        8     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       39     50
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        1     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        7     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0        6     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       19     33
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0        2      5
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        3      5
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0      5
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0      5
6-24 months   ki1000108-IRC              INDIA                          1                      0        0      4
6-24 months   ki1000108-IRC              INDIA                          1                      1        0      4
6-24 months   ki1000108-IRC              INDIA                          0                      0        3      4
6-24 months   ki1000108-IRC              INDIA                          0                      1        1      4
6-24 months   ki1000109-EE               PAKISTAN                       1                      0       93    149
6-24 months   ki1000109-EE               PAKISTAN                       1                      1       45    149
6-24 months   ki1000109-EE               PAKISTAN                       0                      0       10    149
6-24 months   ki1000109-EE               PAKISTAN                       0                      1        1    149
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                      0       27     35
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                      1        5     35
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                      0        1     35
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                      1        2     35
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      0       65    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      1       25    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                      0       24    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                      1        9    123
6-24 months   ki1101329-Keneba           GAMBIA                         1                      0      358    857
6-24 months   ki1101329-Keneba           GAMBIA                         1                      1      405    857
6-24 months   ki1101329-Keneba           GAMBIA                         0                      0       50    857
6-24 months   ki1101329-Keneba           GAMBIA                         0                      1       44    857
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      0      137    320
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      1      137    320
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      0       20    320
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      1       26    320
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     1237   1375
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1        0   1375
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      0      138   1375
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      1        0   1375
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      0       10     14
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      1        3     14
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      0        1     14
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      1        0     14


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
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/aa7709f5-d4c8-4124-9b04-b5fc4942d3bb/fa9f0a37-bab8-4858-8bef-c8bbaf4adf99/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/aa7709f5-d4c8-4124-9b04-b5fc4942d3bb/fa9f0a37-bab8-4858-8bef-c8bbaf4adf99/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/aa7709f5-d4c8-4124-9b04-b5fc4942d3bb/fa9f0a37-bab8-4858-8bef-c8bbaf4adf99/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/aa7709f5-d4c8-4124-9b04-b5fc4942d3bb/fa9f0a37-bab8-4858-8bef-c8bbaf4adf99/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.6595745   0.5700476   0.7491014
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.5833333   0.3380231   0.8286436
0-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.6565657   0.5545252   0.7586061
0-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.5384615   0.4134804   0.6634427
0-24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                0.7777778   0.5946691   0.9608864
0-24 months   ki0047075b-MAL-ED     NEPAL        0                    NA                0.7846154   0.6984506   0.8707802
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.5868545   0.5186588   0.6550502
0-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.5744681   0.4715248   0.6774114
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.5778192   0.5455846   0.6100538
0-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.4968944   0.4144002   0.5793886
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5292621   0.4753470   0.5831772
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5584416   0.4376550   0.6792281
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.4286155   0.4116329   0.4455980
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.4537815   0.4085910   0.4989721
0-6 months    ki0047075b-MAL-ED     INDIA        1                    NA                0.8108108   0.6777087   0.9439129
0-6 months    ki0047075b-MAL-ED     INDIA        0                    NA                0.6000000   0.4545320   0.7454680
0-6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.8130081   0.7450537   0.8809625
0-6 months    ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.7377049   0.6278629   0.8475469
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.6935484   0.6415100   0.7455868
0-6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.5373134   0.4257369   0.6488899
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5966387   0.5078041   0.6854732
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5483871   0.3726315   0.7241427
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.6929212   0.6727351   0.7131074
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.6390533   0.5878193   0.6902872
6-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                0.5645161   0.4290709   0.6999613
6-24 months   ki0047075b-MAL-ED     INDIA        0                    NA                0.4545455   0.2469787   0.6621122
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.2777778   0.1853143   0.3702413
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.2727273   0.1045711   0.4408835
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.5307995   0.4929067   0.5686923
6-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.4680851   0.3606539   0.5755163
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5000000   0.4354869   0.5645131
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5652174   0.4059418   0.7244930


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.6440678   0.5565826   0.7315530
0-24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.6045198   0.5246128   0.6844268
0-24 months   ki0047075b-MAL-ED     NEPAL        NA                   NA                0.7826087   0.7016344   0.8635829
0-24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.5830619   0.5262762   0.6398476
0-24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.5672609   0.5371792   0.5973426
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.5340426   0.4848509   0.5832342
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.4318365   0.4159351   0.4477379
0-6 months    ki0047075b-MAL-ED     INDIA        NA                   NA                0.6951220   0.5922224   0.7980215
0-6 months    ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.7880435   0.7295878   0.8464992
0-6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.6657825   0.6181920   0.7133730
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.5866667   0.5072781   0.6660552
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.6851536   0.6663491   0.7039581
6-24 months   ki0047075b-MAL-ED     INDIA        NA                   NA                0.5263158   0.4116286   0.6410029
6-24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.5239207   0.4881434   0.5596979
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.5093750   0.4496016   0.5691484


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 0.8844086   0.5683707   1.3761769
0-24 months   ki0047075b-MAL-ED     INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED     INDIA        0                    1                 0.8201183   0.6202486   1.0843944
0-24 months   ki0047075b-MAL-ED     NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED     NEPAL        0                    1                 1.0087912   0.7775396   1.3088204
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 0.9788936   0.7904992   1.2121868
0-24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba      GAMBIA       0                    1                 0.8599479   0.7217837   1.0245596
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.0551324   0.8306696   1.3402492
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 1.0587147   0.9511118   1.1784911
0-6 months    ki0047075b-MAL-ED     INDIA        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED     INDIA        0                    1                 0.7400000   0.5521528   0.9917544
0-6 months    ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE    BANGLADESH   0                    1                 0.9073770   0.7649426   1.0763332
0-6 months    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba      GAMBIA       0                    1                 0.7747310   0.6212423   0.9661417
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 0.9191277   0.6455067   1.3087327
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9222596   0.8468523   1.0043815
6-24 months   ki0047075b-MAL-ED     INDIA        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED     INDIA        0                    1                 0.8051948   0.4807026   1.3487313
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 0.9818182   0.4873998   1.9777746
6-24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba      GAMBIA       0                    1                 0.8818492   0.6934118   1.1214953
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.1304348   0.8289337   1.5415983


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0155067   -0.0687695    0.0377562
0-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.0520459   -0.1239998    0.0199081
0-24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                 0.0048309   -0.1385574    0.1482192
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0037926   -0.0415794    0.0339942
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                -0.0105583   -0.0222899    0.0011734
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0047805   -0.0168161    0.0263770
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0032210   -0.0029641    0.0094061
0-6 months    ki0047075b-MAL-ED     INDIA        1                    NA                -0.1156889   -0.2269651   -0.0044126
0-6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0249647   -0.0680442    0.0181149
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                -0.0277659   -0.0505034   -0.0050284
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0099720   -0.0508653    0.0309213
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0077677   -0.0157451    0.0002098
6-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.0382003   -0.1253112    0.0489105
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0013550   -0.0528032    0.0500932
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                -0.0068788   -0.0195572    0.0057995
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0093750   -0.0152276    0.0339776


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                -0.0240761   -0.1112112    0.0562262
0-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.0860946   -0.2137539    0.0281379
0-24 months   ki0047075b-MAL-ED     NEPAL        1                    NA                 0.0061728   -0.1952351    0.1736417
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0065046   -0.0734476    0.0562637
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                -0.0186127   -0.0395343    0.0018878
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0089515   -0.0323417    0.0485930
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                 0.0074589   -0.0069666    0.0216778
0-6 months    ki0047075b-MAL-ED     INDIA        1                    NA                -0.1664296   -0.3465073   -0.0104349
0-6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0316793   -0.0881944    0.0219007
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                -0.0417042   -0.0766604   -0.0078828
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0169977   -0.0892186    0.0504346
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0113371   -0.0230622    0.0002536
6-24 months   ki0047075b-MAL-ED     INDIA        1                    NA                -0.0725806   -0.2546184    0.0830445
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0049020   -0.2095297    0.1651070
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                -0.0131295   -0.0376417    0.0108036
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0184049   -0.0311409    0.0655701
