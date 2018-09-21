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

**Intervention Variable:** hhwealth_quart

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nchldlt5
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nchldlt5
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        hhwealth_quart    wast_rec90d   n_cell       n
------------  -------------------------  -----------------------------  ---------------  ------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                   0        2      41
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                   1        3      41
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                   0        9      41
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                   1        8      41
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                   0        6      41
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                   1        8      41
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                   0        4      41
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                   1        1      41
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                   0        6      65
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                   1       11      65
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                   0        7      65
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                   1       14      65
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                   0        3      65
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                   1        6      65
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                   0        6      65
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                   1       12      65
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                   0        0      12
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                   1        2      12
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                   0        0      12
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                   1        5      12
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                   0        0      12
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                   1        2      12
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                   0        0      12
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                   1        3      12
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                   0        1       8
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                   1        3       8
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                   0        0       8
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                   1        1       8
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                   0        1       8
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                   1        1       8
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                   0        0       8
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                   1        1       8
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                   0        0      26
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                   1        6      26
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                   0        2      26
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                   1        6      26
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                   0        0      26
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                   1        6      26
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                   0        0      26
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                   1        6      26
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0        1      16
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1        1      16
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0        0      16
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1        3      16
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0        1      16
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1        5      16
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0        0      16
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1        5      16
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                   0       20     326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                   1       49     326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                   0       34     326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                   1       45     326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                   0       35     326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                   1       64     326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                   0       31     326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                   1       48     326
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4                   0       44     395
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4                   1       61     395
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1                   0       44     395
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1                   1       60     395
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2                   0       36     395
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2                   1       51     395
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3                   0       38     395
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3                   1       61     395
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                   0       23     306
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                   1       54     306
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                   0       52     306
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                   1       54     306
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                   0       26     306
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                   1       39     306
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                   0       27     306
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                   1       31     306
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0       81     711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1      105     711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0       77     711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1      124     711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0       44     711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1      105     711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0       64     711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1      111     711
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   0      126    1122
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   1      138    1122
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   0      130    1122
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   1      134    1122
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   0      134    1122
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   1      162    1122
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   0      146    1122
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   1      152    1122
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                   0        1       9
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                   1        1       9
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                   0        1       9
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                   1        2       9
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                   0        0       9
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                   1        3       9
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                   0        0       9
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                   1        1       9
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                   0       68     368
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                   1       55     368
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                   0       44     368
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                   1       43     368
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                   0       44     368
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                   1       33     368
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                   0       48     368
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                   1       33     368
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                   0      135    1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                   1      269    1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                   0      183    1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                   1      256    1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                   0      127    1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                   1      159    1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                   0      219    1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                   1      341    1689
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                   0        7      78
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                   1        3      78
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                   0       24      78
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                   1        5      78
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                   0       19      78
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                   1        3      78
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                   0       15      78
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                   1        2      78
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   0     1915   15126
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   1     1600   15126
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   0     2394   15126
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   1     1560   15126
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   0     2313   15126
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   1     1660   15126
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   0     2110   15126
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   1     1574   15126
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   0      533    4045
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   1      258    4045
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   0      919    4045
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   1      298    4045
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   0      799    4045
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   1      235    4045
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   0      737    4045
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   1      266    4045
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                   0        0      20
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                   1        2      20
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                   0        4      20
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                   1        5      20
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                   0        1      20
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                   1        5      20
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                   0        2      20
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                   1        1      20
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                   0        2      32
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                   1        5      32
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                   0        2      32
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                   1        8      32
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                   0        3      32
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                   1        5      32
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                   0        1      32
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                   1        6      32
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                   0        0       6
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                   1        0       6
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                   0        0       6
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                   1        3       6
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                   0        0       6
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                   1        1       6
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                   0        0       6
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                   1        2       6
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                   0        0       1
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                   1        0       1
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                   0        0       1
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                   1        1       1
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                   0        0       1
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                   1        0       1
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                   0        0       1
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                   1        0       1
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                   0        0      10
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                   1        2      10
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                   0        1      10
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                   1        2      10
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                   0        0      10
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                   1        3      10
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                   0        0      10
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                   1        2      10
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0        0       5
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1        1       5
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0        0       5
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1        0       5
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0        0       5
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1        2       5
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0        0       5
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1        2       5
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                   0       10     203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                   1       35     203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                   0       20     203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                   1       27     203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                   0       21     203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                   1       40     203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                   0       15     203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                   1       35     203
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4                   0       22     240
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4                   1       36     240
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1                   0       23     240
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1                   1       40     240
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2                   0       21     240
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2                   1       36     240
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3                   0       21     240
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3                   1       41     240
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                   0        9     183
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                   1       39     183
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                   0       14     183
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                   1       45     183
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                   0        7     183
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                   1       31     183
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                   0        9     183
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                   1       29     183
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0       26     339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1       61     339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0       34     339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1       75     339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0       13     339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1       43     339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0       28     339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1       59     339
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   0       30     360
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   1       54     360
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   0       32     360
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   1       50     360
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   0       44     360
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   1       60     360
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   0       44     360
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   1       46     360
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4                   0        0       4
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4                   1        1       4
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q1                   0        0       4
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q1                   1        0       4
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q2                   0        0       4
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q2                   1        3       4
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q3                   0        0       4
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q3                   1        0       4
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4                   0       18     207
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4                   1       54     207
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1                   0        9     207
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1                   1       41     207
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2                   0        7     207
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2                   1       29     207
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3                   0       17     207
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3                   1       32     207
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                   0       59     752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                   1      160     752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                   0       52     752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                   1      137     752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                   0       32     752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                   1       89     752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                   0       55     752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                   1      168     752
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4                   0        0       4
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4                   1        0       4
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1                   0        3       4
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1                   1        0       4
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2                   0        0       4
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2                   1        0       4
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3                   0        1       4
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3                   1        0       4
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   0      596    9468
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   1     1600    9468
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   0      942    9468
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   1     1560    9468
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   0      842    9468
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   1     1660    9468
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   0      694    9468
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   1     1574    9468
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   0      106    1096
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   1      150    1096
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   0      144    1096
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   1      160    1096
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   0      124    1096
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   1      134    1096
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   0      110    1096
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   1      168    1096
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                   0        2      21
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                   1        1      21
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                   0        5      21
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                   1        3      21
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                   0        5      21
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                   1        3      21
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                   0        2      21
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                   1        0      21
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                   0        4      33
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                   1        6      33
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                   0        5      33
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                   1        6      33
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                   0        0      33
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                   1        1      33
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                   0        5      33
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                   1        6      33
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                   0        0       6
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                   1        2       6
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                   0        0       6
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                   1        2       6
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                   0        0       6
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                   1        1       6
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                   0        0       6
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                   1        1       6
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                   0        1       7
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                   1        3       7
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                   0        0       7
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                   1        0       7
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                   0        1       7
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                   1        1       7
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                   0        0       7
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                   1        1       7
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                   0        0      16
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                   1        4      16
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                   0        1      16
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                   1        4      16
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                   0        0      16
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                   1        3      16
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                   0        0      16
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                   1        4      16
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0        1      11
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1        0      11
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0        0      11
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1        3      11
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0        1      11
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1        3      11
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0        0      11
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1        3      11
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                   0       10     123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                   1       14     123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                   0       14     123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                   1       18     123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                   0       14     123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                   1       24     123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                   0       16     123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                   1       13     123
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4                   0       22     155
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4                   1       25     155
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1                   0       21     155
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1                   1       20     155
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2                   0       15     155
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2                   1       15     155
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3                   0       17     155
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3                   1       20     155
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                   0       14     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                   1       15     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                   0       38     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                   1        9     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                   0       19     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                   1        8     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                   0       18     123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                   1        2     123
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0       55     372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1       44     372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0       43     372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1       49     372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0       31     372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1       62     372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0       36     372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1       52     372
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   0       96     762
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   1       84     762
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   0       98     762
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   1       84     762
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   0       90     762
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   1      102     762
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   0      102     762
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   1      106     762
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                   0        1       5
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                   1        0       5
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                   0        1       5
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                   1        2       5
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                   0        0       5
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                   1        0       5
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                   0        0       5
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                   1        1       5
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                   0       50     161
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                   1        1     161
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                   0       35     161
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                   1        2     161
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                   0       37     161
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                   1        4     161
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                   0       31     161
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                   1        1     161
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                   0       76     937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                   1      109     937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                   0      131     937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                   1      119     937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                   0       95     937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                   1       70     937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                   0      164     937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                   1      173     937
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                   0        7      74
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                   1        3      74
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                   0       21      74
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                   1        5      74
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                   0       19      74
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                   1        3      74
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                   0       14      74
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                   1        2      74
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   0     1319    5658
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   1        0    5658
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   0     1452    5658
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   1        0    5658
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   0     1471    5658
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   1        0    5658
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   0     1416    5658
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   1        0    5658
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   0      427    2949
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   1      108    2949
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   0      775    2949
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   1      138    2949
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   0      675    2949
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   1      101    2949
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   0      627    2949
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   1       98    2949


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/88b590f0-6bdc-4bfe-8d07-798149f39168/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/88b590f0-6bdc-4bfe-8d07-798149f39168/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/88b590f0-6bdc-4bfe-8d07-798149f39168/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/88b590f0-6bdc-4bfe-8d07-798149f39168/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.7152942   0.6062623   0.8243260
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.5678296   0.4554423   0.6802169
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.6469861   0.5486205   0.7453517
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.6063235   0.4968269   0.7158201
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.5809524   0.4835796   0.6783252
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.5769231   0.4754717   0.6783744
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.5862069   0.4781803   0.6942335
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.6161616   0.5052331   0.7270901
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.8179871   0.7356704   0.9003038
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.6184016   0.5426558   0.6941474
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.7625949   0.6599696   0.8652201
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.7292179   0.6310710   0.8273649
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.5496698   0.4796874   0.6196522
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.6016791   0.5324885   0.6708696
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.6929742   0.6181157   0.7678327
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.6201778   0.5460924   0.6942633
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.5227273   0.4294558   0.6159987
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.5075758   0.4084335   0.6067180
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.5472973   0.4645183   0.6300763
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.5100671   0.4248533   0.5952809
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.4154234   0.3462038   0.4846431
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.5198412   0.4420502   0.5976321
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.4922669   0.4210939   0.5634400
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.4470979   0.3712349   0.5229608
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.6625651   0.6179204   0.7072097
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.5853863   0.5429535   0.6278191
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.5600677   0.5080236   0.6121117
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.6148868   0.5768803   0.6528933
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.4391817   0.4216065   0.4567569
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.3921726   0.3748826   0.4094626
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.4166278   0.3989516   0.4343040
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.4365747   0.4187362   0.4544132
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.2824751   0.2404229   0.3245273
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.2374942   0.2093086   0.2656797
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.2246552   0.1933671   0.2559432
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.2490907   0.2155271   0.2826543
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.7846744   0.6680462   0.9013027
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.5773436   0.4315524   0.7231348
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.6611268   0.5382183   0.7840353
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.7082858   0.5831542   0.8334173
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.6206897   0.4919104   0.7494689
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                0.6349206   0.5131671   0.7566742
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                0.6315789   0.5040730   0.7590849
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                0.6612903   0.5402274   0.7823532
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.8125000   0.6999286   0.9250714
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.7627119   0.6550333   0.8703904
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.8157895   0.6901313   0.9414477
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.7631579   0.6373034   0.8890124
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.6662261   0.5727413   0.7597108
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.6625972   0.5780719   0.7471224
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.7275079   0.6218809   0.8331349
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.6612007   0.5668527   0.7555488
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.6711310   0.5379687   0.8042933
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.6391628   0.5038995   0.7744261
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.5883174   0.4627761   0.7138587
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.5189632   0.3845031   0.6534233
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.7500000   0.6492506   0.8507494
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.8200000   0.7127330   0.9272670
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.8055556   0.6753282   0.9357829
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.6530612   0.5220152   0.7841072
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.7124072   0.6547415   0.7700729
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.7225692   0.6656666   0.7794719
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.7339438   0.6648666   0.8030210
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.7480372   0.6949936   0.8010809
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.7417699   0.7212841   0.7622556
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.6274284   0.6051602   0.6496966
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.6689650   0.6468437   0.6910862
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.7064989   0.6842714   0.7287265
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.5629058   0.4981942   0.6276175
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.5598969   0.5033407   0.6164530
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.5484896   0.4870200   0.6099591
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.5960926   0.5351246   0.6570606
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.5850985   0.3825737   0.7876233
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.5601133   0.3699799   0.7502468
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.6317265   0.4776765   0.7857765
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.4486619   0.2687488   0.6285750
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.5319149   0.3941494   0.6696804
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.4878049   0.3199789   0.6556308
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.5000000   0.2999019   0.7000981
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.5405405   0.3626702   0.7184109
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.4890572   0.3918840   0.5862304
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.5727717   0.4686603   0.6768831
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.7047815   0.6066600   0.8029031
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.6340351   0.5316415   0.7364287
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.4666667   0.3531511   0.5801823
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.4615385   0.3410980   0.5819789
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.5312500   0.4281925   0.6343075
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.5096154   0.4083904   0.6108403
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.5951394   0.5297837   0.6604952
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.4708478   0.4098590   0.5318367
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.4091164   0.3374324   0.4808005
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.5140156   0.4613602   0.5666709
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.2066803   0.1582938   0.2550667
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.1531182   0.1225639   0.1836725
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.1318947   0.1002780   0.1635113
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.1377590   0.1032736   0.1722444


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6319018   0.5759256   0.6878781
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5898734   0.5376978   0.6420491
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.5816993   0.5247676   0.6386311
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6258790   0.5881498   0.6636083
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5222816   0.4773852   0.5671781
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4456522   0.3930622   0.4982422
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6068680   0.5823645   0.6313715
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4227159   0.4115895   0.4338422
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2613103   0.2419607   0.2806599
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6748768   0.6092233   0.7405304
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.6375000   0.5751450   0.6998550
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7868852   0.7281477   0.8456228
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7020649   0.6526590   0.7514708
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5833333   0.5108676   0.6557991
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7536232   0.6949302   0.8123162
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7367021   0.7051294   0.7682749
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.6753274   0.6619885   0.6886664
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.5583942   0.5167799   0.6000084
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5609756   0.4682842   0.6536670
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5161290   0.4322562   0.6000019
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5564516   0.5041613   0.6087419
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4934383   0.4388573   0.5480193
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.5026681   0.4688378   0.5364984
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1508986   0.1332882   0.1685090


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.7938407   0.6190937   1.0179121
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.9045035   0.7303996   1.1201084
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.8476561   0.6702975   1.0719433
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         0.9930643   0.7789031   1.2661096
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.0090447   0.7865678   1.2944479
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.0606061   0.8293241   1.3563880
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         0.7560041   0.6465750   0.8839535
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.9322823   0.7892254   1.1012699
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.8914785   0.7552644   1.0522592
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.0946191   0.9222084   1.2992628
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         1.2607100   1.0669582   1.4896457
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.1282735   0.9478161   1.3430886
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         0.9710145   0.7454136   1.2648940
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0470035   0.8288937   1.3225053
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.9757806   0.7643352   1.2457200
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.2513526   1.0352270   1.5125990
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.1849764   0.9906095   1.4174800
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.0762461   0.8832494   1.3114141
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         0.8835152   0.8014149   0.9740262
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         0.8453021   0.7546384   0.9468584
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         0.9280399   0.8482743   1.0153060
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         0.8929622   0.8441000   0.9446527
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         0.9486457   0.8979401   1.0022145
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         0.9940641   0.9420517   1.0489482
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         0.8407615   0.7014546   1.0077343
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         0.7953096   0.6540953   0.9670110
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         0.8818148   0.7277964   1.0684271
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.7357747   0.5490496   0.9860028
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.8425492   0.6639052   1.0692628
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.9026492   0.7166826   1.1368709
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.0229277   0.7711592   1.3568936
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.0175439   0.7617749   1.3591882
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.0654122   0.8078824   1.4050352
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         0.9387223   0.7702487   1.1440455
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         1.0040486   0.8161674   1.2351799
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.9392713   0.7572670   1.1650190
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.9945531   0.8221987   1.2030374
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         1.0919836   0.8924315   1.3361564
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.9924570   0.8126478   1.2120515
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         0.9523667   0.7126253   1.2727620
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         0.8766059   0.6549542   1.1732697
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.7732666   0.5580322   1.0715175
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.0933333   0.9064025   1.3188156
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.0740741   0.8704625   1.3253129
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         0.8707483   0.6839437   1.1085747
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.0142644   0.9063920   1.1349749
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.0302307   0.9104470   1.1657740
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.0500136   0.9432893   1.1688126
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         0.8458532   0.8092860   0.8840726
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         0.9018497   0.8645180   0.9407935
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         0.9524503   0.9141530   0.9923520
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         0.9946546   0.8708530   1.1360560
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         0.9743896   0.8458294   1.1224900
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.0589561   0.9248997   1.2124429
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.9572975   0.5910250   1.5505580
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.0796926   0.7078640   1.6468363
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.7668143   0.4519021   1.3011760
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         0.9170732   0.5961245   1.4108181
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         0.9400000   0.5835489   1.5141833
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.0162162   0.6685015   1.5447915
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.1711751   0.8951757   1.5322703
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         1.4411024   1.1304939   1.8370520
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.2964435   1.0034997   1.6749043
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         0.9890110   0.6922942   1.4129004
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.1383929   0.8340614   1.5537684
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.0920330   0.7977622   1.4948515
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         0.7911555   0.6678714   0.9371970
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         0.6874296   0.5591863   0.8450840
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         0.8636893   0.7436603   1.0030914
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         0.7408458   0.5446475   1.0077207
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         0.6381580   0.4564528   0.8921965
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         0.6665320   0.4731053   0.9390402


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0833923   -0.1813563    0.0145717
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0089210   -0.0756958    0.0935379
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.2362877   -0.3117164   -0.1608591
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0762092    0.0159344    0.1364841
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0004456   -0.0816700    0.0807788
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0302288   -0.0161875    0.0766450
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0556971   -0.0941124   -0.0172818
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0164658   -0.0312153   -0.0017163
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0211648   -0.0563962    0.0140665
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.1097976   -0.2182769   -0.0013183
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0168103   -0.0947957    0.1284164
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0256148   -0.1229526    0.0717230
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0358388   -0.0447294    0.1164070
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0877976   -0.2056606    0.0300653
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0036232   -0.0772108    0.0844571
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0242949   -0.0232594    0.0718492
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0664425   -0.0848707   -0.0480142
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0045117   -0.0539346    0.0449112
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0241229   -0.2056533    0.1574075
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0157859   -0.1363138    0.1047420
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0673944   -0.0162308    0.1510196
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0267717   -0.0721039    0.1256472
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0924713   -0.1516841   -0.0332585
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0557817   -0.0982342   -0.0133291


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.1319704   -0.2996482    0.0140740
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0151236   -0.1392355    0.1485681
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.4062025   -0.5587747   -0.2685641
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.1217635    0.0199548    0.2129962
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0008532   -0.1691043    0.1431840
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0678304   -0.0424725    0.1664622
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0917779   -0.1572375   -0.0300211
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0389525   -0.0745575   -0.0045273
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0809950   -0.2239785    0.0452854
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.1626928   -0.3390895   -0.0095326
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0263692   -0.1655019    0.1866534
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0325521   -0.1640542    0.0840943
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0510477   -0.0709039    0.1591118
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.1505102   -0.3742466    0.0368004
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0048077   -0.1084546    0.1064968
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0329779   -0.0338257    0.0954649
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0983856   -0.1264790   -0.0709928
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0080798   -0.1005907    0.0766551
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0430017   -0.4226774    0.2353484
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0305851   -0.2935436    0.1789178
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.1211145   -0.0428534    0.2593018
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0542553   -0.1691361    0.2349625
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.1839610   -0.3098169   -0.0701982
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.3696631   -0.6779047   -0.1180475
