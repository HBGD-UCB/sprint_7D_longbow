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

**Outcome Variable:** ever_swasted

## Predictor Variables

**Intervention Variable:** hhwealth_quart

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        hhwealth_quart    ever_swasted   n_cell       n
------------  -------------------------  -----------------------------  ---------------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    0       20      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    1        1      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    0       19      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    1        2      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    0       15      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    1        5      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    0       19      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    1        1      82
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                    0       17      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                    1        1      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                    0       14      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                    1        5      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                    0       14      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                    1        3      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                    0       14      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                    1        3      71
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    0       11      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    1        0      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    0       10      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    1        1      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    0        9      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    1        1      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    0       10      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    1        0      42
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                    0       10      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                    1        0      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                    0        9      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                    1        0      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                    0        9      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                    1        0      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                    0        8      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                    1        1      37
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    0       16      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    1        1      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    0       15      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    1        2      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    0       17      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    1        0      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    0       17      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    1        0      68
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0       14      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1        1      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0       14      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1        1      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0       13      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1        2      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0       15      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1        0      60
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                    0       86     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                    1       10     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                    0       66     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                    1       25     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                    0       59     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                    1       36     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                    0       67     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                    1       24     373
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4                    0       67     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4                    1       33     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1                    0       63     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1                    1       42     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2                    0       74     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2                    1       28     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3                    0       66     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3                    1       37     410
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    0      164     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    1       11     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    0      166     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    1       14     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    0      159     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    1       10     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    0      167     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    1        7     698
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0      549    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1       44    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0      675    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1       44    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0      452    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1       31    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0      551    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1       38    2384
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    0      118     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    1       33     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    0      109     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    1       42     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    0      106     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    1       44     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    0      113     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    1       37     602
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                    0       52     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                    1        0     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                    0       59     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                    1        0     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                    0       52     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                    1        0     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                    0       52     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                    1        0     215
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                    0      223     607
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                    1       15     607
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                    0      120     607
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                    1       11     607
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                    0      102     607
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                    1       14     607
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                    0      104     607
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                    1       18     607
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                    0      743    3044
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                    1       97    3044
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                    0      590    3044
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                    1       91    3044
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                    0      473    3044
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                    1       67    3044
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                    0      856    3044
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                    1      127    3044
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                    0      215     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                    1        2     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                    0      200     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                    1        4     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                    0      196     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                    1        3     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                    0      197     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                    1        0     817
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    0     3232   13314
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    1      189   13314
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    0     3043   13314
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    1      256   13314
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    0     3138   13314
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    1      220   13314
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    0     3035   13314
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    1      201   13314
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    0      317    1432
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    1       13    1432
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    0      345    1432
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    1       30    1432
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    0      310    1432
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    1       28    1432
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    0      367    1432
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    1       22    1432
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    0       21      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    1        0      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    0       19      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    1        2      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    0       18      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    1        2      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    0       19      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    1        1      82
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                    0       17      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                    1        1      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                    0       15      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                    1        4      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                    0       14      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                    1        3      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                    0       15      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                    1        2      71
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    0       11      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    1        0      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    0       10      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    1        1      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    0        9      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    1        1      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    0       10      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    1        0      42
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                    0       10      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                    1        0      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                    0        9      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                    1        0      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                    0        9      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                    1        0      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                    0        9      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                    1        0      37
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    0       16      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    1        1      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    0       17      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    1        0      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    0       17      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    1        0      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    0       17      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    1        0      68
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0       15      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1        0      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0       15      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1        0      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0       13      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1        2      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0       15      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1        0      60
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                    0       89     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                    1        6     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                    0       76     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                    1       14     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                    0       61     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                    1       32     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                    0       72     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                    1       18     368
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4                    0       71     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4                    1       29     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1                    0       67     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1                    1       38     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2                    0       77     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2                    1       25     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3                    0       69     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3                    1       34     410
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    0      165     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    1       10     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    0      174     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    1        6     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    0      161     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    1        8     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    0      169     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    1        5     698
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0      572    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1       21    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0      694    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1       25    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0      470    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1       13    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0      570    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1       19    2384
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    0      141     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    1       10     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    0      139     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    1       12     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    0      132     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    1       18     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    0      134     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    1       16     602
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4                    0       52     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4                    1        0     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q1                    0       59     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q1                    1        0     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q2                    0       52     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q2                    1        0     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q3                    0       52     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q3                    1        0     215
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4                    0      172     482
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4                    1       13     482
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1                    0       99     482
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1                    1        9     482
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2                    0       79     482
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2                    1        7     482
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3                    0       95     482
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3                    1        8     482
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                    0      765    3043
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                    1       75    3043
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                    0      633    3043
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                    1       47    3043
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                    0      513    3043
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                    1       27    3043
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                    0      921    3043
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                    1       62    3043
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4                    0       73     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4                    1        0     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1                    0       68     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1                    1        0     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2                    0       64     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2                    1        0     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3                    0       64     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3                    1        0     269
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    0     3269   13265
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    1      136   13265
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    0     3112   13265
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    1      174   13265
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    0     3197   13265
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    1      151   13265
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    0     3090   13265
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    1      136   13265
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    0      301    1329
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    1        6    1329
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    0      330    1329
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    1        9    1329
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    0      300    1329
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    1       10    1329
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    0      366    1329
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    1        7    1329
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    0       20      82
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    1        1      82
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    0       21      82
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    1        0      82
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    0       17      82
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    1        3      82
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    0       20      82
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    1        0      82
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                    0       18      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                    1        0      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                    0       18      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                    1        1      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                    0       17      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                    1        0      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                    0       16      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                    1        1      71
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    0       11      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    1        0      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    0       11      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    1        0      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    0       10      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    1        0      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    0       10      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    1        0      42
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                    0       10      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                    1        0      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                    0        9      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                    1        0      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                    0        8      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                    1        0      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                    0        8      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                    1        1      36
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    0       17      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    1        0      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    0       15      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    1        2      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    0       17      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    1        0      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    0       17      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    1        0      68
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0       14      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1        1      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0       14      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1        1      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0       15      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1        0      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0       15      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1        0      60
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                    0       91     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                    1        5     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                    0       78     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                    1       13     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                    0       91     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                    1        4     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                    0       83     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                    1        8     373
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4                    0       94     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4                    1        6     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1                    0       97     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1                    1        8     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2                    0       96     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2                    1        6     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3                    0       97     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3                    1        6     410
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    0      160     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    1        1     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    0      140     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    1        8     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    0      146     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    1        2     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    0      154     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    1        2     613
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0      464    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1       24    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0      588    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1       21    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0      388    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1       19    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0      487    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1       19    2010
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    0      124     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    1       25     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    0      116     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    1       33     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    0      116     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    1       31     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    0      121     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    1       24     590
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                    0       52     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                    1        0     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                    0       59     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                    1        0     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                    0       52     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                    1        0     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                    0       52     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                    1        0     215
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                    0      218     555
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                    1        2     555
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                    0      117     555
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                    1        2     555
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                    0      103     555
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                    1        7     555
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                    0       96     555
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                    1       10     555
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                    0      748    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                    1       23    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                    0      552    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                    1       54    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                    0      464    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                    1       40    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                    0      857    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                    1       71    2809
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                    0      214     805
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                    1        2     805
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                    0      192     805
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                    1        4     805
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                    0      193     805
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                    1        3     805
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                    0      197     805
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                    1        0     805
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    0     2381    8549
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    1       57    8549
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    0     1778    8549
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    1       85    8549
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    0     2030    8549
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    1       72    8549
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    0     2080    8549
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    1       66    8549
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    0      322    1430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    1        7    1430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    0      353    1430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    1       21    1430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    0      320    1430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    1       18    1430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    0      372    1430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    1       17    1430


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
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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
![](/tmp/added187-8309-4497-9f3d-cd0e47837696/f99f0d6a-cef8-42da-85cc-e60c4c08f8aa/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/added187-8309-4497-9f3d-cd0e47837696/f99f0d6a-cef8-42da-85cc-e60c4c08f8aa/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/added187-8309-4497-9f3d-cd0e47837696/f99f0d6a-cef8-42da-85cc-e60c4c08f8aa/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/added187-8309-4497-9f3d-cd0e47837696/f99f0d6a-cef8-42da-85cc-e60c4c08f8aa/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.1041667   0.0429777   0.1653557
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.2747253   0.1828897   0.3665608
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.3789474   0.2812635   0.4766312
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.2637363   0.1730770   0.3543955
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.3300000   0.2377274   0.4222726
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.4000000   0.3061813   0.4938187
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.2745098   0.1877990   0.3612206
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.3592233   0.2664559   0.4519907
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.0628571   0.0268722   0.0988421
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.0777778   0.0386244   0.1169311
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.0591716   0.0235734   0.0947698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.0402299   0.0110124   0.0694474
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0741990   0.0530996   0.0952984
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0611961   0.0436725   0.0787197
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0641822   0.0423213   0.0860431
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0645161   0.0446719   0.0843603
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.2185430   0.1525738   0.2845123
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.2781457   0.2066168   0.3496746
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.2933333   0.2204125   0.3662541
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.2466667   0.1776248   0.3157085
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.0630252   0.0321266   0.0939238
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.0839695   0.0364375   0.1315015
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.1206897   0.0613584   0.1800209
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.1475410   0.0845586   0.2105234
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.1154762   0.0938599   0.1370925
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.1336270   0.1080679   0.1591861
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.1240741   0.0962643   0.1518838
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.1291963   0.1082249   0.1501678
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0552470   0.0464375   0.0640565
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.0775993   0.0675846   0.0876139
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.0655152   0.0562933   0.0747370
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.0621137   0.0529991   0.0712283
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0393939   0.0164370   0.0623509
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.0800000   0.0459066   0.1140934
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.0828402   0.0553375   0.1103429
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.0565553   0.0327435   0.0803670
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.0631579   0.0141773   0.1121385
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1555556   0.0805755   0.2305357
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.3440860   0.2474021   0.4407700
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.2000000   0.1172482   0.2827518
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.2900000   0.2009556   0.3790444
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                0.3619048   0.2698760   0.4539335
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                0.2450980   0.1615198   0.3286763
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                0.3300971   0.2391714   0.4210228
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.0571429   0.0227281   0.0915576
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.0333333   0.0070911   0.0595756
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.0473373   0.0152977   0.0793769
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.0287356   0.0038949   0.0535763
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0354132   0.0205345   0.0502918
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0347705   0.0213770   0.0481641
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0269151   0.0124794   0.0413509
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0322581   0.0179862   0.0465299
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0662252   0.0265286   0.1059218
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.0794702   0.0362943   0.1226461
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1200000   0.0679530   0.1720470
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1066667   0.0572260   0.1561074
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.0702703   0.0333999   0.1071406
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.0833333   0.0311535   0.1355131
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.0813953   0.0235439   0.1392468
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.0776699   0.0259271   0.1294127
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0892857   0.0699988   0.1085726
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0691176   0.0500496   0.0881857
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0500000   0.0316148   0.0683852
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0630722   0.0478732   0.0782712
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0399413   0.0325342   0.0473483
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.0529519   0.0445257   0.0613781
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.0451016   0.0373077   0.0528954
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.0421575   0.0340235   0.0502914
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0195440   0.0000589   0.0390291
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.0265487   0.0045873   0.0485101
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.0322581   0.0113505   0.0531656
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.0187668   0.0029089   0.0346246
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.0600000   0.0133966   0.1066034
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.0761905   0.0253833   0.1269977
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.0588235   0.0131053   0.1045418
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.0582524   0.0129643   0.1035405
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0491803   0.0299896   0.0683710
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0344828   0.0199874   0.0489781
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0466830   0.0261829   0.0671832
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0375494   0.0209813   0.0541175
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1677852   0.1077346   0.2278359
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.2214765   0.1547462   0.2882068
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.2108844   0.1448834   0.2768853
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1655172   0.1049744   0.2260601
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0298314   0.0178210   0.0418418
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0891089   0.0664216   0.1117962
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0793651   0.0557620   0.1029682
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0765086   0.0594036   0.0936136
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0233798   0.0165540   0.0302056
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.0456253   0.0355762   0.0556744
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.0342531   0.0251595   0.0433466
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.0307549   0.0232212   0.0382886
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0212766   0.0033881   0.0391651
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.0561497   0.0274110   0.0848885
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.0532544   0.0322998   0.0742091
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.0437018   0.0234385   0.0639651


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2546917   0.2104174   0.2989660
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.3414634   0.2955068   0.3874201
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0601719   0.0425175   0.0778263
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0658557   0.0558973   0.0758141
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2591362   0.2241059   0.2941665
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0955519   0.0721461   0.1189577
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1254928   0.1137225   0.1372631
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0650443   0.0602009   0.0698877
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0649441   0.0516571   0.0782311
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1902174   0.1500638   0.2303710
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.3073171   0.2626027   0.3520314
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0415473   0.0267327   0.0563618
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0327181   0.0255755   0.0398607
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0930233   0.0698010   0.1162455
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0767635   0.0529727   0.1005543
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0693395   0.0603122   0.0783667
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0450057   0.0407892   0.0492221
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0240783   0.0146594   0.0334971
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.0634146   0.0397960   0.0870333
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0412935   0.0325931   0.0499940
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1915254   0.1597467   0.2233042
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0669277   0.0576848   0.0761707
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0327524   0.0284767   0.0370280
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0440559   0.0331293   0.0549826


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         2.6373626   1.3416627    5.1843741
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         3.6378947   1.9153853    6.9094598
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         2.5318681   1.2819151    5.0006091
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.2121212   0.8414838    1.7460085
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         0.8318479   0.5455506    1.2683901
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.0885555   0.7439572    1.5927703
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         1.2373737   0.5773290    2.6520300
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.9413663   0.4102904    2.1598619
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.6400210   0.2538468    1.6136777
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.8247566   0.5508872    1.2347782
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.8650009   0.5550313    1.3480802
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.8695015   0.5719365    1.3218823
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.2727273   0.8560828    1.8921473
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.3422222   0.9078097    1.9845135
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.1286869   0.7478121    1.7035484
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.3323155   0.6300639    2.8172771
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.9149425   0.9563873    3.8342260
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         2.3409836   1.2220255    4.4845251
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.1571824   0.8854652    1.5122799
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.0744559   0.8023494    1.4388439
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.1188136   0.8732790    1.4333837
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.4045879   1.1465786    1.7206558
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.1858596   0.9500860    1.4801428
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.1242912   0.9057578    1.3955505
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         2.0307689   0.9774306    4.2192481
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         2.1028672   1.0956822    4.0358876
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.4356335   0.6875137    2.9978218
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         2.4629630   0.9883186    6.1378857
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         5.4480287   2.3878494   12.4300205
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         3.1666667   1.3147958    7.6268711
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.2479475   0.8376321    1.8592563
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         0.8451657   0.5341434    1.3372906
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.1382658   0.7535273    1.7194454
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         0.5833333   0.2164902    1.5717928
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.8284024   0.3347910    2.0497877
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.5028736   0.1753482    1.4421695
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.9818531   0.5552627    1.7361792
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.7600315   0.3845398    1.5021798
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.9109063   0.4948749    1.6766870
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.2000000   0.5343660    2.6947824
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.8120000   0.8646357    3.7973726
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.6106667   0.7549734    3.4362098
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.1858974   0.5239121    2.6843294
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.1583184   0.4788016    2.8022077
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.1053025   0.4733667    2.5808608
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         0.7741176   0.5453008    1.0989497
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         0.5600000   0.3655768    0.8578225
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         0.7064090   0.5111031    0.9763462
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.3257447   1.0354119    1.6974877
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.1291970   0.8747608    1.4576393
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.0554867   0.8083219    1.3782283
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.3584071   0.3645810    5.0613434
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.6505376   0.4909589    5.5488844
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         0.9602324   0.2580893    3.5725864
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.2698413   0.4562028    3.5346053
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         0.9803922   0.3267370    2.9417201
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.9708738   0.3235108    2.9136456
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.7011494   0.3951086    1.2442414
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.9492219   0.5275201    1.7080341
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.7635046   0.4236438    1.3760128
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.3200000   0.8267872    2.1074347
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.2568707   0.7812834    2.0219604
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.9864828   0.5913425    1.6456593
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         2.9870857   1.8551021    4.8098056
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         2.6604555   1.6127752    4.3887229
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         2.5647020   1.6182129    4.0647904
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.9514836   1.3825896    2.7544604
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.4650709   0.9833741    2.1827224
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.3154461   0.8946714    1.9341162
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000    1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         2.6390374   1.0063891    6.9203043
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         2.5029586   0.9701810    6.4573537
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         2.0539846   0.7722592    5.4630011


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.1505250    0.0890673    0.2119828
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0114634   -0.0689913    0.0919181
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0026852   -0.0336252    0.0282547
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0083433   -0.0263122    0.0096256
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0405932   -0.0176809    0.0988672
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0325267    0.0050699    0.0599835
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0100166   -0.0086360    0.0286692
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0097973    0.0018082    0.0177864
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0255502    0.0040693    0.0470311
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.1270595    0.0744026    0.1797164
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0173171   -0.0605323    0.0951664
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0155956   -0.0440554    0.0128642
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0026950   -0.0154332    0.0100432
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0267981   -0.0095965    0.0631927
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0064932   -0.0232033    0.0361898
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0199462   -0.0356977   -0.0041948
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0050644   -0.0016832    0.0118119
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0045343   -0.0130168    0.0220854
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0034146   -0.0374543    0.0442835
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0078868   -0.0241703    0.0083967
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0237402   -0.0291237    0.0766041
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0370963    0.0248287    0.0493640
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0093725    0.0033580    0.0153871
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0227793    0.0055372    0.0400215


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.5910088    0.2910303    0.7640607
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0335714   -0.2332518    0.2426655
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0446258   -0.7087239    0.3613695
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1266904   -0.4346973    0.1151923
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.1566480   -0.1005301    0.3537272
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.3404086   -0.0034360    0.5664289
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0798180   -0.0813311    0.2169513
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.1506252    0.0195075    0.2642089
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.3934180   -0.0362788    0.6449394
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.6679699    0.3062989    0.8410786
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0563492   -0.2342013    0.2784995
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.3753695   -1.2441425    0.1570762
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0823713   -0.5503815    0.2443618
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.2880795   -0.2235823    0.5857812
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0845873   -0.3957071    0.3996015
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.2876608   -0.5331048   -0.0815114
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.1125279   -0.0493892    0.2494618
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.1883143   -0.9922891    0.6693082
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0538462   -0.8692000    0.5210747
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1909935   -0.6558845    0.1433790
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.1239532   -0.1998796    0.3603875
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.5542746    0.3507122    0.6940169
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.2861640    0.0792256    0.4465943
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.5170550   -0.0591960    0.7797992
