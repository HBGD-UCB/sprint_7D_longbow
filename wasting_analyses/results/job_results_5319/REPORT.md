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
![](/tmp/0bdedcf5-49a4-4d39-a753-a492b45ed5a4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0bdedcf5-49a4-4d39-a753-a492b45ed5a4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0bdedcf5-49a4-4d39-a753-a492b45ed5a4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0bdedcf5-49a4-4d39-a753-a492b45ed5a4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.7104298   0.5978999   0.8229598
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.5687580   0.4533416   0.6841744
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.6462232   0.5450838   0.7473627
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.6084786   0.4955453   0.7214119
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.5809524   0.4835796   0.6783252
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.5769231   0.4754717   0.6783744
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.5862069   0.4781803   0.6942335
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.6161616   0.5052331   0.7270901
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.8074899   0.7219057   0.8930742
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.6072894   0.5300096   0.6845691
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.7521926   0.6460666   0.8583186
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.7109172   0.6087566   0.8130779
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.5425314   0.4758231   0.6092397
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.5954383   0.5291320   0.6617447
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.6922387   0.6209976   0.7634799
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.6170567   0.5458733   0.6882400
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.5227273   0.4294558   0.6159987
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.5075758   0.4084335   0.6067180
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.5472973   0.4645183   0.6300763
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.5100671   0.4248533   0.5952809
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.4180932   0.3490226   0.4871639
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.5200612   0.4412103   0.5989121
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.4955466   0.4237831   0.5673101
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.4493793   0.3727933   0.5259653
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.6626292   0.6174790   0.7077793
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.5834987   0.5405964   0.6264010
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.5573640   0.5045216   0.6102064
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.6141694   0.5758031   0.6525357
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.4389854   0.4214501   0.4565207
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.3918705   0.3746190   0.4091221
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.4166016   0.3989525   0.4342507
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.4364518   0.4186374   0.4542662
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.2822076   0.2399369   0.3244783
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.2372677   0.2089805   0.2655548
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.2243921   0.1929652   0.2558190
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.2489789   0.2152699   0.2826880
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.7844555   0.6685486   0.9003624
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.5762523   0.4308438   0.7216609
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.6613717   0.5386919   0.7840514
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.7082578   0.5838372   0.8326785
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.6206897   0.4919104   0.7494689
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                0.6349206   0.5131671   0.7566742
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                0.6315789   0.5040730   0.7590849
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                0.6612903   0.5402274   0.7823532
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.8125000   0.6999286   0.9250714
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.7627119   0.6550333   0.8703904
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.8157895   0.6901313   0.9414477
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.7631579   0.6373034   0.8890124
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.6626709   0.5705416   0.7548003
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.6617457   0.5784727   0.7450187
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.7228256   0.6188552   0.8267960
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.6631578   0.5704068   0.7559088
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.6761767   0.5487511   0.8036023
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.6417938   0.5129537   0.7706339
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.5875761   0.4653265   0.7098257
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.5107283   0.3824624   0.6389943
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.7500000   0.6492506   0.8507494
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.8200000   0.7127330   0.9272670
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.8055556   0.6753282   0.9357829
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.6530612   0.5220152   0.7841072
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.7190697   0.6605557   0.7775837
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.7238923   0.6645066   0.7832780
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.7354466   0.6607679   0.8101253
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.7515117   0.6969162   0.8061073
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.7413709   0.7210699   0.7616719
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.6269784   0.6049018   0.6490551
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.6687303   0.6467799   0.6906807
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.7065438   0.6845278   0.7285598
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.5576467   0.4982315   0.6170618
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.5518490   0.4990748   0.6046231
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.5449870   0.4884926   0.6014813
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.5904573   0.5335747   0.6473399
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.5855172   0.3840774   0.7869569
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.5595546   0.3704704   0.7486388
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.6317759   0.4786566   0.7848953
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.4487519   0.2697811   0.6277227
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.5319149   0.3941494   0.6696804
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.4878049   0.3199789   0.6556308
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.5000000   0.2999019   0.7000981
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.5405405   0.3626702   0.7184109
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.4747033   0.3843588   0.5650478
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.5656951   0.4684351   0.6629551
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.7112841   0.6201452   0.8024231
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.6381758   0.5435559   0.7327956
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.4666667   0.3531511   0.5801823
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.4615385   0.3410980   0.5819789
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.5312500   0.4281925   0.6343075
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.5096154   0.4083904   0.6108403
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.5922781   0.5250855   0.6594706
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.4699451   0.4076567   0.5322335
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.4104884   0.3361036   0.4848731
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.5132162   0.4597936   0.5666387
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.2018692   0.1533991   0.2503392
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.1511501   0.1205827   0.1817174
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.1301546   0.0985238   0.1617854
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.1351724   0.1006628   0.1696820


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
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.8005829   0.6190712   1.0353139
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.9096229   0.7281753   1.1362839
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.8564936   0.6711954   1.0929474
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         0.9930643   0.7789031   1.2661096
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.0090447   0.7865678   1.2944479
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.0606061   0.8293241   1.3563880
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         0.7520705   0.6391385   0.8849570
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.9315195   0.7823481   1.1091336
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.8804038   0.7386741   1.0493273
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.0975187   0.9298916   1.2953631
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         1.2759423   1.0870467   1.4976623
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.1373659   0.9612412   1.3457613
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         0.9710145   0.7454136   1.2648940
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0470035   0.8288937   1.3225053
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.9757806   0.7643352   1.2457200
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.2438881   1.0304269   1.5015695
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.1852538   0.9937695   1.4136343
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.0748305   0.8842733   1.3064519
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         0.8805811   0.7974524   0.9723753
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         0.8411401   0.7491969   0.9443668
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         0.9268674   0.8460254   1.0154343
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         0.8926732   0.8439783   0.9441775
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         0.9490101   0.8984464   1.0024194
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         0.9942284   0.9423704   1.0489402
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         0.8407559   0.7005456   1.0090285
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         0.7951313   0.6530345   0.9681475
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         0.8822544   0.7271943   1.0703782
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.7345889   0.5484942   0.9838223
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.8430965   0.6649315   1.0689999
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.9028655   0.7178054   1.1356367
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.0229277   0.7711592   1.3568936
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.0175439   0.7617749   1.3591882
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.0654122   0.8078824   1.4050352
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         0.9387223   0.7702487   1.1440455
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         1.0040486   0.8161674   1.2351799
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.9392713   0.7572670   1.1650190
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.9986038   0.8272618   1.2054340
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         1.0907760   0.8931276   1.3321639
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.0007347   0.8218431   1.2185658
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         0.9491510   0.7207767   1.2498845
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         0.8689682   0.6562226   1.1506855
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.7553178   0.5519024   1.0337064
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.0933333   0.9064025   1.3188156
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.0740741   0.8704625   1.3253129
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         0.8707483   0.6839437   1.1085747
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.0067067   0.8980280   1.1285376
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.0227752   0.8990306   1.1635522
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.0451167   0.9382358   1.1641731
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         0.8457014   0.8095075   0.8835137
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         0.9020185   0.8650538   0.9405628
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         0.9530234   0.9151417   0.9924732
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         0.9896032   0.8778586   1.1155721
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         0.9772980   0.8611507   1.1091106
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.0588377   0.9370782   1.1964181
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.9556588   0.5918804   1.5430208
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.0790050   0.7094351   1.6410969
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.7664197   0.4531401   1.2962859
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         0.9170732   0.5961245   1.4108181
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         0.9400000   0.5835489   1.5141833
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.0162162   0.6685015   1.5447915
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.1916813   0.9225087   1.5393940
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         1.4983762   1.1910562   1.8849919
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.3443676   1.0560431   1.7114115
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         0.9890110   0.6922942   1.4129004
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.1383929   0.8340614   1.5537684
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.0920330   0.7977622   1.4948515
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         0.7934535   0.6665504   0.9445175
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         0.6930670   0.5597466   0.8581415
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         0.8665122   0.7430881   1.0104366
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         0.7487526   0.5470097   1.0249004
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         0.6447475   0.4581586   0.9073263
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         0.6696041   0.4716363   0.9506682


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0785280   -0.1798967    0.0228407
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0089210   -0.0756958    0.0935379
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.2257906   -0.3031364   -0.1484448
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0833477    0.0257500    0.1409454
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0004456   -0.0816700    0.0807788
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0275590   -0.0180245    0.0731424
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0557612   -0.0947291   -0.0167933
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0162696   -0.0309470   -0.0015922
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0208973   -0.0563585    0.0145638
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.1095787   -0.2174610   -0.0016963
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0168103   -0.0947957    0.1284164
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0256148   -0.1229526    0.0717230
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0393940   -0.0400984    0.1188863
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0928434   -0.2060586    0.0203719
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0036232   -0.0772108    0.0844571
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0176324   -0.0303440    0.0656089
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0660435   -0.0842895   -0.0477975
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0007475   -0.0431162    0.0446112
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0245416   -0.2049399    0.1558568
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0157859   -0.1363138    0.1047420
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0817483    0.0037109    0.1597857
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0267717   -0.0721039    0.1256472
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0896100   -0.1504598   -0.0287601
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0509705   -0.0934939   -0.0084472


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.1242724   -0.2979665    0.0261779
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0151236   -0.1392355    0.1485681
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.3881569   -0.5420551   -0.2496178
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.1331690    0.0362880    0.2203105
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0008532   -0.1691043    0.1431840
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0618396   -0.0463960    0.1588797
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0918836   -0.1582995   -0.0292759
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0384882   -0.0739137   -0.0042313
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0799714   -0.2239589    0.0470773
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.1623684   -0.3378108   -0.0099338
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0263692   -0.1655019    0.1866534
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0325521   -0.1640542    0.0840943
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0561116   -0.0641094    0.1627502
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.1591601   -0.3742119    0.0222381
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0048077   -0.1084546    0.1064968
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0239343   -0.0434646    0.0869798
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0977948   -0.1256164   -0.0706608
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0013386   -0.0803831    0.0768788
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0437480   -0.4206465    0.2331591
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0305851   -0.2935436    0.1789178
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.1469100   -0.0049973    0.2758562
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0542553   -0.1691361    0.2349625
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.1782687   -0.3074817   -0.0618252
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.3377801   -0.6473389   -0.0863919
