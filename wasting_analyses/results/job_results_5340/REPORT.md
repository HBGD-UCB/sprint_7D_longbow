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
![](/tmp/279996f7-1694-43f3-a010-cef1c34dcf67/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/279996f7-1694-43f3-a010-cef1c34dcf67/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/279996f7-1694-43f3-a010-cef1c34dcf67/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/279996f7-1694-43f3-a010-cef1c34dcf67/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.6705882   0.5617194   0.7794570
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.5555556   0.4202974   0.6908137
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.1724152   0.0964138   0.2484166
0-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.2795156   0.1967962   0.3622350
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.5384615   0.2364546   0.8404685
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.3600000   0.2937351   0.4262649
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.5872136   0.5235618   0.6508653
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.5712148   0.4640136   0.6784161
0-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.5640831   0.5309254   0.5972409
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.5733495   0.5271565   0.6195424
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.5281296   0.4437315   0.6125278
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.5273432   0.4738178   0.5808686
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.4411036   0.4241404   0.4580668
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.4204646   0.4082649   0.4326643
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.2549749   0.2258539   0.2840959
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.2711120   0.2483293   0.2938947
0-6 months    ki1000109-EE              PAKISTAN     0                    NA                0.2378796   0.1077400   0.3680191
0-6 months    ki1000109-EE              PAKISTAN     1                    NA                0.3852410   0.2547984   0.5156837
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.8000000   0.7319271   0.8680729
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.7592593   0.6464089   0.8721097
0-6 months    ki1101329-Keneba          GAMBIA       0                    NA                0.6141888   0.5595104   0.6688672
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                0.6977711   0.6278116   0.7677305
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.5714286   0.4318973   0.7109598
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.5983607   0.5108507   0.6858706
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.6604994   0.6401085   0.6808902
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.6911125   0.6763743   0.7058507
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.6094768   0.5602214   0.6587322
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.6006789   0.5558756   0.6454821
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.5000000   0.3311437   0.6688563
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.4583333   0.2582235   0.6584432
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.2916168   0.1899649   0.3932687
6-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.3185698   0.2226891   0.4144505
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.2680412   0.1773699   0.3587126
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.3076923   0.1243207   0.4910639
6-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.5111237   0.4730246   0.5492227
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.4103286   0.3621561   0.4585011
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.5002542   0.4063545   0.5941539
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.4948736   0.4308586   0.5588885
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.1822875   0.1510011   0.2135740
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.1448937   0.1241594   0.1656279


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
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    0                 0.8284600   0.6180708   1.1104651
0-24 months   ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE              PAKISTAN     1                    0                 1.6211775   0.9304114   2.8247897
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    0                 0.6685714   0.3704954   1.2064597
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    0                 0.9727548   0.7897962   1.1980964
0-24 months   ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba          GAMBIA       1                    0                 1.0164273   0.9226521   1.1197334
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    0                 0.9985109   0.8262236   1.2067243
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    0                 0.9532106   0.9125982   0.9956304
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 1.0632890   0.9370588   1.2065236
0-6 months    ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE              PAKISTAN     1                    0                 1.6194793   0.8211617   3.1939058
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    0                 0.9490741   0.7996836   1.1263725
0-6 months    ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba          GAMBIA       1                    0                 1.1360856   0.9979922   1.2932873
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    0                 1.0471311   0.7877525   1.3919138
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    0                 1.0463485   1.0104768   1.0834936
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.9855648   0.9140218   1.0627075
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    0                 0.9166667   0.5277052   1.5923241
6-24 months   ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE              PAKISTAN     1                    0                 1.0924261   0.6984048   1.7087436
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    0                 1.1479290   0.5784531   2.2780429
6-24 months   ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba          GAMBIA       1                    0                 0.8027971   0.7003739   0.9201989
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    0                 0.9892442   0.7879985   1.2418857
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.7948634   0.6356887   0.9938951


### Parameter: PAR


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0342246   -0.0862150    0.0177658
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                 0.2439272    0.1776185    0.3102359
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.1687136   -0.4604384    0.1230111
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0041517   -0.0353722    0.0270688
0-24 months   ki1101329-Keneba          GAMBIA       0                    NA                -0.0029972   -0.0213435    0.0153492
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0021073   -0.0749528    0.0707382
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0148938   -0.0284572   -0.0013303
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.0217136   -0.0018084    0.0452355
0-6 months    ki1000109-EE              PAKISTAN     0                    NA                 0.3269352    0.2198639    0.4340066
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0119565   -0.0506986    0.0267856
0-6 months    ki1101329-Keneba          GAMBIA       0                    NA                 0.0300898    0.0024020    0.0577777
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0192147   -0.0982832    0.1367127
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.0223285    0.0060891    0.0385679
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0194385   -0.0506485    0.0117715
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0161290   -0.1180103    0.0857522
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                 0.0171080   -0.0592112    0.0934273
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0083815   -0.0348546    0.0516177
6-24 months   ki1101329-Keneba          GAMBIA       0                    NA                 0.0137681   -0.0083153    0.0358516
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0043414   -0.0866558    0.0779730
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0300805   -0.0570592   -0.0031018


### Parameter: PAF


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0537815   -0.1376866    0.0239355
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                 0.5858813    0.3976503    0.7152911
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.4562937   -1.5037815    0.1529647
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0071205   -0.0621504    0.0450584
0-24 months   ki1101329-Keneba          GAMBIA       0                    NA                -0.0053417   -0.0386005    0.0268520
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0040061   -0.1525124    0.1253644
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0349447   -0.0673427   -0.0035300
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                 0.0784765   -0.0098297    0.1590607
0-6 months    ki1000109-EE              PAKISTAN     0                    NA                 0.5788362    0.3273182    0.7363107
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0151724   -0.0656322    0.0328980
0-6 months    ki1101329-Keneba          GAMBIA       0                    NA                 0.0467031    0.0025735    0.0888803
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0325318   -0.1884274    0.2124091
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.0327000    0.0086527    0.0561640
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0329445   -0.0875834    0.0189495
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0333333   -0.2665360    0.1569306
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                 0.0554151   -0.2259193    0.2721865
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0303214   -0.1393171    0.1747016
6-24 months   ki1101329-Keneba          GAMBIA       0                    NA                 0.0262304   -0.0165355    0.0671971
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0087544   -0.1893124    0.1443918
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.1976290   -0.3937262   -0.0291227
