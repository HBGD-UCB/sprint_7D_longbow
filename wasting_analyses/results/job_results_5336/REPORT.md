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
![](/tmp/f27ae32c-0f9a-4bbb-88b8-5fa52a261d6d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f27ae32c-0f9a-4bbb-88b8-5fa52a261d6d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f27ae32c-0f9a-4bbb-88b8-5fa52a261d6d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f27ae32c-0f9a-4bbb-88b8-5fa52a261d6d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.6453628   0.5188925   0.7718331
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.5960133   0.4993253   0.6927013
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.1841532   0.0981056   0.2702009
0-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.2962676   0.2070710   0.3854642
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                0.5384615   0.2364546   0.8404685
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    NA                0.3600000   0.2937351   0.4262649
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.5868215   0.5231413   0.6505016
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.5723269   0.4650084   0.6796455
0-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.5635395   0.5309038   0.5961753
0-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.5751261   0.5310456   0.6192065
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.5280923   0.4438388   0.6123458
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.5273536   0.4738402   0.5808671
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.4329930   0.4159805   0.4500055
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.4190516   0.4068222   0.4312809
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.2862334   0.2573092   0.3151576
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.2746831   0.2519507   0.2974155
0-6 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.7878788   0.6482934   0.9274642
0-6 months    ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.8076923   0.6590088   0.9563759
0-6 months    ki1000109-EE              PAKISTAN     0                    NA                0.2291855   0.1069983   0.3513727
0-6 months    ki1000109-EE              PAKISTAN     1                    NA                0.3687247   0.2427373   0.4947121
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.8053483   0.7382646   0.8724321
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.7921743   0.6897525   0.8945961
0-6 months    ki1101329-Keneba          GAMBIA       0                    NA                0.6142279   0.5603944   0.6680614
0-6 months    ki1101329-Keneba          GAMBIA       1                    NA                0.7093604   0.6454672   0.7732536
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                0.5731621   0.4434318   0.7028925
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    NA                0.5977188   0.5120360   0.6834016
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                0.6561828   0.6358575   0.6765080
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    NA                0.6901386   0.6754077   0.7048695
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.6156387   0.5655889   0.6656886
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.6009184   0.5560141   0.6458226
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                0.4500000   0.2444054   0.6555946
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    NA                0.5000000   0.3367001   0.6632999
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                0.2915036   0.1879103   0.3950969
6-24 months   ki1000109-EE              PAKISTAN     1                    NA                0.3207872   0.2231752   0.4183992
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                0.2680412   0.1773699   0.3587126
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    NA                0.3076923   0.1243207   0.4910639
6-24 months   ki1101329-Keneba          GAMBIA       0                    NA                0.5134156   0.4747304   0.5521008
6-24 months   ki1101329-Keneba          GAMBIA       1                    NA                0.4204178   0.3694000   0.4714355
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                0.4985929   0.4064340   0.5907519
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    NA                0.4957159   0.4321622   0.5592695
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                0.2334799   0.1998435   0.2671163
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    NA                0.1495852   0.1286937   0.1704767


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


agecat        studyid                   country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  ------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    0                 0.9235322   0.7153369   1.1923218
0-24 months   ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE              PAKISTAN     1                    0                 1.6088100   0.9094177   2.8460735
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed   INDIA        1                    0                 0.6685714   0.3704954   1.2064597
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    0                 0.9752999   0.7918065   1.2013161
0-24 months   ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba          GAMBIA       1                    0                 1.0205603   0.9316751   1.1179254
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal       NEPAL        1                    0                 0.9986013   0.8264926   1.2065498
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   1                    0                 0.9678022   0.9258621   1.0116421
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.9596471   0.8553799   1.0766241
0-6 months    ki0047075b-MAL-ED         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED         BANGLADESH   1                    0                 1.0251479   0.7940050   1.3235789
0-6 months    ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE              PAKISTAN     1                    0                 1.6088482   0.8168430   3.1687764
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE        BANGLADESH   1                    0                 0.9836418   0.8435320   1.1470238
0-6 months    ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba          GAMBIA       1                    0                 1.1548814   1.0236407   1.3029485
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal       NEPAL        1                    0                 1.0428442   0.8029296   1.3544451
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   1                    0                 1.0517476   1.0153795   1.0894182
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.9760893   0.9055201   1.0521580
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED         BANGLADESH   1                    0                 1.1111111   0.6335362   1.9486934
6-24 months   ki1000109-EE              PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE              PAKISTAN     1                    0                 1.1004573   0.6991234   1.7321781
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE        BANGLADESH   1                    0                 1.1479290   0.5784531   2.2780429
6-24 months   ki1101329-Keneba          GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba          GAMBIA       1                    0                 0.8188644   0.7116037   0.9422927
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal       NEPAL        1                    0                 0.9942297   0.7972506   1.2398770
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   1                    0                 0.6406769   0.5241771   0.7830690


### Parameter: PAR


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0089991   -0.0977815    0.0797833
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                 0.2321892    0.1609872    0.3033911
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.1687136   -0.4604384    0.1230111
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0037596   -0.0350313    0.0275121
0-24 months   ki1101329-Keneba          GAMBIA       0                    NA                -0.0024536   -0.0199379    0.0150308
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0020700   -0.0747950    0.0706551
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0067832   -0.0203754    0.0068090
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0095450   -0.0327197    0.0136298
0-6 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0087314   -0.0812361    0.0986989
0-6 months    ki1000109-EE              PAKISTAN     0                    NA                 0.3356293    0.2322919    0.4389667
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0173048   -0.0555599    0.0209502
0-6 months    ki1101329-Keneba          GAMBIA       0                    NA                 0.0300507    0.0029140    0.0571874
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0174812   -0.0900023    0.1249646
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.0266451    0.0103371    0.0429531
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0256004   -0.0570486    0.0058478
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0338710   -0.1435771    0.2113190
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                 0.0172213   -0.0601441    0.0945866
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0083815   -0.0348546    0.0516177
6-24 months   ki1101329-Keneba          GAMBIA       0                    NA                 0.0114762   -0.0108423    0.0337946
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0026801   -0.0825385    0.0771783
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0812729   -0.1102024   -0.0523434


### Parameter: PAF


agecat        studyid                   country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  ------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                -0.0141415   -0.1636449    0.1161539
0-24 months   ki1000109-EE              PAKISTAN     0                    NA                 0.5576880    0.3426657    0.7023738
0-24 months   ki1000304b-SAS-CompFeed   INDIA        0                    NA                -0.4562937   -1.5037815    0.1529647
0-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0064480   -0.0615678    0.0458098
0-24 months   ki1101329-Keneba          GAMBIA       0                    NA                -0.0043729   -0.0360435    0.0263296
0-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0039351   -0.1521794    0.1252354
0-24 months   kiGH5241-JiVitA-3         BANGLADESH   0                    NA                -0.0159151   -0.0483437    0.0155104
0-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0344973   -0.1221999    0.0463512
0-6 months    ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0109607   -0.1087726    0.1177643
0-6 months    ki1000109-EE              PAKISTAN     0                    NA                 0.5942289    0.3586939    0.7432581
0-6 months    ki1017093b-PROVIDE        BANGLADESH   0                    NA                -0.0219593   -0.0718486    0.0256080
0-6 months    ki1101329-Keneba          GAMBIA       0                    NA                 0.0466424    0.0034898    0.0879263
0-6 months    ki1113344-GMS-Nepal       NEPAL        0                    NA                 0.0295968   -0.1705439    0.1955172
0-6 months    kiGH5241-JiVitA-3         BANGLADESH   0                    NA                 0.0390217    0.0148819    0.0625700
0-6 months    kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.0433877   -0.0984940    0.0089541
6-24 months   ki0047075b-MAL-ED         BANGLADESH   0                    NA                 0.0700000   -0.3766411    0.3717317
6-24 months   ki1000109-EE              PAKISTAN     0                    NA                 0.0557819   -0.2303481    0.2753694
6-24 months   ki1017093b-PROVIDE        BANGLADESH   0                    NA                 0.0303214   -0.1393171    0.1747016
6-24 months   ki1101329-Keneba          GAMBIA       0                    NA                 0.0218639   -0.0214341    0.0633265
6-24 months   ki1113344-GMS-Nepal       NEPAL        0                    NA                -0.0054044   -0.1801297    0.1434518
6-24 months   kiGH5241-JiVitA-4         BANGLADESH   0                    NA                -0.5339629   -0.7536564   -0.3417921
