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

**Intervention Variable:** exclfeed36

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        exclfeed36    wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  -----------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                       0       15    122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                       1       23    122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                       0       29    122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                       1       55    122
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                       0        0     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                       1        0     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                       0        6     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                       1       17     23
0-24 months   ki0047075b-MAL-ED          INDIA                          1                       0        0    177
0-24 months   ki0047075b-MAL-ED          INDIA                          1                       1        3    177
0-24 months   ki0047075b-MAL-ED          INDIA                          0                       0       70    177
0-24 months   ki0047075b-MAL-ED          INDIA                          0                       1      104    177
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                       0        0     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                       1        1     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                       0       20     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                       1       72     93
0-24 months   ki0047075b-MAL-ED          PERU                           1                       0        0     32
0-24 months   ki0047075b-MAL-ED          PERU                           1                       1        0     32
0-24 months   ki0047075b-MAL-ED          PERU                           0                       0        6     32
0-24 months   ki0047075b-MAL-ED          PERU                           0                       1       26     32
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     78
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     78
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0       13     78
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       65     78
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0        8     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       37     45
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        2      5
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        3      5
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0      5
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0      5
0-24 months   ki1000108-IRC              INDIA                          1                       0        0      5
0-24 months   ki1000108-IRC              INDIA                          1                       1        0      5
0-24 months   ki1000108-IRC              INDIA                          0                       0        3      5
0-24 months   ki1000108-IRC              INDIA                          0                       1        2      5
0-24 months   ki1000109-EE               PAKISTAN                       1                       0       80    255
0-24 months   ki1000109-EE               PAKISTAN                       1                       1       66    255
0-24 months   ki1000109-EE               PAKISTAN                       0                       0       68    255
0-24 months   ki1000109-EE               PAKISTAN                       0                       1       41    255
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     27
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     27
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       25     27
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        2     27
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                       0       21    291
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                       1       48    291
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                       0       96    291
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                       1      126    291
0-24 months   ki1101329-Keneba           GAMBIA                         1                       0      131   1211
0-24 months   ki1101329-Keneba           GAMBIA                         1                       1      195   1211
0-24 months   ki1101329-Keneba           GAMBIA                         0                       0      388   1211
0-24 months   ki1101329-Keneba           GAMBIA                         0                       1      497   1211
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                       0      186    506
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                       1      218    506
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                       0       49    506
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                       1       53    506
0-24 months   ki1148112-LCNI-5           MALAWI                         1                       0        5     34
0-24 months   ki1148112-LCNI-5           MALAWI                         1                       1        2     34
0-24 months   ki1148112-LCNI-5           MALAWI                         0                       0       22     34
0-24 months   ki1148112-LCNI-5           MALAWI                         0                       1        5     34
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                       0     1189   2898
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                       1      931   2898
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                       0      471   2898
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                       1      307   2898
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                       0      270    485
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                       1      112    485
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                       0       77    485
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                       1       26    485
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                       0        3     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                       1       12     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                       0        9     60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                       1       36     60
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                       0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                       1        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                       0        1     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                       1       13     14
0-6 months    ki0047075b-MAL-ED          INDIA                          1                       0        0     82
0-6 months    ki0047075b-MAL-ED          INDIA                          1                       1        1     82
0-6 months    ki0047075b-MAL-ED          INDIA                          0                       0       25     82
0-6 months    ki0047075b-MAL-ED          INDIA                          0                       1       56     82
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                       0        0     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                       1        0     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                       0        9     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                       1       34     43
0-6 months    ki0047075b-MAL-ED          PERU                           1                       0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           1                       1        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           0                       0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           0                       1       11     11
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0        4     28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       24     28
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0        1     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       11     12
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        1      3
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        2      3
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0      3
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0      3
0-6 months    ki1000108-IRC              INDIA                          1                       0        0      3
0-6 months    ki1000108-IRC              INDIA                          1                       1        0      3
0-6 months    ki1000108-IRC              INDIA                          0                       0        2      3
0-6 months    ki1000108-IRC              INDIA                          0                       1        1      3
0-6 months    ki1000109-EE               PAKISTAN                       1                       0       21    107
0-6 months    ki1000109-EE               PAKISTAN                       1                       1       38    107
0-6 months    ki1000109-EE               PAKISTAN                       0                       0       25    107
0-6 months    ki1000109-EE               PAKISTAN                       0                       1       23    107
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     12
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     12
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       12     12
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        0     12
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                       0        3    168
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                       1       40    168
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                       0       25    168
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                       1      100    168
0-6 months    ki1101329-Keneba           GAMBIA                         1                       0       29    373
0-6 months    ki1101329-Keneba           GAMBIA                         1                       1       72    373
0-6 months    ki1101329-Keneba           GAMBIA                         0                       0      102    373
0-6 months    ki1101329-Keneba           GAMBIA                         0                       1      170    373
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                       0       51    163
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                       1       77    163
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                       0       14    163
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                       1       21    163
0-6 months    ki1148112-LCNI-5           MALAWI                         1                       0        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         1                       1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         0                       0        4      4
0-6 months    ki1148112-LCNI-5           MALAWI                         0                       1        0      4
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                       0      352   1760
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                       1      931   1760
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                       0      170   1760
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                       1      307   1760
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                       0       31    133
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                       1       67    133
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                       0       20    133
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                       1       15    133
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                       0       12     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                       1       11     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                       0       20     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                       1       19     62
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                       0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                       1        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                       0        5      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                       1        4      9
6-24 months   ki0047075b-MAL-ED          INDIA                          1                       0        0     95
6-24 months   ki0047075b-MAL-ED          INDIA                          1                       1        2     95
6-24 months   ki0047075b-MAL-ED          INDIA                          0                       0       45     95
6-24 months   ki0047075b-MAL-ED          INDIA                          0                       1       48     95
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                       0        0     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                       1        1     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                       0       11     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                       1       38     50
6-24 months   ki0047075b-MAL-ED          PERU                           1                       0        0     21
6-24 months   ki0047075b-MAL-ED          PERU                           1                       1        0     21
6-24 months   ki0047075b-MAL-ED          PERU                           0                       0        6     21
6-24 months   ki0047075b-MAL-ED          PERU                           0                       1       15     21
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0        9     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       41     50
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0        7     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       26     33
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        1      2
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        1      2
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0      2
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0      2
6-24 months   ki1000108-IRC              INDIA                          1                       0        0      2
6-24 months   ki1000108-IRC              INDIA                          1                       1        0      2
6-24 months   ki1000108-IRC              INDIA                          0                       0        1      2
6-24 months   ki1000108-IRC              INDIA                          0                       1        1      2
6-24 months   ki1000109-EE               PAKISTAN                       1                       0       59    148
6-24 months   ki1000109-EE               PAKISTAN                       1                       1       28    148
6-24 months   ki1000109-EE               PAKISTAN                       0                       0       43    148
6-24 months   ki1000109-EE               PAKISTAN                       0                       1       18    148
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     15
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     15
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       13     15
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        2     15
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                       0       18    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                       1        8    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                       0       71    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                       1       26    123
6-24 months   ki1101329-Keneba           GAMBIA                         1                       0      102    838
6-24 months   ki1101329-Keneba           GAMBIA                         1                       1      123    838
6-24 months   ki1101329-Keneba           GAMBIA                         0                       0      286    838
6-24 months   ki1101329-Keneba           GAMBIA                         0                       1      327    838
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                       0      135    343
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                       1      141    343
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                       0       35    343
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                       1       32    343
6-24 months   ki1148112-LCNI-5           MALAWI                         1                       0        5     30
6-24 months   ki1148112-LCNI-5           MALAWI                         1                       1        2     30
6-24 months   ki1148112-LCNI-5           MALAWI                         0                       0       18     30
6-24 months   ki1148112-LCNI-5           MALAWI                         0                       1        5     30
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                       0      837   1138
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                       1        0   1138
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                       0      301   1138
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                       1        0   1138
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                       0      239    352
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                       1       45    352
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                       0       57    352
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                       1       11    352


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
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
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




# Results Detail

## Results Plots
![](/tmp/1d8bd32f-cd29-4b5c-b78c-2429400f9454/387f019f-4a9b-4ed8-a5d8-64ad74bfc6a6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1d8bd32f-cd29-4b5c-b78c-2429400f9454/387f019f-4a9b-4ed8-a5d8-64ad74bfc6a6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/1d8bd32f-cd29-4b5c-b78c-2429400f9454/387f019f-4a9b-4ed8-a5d8-64ad74bfc6a6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1d8bd32f-cd29-4b5c-b78c-2429400f9454/387f019f-4a9b-4ed8-a5d8-64ad74bfc6a6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.6052632   0.4761138   0.7344125
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.6547619   0.5435887   0.7659351
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.4520548   0.3633123   0.5407973
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.3761468   0.2803097   0.4719839
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.6956522   0.5852007   0.8061036
0-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.5675676   0.5006323   0.6345028
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.5981595   0.5385113   0.6578078
0-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.5615819   0.5262507   0.5969132
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5396040   0.4864787   0.5927292
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5196078   0.4155941   0.6236215
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.4391509   0.4180731   0.4602288
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.3946015   0.3603241   0.4288789
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2931937   0.2465195   0.3398680
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2524272   0.1661035   0.3387509
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.6440678   0.5183967   0.7697389
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                0.4791667   0.3368869   0.6214464
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.7128713   0.6268302   0.7989124
0-6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.6250000   0.5669756   0.6830244
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.6015625   0.5163730   0.6867520
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.6000000   0.4351707   0.7648293
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.7256430   0.7012337   0.7500523
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.6436059   0.6005894   0.6866223
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.6836735   0.5912534   0.7760935
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.4285714   0.2640034   0.5931395
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.4782609   0.2766858   0.6798359
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.4871795   0.3190946   0.6552644
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.3218391   0.2226817   0.4209965
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.2950820   0.1783533   0.4118106
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.3076923   0.1243207   0.4910639
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.2680412   0.1773699   0.3587126
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.5466667   0.4735346   0.6197988
6-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.5334421   0.4918549   0.5750292
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5108696   0.4455959   0.5761433
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.4776119   0.3548655   0.6003584
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1584507   0.1171100   0.1997914
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1617647   0.0729472   0.2505822


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.6393443   0.5530901   0.7255985
0-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.4196078   0.3541827   0.4850330
0-24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.5979381   0.5402414   0.6556349
0-24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.5714286   0.5409902   0.6018670
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.5355731   0.4882587   0.5828875
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.4271912   0.4092161   0.4451662
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.2845361   0.2434253   0.3256469
0-6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.5700935   0.4742263   0.6659606
0-6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.6487936   0.6002638   0.6973233
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.6012270   0.5255442   0.6769098
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.7034091   0.6820676   0.7247506
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.6165414   0.5335942   0.6994885
6-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.4838710   0.3544124   0.6133295
6-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.3108108   0.2352987   0.3863229
6-24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.5369928   0.5007974   0.5731883
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.5043732   0.4466684   0.5620780
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1590909   0.1215825   0.1965993


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 1.0817805   0.8231461   1.4216786
0-24 months   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE          PAKISTAN     0                    1                 0.8320823   0.6031089   1.1479866
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 0.8158784   0.6693579   0.9944718
0-24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba      GAMBIA       0                    1                 0.9388498   0.8344290   1.0563378
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 0.9629430   0.7703594   1.2036709
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.8985556   0.8136610   0.9923079
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 0.8609570   0.5903980   1.2555039
0-6 months    ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE          PAKISTAN     0                    1                 0.7439693   0.5214774   1.0613890
0-6 months    ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba      GAMBIA       0                    1                 0.8767361   0.7529013   1.0209389
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    1                 0.9974026   0.7322240   1.3586170
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    1                 0.8869456   0.8230026   0.9558565
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    1                 0.6268657   0.4172311   0.9418296
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    1                 1.0186480   0.5907039   1.7566227
6-24 months   ki1000109-EE          PAKISTAN     1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE          PAKISTAN     0                    1                 0.9168618   0.5550856   1.5144252
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    1                 0.8711340   0.4389733   1.7287486
6-24 months   ki1101329-Keneba      GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba      GAMBIA       0                    1                 0.9758087   0.8357970   1.1392749
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    1                 0.9349000   0.7016114   1.2457580
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    1                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    1                 1.0209150   0.5558688   1.8750244


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0340811   -0.0841796    0.1523418
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                -0.0324470   -0.0888367    0.0239428
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0977140   -0.1961550    0.0007270
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                -0.0267309   -0.0774156    0.0239537
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0040308   -0.0276360    0.0195743
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0119598   -0.0227966   -0.0011230
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0086576   -0.0296083    0.0122931
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                -0.0739743   -0.1610992    0.0131505
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                -0.0640777   -0.1397783    0.0116229
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0003355   -0.0401761    0.0395051
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0222339   -0.0357464   -0.0087215
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0671321   -0.1203700   -0.0138942
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0056101   -0.1595054    0.1707256
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                -0.0110283   -0.0743900    0.0523334
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.0312695   -0.1927776    0.1302386
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                -0.0096738   -0.0712544    0.0519067
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0064964   -0.0337507    0.0207579
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0006402   -0.0182847    0.0195651


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0533063   -0.1491026    0.2200619
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                -0.0773268   -0.2202995    0.0488949
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.1634183   -0.3424411   -0.0082693
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                -0.0467791   -0.1393267    0.0382508
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0075262   -0.0525761    0.0355956
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0279963   -0.0536959   -0.0029236
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.0304272   -0.1067582    0.0406394
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                -0.1297583   -0.2966378    0.0156436
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                -0.0987644   -0.2228836    0.0127570
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0005580   -0.0690679    0.0635614
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                -0.0316088   -0.0510944   -0.0124845
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                -0.1088850   -0.2020752   -0.0229194
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                 0.0115942   -0.3956287    0.2999957
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                -0.0354823   -0.2608886    0.1496287
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                -0.1131222   -0.8811275    0.3413307
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                -0.0180148   -0.1393322    0.0903846
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                -0.0128801   -0.0683117    0.0396752
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                 0.0040241   -0.1222901    0.1161216
