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

agecat        studyid                    country                        exclfeed36    wast_rec90d   n_cell       n
------------  -------------------------  -----------------------------  -----------  ------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                       0       29     122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                       1       55     122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                       0       15     122
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                       1       23     122
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                       0        6      23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                       1       17      23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                       0        0      23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                       1        0      23
0-24 months   ki0047075b-MAL-ED          INDIA                          0                       0       70     177
0-24 months   ki0047075b-MAL-ED          INDIA                          0                       1      104     177
0-24 months   ki0047075b-MAL-ED          INDIA                          1                       0        0     177
0-24 months   ki0047075b-MAL-ED          INDIA                          1                       1        3     177
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                       0       20      93
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                       1       72      93
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                       0        0      93
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                       1        1      93
0-24 months   ki0047075b-MAL-ED          PERU                           0                       0        6      32
0-24 months   ki0047075b-MAL-ED          PERU                           0                       1       26      32
0-24 months   ki0047075b-MAL-ED          PERU                           1                       0        0      32
0-24 months   ki0047075b-MAL-ED          PERU                           1                       1        0      32
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0       13      78
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       65      78
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0      78
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0      78
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0        8      45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       37      45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0      45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0      45
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0       5
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0       5
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        2       5
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        3       5
0-24 months   ki1000108-IRC              INDIA                          0                       0        3       5
0-24 months   ki1000108-IRC              INDIA                          0                       1        2       5
0-24 months   ki1000108-IRC              INDIA                          1                       0        0       5
0-24 months   ki1000108-IRC              INDIA                          1                       1        0       5
0-24 months   ki1000109-EE               PAKISTAN                       0                       0      136     510
0-24 months   ki1000109-EE               PAKISTAN                       0                       1       82     510
0-24 months   ki1000109-EE               PAKISTAN                       1                       0      160     510
0-24 months   ki1000109-EE               PAKISTAN                       1                       1      132     510
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0      100     108
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        8     108
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0     108
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0     108
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                       0       96     291
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                       1      126     291
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                       0       21     291
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                       1       48     291
0-24 months   ki1101329-Keneba           GAMBIA                         0                       0      388    1211
0-24 months   ki1101329-Keneba           GAMBIA                         0                       1      497    1211
0-24 months   ki1101329-Keneba           GAMBIA                         1                       0      131    1211
0-24 months   ki1101329-Keneba           GAMBIA                         1                       1      195    1211
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                       0       98    1012
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                       1      106    1012
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                       0      372    1012
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                       1      436    1012
0-24 months   ki1148112-LCNI-5           MALAWI                         0                       0       22      34
0-24 months   ki1148112-LCNI-5           MALAWI                         0                       1        5      34
0-24 months   ki1148112-LCNI-5           MALAWI                         1                       0        5      34
0-24 months   ki1148112-LCNI-5           MALAWI                         1                       1        2      34
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     1728   11430
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                       1     1296   11430
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                       0     4796   11430
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                       1     3610   11430
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      684    3566
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                       1      270    3566
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                       0     1890    3566
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                       1      722    3566
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                       0        9      60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                       1       36      60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                       0        3      60
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                       1       12      60
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                       0        1      14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                       1       13      14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                       0        0      14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                       1        0      14
0-6 months    ki0047075b-MAL-ED          INDIA                          0                       0       25      82
0-6 months    ki0047075b-MAL-ED          INDIA                          0                       1       56      82
0-6 months    ki0047075b-MAL-ED          INDIA                          1                       0        0      82
0-6 months    ki0047075b-MAL-ED          INDIA                          1                       1        1      82
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                       0        9      43
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                       1       34      43
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                       0        0      43
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                       1        0      43
0-6 months    ki0047075b-MAL-ED          PERU                           0                       0        0      11
0-6 months    ki0047075b-MAL-ED          PERU                           0                       1       11      11
0-6 months    ki0047075b-MAL-ED          PERU                           1                       0        0      11
0-6 months    ki0047075b-MAL-ED          PERU                           1                       1        0      11
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0        4      28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       24      28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0      28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0      28
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0        1      12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       11      12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0      12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0      12
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0       3
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0       3
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        1       3
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        2       3
0-6 months    ki1000108-IRC              INDIA                          0                       0        2       3
0-6 months    ki1000108-IRC              INDIA                          0                       1        1       3
0-6 months    ki1000108-IRC              INDIA                          1                       0        0       3
0-6 months    ki1000108-IRC              INDIA                          1                       1        0       3
0-6 months    ki1000109-EE               PAKISTAN                       0                       0       50     214
0-6 months    ki1000109-EE               PAKISTAN                       0                       1       46     214
0-6 months    ki1000109-EE               PAKISTAN                       1                       0       42     214
0-6 months    ki1000109-EE               PAKISTAN                       1                       1       76     214
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       48      48
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        0      48
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0      48
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0      48
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                       0       25     168
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                       1      100     168
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                       0        3     168
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                       1       40     168
0-6 months    ki1101329-Keneba           GAMBIA                         0                       0      102     373
0-6 months    ki1101329-Keneba           GAMBIA                         0                       1      170     373
0-6 months    ki1101329-Keneba           GAMBIA                         1                       0       29     373
0-6 months    ki1101329-Keneba           GAMBIA                         1                       1       72     373
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                       0       28     326
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                       1       42     326
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                       0      102     326
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                       1      154     326
0-6 months    ki1148112-LCNI-5           MALAWI                         0                       0        4       4
0-6 months    ki1148112-LCNI-5           MALAWI                         0                       1        0       4
0-6 months    ki1148112-LCNI-5           MALAWI                         1                       0        0       4
0-6 months    ki1148112-LCNI-5           MALAWI                         1                       1        0       4
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                       0      622    6888
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                       1     1296    6888
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                       0     1360    6888
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                       1     3610    6888
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                       0      146    1024
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                       1      158    1024
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                       0      268    1024
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                       1      452    1024
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                       0       20      62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                       1       19      62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                       0       12      62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                       1       11      62
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                       0        5       9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                       1        4       9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                       0        0       9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                       1        0       9
6-24 months   ki0047075b-MAL-ED          INDIA                          0                       0       45      95
6-24 months   ki0047075b-MAL-ED          INDIA                          0                       1       48      95
6-24 months   ki0047075b-MAL-ED          INDIA                          1                       0        0      95
6-24 months   ki0047075b-MAL-ED          INDIA                          1                       1        2      95
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                       0       11      50
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                       1       38      50
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                       0        0      50
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                       1        1      50
6-24 months   ki0047075b-MAL-ED          PERU                           0                       0        6      21
6-24 months   ki0047075b-MAL-ED          PERU                           0                       1       15      21
6-24 months   ki0047075b-MAL-ED          PERU                           1                       0        0      21
6-24 months   ki0047075b-MAL-ED          PERU                           1                       1        0      21
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       0        9      50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                       1       41      50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       0        0      50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                       1        0      50
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       0        7      33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                       1       26      33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       0        0      33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                       1        0      33
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                       0        0       2
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                       1        0       2
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                       0        1       2
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                       1        1       2
6-24 months   ki1000108-IRC              INDIA                          0                       0        1       2
6-24 months   ki1000108-IRC              INDIA                          0                       1        1       2
6-24 months   ki1000108-IRC              INDIA                          1                       0        0       2
6-24 months   ki1000108-IRC              INDIA                          1                       1        0       2
6-24 months   ki1000109-EE               PAKISTAN                       0                       0       86     296
6-24 months   ki1000109-EE               PAKISTAN                       0                       1       36     296
6-24 months   ki1000109-EE               PAKISTAN                       1                       0      118     296
6-24 months   ki1000109-EE               PAKISTAN                       1                       1       56     296
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                       0       52      60
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                       1        8      60
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                       0        0      60
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                       1        0      60
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                       0       71     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                       1       26     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                       0       18     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                       1        8     123
6-24 months   ki1101329-Keneba           GAMBIA                         0                       0      286     838
6-24 months   ki1101329-Keneba           GAMBIA                         0                       1      327     838
6-24 months   ki1101329-Keneba           GAMBIA                         1                       0      102     838
6-24 months   ki1101329-Keneba           GAMBIA                         1                       1      123     838
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                       0       70     686
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                       1       64     686
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                       0      270     686
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                       1      282     686
6-24 months   ki1148112-LCNI-5           MALAWI                         0                       0       18      30
6-24 months   ki1148112-LCNI-5           MALAWI                         0                       1        5      30
6-24 months   ki1148112-LCNI-5           MALAWI                         1                       0        5      30
6-24 months   ki1148112-LCNI-5           MALAWI                         1                       1        2      30
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                       0     1106    4542
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                       1        0    4542
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                       0     3436    4542
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                       1        0    4542
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                       0      538    2542
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                       1      112    2542
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                       0     1622    2542
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                       1      270    2542


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







# Results Detail

## Results Plots
![](/tmp/c1099b1c-deb3-40cc-b61f-ed9017670fa1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c1099b1c-deb3-40cc-b61f-ed9017670fa1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c1099b1c-deb3-40cc-b61f-ed9017670fa1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c1099b1c-deb3-40cc-b61f-ed9017670fa1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.6547619   0.5435887   0.7659351
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.6052632   0.4761138   0.7344125
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.3761468   0.2803097   0.4719839
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.4520548   0.3633123   0.5407973
0-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.5675676   0.5006323   0.6345028
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.6956522   0.5852007   0.8061036
0-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.5615819   0.5262507   0.5969132
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.5981595   0.5385113   0.6578078
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5196078   0.4155941   0.6236215
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5396040   0.4864787   0.5927292
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.4285714   0.4037447   0.4533981
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.4294552   0.4144830   0.4444273
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2830189   0.2424016   0.3236362
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2764165   0.2511944   0.3016387
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                0.4791667   0.3368869   0.6214464
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.6440678   0.5183967   0.7697389
0-6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.6250000   0.5669756   0.6830244
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.7128713   0.6268302   0.7989124
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.6000000   0.4351707   0.7648293
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.6015625   0.5163730   0.6867520
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.6757039   0.6460928   0.7053149
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.7263581   0.7088264   0.7438899
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.5197368   0.4402341   0.5992396
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.6277778   0.5777944   0.6777611
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.4871795   0.3190946   0.6552644
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.4782609   0.2766858   0.6798359
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.2950820   0.1783533   0.4118106
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.3218391   0.2226817   0.4209965
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.2680412   0.1773699   0.3587126
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.3076923   0.1243207   0.4910639
6-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.5334421   0.4918549   0.5750292
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.5466667   0.4735346   0.6197988
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.4776119   0.3548655   0.6003584
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5108696   0.4455959   0.5761433
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.1723077   0.1320225   0.2125929
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1427061   0.1207968   0.1646155


### Parameter: E(Y)


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.6393443   0.5530901   0.7255985
0-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.4196078   0.3541827   0.4850330
0-24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.5979381   0.5402414   0.6556349
0-24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.5714286   0.5409902   0.6018670
0-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.5355731   0.4882587   0.5828875
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.4292213   0.4164001   0.4420426
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.2781828   0.2567503   0.2996153
0-6 months    ki1000109-EE          PAKISTAN     NA                   NA                0.5700935   0.4742263   0.6659606
0-6 months    ki1101329-Keneba      GAMBIA       NA                   NA                0.6487936   0.6002638   0.6973233
0-6 months    ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.6012270   0.5255442   0.6769098
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   NA                   NA                0.7122532   0.6971343   0.7273720
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.5957031   0.5531528   0.6382534
6-24 months   ki0047075b-MAL-ED     BANGLADESH   NA                   NA                0.4838710   0.3544124   0.6133295
6-24 months   ki1000109-EE          PAKISTAN     NA                   NA                0.3108108   0.2352987   0.3863229
6-24 months   ki1017093b-PROVIDE    BANGLADESH   NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   ki1101329-Keneba      GAMBIA       NA                   NA                0.5369928   0.5007974   0.5731883
6-24 months   ki1113344-GMS-Nepal   NEPAL        NA                   NA                0.5043732   0.4466684   0.5620780
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   NA                   NA                0.1502754   0.1309788   0.1695719


### Parameter: RR


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 0.9244019   0.7033939   1.214851
0-24 months   ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000109-EE          PAKISTAN     1                    0                 1.2018042   0.8710903   1.658075
0-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    0                 1.2256729   1.0055590   1.493969
0-24 months   ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba      GAMBIA       1                    0                 1.0651331   0.9466669   1.198424
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 1.0384831   0.8307919   1.298096
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 1.0020620   0.9365512   1.072155
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.9766718   0.8239249   1.157736
0-6 months    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1000109-EE          PAKISTAN     1                    0                 1.3441415   0.9421617   1.917629
0-6 months    ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba      GAMBIA       1                    0                 1.1405941   0.9794905   1.328195
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 1.0026042   0.7360426   1.365702
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 1.0749652   1.0225080   1.130114
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 1.2078762   1.0165512   1.435210
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 0.9816934   0.5692742   1.692896
6-24 months   ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000109-EE          PAKISTAN     1                    0                 1.0906769   0.6603165   1.801524
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    0                 1.1479290   0.5784531   2.278043
6-24 months   ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba      GAMBIA       1                    0                 1.0247910   0.8777513   1.196463
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 1.0696332   0.8027241   1.425291
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.8282052   0.6261027   1.095545


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0154176   -0.0682071   0.0373718
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                 0.0434611   -0.0312942   0.1182163
0-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                 0.0303706   -0.0014983   0.0622394
0-24 months   ki1101329-Keneba      GAMBIA       0                    NA                 0.0098467   -0.0088409   0.0285342
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0159653   -0.0772770   0.1092075
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0006499   -0.0206717   0.0219715
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0048360   -0.0398603   0.0301883
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                 0.0909268   -0.0144892   0.1963427
0-6 months    ki1101329-Keneba      GAMBIA       0                    NA                 0.0237936   -0.0046956   0.0522827
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0012270   -0.1444749   0.1469289
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0365493    0.0117078   0.0613909
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.0759663    0.0097975   0.1421351
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0033085   -0.1007799   0.0941628
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                 0.0157288   -0.0742746   0.1057323
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                 0.0083815   -0.0348546   0.0516177
6-24 months   ki1101329-Keneba      GAMBIA       0                    NA                 0.0035508   -0.0190284   0.0261299
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0267612   -0.0850927   0.1386151
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0220323   -0.0562007   0.0121360


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0241148   -0.1093432   0.0545658
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                 0.1035754   -0.0930311   0.2648177
0-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                 0.0507922   -0.0044588   0.1030040
0-24 months   ki1101329-Keneba      GAMBIA       0                    NA                 0.0172316   -0.0160123   0.0493878
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0298097   -0.1608701   0.1891692
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0015142   -0.0494172   0.0499737
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0173844   -0.1514549   0.1010756
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                 0.1594945   -0.0496491   0.3269661
0-6 months    ki1101329-Keneba      GAMBIA       0                    NA                 0.0366736   -0.0085500   0.0798693
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0020408   -0.2722617   0.2172031
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0513151    0.0157242   0.0856190
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.1275237    0.0084015   0.2323357
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0068376   -0.2296774   0.1756196
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                 0.0506058   -0.2881237   0.3002619
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                 0.0303214   -0.1393171   0.1747016
6-24 months   ki1101329-Keneba      GAMBIA       0                    NA                 0.0066123   -0.0363144   0.0477609
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0530584   -0.1964744   0.2505495
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.1466130   -0.3975992   0.0593002
