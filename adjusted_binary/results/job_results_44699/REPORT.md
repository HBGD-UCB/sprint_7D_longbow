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

**Intervention Variable:** exclfeed6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        exclfeed6    wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  ----------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      0       16    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      1       20    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      0       28    121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      1       57    121
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      0        0     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      1        0     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      0        6     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      1       17     23
0-24 months   ki0047075b-MAL-ED          INDIA                          1                      0        0    170
0-24 months   ki0047075b-MAL-ED          INDIA                          1                      1        3    170
0-24 months   ki0047075b-MAL-ED          INDIA                          0                      0       66    170
0-24 months   ki0047075b-MAL-ED          INDIA                          0                      1      101    170
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                      0        0     90
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                      1        1     90
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                      0       18     90
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                      1       71     90
0-24 months   ki0047075b-MAL-ED          PERU                           1                      0        0     29
0-24 months   ki0047075b-MAL-ED          PERU                           1                      1        0     29
0-24 months   ki0047075b-MAL-ED          PERU                           0                      0        5     29
0-24 months   ki0047075b-MAL-ED          PERU                           0                      1       24     29
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        0     77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0       12     77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       65     77
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        0     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0        8     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       37     45
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0        7     16
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        9     16
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0     16
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0     16
0-24 months   ki1000108-IRC              INDIA                          1                      0        0     19
0-24 months   ki1000108-IRC              INDIA                          1                      1        0     19
0-24 months   ki1000108-IRC              INDIA                          0                      0       11     19
0-24 months   ki1000108-IRC              INDIA                          0                      1        8     19
0-24 months   ki1000109-EE               PAKISTAN                       1                      0       76    257
0-24 months   ki1000109-EE               PAKISTAN                       1                      1       65    257
0-24 months   ki1000109-EE               PAKISTAN                       0                      0       74    257
0-24 months   ki1000109-EE               PAKISTAN                       0                      1       42    257
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                      0       41     61
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                      1       14     61
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                      0        4     61
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                      1        2     61
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0     27
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0     27
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                      0       25     27
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                      1        2     27
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      0       31    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      1       49    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                      0       97    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                      1      130    307
0-24 months   ki1101329-Keneba           GAMBIA                         1                      0      180   1326
0-24 months   ki1101329-Keneba           GAMBIA                         1                      1      234   1326
0-24 months   ki1101329-Keneba           GAMBIA                         0                      0      402   1326
0-24 months   ki1101329-Keneba           GAMBIA                         0                      1      510   1326
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      0      187    538
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      1      208    538
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      0       68    538
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      1       75    538
0-24 months   ki1148112-LCNI-5           MALAWI                         1                      0        5     34
0-24 months   ki1148112-LCNI-5           MALAWI                         1                      1        2     34
0-24 months   ki1148112-LCNI-5           MALAWI                         0                      0       22     34
0-24 months   ki1148112-LCNI-5           MALAWI                         0                      1        5     34
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     1544   3799
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     1191   3799
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      0      628   3799
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      1      436   3799
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      0      283    502
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      1      115    502
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      0       78    502
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      1       26    502
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                      0        3     59
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                      1        9     59
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                      0        9     59
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                      1       38     59
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                      0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                      1        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                      0        1     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                      1       13     14
0-6 months    ki0047075b-MAL-ED          INDIA                          1                      0        0     76
0-6 months    ki0047075b-MAL-ED          INDIA                          1                      1        1     76
0-6 months    ki0047075b-MAL-ED          INDIA                          0                      0       22     76
0-6 months    ki0047075b-MAL-ED          INDIA                          0                      1       53     76
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                      0        0     42
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                      1        0     42
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                      0        8     42
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                      1       34     42
0-6 months    ki0047075b-MAL-ED          PERU                           1                      0        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           1                      1        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           0                      0        0     10
0-6 months    ki0047075b-MAL-ED          PERU                           0                      1       10     10
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        0     28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0        4     28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       24     28
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0        1     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       11     12
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                      0        4      9
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        5      9
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0      9
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0      9
0-6 months    ki1000108-IRC              INDIA                          1                      0        0     13
0-6 months    ki1000108-IRC              INDIA                          1                      1        0     13
0-6 months    ki1000108-IRC              INDIA                          0                      0        7     13
0-6 months    ki1000108-IRC              INDIA                          0                      1        6     13
0-6 months    ki1000109-EE               PAKISTAN                       1                      0       20    108
0-6 months    ki1000109-EE               PAKISTAN                       1                      1       37    108
0-6 months    ki1000109-EE               PAKISTAN                       0                      0       27    108
0-6 months    ki1000109-EE               PAKISTAN                       0                      1       24    108
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                      0       14     26
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                      1        9     26
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                      0        3     26
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                      1        0     26
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0     12
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0     12
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                      0       12     12
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                      1        0     12
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                      0       13    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                      1       41    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                      0       26    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                      1      104    184
0-6 months    ki1101329-Keneba           GAMBIA                         1                      0       37    402
0-6 months    ki1101329-Keneba           GAMBIA                         1                      1       84    402
0-6 months    ki1101329-Keneba           GAMBIA                         0                      0      106    402
0-6 months    ki1101329-Keneba           GAMBIA                         0                      1      175    402
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                      0       49    171
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                      1       73    171
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                      0       21    171
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                      1       28    171
0-6 months    ki1148112-LCNI-5           MALAWI                         1                      0        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         1                      1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         0                      0        4      4
0-6 months    ki1148112-LCNI-5           MALAWI                         0                      1        0      4
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      0      507   2395
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      1     1191   2395
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                      0      261   2395
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                      1      436   2395
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                      0       34    136
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                      1       67    136
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                      0       20    136
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                      1       15    136
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      0       13     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      1       11     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      0       19     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      1       19     62
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      1        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      0        5      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      1        4      9
6-24 months   ki0047075b-MAL-ED          INDIA                          1                      0        0     94
6-24 months   ki0047075b-MAL-ED          INDIA                          1                      1        2     94
6-24 months   ki0047075b-MAL-ED          INDIA                          0                      0       44     94
6-24 months   ki0047075b-MAL-ED          INDIA                          0                      1       48     94
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                      0        0     48
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                      1        1     48
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                      0       10     48
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                      1       37     48
6-24 months   ki0047075b-MAL-ED          PERU                           1                      0        0     19
6-24 months   ki0047075b-MAL-ED          PERU                           1                      1        0     19
6-24 months   ki0047075b-MAL-ED          PERU                           0                      0        5     19
6-24 months   ki0047075b-MAL-ED          PERU                           0                      1       14     19
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        0     49
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0     49
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0        8     49
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       41     49
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        0     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0        7     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       26     33
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0        3      7
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        4      7
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0      7
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0      7
6-24 months   ki1000108-IRC              INDIA                          1                      0        0      6
6-24 months   ki1000108-IRC              INDIA                          1                      1        0      6
6-24 months   ki1000108-IRC              INDIA                          0                      0        4      6
6-24 months   ki1000108-IRC              INDIA                          0                      1        2      6
6-24 months   ki1000109-EE               PAKISTAN                       1                      0       56    149
6-24 months   ki1000109-EE               PAKISTAN                       1                      1       28    149
6-24 months   ki1000109-EE               PAKISTAN                       0                      0       47    149
6-24 months   ki1000109-EE               PAKISTAN                       0                      1       18    149
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                      0       27     35
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                      1        5     35
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                      0        1     35
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                      1        2     35
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0     15
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0     15
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                      0       13     15
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                      1        2     15
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      0       18    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      1        8    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                      0       71    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                      1       26    123
6-24 months   ki1101329-Keneba           GAMBIA                         1                      0      143    924
6-24 months   ki1101329-Keneba           GAMBIA                         1                      1      150    924
6-24 months   ki1101329-Keneba           GAMBIA                         0                      0      296    924
6-24 months   ki1101329-Keneba           GAMBIA                         0                      1      335    924
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      0      138    367
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      1      135    367
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      0       47    367
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      1       47    367
6-24 months   ki1148112-LCNI-5           MALAWI                         1                      0        5     30
6-24 months   ki1148112-LCNI-5           MALAWI                         1                      1        2     30
6-24 months   ki1148112-LCNI-5           MALAWI                         0                      0       18     30
6-24 months   ki1148112-LCNI-5           MALAWI                         0                      1        5     30
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     1037   1404
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1        0   1404
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      0      367   1404
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      1        0   1404
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      0      249    366
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      1       48    366
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      0       58    366
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      1       11    366


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
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

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
![](/tmp/59c89c6c-a4f1-4669-81c3-0396c5941fae/83c56061-781c-4300-b112-0860447e922b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/59c89c6c-a4f1-4669-81c3-0396c5941fae/83c56061-781c-4300-b112-0860447e922b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/59c89c6c-a4f1-4669-81c3-0396c5941fae/83c56061-781c-4300-b112-0860447e922b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/59c89c6c-a4f1-4669-81c3-0396c5941fae/83c56061-781c-4300-b112-0860447e922b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.5555556   0.4202974   0.6908137
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.6705882   0.5617194   0.7794570
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.4609929   0.3696336   0.5523522
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.3620690   0.2706356   0.4535023
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.6125000   0.4982743   0.7267257
0-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.5726872   0.5072324   0.6381420
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.5652174   0.5120314   0.6184033
0-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.5592105   0.5245172   0.5939038
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5265823   0.4728259   0.5803387
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5244755   0.4371439   0.6118071
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.4354662   0.4169248   0.4540075
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.4097744   0.3801469   0.4394020
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2889447   0.2436848   0.3342047
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2500000   0.1646321   0.3353679
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.6491228   0.5218669   0.7763787
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                0.4705882   0.3324773   0.6086992
0-6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.7592593   0.6464089   0.8721097
0-6 months    ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.8000000   0.7319271   0.8680729
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.6942149   0.6127669   0.7756628
0-6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.6227758   0.5658118   0.6797398
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5983607   0.5108507   0.6858706
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5714286   0.4318973   0.7109598
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.7014134   0.6796492   0.7231777
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.6255380   0.5895851   0.6614910
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.6633663   0.5708655   0.7558671
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.4285714   0.2640171   0.5931257
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.4583333   0.2582235   0.6584432
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.5000000   0.3311437   0.6688563
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.3333333   0.2317885   0.4348782
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.2769231   0.1658236   0.3880225
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.3076923   0.1243207   0.4910639
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.2680412   0.1773699   0.3587126
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.5119454   0.4487526   0.5751382
6-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.5309033   0.4898337   0.5719730
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.4945055   0.4294214   0.5595896
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5000000   0.3933051   0.6066949
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1616162   0.1212336   0.2019987
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1594203   0.0716775   0.2471631


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.6363636   0.5494154   0.7233119
0-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.4163424   0.3511349   0.4815500
0-24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.5830619   0.5262762   0.6398476
0-24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.5610860   0.5320121   0.5901599
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.5260223   0.4802445   0.5718001
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.4282706   0.4125479   0.4439933
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.2808765   0.2408471   0.3209059
0-6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.5648148   0.4692893   0.6603404
0-6 months    ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.7880435   0.7295878   0.8464992
0-6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.6442786   0.5973688   0.6911884
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.5906433   0.5164645   0.6648221
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.6793319   0.6606374   0.6980265
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.6029412   0.5204047   0.6854777
6-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.4838710   0.3544124   0.6133295
6-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.3087248   0.2336906   0.3837591
6-24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.5248918   0.4904236   0.5593599
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.4959128   0.4403572   0.5514684
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1612022   0.1244977   0.1979067


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 1.2070588   0.9005236   1.6179377
0-24 months   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE          PAKISTAN     0                    1                 0.7854111   0.5696459   1.0829019
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 0.9349996   0.7512989   1.1636170
0-24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba      GAMBIA       0                    1                 0.9893725   0.8839162   1.1074103
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 0.9959992   0.8192377   1.2108994
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.9410017   0.8652660   1.0233666
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 0.8652174   0.5942215   1.2598016
0-6 months    ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE          PAKISTAN     0                    1                 0.7249603   0.5093563   1.0318267
0-6 months    ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE    BANGLADESH   0                    1                 1.0536585   0.8878058   1.2504946
0-6 months    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba      GAMBIA       0                    1                 0.8970937   0.7730895   1.0409884
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 0.9549902   0.7184353   1.2694342
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.8918250   0.8354360   0.9520201
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 0.6460554   0.4294001   0.9720251
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 1.0909091   0.6280128   1.8949973
6-24 months   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE          PAKISTAN     0                    1                 0.8307692   0.5017595   1.3755146
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 0.8711340   0.4389733   1.7287486
6-24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba      GAMBIA       0                    1                 1.0370312   0.8964221   1.1996956
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 1.0111111   0.7867436   1.2994649
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 0.9864130   0.5389315   1.8054442


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0808081   -0.0426147    0.2042308
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                -0.0446505   -0.1037886    0.0144876
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0294381   -0.1267619    0.0678857
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                -0.0041314   -0.0478077    0.0395448
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0005600   -0.0278325    0.0267125
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0071956   -0.0169944    0.0026033
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0080682   -0.0281899    0.0120534
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                -0.0843080   -0.1751467    0.0065307
0-6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0287842   -0.0644035    0.1219720
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                -0.0499363   -0.1194431    0.0195705
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0077174   -0.0549711    0.0395363
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0220815   -0.0343900   -0.0097729
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0604252   -0.1119994   -0.0088509
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0255376   -0.1348219    0.1858972
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                -0.0246085   -0.0908303    0.0416133
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0312695   -0.1927776    0.1302386
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0129464   -0.0385156    0.0644084
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0014073   -0.0306115    0.0334261
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0004140   -0.0186264    0.0177984


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.1269841   -0.0866053    0.2985892
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                -0.1072446   -0.2584501    0.0257932
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0504888   -0.2313016    0.1037722
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                -0.0073633   -0.0882808    0.0675378
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0010645   -0.0542754    0.0494607
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0168015   -0.0399482    0.0058301
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0287252   -0.1029303    0.0404874
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                -0.1492666   -0.3261096    0.0039935
0-6 months    ki1017093b-PROVIDE    BANGLADESH   1                    NA                 0.0365262   -0.0895022    0.1479762
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                -0.0775073   -0.1915187    0.0255949
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0130661   -0.0963516    0.0638926
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0325047   -0.0508595   -0.0144705
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.1002173   -0.1919147   -0.0155745
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0527778   -0.3432583    0.3320496
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                -0.0797101   -0.3173654    0.1150717
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.1131222   -0.8811275    0.3413307
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                 0.0246649   -0.0785693    0.1180180
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                 0.0028378   -0.0638763    0.0653684
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0025681   -0.1221837    0.1042975