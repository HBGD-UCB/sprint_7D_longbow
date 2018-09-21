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

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* vagbrth
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* month
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_vagbrth
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_month
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        exclfeed6    wast_rec90d   n_cell       n
------------  -------------------------  -----------------------------  ----------  ------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      0       28     121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      1       57     121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      0       16     121
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      1       20     121
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      0        6      23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      1       17      23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      0        0      23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      1        0      23
0-24 months   ki0047075b-MAL-ED          INDIA                          0                      0       66     170
0-24 months   ki0047075b-MAL-ED          INDIA                          0                      1      101     170
0-24 months   ki0047075b-MAL-ED          INDIA                          1                      0        0     170
0-24 months   ki0047075b-MAL-ED          INDIA                          1                      1        3     170
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                      0       18      90
0-24 months   ki0047075b-MAL-ED          NEPAL                          0                      1       71      90
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                      0        0      90
0-24 months   ki0047075b-MAL-ED          NEPAL                          1                      1        1      90
0-24 months   ki0047075b-MAL-ED          PERU                           0                      0        5      29
0-24 months   ki0047075b-MAL-ED          PERU                           0                      1       24      29
0-24 months   ki0047075b-MAL-ED          PERU                           1                      0        0      29
0-24 months   ki0047075b-MAL-ED          PERU                           1                      1        0      29
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      0     2342   15002
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      1     1774   15002
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     6266   15002
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1     4620   15002
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      0      692    3672
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      1      270    3672
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      0     1964    3672
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      1      746    3672
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                      0        9      59
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     0                      1       38      59
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                      0        3      59
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     1                      1        9      59
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                      0        1      14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         0                      1       13      14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                      0        0      14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         1                      1        0      14
0-6 months    ki0047075b-MAL-ED          INDIA                          0                      0       22      76
0-6 months    ki0047075b-MAL-ED          INDIA                          0                      1       53      76
0-6 months    ki0047075b-MAL-ED          INDIA                          1                      0        0      76
0-6 months    ki0047075b-MAL-ED          INDIA                          1                      1        1      76
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                      0        8      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          0                      1       34      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                      0        0      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          1                      1        0      42
0-6 months    ki0047075b-MAL-ED          PERU                           0                      0        0      10
0-6 months    ki0047075b-MAL-ED          PERU                           0                      1       10      10
0-6 months    ki0047075b-MAL-ED          PERU                           1                      0        0      10
0-6 months    ki0047075b-MAL-ED          PERU                           1                      1        0      10
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                      0      950    9364
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                      1     1774    9364
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      0     2020    9364
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                      1     4620    9364
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                      0      150    1044
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                      1      158    1044
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                      0      278    1044
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                      1      458    1044
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      0       19      62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     0                      1       19      62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      0       13      62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                      1       11      62
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      0        5       9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         0                      1        4       9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      0        0       9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         1                      1        0       9
6-24 months   ki0047075b-MAL-ED          INDIA                          0                      0       44      94
6-24 months   ki0047075b-MAL-ED          INDIA                          0                      1       48      94
6-24 months   ki0047075b-MAL-ED          INDIA                          1                      0        0      94
6-24 months   ki0047075b-MAL-ED          INDIA                          1                      1        2      94
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                      0       10      48
6-24 months   ki0047075b-MAL-ED          NEPAL                          0                      1       37      48
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                      0        0      48
6-24 months   ki0047075b-MAL-ED          NEPAL                          1                      1        1      48
6-24 months   ki0047075b-MAL-ED          PERU                           0                      0        5      19
6-24 months   ki0047075b-MAL-ED          PERU                           0                      1       14      19
6-24 months   ki0047075b-MAL-ED          PERU                           1                      0        0      19
6-24 months   ki0047075b-MAL-ED          PERU                           1                      1        0      19
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      0     1392    5638
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     0                      1        0    5638
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      0     4246    5638
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                      1        0    5638
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      0      542    2628
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                      1      112    2628
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                      0     1686    2628
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







# Results Detail

## Results Plots
![](/tmp/ea346df2-8e89-4b7e-91ba-37af38ca2203/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ea346df2-8e89-4b7e-91ba-37af38ca2203/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/ea346df2-8e89-4b7e-91ba-37af38ca2203/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ea346df2-8e89-4b7e-91ba-37af38ca2203/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.6697852   0.5609581   0.7786122
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.5576417   0.4229127   0.6923707
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.1781484   0.0955471   0.2607497
0-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.2885755   0.2015515   0.3755994
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.5384615   0.2364546   0.8404685
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.3600000   0.2937351   0.4262649
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.5865521   0.5228518   0.6502524
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.5730920   0.4656907   0.6804932
0-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.5636685   0.5305895   0.5967474
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.5759352   0.5296768   0.6221936
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.5281190   0.4437620   0.6124760
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.5273462   0.4738242   0.5808681
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.4412576   0.4243251   0.4581902
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.4204135   0.4082213   0.4326058
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.2516538   0.2227760   0.2805316
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.2705289   0.2477728   0.2932849
0-6 months    ki1000109-EE              PAKISTAN     0                    NA                0.2361949   0.1016732   0.3707165
0-6 months    ki1000109-EE              PAKISTAN     1                    NA                0.3814436   0.2478216   0.5150655
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.8053921   0.7382206   0.8725636
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.7895110   0.6856901   0.8933318
0-6 months    ki1101329-Keneba          GAMBIA       0                    NA                0.6134653   0.5594744   0.6674563
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                0.7031477   0.6377938   0.7685017
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.5714286   0.4318973   0.7109598
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.5983607   0.5108507   0.6858706
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.6604166   0.6401345   0.6806988
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.6911067   0.6763927   0.7058208
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.6102249   0.5585177   0.6619320
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.6010326   0.5558581   0.6462070
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.4355975   0.2706067   0.6005883
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.3116381   0.1255947   0.4976816
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.2911894   0.1864846   0.3958942
6-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.3191345   0.2208993   0.4173696
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.2680412   0.1773699   0.3587126
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.3076923   0.1243207   0.4910639
6-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.5154023   0.4763623   0.5544422
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.4270746   0.3739312   0.4802180
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.5029726   0.4159151   0.5900300
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.4951866   0.4318445   0.5585286
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.1849966   0.1526270   0.2173663
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.1455557   0.1246883   0.1664231


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


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    0                 0.8325680   0.6222758   1.1139266
0-24 months   ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE              PAKISTAN     1                    0                 1.6198599   0.9137468   2.8716337
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    0                 0.6685714   0.3704954   1.2064597
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    0                 0.9770520   0.7931854   1.2035405
0-24 months   ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba          GAMBIA       1                    0                 1.0217623   0.9288157   1.1240101
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    0                 0.9985366   0.8263001   1.2066746
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    0                 0.9527621   0.9122983   0.9950206
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 1.0750039   0.9466531   1.2207571
0-6 months    ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE              PAKISTAN     1                    0                 1.6149528   0.7976711   3.2696091
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    0                 0.9802815   0.8388531   1.1455543
0-6 months    ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba          GAMBIA       1                    0                 1.1461898   1.0136175   1.2961014
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    0                 1.0471311   0.7877525   1.3919138
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    0                 1.0464708   1.0107540   1.0834496
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.9849362   0.9094570   1.0666797
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    0                 0.7154269   0.3493445   1.4651315
6-24 months   ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE              PAKISTAN     1                    0                 1.0959687   0.6905015   1.7395289
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    0                 1.1479290   0.5784531   2.2780429
6-24 months   ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba          GAMBIA       1                    0                 0.8286239   0.7181237   0.9561272
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    0                 0.9845200   0.7937686   1.2211112
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.7868020   0.6275065   0.9865355


### Parameter: PAR


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0334216   -0.0851753    0.0183322
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                 0.2381940    0.1686444    0.3077436
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.1687136   -0.4604384    0.1230111
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0034902   -0.0347982    0.0278178
0-24 months   ki1101329-Keneba          GAMBIA       0                    NA                -0.0025825   -0.0205019    0.0153369
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0020967   -0.0749079    0.0707145
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0150478   -0.0285702   -0.0015254
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.0250346    0.0016104    0.0484588
0-6 months    ki1000109-EE              PAKISTAN     0                    NA                 0.3286200    0.2187359    0.4385040
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0173486   -0.0558206    0.0211233
0-6 months    ki1101329-Keneba          GAMBIA       0                    NA                 0.0308133    0.0036120    0.0580145
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0192147   -0.0982832    0.1367127
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.0224112    0.0062444    0.0385780
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0201866   -0.0536300    0.0132568
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0482735   -0.0533498    0.1498967
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                 0.0175354   -0.0612321    0.0963029
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0083815   -0.0348546    0.0516177
6-24 months   ki1101329-Keneba          GAMBIA       0                    NA                 0.0094895   -0.0129724    0.0319514
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0070598   -0.0843676    0.0702481
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0327896   -0.0605951   -0.0049841


### Parameter: PAF


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0525196   -0.1360254    0.0248479
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                 0.5721108    0.3653393    0.7115165
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.4562937   -1.5037815    0.1529647
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0059860   -0.0611695    0.0463278
0-24 months   ki1101329-Keneba          GAMBIA       0                    NA                -0.0046027   -0.0370708    0.0268489
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0039860   -0.1524176    0.1253277
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0353061   -0.0676055   -0.0039838
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.0904795    0.0026583    0.1705675
0-6 months    ki1000109-EE              PAKISTAN     0                    NA                 0.5818189    0.3178576    0.7436380
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0220148   -0.0721943    0.0258162
0-6 months    ki1101329-Keneba          GAMBIA       0                    NA                 0.0478260    0.0045426    0.0892274
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0325318   -0.1884274    0.2124091
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.0328212    0.0088860    0.0561783
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0342123   -0.0927387    0.0211795
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0997652   -0.1390837    0.2885311
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                 0.0567995   -0.2353352    0.2798496
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0303214   -0.1393171    0.1747016
6-24 months   ki1101329-Keneba          GAMBIA       0                    NA                 0.0180790   -0.0255428    0.0598453
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0142359   -0.1830749    0.1305077
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.2154278   -0.4174162   -0.0422237
