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

**Intervention Variable:** predexfd6

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        predexfd6    wast_rec90d   n_cell       n
------------  -------------------------  -----------------------------  ----------  ------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      0       18     121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      1       35     121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      0       26     121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      1       42     121
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      0        5      23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      1       17      23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      0        1      23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      1        0      23
0-24 months   ki0047075b-MAL-ED          INDIA                          0                      0       64     170
0-24 months   ki0047075b-MAL-ED          INDIA                          0                      1       97     170
0-24 months   ki0047075b-MAL-ED          INDIA                          1                      0        2     170
0-24 months   ki0047075b-MAL-ED          INDIA                          1                      1        7     170
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                      0       17      90
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                      1       68      90
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                      0        1      90
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                      1        4      90
0-24 months   ki0047075b-MAL-ED          PERU                           0                      0        4      29
0-24 months   ki0047075b-MAL-ED          PERU                           0                      1       19      29
0-24 months   ki0047075b-MAL-ED          PERU                           1                      0        1      29
0-24 months   ki0047075b-MAL-ED          PERU                           1                      1        5      29
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0       12      77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       65      77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        0      77
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0      77
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0        8      45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       37      45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        0      45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0      45
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0      16
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0      16
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0        7      16
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        9      16
0-24 months   ki1000108-IRC              INDIA                          0                      0       11      19
0-24 months   ki1000108-IRC              INDIA                          0                      1        8      19
0-24 months   ki1000108-IRC              INDIA                          1                      0        0      19
0-24 months   ki1000108-IRC              INDIA                          1                      1        0      19
0-24 months   ki1000109-EE               PAKISTAN                       0                      0      148     514
0-24 months   ki1000109-EE               PAKISTAN                       0                      1       84     514
0-24 months   ki1000109-EE               PAKISTAN                       1                      0      152     514
0-24 months   ki1000109-EE               PAKISTAN                       1                      1      130     514
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                      0        6     238
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                      1        7     238
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                      0      144     238
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                      1       81     238
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                      0      100     108
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                      1        8     108
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0     108
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0     108
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                      0       97     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                      1      130     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      0       31     307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      1       49     307
0-24 months   ki1101329-Keneba           GAMBIA                         0                      0      402    1326
0-24 months   ki1101329-Keneba           GAMBIA                         0                      1      510    1326
0-24 months   ki1101329-Keneba           GAMBIA                         1                      0      180    1326
0-24 months   ki1101329-Keneba           GAMBIA                         1                      1      234    1326
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      0      136    1076
0-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      1      150    1076
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      0      374    1076
0-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      1      416    1076
0-24 months   ki1148112-LCNI-5           MALAWI                         0                      0       22      34
0-24 months   ki1148112-LCNI-5           MALAWI                         0                      1        5      34
0-24 months   ki1148112-LCNI-5           MALAWI                         1                      0        5      34
0-24 months   ki1148112-LCNI-5           MALAWI                         1                      1        2      34
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      0     2324   15002
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      1     1764   15002
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     6284   15002
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     4630   15002
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      0      686    3672
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      1      270    3672
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      0     1970    3672
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      1      746    3672
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                      0        7      59
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                      1       26      59
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                      0        5      59
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                      1       21      59
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                      0        0      14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                      1       13      14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                      0        1      14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                      1        0      14
0-6 months    ki0047075b-MAL-ED          INDIA                          0                      0       21      76
0-6 months    ki0047075b-MAL-ED          INDIA                          0                      1       51      76
0-6 months    ki0047075b-MAL-ED          INDIA                          1                      0        1      76
0-6 months    ki0047075b-MAL-ED          INDIA                          1                      1        3      76
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                      0        8      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                      1       32      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                      0        0      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                      1        2      42
0-6 months    ki0047075b-MAL-ED          PERU                           0                      0        0      10
0-6 months    ki0047075b-MAL-ED          PERU                           0                      1        7      10
0-6 months    ki0047075b-MAL-ED          PERU                           1                      0        0      10
0-6 months    ki0047075b-MAL-ED          PERU                           1                      1        3      10
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0        4      28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       24      28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        0      28
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0      28
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0        1      12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       11      12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        0      12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0      12
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0       9
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0       9
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                      0        4       9
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        5       9
0-6 months    ki1000108-IRC              INDIA                          0                      0        7      13
0-6 months    ki1000108-IRC              INDIA                          0                      1        6      13
0-6 months    ki1000108-IRC              INDIA                          1                      0        0      13
0-6 months    ki1000108-IRC              INDIA                          1                      1        0      13
0-6 months    ki1000109-EE               PAKISTAN                       0                      0       54     216
0-6 months    ki1000109-EE               PAKISTAN                       0                      1       48     216
0-6 months    ki1000109-EE               PAKISTAN                       1                      0       40     216
0-6 months    ki1000109-EE               PAKISTAN                       1                      1       74     216
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                      0        3      94
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          0                      1        3      94
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                      0       45      94
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          1                      1       43      94
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                      0       48      48
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                      1        0      48
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0      48
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0      48
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                      0       26     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     0                      1      104     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                      0       13     184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                      1       41     184
0-6 months    ki1101329-Keneba           GAMBIA                         0                      0      106     402
0-6 months    ki1101329-Keneba           GAMBIA                         0                      1      175     402
0-6 months    ki1101329-Keneba           GAMBIA                         1                      0       37     402
0-6 months    ki1101329-Keneba           GAMBIA                         1                      1       84     402
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                      0       42     342
0-6 months    ki1113344-GMS-Nepal        NEPAL                          0                      1       56     342
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                      0       98     342
0-6 months    ki1113344-GMS-Nepal        NEPAL                          1                      1      146     342
0-6 months    ki1148112-LCNI-5           MALAWI                         0                      0        4       4
0-6 months    ki1148112-LCNI-5           MALAWI                         0                      1        0       4
0-6 months    ki1148112-LCNI-5           MALAWI                         1                      0        0       4
0-6 months    ki1148112-LCNI-5           MALAWI                         1                      1        0       4
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                      0      944    9364
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                      1     1764    9364
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      0     2026    9364
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      1     4630    9364
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                      0      150    1044
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                      1      158    1044
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                      0      278    1044
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                      1      458    1044
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      0       11      62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      1        9      62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      0       21      62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      1       21      62
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      0        5       9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      1        4       9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      0        0       9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      1        0       9
6-24 months   ki0047075b-MAL-ED          INDIA                          0                      0       43      94
6-24 months   ki0047075b-MAL-ED          INDIA                          0                      1       46      94
6-24 months   ki0047075b-MAL-ED          INDIA                          1                      0        1      94
6-24 months   ki0047075b-MAL-ED          INDIA                          1                      1        4      94
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                      0        9      48
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                      1       36      48
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                      0        1      48
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                      1        2      48
6-24 months   ki0047075b-MAL-ED          PERU                           0                      0        4      19
6-24 months   ki0047075b-MAL-ED          PERU                           0                      1       12      19
6-24 months   ki0047075b-MAL-ED          PERU                           1                      0        1      19
6-24 months   ki0047075b-MAL-ED          PERU                           1                      1        2      19
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      0        8      49
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                      1       41      49
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      0        0      49
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                      1        0      49
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      0        7      33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                      1       26      33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      0        0      33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                      1        0      33
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                      0        0       7
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                      1        0       7
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      0        3       7
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                      1        4       7
6-24 months   ki1000108-IRC              INDIA                          0                      0        4       6
6-24 months   ki1000108-IRC              INDIA                          0                      1        2       6
6-24 months   ki1000108-IRC              INDIA                          1                      0        0       6
6-24 months   ki1000108-IRC              INDIA                          1                      1        0       6
6-24 months   ki1000109-EE               PAKISTAN                       0                      0       94     298
6-24 months   ki1000109-EE               PAKISTAN                       0                      1       36     298
6-24 months   ki1000109-EE               PAKISTAN                       1                      0      112     298
6-24 months   ki1000109-EE               PAKISTAN                       1                      1       56     298
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                      0        3     144
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          0                      1        4     144
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                      0       99     144
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          1                      1       38     144
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                      0       52      60
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                      1        8      60
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                      0        0      60
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                      1        0      60
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                      0       71     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     0                      1       26     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      0       18     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                      1        8     123
6-24 months   ki1101329-Keneba           GAMBIA                         0                      0      296     924
6-24 months   ki1101329-Keneba           GAMBIA                         0                      1      335     924
6-24 months   ki1101329-Keneba           GAMBIA                         1                      0      143     924
6-24 months   ki1101329-Keneba           GAMBIA                         1                      1      150     924
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      0       94     734
6-24 months   ki1113344-GMS-Nepal        NEPAL                          0                      1       94     734
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      0      276     734
6-24 months   ki1113344-GMS-Nepal        NEPAL                          1                      1      270     734
6-24 months   ki1148112-LCNI-5           MALAWI                         0                      0       18      30
6-24 months   ki1148112-LCNI-5           MALAWI                         0                      1        5      30
6-24 months   ki1148112-LCNI-5           MALAWI                         1                      0        5      30
6-24 months   ki1148112-LCNI-5           MALAWI                         1                      1        2      30
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      0     1380    5638
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      1        0    5638
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     4258    5638
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1        0    5638
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      0      536    2628
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      1      112    2628
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      0     1692    2628
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      1      288    2628


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
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
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







# Results Detail

## Results Plots
![](/tmp/f7572507-cb10-4c10-855f-c0ae4c1579b9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f7572507-cb10-4c10-855f-c0ae4c1579b9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f7572507-cb10-4c10-855f-c0ae4c1579b9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f7572507-cb10-4c10-855f-c0ae4c1579b9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.6603774   0.5163609   0.8043939
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.6176471   0.5108848   0.7244093
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.3620690   0.2706356   0.4535023
0-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.4609929   0.3696336   0.5523522
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.5384615   0.2364546   0.8404685
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.3600000   0.2937351   0.4262649
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.5726872   0.5072324   0.6381420
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.6125000   0.4982743   0.7267257
0-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.5592105   0.5245172   0.5939038
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.5652174   0.5120314   0.6184033
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.5244755   0.4371439   0.6118071
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.5265823   0.4728259   0.5803387
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.4315068   0.4100652   0.4529485
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.4242258   0.4111094   0.4373421
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.2824268   0.2419528   0.3229008
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.2746686   0.2500472   0.2992901
0-6 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.7878788   0.6482934   0.9274642
0-6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.8076923   0.6590088   0.9563759
0-6 months    ki1000109-EE              PAKISTAN     0                    NA                0.4705882   0.3324773   0.6086992
0-6 months    ki1000109-EE              PAKISTAN     1                    NA                0.6491228   0.5218669   0.7763787
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.8000000   0.7319271   0.8680729
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.7592593   0.6464089   0.8721097
0-6 months    ki1101329-Keneba          GAMBIA       0                    NA                0.6227758   0.5658118   0.6797398
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                0.6942149   0.6127669   0.7756628
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.5714286   0.4318973   0.7109598
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.5983607   0.5108507   0.6858706
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.6514032   0.6260077   0.6767988
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.6956130   0.6799832   0.7112428
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.5129870   0.4339687   0.5920053
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.6222826   0.5727013   0.6718639
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.4500000   0.2444054   0.6555946
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.5000000   0.3367001   0.6632999
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.2769231   0.1658236   0.3880225
6-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.3333333   0.2317885   0.4348782
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.2680412   0.1773699   0.3587126
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.3076923   0.1243207   0.4910639
6-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.5309033   0.4898337   0.5719730
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.5119454   0.4487526   0.5751382
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.5000000   0.3933051   0.6066949
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.4945055   0.4294214   0.5595896
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.1728395   0.1324028   0.2132762
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.1454545   0.1239349   0.1669742


### Parameter: E(Y)


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.6363636   0.5494154   0.7233119
0-24 months   ki1000109-EE              PAKISTAN     NA                   NA                0.4163424   0.3511349   0.4815500
0-24 months   ki1000304b-SAS-CompFeed   INDIA        NA                   NA                0.3697479   0.3045176   0.4349782
0-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.5830619   0.5262762   0.6398476
0-24 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.5610860   0.5320121   0.5901599
0-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.5260223   0.4802445   0.5718001
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.4262098   0.4150208   0.4373989
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.2766885   0.2556490   0.2977279
0-6 months    ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.7966102   0.6946250   0.8985954
0-6 months    ki1000109-EE              PAKISTAN     NA                   NA                0.5648148   0.4692893   0.6603404
0-6 months    ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.7880435   0.7295878   0.8464992
0-6 months    ki1101329-Keneba          GAMBIA       NA                   NA                0.6442786   0.5973688   0.6911884
0-6 months    ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.5906433   0.5164645   0.6648221
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   NA                   NA                0.6828279   0.6694976   0.6961581
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.5900383   0.5478064   0.6322702
6-24 months   ki0047075b-MAL-ED         BANGLADESH   NA                   NA                0.4838710   0.3544124   0.6133295
6-24 months   ki1000109-EE              PAKISTAN     NA                   NA                0.3087248   0.2336906   0.3837591
6-24 months   ki1017093b-PROVIDE        BANGLADESH   NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   ki1101329-Keneba          GAMBIA       NA                   NA                0.5248918   0.4904236   0.5593599
6-24 months   ki1113344-GMS-Nepal       NEPAL        NA                   NA                0.4959128   0.4403572   0.5514684
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   NA                   NA                0.1522070   0.1331665   0.1712475


### Parameter: RR


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    0                 0.9352941   0.7078211   1.235870
0-24 months   ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000109-EE              PAKISTAN     1                    0                 1.2732185   0.9234447   1.755476
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    0                 0.6685714   0.3704954   1.206460
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    0                 1.0695192   0.8593893   1.331028
0-24 months   ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba          GAMBIA       1                    0                 1.0107417   0.9030077   1.131329
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    0                 1.0040169   0.8258324   1.220647
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    0                 0.9831264   0.9272410   1.042380
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.9725304   0.8212771   1.151640
0-6 months    ki0047075b-MAL-ED         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED         BANGLADESH   1                    0                 1.0251479   0.7940050   1.323579
0-6 months    ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1000109-EE              PAKISTAN     1                    0                 1.3793860   0.9691550   1.963262
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    0                 0.9490741   0.7996836   1.126372
0-6 months    ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba          GAMBIA       1                    0                 1.1147107   0.9606255   1.293511
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    0                 1.0471311   0.7877525   1.391914
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    0                 1.0678685   1.0208823   1.117017
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    0                 1.2130572   1.0199172   1.442772
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    0                 1.1111111   0.6335362   1.948693
6-24 months   ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1000109-EE              PAKISTAN     1                    0                 1.2037037   0.7270007   1.992987
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    0                 1.1479290   0.5784531   2.278043
6-24 months   ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba          GAMBIA       1                    0                 0.9642912   0.8335447   1.115546
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    0                 0.9890110   0.7695475   1.271062
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.8415584   0.6380384   1.109997


### Parameter: PAR


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0240137   -0.1246597   0.0766322
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                 0.0542734   -0.0166886   0.1252355
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.1687136   -0.4604384   0.1230111
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0103747   -0.0240572   0.0448065
0-24 months   ki1101329-Keneba          GAMBIA       0                    NA                 0.0018754   -0.0179500   0.0217009
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0015468   -0.0737616   0.0768551
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0052970   -0.0235836   0.0129896
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0057383   -0.0407837   0.0293070
0-6 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0087314   -0.0812361   0.0986989
0-6 months    ki1000109-EE              PAKISTAN     0                    NA                 0.0942266   -0.0059107   0.1943639
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0119565   -0.0506986   0.0267856
0-6 months    ki1101329-Keneba          GAMBIA       0                    NA                 0.0215028   -0.0086458   0.0516514
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0192147   -0.0982832   0.1367127
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.0314246    0.0102206   0.0526286
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.0770513    0.0111476   0.1429550
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0338710   -0.1435771   0.2113190
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                 0.0318018   -0.0529672   0.1165707
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0083815   -0.0348546   0.0516177
6-24 months   ki1101329-Keneba          GAMBIA       0                    NA                -0.0060116   -0.0299456   0.0179225
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0040872   -0.0971426   0.0889682
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0206325   -0.0551774   0.0139124


### Parameter: PAF


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0377358   -0.2076312   0.1082578
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                 0.1303577   -0.0569293   0.2844576
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.4562937   -1.5037815   0.1529647
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0177934   -0.0430393   0.0750782
0-24 months   ki1101329-Keneba          GAMBIA       0                    NA                 0.0033425   -0.0326204   0.0380530
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0029405   -0.1510080   0.1362983
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0124282   -0.0562566   0.0295816
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0207393   -0.1556437   0.0984170
0-6 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0109607   -0.1087726   0.1177643
0-6 months    ki1000109-EE              PAKISTAN     0                    NA                 0.1668274   -0.0333632   0.3282356
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0151724   -0.0656322   0.0328980
0-6 months    ki1101329-Keneba          GAMBIA       0                    NA                 0.0333750   -0.0147585   0.0792254
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0325318   -0.1884274   0.2124091
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.0460213    0.0144148   0.0766142
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.1305869    0.0107344   0.2359190
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0700000   -0.3766411   0.3717317
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                 0.1030100   -0.2185168   0.3396964
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0303214   -0.1393171   0.1747016
6-24 months   ki1101329-Keneba          GAMBIA       0                    NA                -0.0114529   -0.0581364   0.0331709
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0082418   -0.2145250   0.1630049
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.1355556   -0.3863122   0.0698442
