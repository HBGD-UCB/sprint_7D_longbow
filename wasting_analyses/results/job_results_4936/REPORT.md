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
![](/tmp/26d1da3f-d168-42d6-9aca-1d61c8507d65/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/26d1da3f-d168-42d6-9aca-1d61c8507d65/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/26d1da3f-d168-42d6-9aca-1d61c8507d65/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/26d1da3f-d168-42d6-9aca-1d61c8507d65/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.6547619   0.5435887   0.7659351
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.6052632   0.4761138   0.7344125
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.1765360   0.0963388   0.2567332
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.2966701   0.2142808   0.3790594
0-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.5839704   0.5175216   0.6504192
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.8147067   0.7134132   0.9160001
0-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.5673064   0.5334527   0.6011601
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.6139232   0.5631978   0.6646486
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5707202   0.4832020   0.6582384
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5433366   0.4908585   0.5958147
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.4259002   0.4065283   0.4452722
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.4228127   0.4088052   0.4368202
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2670339   0.2386908   0.2953770
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2743898   0.2513144   0.2974653
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                0.2275879   0.1017537   0.3534221
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.3977383   0.2729505   0.5225262
0-6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.6259193   0.5692462   0.6825925
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.7366552   0.6589176   0.8143929
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.7501537   0.6195252   0.8807823
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.6121432   0.5289854   0.6953010
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.6741114   0.6520908   0.6961320
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.7229912   0.7066440   0.7393385
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.6439731   0.5959935   0.6919527
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.6120516   0.5671392   0.6569640
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.4174569   0.2578862   0.5770276
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.3052189   0.1272589   0.4831788
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.3263318   0.2192143   0.4334492
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.3179328   0.2232305   0.4126351
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.2680412   0.1773699   0.3587126
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.3076923   0.1243207   0.4910639
6-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.5269789   0.4869801   0.5669777
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.4791553   0.4174352   0.5408753
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.4374686   0.3468741   0.5280630
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5090831   0.4453580   0.5728081
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2135324   0.1790068   0.2480580
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1460410   0.1246344   0.1674476


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


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 0.9244019   0.7033939   1.2148512
0-24 months   ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE          PAKISTAN     1                    0                 1.6805076   0.9682074   2.9168398
0-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    0                 1.3951164   1.1791039   1.6507024
0-24 months   ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba      GAMBIA       1                    0                 1.0821722   0.9817328   1.1928872
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 0.9520191   0.7943118   1.1410386
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.9927505   0.9438517   1.0441827
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 1.0275469   0.9125440   1.1570429
0-6 months    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE          PAKISTAN     1                    0                 1.7476253   0.8905601   3.4295205
0-6 months    ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba      GAMBIA       1                    0                 1.1769172   1.0275501   1.3479967
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 0.8160237   0.6557970   1.0153975
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 1.0725100   1.0340887   1.1123589
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.9504304   0.8854462   1.0201840
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 0.7311386   0.3590190   1.4889565
6-24 months   ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE          PAKISTAN     1                    0                 0.9742625   0.6343325   1.4963561
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    0                 1.1479290   0.5784531   2.2780429
6-24 months   ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba      GAMBIA       1                    0                 0.9092494   0.7862313   1.0515156
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 1.1637020   0.9157179   1.4788423
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.6839290   0.5500829   0.8503426


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0154176   -0.0682071    0.0373718
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                 0.2430718    0.1746824    0.3114613
0-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                 0.0139677   -0.0168034    0.0447389
0-24 months   ki1101329-Keneba      GAMBIA       0                    NA                 0.0041222   -0.0125630    0.0208074
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0351471   -0.1142651    0.0439709
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0033211   -0.0121532    0.0187954
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.0111490   -0.0114369    0.0337348
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                 0.3425056    0.2359045    0.4491066
0-6 months    ki1101329-Keneba      GAMBIA       0                    NA                 0.0228742   -0.0038879    0.0496363
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.1489268   -0.2655965   -0.0322570
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0381418    0.0206053    0.0556783
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0482700   -0.0783068   -0.0182332
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0664141   -0.0300562    0.1628844
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                -0.0155210   -0.0962558    0.0652139
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                 0.0083815   -0.0348546    0.0516177
6-24 months   ki1101329-Keneba      GAMBIA       0                    NA                 0.0100140   -0.0110081    0.0310360
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0669046   -0.0176946    0.1515039
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0632570   -0.0925818   -0.0339323


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0241148   -0.1093432    0.0545658
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                 0.5792833    0.3809153    0.7140900
0-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                 0.0233598   -0.0296276    0.0736203
0-24 months   ki1101329-Keneba      GAMBIA       0                    NA                 0.0072138   -0.0223986    0.0359686
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0656253   -0.2249556    0.0729809
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0077375   -0.0289611    0.0431272
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.0400778   -0.0441311    0.1174953
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                 0.6007885    0.3559943    0.7525335
0-6 months    ki1101329-Keneba      GAMBIA       0                    NA                 0.0352566   -0.0071232    0.0758530
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.2477047   -0.4651782   -0.0625104
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0535509    0.0286926    0.0777730
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0810302   -0.1339541   -0.0305764
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.1372558   -0.0901634    0.3172330
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                -0.0499370   -0.3459584    0.1809793
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                 0.0303214   -0.1393171    0.1747016
6-24 months   ki1101329-Keneba      GAMBIA       0                    NA                 0.0186482   -0.0211810    0.0569239
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.1326490   -0.0489083    0.2827803
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.4209409   -0.6406959   -0.2306198
