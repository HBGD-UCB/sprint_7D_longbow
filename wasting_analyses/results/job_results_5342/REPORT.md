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
![](/tmp/dc3a5dc7-3c3e-4cac-ad9a-38bc31a27a5f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/dc3a5dc7-3c3e-4cac-ad9a-38bc31a27a5f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/dc3a5dc7-3c3e-4cac-ad9a-38bc31a27a5f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/dc3a5dc7-3c3e-4cac-ad9a-38bc31a27a5f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.6547619   0.5435887   0.7659351
0-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.6052632   0.4761138   0.7344125
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.1760068   0.0942436   0.2577700
0-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.2960634   0.2127635   0.3793633
0-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.5680253   0.5011915   0.6348591
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.6942724   0.5847070   0.8038378
0-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.5642164   0.5299398   0.5984929
0-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.5920094   0.5367565   0.6472624
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.5718014   0.4880388   0.6555641
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5450953   0.4929086   0.5972820
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.4257133   0.4063441   0.4450825
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.4228370   0.4088281   0.4368459
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2676497   0.2388933   0.2964061
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.2745939   0.2514446   0.2977431
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                0.2270045   0.1013598   0.3526492
0-6 months    ki1000109-EE          PAKISTAN     1                    NA                0.3970595   0.2723954   0.5217237
0-6 months    ki1101329-Keneba      GAMBIA       0                    NA                0.6240834   0.5664336   0.6817332
0-6 months    ki1101329-Keneba      GAMBIA       1                    NA                0.7148110   0.6299451   0.7996770
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                0.7601171   0.6305567   0.8896775
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    NA                0.6141902   0.5308761   0.6975042
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                0.6741128   0.6518026   0.6964229
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    NA                0.7229651   0.7065672   0.7393630
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.6378798   0.5895427   0.6862169
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.6092069   0.5642595   0.6541543
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                0.4136842   0.2601563   0.5672120
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    NA                0.3067089   0.1346010   0.4788169
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                0.3282596   0.2287448   0.4277743
6-24 months   ki1000109-EE          PAKISTAN     1                    NA                0.3142744   0.2248069   0.4037418
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                0.2680412   0.1773699   0.3587126
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    NA                0.3076923   0.1243207   0.4910639
6-24 months   ki1101329-Keneba      GAMBIA       0                    NA                0.5261840   0.4862426   0.5661254
6-24 months   ki1101329-Keneba      GAMBIA       1                    NA                0.4753332   0.4148075   0.5358588
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                0.4260531   0.3443138   0.5077924
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    NA                0.5089390   0.4457398   0.5721382
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                0.2105352   0.1771927   0.2438777
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    NA                0.1454760   0.1242178   0.1667341


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
0-24 months   ki1000109-EE          PAKISTAN     1                    0                 1.6821133   0.9580554   2.9533836
0-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    0                 1.2222561   1.0043862   1.4873861
0-24 months   ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba      GAMBIA       1                    0                 1.0492596   0.9430044   1.1674873
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 0.9532948   0.8013971   1.1339832
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   1                    0                 0.9932435   0.9442616   1.0447664
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 1.0259449   0.9095484   1.1572369
0-6 months    ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE          PAKISTAN     1                    0                 1.7491264   0.8903882   3.4360780
0-6 months    ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba      GAMBIA       1                    0                 1.1453775   0.9867223   1.3295429
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal   NEPAL        1                    0                 0.8080204   0.6504878   1.0037037
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   1                    0                 1.0724690   1.0335827   1.1128184
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.9550497   0.8906986   1.0240499
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED     BANGLADESH   1                    0                 0.7414084   0.3760789   1.4616253
6-24 months   ki1000109-EE          PAKISTAN     0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE          PAKISTAN     1                    0                 0.9573960   0.6428401   1.4258710
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE    BANGLADESH   1                    0                 1.1479290   0.5784531   2.2780429
6-24 months   ki1101329-Keneba      GAMBIA       0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba      GAMBIA       1                    0                 0.9033592   0.7817521   1.0438832
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal   NEPAL        1                    0                 1.1945435   0.9506980   1.5009332
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    0                 1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   1                    0                 0.6909817   0.5578486   0.8558876


### Parameter: PAR


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0154176   -0.0682071    0.0373718
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                 0.2436010    0.1742193    0.3129828
0-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                 0.0299128   -0.0015998    0.0614254
0-24 months   ki1101329-Keneba      GAMBIA       0                    NA                 0.0072122   -0.0097008    0.0241252
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0362283   -0.1117923    0.0393357
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0035081   -0.0119784    0.0189945
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.0105331   -0.0124428    0.0335091
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                 0.3430890    0.2365614    0.4496165
0-6 months    ki1101329-Keneba      GAMBIA       0                    NA                 0.0247102   -0.0032342    0.0526546
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.1588901   -0.2752211   -0.0425592
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0381404    0.0203784    0.0559024
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0421767   -0.0717950   -0.0125583
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.0701868   -0.0229659    0.1633395
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                -0.0174487   -0.0925756    0.0576781
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                 0.0083815   -0.0348546    0.0516177
6-24 months   ki1101329-Keneba      GAMBIA       0                    NA                 0.0108088   -0.0103244    0.0319420
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.0783201   -0.0006648    0.1573050
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0602598   -0.0885308   -0.0319888


### Parameter: PAF


agecat        studyid               country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  --------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                -0.0241148   -0.1093432    0.0545658
0-24 months   ki1000109-EE          PAKISTAN     0                    NA                 0.5805445    0.3767439    0.7177037
0-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                 0.0500266   -0.0046001    0.1016829
0-24 months   ki1101329-Keneba      GAMBIA       0                    NA                 0.0126214   -0.0174069    0.0417634
0-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.0676440   -0.2195119    0.0653116
0-24 months   kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0081731   -0.0285540    0.0435887
0-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                 0.0378640   -0.0479152    0.1166216
0-6 months    ki1000109-EE          PAKISTAN     0                    NA                 0.6018118    0.3572254    0.7533290
0-6 months    ki1101329-Keneba      GAMBIA       0                    NA                 0.0380864   -0.0062673    0.0804851
0-6 months    ki1113344-GMS-Nepal   NEPAL        0                    NA                -0.2642765   -0.4819993   -0.0785396
0-6 months    kiGH5241-JiVitA-3     BANGLADESH   0                    NA                 0.0535490    0.0283539    0.0780907
0-6 months    kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.0708015   -0.1226925   -0.0213089
6-24 months   ki0047075b-MAL-ED     BANGLADESH   0                    NA                 0.1450527   -0.0719972    0.3181560
6-24 months   ki1000109-EE          PAKISTAN     0                    NA                -0.0561394   -0.3304038    0.1615850
6-24 months   ki1017093b-PROVIDE    BANGLADESH   0                    NA                 0.0303214   -0.1393171    0.1747016
6-24 months   ki1101329-Keneba      GAMBIA       0                    NA                 0.0201284   -0.0199025    0.0585881
6-24 months   ki1113344-GMS-Nepal   NEPAL        0                    NA                 0.1552820   -0.0111453    0.2943166
6-24 months   kiGH5241-JiVitA-4     BANGLADESH   0                    NA                -0.4009960   -0.6133877   -0.2165643
