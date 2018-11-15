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

**Outcome Variable:** ever_stunted

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

agecat        studyid                    country                        hhwealth_quart    ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  ---------------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    0        7      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    1       14      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    0        6      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    1       15      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    0        8      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    1       12      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    0        8      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    1       12      82
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                    0        6      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                    1       12      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                    0        9      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                    1       10      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                    0       10      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                    1        7      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                    0        4      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                    1       13      71
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    0        4      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    1        7      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    0        6      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    1        5      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    0        4      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    1        6      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    0        6      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    1        4      42
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                    0        2      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                    1        8      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                    0        2      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                    1        7      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                    0        0      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                    1        9      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                    0        2      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                    1        7      37
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    0        9      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    1        8      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    0        6      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    1       11      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    0        7      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    1       10      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    0        7      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    1       10      68
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0        1      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1       14      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0        2      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1       13      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0        2      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1       13      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0        2      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1       13      60
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                    0        6     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                    1       90     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                    0        6     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                    1       85     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                    0        8     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                    1       87     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                    0        8     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                    1       83     373
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4                    0       48     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4                    1       52     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1                    0       34     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1                    1       71     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2                    0       32     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2                    1       70     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3                    0       33     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3                    1       70     410
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    0      118     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    1       57     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    0       80     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    1      100     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    0       95     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    1       74     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    0      102     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    1       72     698
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0      361    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1      232    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0      498    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1      221    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0      310    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1      173    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0      388    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1      201    2384
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    0       53     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    1       98     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    0       42     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    1      109     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    0       47     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    1      103     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    0       54     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    1       96     602
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                    0       36     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                    1       16     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                    0       38     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                    1       21     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                    0       39     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                    1       13     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                    0       39     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                    1       13     215
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                    0      130    1278
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                    1      355    1278
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                    0       47    1278
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                    1      198    1278
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                    0       45    1278
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                    1      215    1278
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                    0       70    1278
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                    1      218    1278
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                    0      370    3057
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                    1      473    3057
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                    0      195    3057
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                    1      492    3057
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                    0      157    3057
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                    1      385    3057
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                    0      236    3057
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                    1      749    3057
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                    0       84     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                    1      133     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                    0       80     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                    1      124     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                    0       72     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                    1      127     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                    0       60     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                    1      137     817
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    0     4121   27212
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    1     2696   27212
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    0     2981   27212
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    1     3828   27212
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    0     3282   27212
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    1     3666   27212
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    0     3388   27212
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    1     3250   27212
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    0      644    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    1      637    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    0      486    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    1      891    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    0      523    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    1      825    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    0      616    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    1      804    5426
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    0       18      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    1        3      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    0       14      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    1        7      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    0       11      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    1        9      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    0       13      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    1        7      82
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                    0       12      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                    1        6      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                    0       13      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                    1        6      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                    0       11      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                    1        6      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                    0       10      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                    1        7      71
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    0       10      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    1        1      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    0        8      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    1        3      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    0        6      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    1        4      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    0        7      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    1        3      42
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                    0        6      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                    1        4      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                    0        5      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                    1        4      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                    0        1      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                    1        8      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                    0        6      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                    1        3      37
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    0       10      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    1        7      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    0       14      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    1        3      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    0       13      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    1        4      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    0       10      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    1        7      68
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0       10      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1        5      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0        9      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1        6      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0       14      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1        1      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0        6      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1        9      60
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                    0       31     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                    1       64     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                    0       55     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                    1       35     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                    0       46     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                    1       47     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                    0       48     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                    1       42     368
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4                    0       60     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4                    1       40     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1                    0       61     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1                    1       44     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2                    0       51     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2                    1       51     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3                    0       64     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3                    1       39     410
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    0      140     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    1       35     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    0      124     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    1       56     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    0      130     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    1       39     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    0      137     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    1       37     698
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0      448    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1      145    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0      598    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1      121    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0      385    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1       98    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0      488    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1      101    2384
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    0      113     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    1       38     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    0      104     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    1       47     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    0      109     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    1       41     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    0      109     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    1       41     602
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4                    0       40     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4                    1       12     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q1                    0       45     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q1                    1       14     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q2                    0       40     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q2                    1       12     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q3                    0       42     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q3                    1       10     215
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4                    0      277    1037
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4                    1      105    1037
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1                    0      127    1037
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1                    1       70    1037
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2                    0      132    1037
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2                    1       73    1037
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3                    0      165    1037
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3                    1       88    1037
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                    0      689    3057
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                    1      154    3057
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                    0      506    3057
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                    1      181    3057
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                    0      398    3057
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                    1      144    3057
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                    0      733    3057
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                    1      252    3057
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4                    0       50     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4                    1       23     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1                    0       45     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1                    1       23     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2                    0       39     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2                    1       25     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3                    0       40     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3                    1       24     269
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    0     4660   27146
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    1     2133   27146
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    0     3518   27146
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    1     3272   27146
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    0     3874   27146
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    1     3061   27146
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    0     3940   27146
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    1     2688   27146
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    0      858    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    1      343    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    0      768    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    1      508    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    0      812    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    1      467    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    0      901    5117
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    1      460    5117
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    0        7      56
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                    1       11      56
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    0        6      56
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                    1        8      56
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    0        8      56
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                    1        3      56
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    0        8      56
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                    1        5      56
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                    0        6      46
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                    1        6      46
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                    0        9      46
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                    1        4      46
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                    0       10      46
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                    1        1      46
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                    0        4      46
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                    1        6      46
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    0        4      31
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                    1        6      31
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    0        6      31
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                    1        2      31
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    0        4      31
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                    1        2      31
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    0        6      31
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                    1        1      31
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                    0        2      18
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                    1        4      18
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                    0        2      18
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                    1        3      18
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                    0        0      18
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                    1        1      18
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                    0        2      18
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                    1        4      18
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    0        9      47
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                    1        1      47
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    0        6      47
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                    1        8      47
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    0        7      47
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                    1        6      47
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    0        7      47
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                    1        3      47
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0        1      39
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1        9      39
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0        2      39
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1        7      39
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0        2      39
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1       12      39
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0        2      39
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1        4      39
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                    0        6     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                    1       26     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                    0        6     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                    1       50     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                    0        8     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                    1       40     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                    0        8     185
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                    1       41     185
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4                    0       48     236
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4                    1       12     236
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1                    0       34     236
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1                    1       27     236
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2                    0       32     236
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2                    1       19     236
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3                    0       33     236
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3                    1       31     236
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    0      105     455
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                    1       22     455
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    0       53     455
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                    1       44     455
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    0       76     455
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                    1       35     455
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    0       85     455
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                    1       35     455
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    0      276    1596
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                    1       87    1596
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    0      396    1596
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                    1      100    1596
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    0      244    1596
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                    1       75    1596
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    0      318    1596
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                    1      100    1596
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    0       51     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    1       60     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    0       42     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    1       62     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    0       44     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    1       62     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    0       50     426
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    1       55     426
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                    0       36     167
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                    1        4     167
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                    0       38     167
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                    1        7     167
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                    0       39     167
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                    1        1     167
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                    0       39     167
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                    1        3     167
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                    0       90     848
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                    1      250     848
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                    0       32     848
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                    1      128     848
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                    0       30     848
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                    1      142     848
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                    0       46     848
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                    1      130     848
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                    0      309    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                    1      319    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                    0      125    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                    1      311    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                    0      129    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                    1      241    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                    0      190    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                    1      497    2121
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                    0       83     710
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                    1      110     710
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                    0       72     710
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                    1      101     710
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                    0       69     710
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                    1      102     710
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                    0       60     710
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                    1      113     710
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    0     2805   10521
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    1      563   10521
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    0     1526   10521
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    1      556   10521
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    0     1841   10521
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    1      605   10521
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    0     2063   10521
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    1      562   10521
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    0      641    3644
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    1      294    3644
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    0      485    3644
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    1      383    3644
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    0      523    3644
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    1      358    3644
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    0      616    3644
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    1      344    3644


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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/d2aa5f0e-7d84-4355-9524-4cea80b3adaf/d805dd2a-8701-4c78-9fc7-d40c8ac065d8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d2aa5f0e-7d84-4355-9524-4cea80b3adaf/d805dd2a-8701-4c78-9fc7-d40c8ac065d8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d2aa5f0e-7d84-4355-9524-4cea80b3adaf/d805dd2a-8701-4c78-9fc7-d40c8ac065d8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d2aa5f0e-7d84-4355-9524-4cea80b3adaf/d805dd2a-8701-4c78-9fc7-d40c8ac065d8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                0.6666667   0.4638066   0.8695268
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            NA                0.7142857   0.5198819   0.9086895
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            NA                0.6000000   0.3839754   0.8160246
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            NA                0.6000000   0.3839754   0.8160246
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                0.4705882   0.2315552   0.7096213
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            NA                0.6470588   0.4182021   0.8759156
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            NA                0.5882353   0.3525455   0.8239251
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            NA                0.5882353   0.3525455   0.8239251
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.9375000   0.8890135   0.9859865
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.9340659   0.8830091   0.9851228
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.9157895   0.8598717   0.9717073
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.9120879   0.8538303   0.9703456
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.5200000   0.4219606   0.6180394
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.6761905   0.5865791   0.7658018
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.6862745   0.5961170   0.7764321
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.6796117   0.5893863   0.7698370
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.3257143   0.2562309   0.3951976
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.5555556   0.4829122   0.6281989
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.4378698   0.3630172   0.5127224
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.4137931   0.3405609   0.4870253
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.3912310   0.3519435   0.4305186
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.3073713   0.2736382   0.3411045
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.3581781   0.3154097   0.4009464
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.3412564   0.3029580   0.3795547
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.6490066   0.5728172   0.7251960
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.7218543   0.6503254   0.7933832
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.6866667   0.6123751   0.7609583
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.6400000   0.5631215   0.7168785
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                0.3076923   0.1819543   0.4334303
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1            NA                0.3559322   0.2334751   0.4783893
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2            NA                0.2500000   0.1320333   0.3679667
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3            NA                0.2500000   0.1320333   0.3679667
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.7319588   0.6925229   0.7713946
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.8081633   0.7588402   0.8574864
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.8269231   0.7809204   0.8729258
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.7569444   0.7073873   0.8065016
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.5610913   0.5275864   0.5945963
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.7161572   0.6824375   0.7498769
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.7103321   0.6721376   0.7485266
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.7604061   0.7337460   0.7870662
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.6129032   0.5480562   0.6777502
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.6078431   0.5408046   0.6748817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.6381910   0.5713869   0.7049950
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.6954315   0.6311256   0.7597373
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.3954819   0.3823268   0.4086369
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.5621971   0.5489919   0.5754023
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.5276339   0.5153823   0.5398854
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.4896053   0.4759953   0.5032153
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.4972678   0.4653216   0.5292139
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.6470588   0.6174425   0.6766751
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.6120178   0.5821650   0.6418706
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.5661972   0.5345861   0.5978082
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.3333333   0.1140095   0.5526571
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.3157895   0.1052928   0.5262861
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.3529412   0.1241566   0.5817258
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.4117647   0.1761492   0.6473802
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.6736842   0.5792728   0.7680956
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.3888889   0.2880355   0.4897423
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.5053763   0.4036245   0.6071282
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.4666667   0.3634570   0.5698764
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.4000000   0.3038645   0.4961355
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                0.4190476   0.3245577   0.5135376
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                0.5000000   0.4028488   0.5971512
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                0.3786408   0.2848533   0.4724282
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.2000000   0.1406938   0.2593062
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.3111111   0.2434319   0.3787904
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.2307692   0.1672020   0.2943365
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.2126437   0.1518026   0.2734847
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.2445194   0.2099191   0.2791197
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1682893   0.1409373   0.1956413
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.2028986   0.1670260   0.2387711
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.1714771   0.1410306   0.2019235
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.2516556   0.1823809   0.3209303
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.3112583   0.2373472   0.3851693
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.2733333   0.2019532   0.3447135
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.2733333   0.2019532   0.3447135
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                0.2307692   0.1159866   0.3455518
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q1            NA                0.2372881   0.1284822   0.3460941
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q2            NA                0.2307692   0.1159866   0.3455518
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q3            NA                0.1923077   0.0849384   0.2996770
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.2748691   0.2300775   0.3196608
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.3553299   0.2884634   0.4221965
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.3560976   0.2905170   0.4216781
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.3478261   0.2891096   0.4065426
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.1826809   0.1565925   0.2087693
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.2634643   0.2305187   0.2964100
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.2656827   0.2284912   0.3028741
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.2558376   0.2285844   0.2830907
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.3150685   0.2083053   0.4218317
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.3382353   0.2255769   0.4508937
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.3906250   0.2708712   0.5103788
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.3750000   0.2561710   0.4938290
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.3139997   0.3018204   0.3261790
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.4818851   0.4681961   0.4955741
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.4413843   0.4293693   0.4533992
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.4055522   0.3926612   0.4184432
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.2855953   0.2554710   0.3157196
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.3981191   0.3679695   0.4282687
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.3651290   0.3361578   0.3941002
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.3379868   0.3081575   0.3678160
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.8125000   0.6768992   0.9481008
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.8928571   0.8116295   0.9740847
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.8333333   0.7276180   0.9390487
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.8367347   0.7329656   0.9405037
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.2000000   0.0985728   0.3014272
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.4426230   0.3177131   0.5675328
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.3725490   0.2395750   0.5055230
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.4843750   0.3616768   0.6070732
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.1732283   0.1073373   0.2391194
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.4536082   0.3544263   0.5527902
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.3153153   0.2287822   0.4018484
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.2916667   0.2102530   0.3730804
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.2396694   0.1957417   0.2835971
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.2016129   0.1662938   0.2369320
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.2351097   0.1885593   0.2816601
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.2392344   0.1983241   0.2801448
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.5405405   0.4477220   0.6333591
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.5961538   0.5017415   0.6905662
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.5849057   0.4909935   0.6788178
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.5238095   0.4281692   0.6194498
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.7352941   0.6883720   0.7822162
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.8000000   0.7379839   0.8620161
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.8255814   0.7688379   0.8823249
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.7386364   0.6736854   0.8035874
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.5079618   0.4688520   0.5470716
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.7133028   0.6708451   0.7557604
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.6513514   0.6027832   0.6999195
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.7234352   0.6899795   0.7568909
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.5699482   0.5000520   0.6398444
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.5838150   0.5103109   0.6573192
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.5964912   0.5229070   0.6700754
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.6531792   0.5822051   0.7241533
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.1671615   0.1533364   0.1809866
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.2670509   0.2468976   0.2872042
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.2473426   0.2280343   0.2666509
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.2140952   0.1970483   0.2311422
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.3144385   0.2795663   0.3493107
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.4412442   0.4037706   0.4787179
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.4063564   0.3682207   0.4444921
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.3583333   0.3215420   0.3951246


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.6463415   0.5422228   0.7504601
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.5735294   0.4551072   0.6919516
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.9249330   0.8981563   0.9517096
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.6414634   0.5949863   0.6879405
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4340974   0.3973018   0.4708930
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3468960   0.3277853   0.3660067
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.6744186   0.6369554   0.7118819
0-24 months   ki1114097-CONTENT          PERU                           NA                   NA                0.2930233   0.2320422   0.3540043
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7715180   0.7484902   0.7945458
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6866209   0.6701747   0.7030670
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.6376989   0.6047193   0.6706785
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4938998   0.4860534   0.5017461
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.5818282   0.5658219   0.5978346
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3521127   0.2402231   0.4640023
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5108696   0.4597270   0.5620121
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.4243902   0.3764905   0.4722900
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2392550   0.2075826   0.2709275
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1950503   0.1791413   0.2109594
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2774086   0.2416141   0.3132032
0-6 months    ki1114097-CONTENT          PERU                           NA                   NA                0.2232558   0.1674626   0.2790491
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3240116   0.2955133   0.3525098
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2391233   0.2240003   0.2542464
0-6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3531599   0.2959376   0.4103821
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4108893   0.4034376   0.4183410
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3474692   0.3322601   0.3626783
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.8486486   0.7968646   0.9004327
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.3771186   0.3151523   0.4390850
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2989011   0.2567922   0.3410100
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2268170   0.2062654   0.2473687
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5610329   0.5138522   0.6082135
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7665094   0.7380190   0.7949999
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6449788   0.6246093   0.6653483
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.6000000   0.5639396   0.6360604
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2172797   0.2079084   0.2266510
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3784303   0.3598372   0.3970234


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1            Wealth Q4         1.0714286   0.7123007   1.6116217
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2            Wealth Q4         0.9000000   0.5617127   1.4420183
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3            Wealth Q4         0.9000000   0.5617127   1.4420183
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1            Wealth Q4         1.3750000   0.7404481   2.5533526
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2            Wealth Q4         1.2500000   0.6545492   2.3871392
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3            Wealth Q4         1.2500000   0.6545492   2.3871392
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.9963370   0.9241135   1.0742051
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.9768421   0.9017212   1.0582212
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.9728938   0.8961328   1.0562300
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.3003663   1.0327161   1.6373837
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.3197587   1.0488092   1.6607052
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.3069455   1.0378000   1.6458918
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         1.7056530   1.3280833   2.1905645
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         1.3443372   1.0227872   1.7669780
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         1.2704174   0.9628716   1.6761948
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.7856518   0.6770577   0.9116633
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.9155155   0.7832630   1.0700985
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.8722630   0.7503162   1.0140296
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.1122449   0.9538553   1.2969355
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0580272   0.9019108   1.2411667
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.9861224   0.8336552   1.1664744
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         1.1567797   0.6780378   1.9735466
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         0.8125000   0.4352388   1.5167679
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         0.8125000   0.4352388   1.5167679
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.1041104   1.0177865   1.1977558
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.1297400   1.0455504   1.2207086
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.0341354   0.9500670   1.1256426
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.2763647   1.1829036   1.3772103
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.2659830   1.1682346   1.3719102
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.3552269   1.2645586   1.4523962
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         0.9917441   0.8511870   1.1555114
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.0412589   0.8972654   1.2083606
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.1346513   0.9859095   1.3058336
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.4215495   1.3669754   1.4783025
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.3341543   1.2839629   1.3863077
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.2379968   1.1891429   1.2888577
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.3012282   1.2040702   1.4062259
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.2307611   1.1362571   1.3331250
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.1386163   1.0463962   1.2389639
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         0.9473684   0.3713237   2.4170471
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         1.0588235   0.4204262   2.6665969
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         1.2352941   0.5165046   2.9543816
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.5772569   0.4298803   0.7751589
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.7501680   0.5869778   0.9587279
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.6927083   0.5331392   0.9000367
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.0476190   0.7534925   1.4565583
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.2500000   0.9176737   1.7026750
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.9466019   0.6703147   1.3367679
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         1.5555556   1.0768746   2.2470146
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         1.1538462   0.7697950   1.7295006
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         1.0632184   0.7041527   1.6053809
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.6882452   0.5548222   0.8537535
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.8297851   0.6616340   1.0406711
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.7012821   0.5588421   0.8800279
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.2368421   0.8598636   1.7790943
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0861404   0.7431858   1.5873566
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.0861404   0.7431858   1.5873566
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         1.0282486   0.5227530   2.0225519
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         1.0000000   0.4948911   2.0206464
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         0.8333333   0.3945282   1.7601894
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.2927242   1.0078505   1.6581188
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.2955168   1.0130853   1.6566856
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.2654244   1.0007772   1.6000554
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.4422106   1.1928649   1.7436773
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.4543538   1.1907540   1.7763071
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.4004615   1.1719149   1.6735791
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         1.0735294   0.6675140   1.7265038
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.2398098   0.7850575   1.9579818
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.1902174   0.7484142   1.8928254
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.5346674   1.4660968   1.6064452
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.4056837   1.3418532   1.4725507
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.2915687   1.2331266   1.3527806
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.3939973   1.2230842   1.5887937
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.2784838   1.1253143   1.4525016
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.1834464   1.0292581   1.3607330
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         1.0989011   0.9086750   1.3289500
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.0256410   0.8316727   1.2648479
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         1.0298273   0.8364943   1.2678440
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         2.2131148   1.2386645   3.9541594
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.8627451   1.0019029   3.4632290
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         2.4218750   1.3739104   4.2691857
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         2.6185567   1.6885769   4.0607208
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         1.8202293   1.1387434   2.9095534
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         1.6837121   1.0504294   2.6987884
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.8412125   0.6528223   1.0839678
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.9809750   0.7490018   1.2847926
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.9981851   0.7768658   1.2825556
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.1028846   0.8731344   1.3930896
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0820755   0.8553843   1.3688436
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.9690476   0.7542076   1.2450859
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.0880000   0.9840624   1.2029156
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.1227907   1.0222733   1.2331917
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.0045455   0.9011229   1.1198379
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.4042449   1.2740246   1.5477752
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.2822842   1.1519556   1.4273577
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.4241922   1.3018550   1.5580257
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         1.0243300   0.8592286   1.2211557
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.0465710   0.8794765   1.2454122
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.1460326   0.9728329   1.3500681
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.5975621   1.4334563   1.7804552
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.4796623   1.3247642   1.6526719
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.2807687   1.1438855   1.4340320
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.4032767   1.2215609   1.6120241
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.2923240   1.1161640   1.4962865
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.1395975   0.9786272   1.3270452


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0203252   -0.1961517    0.1555013
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.1029412   -0.1034377    0.3093200
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0125670   -0.0556692    0.0305351
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.1214634    0.0373017    0.2056252
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.1083831    0.0470564    0.1697099
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0443351   -0.0781117   -0.0105584
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0254120   -0.0401339    0.0909579
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0146691   -0.1236694    0.0943313
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0395592    0.0094747    0.0696438
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.1255295    0.0977099    0.1533492
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0247957   -0.0305123    0.0801037
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0984179    0.0877513    0.1090844
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0845605    0.0573174    0.1118036
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0187793   -0.1715677    0.2091264
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.1628146   -0.2460432   -0.0795861
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0243902   -0.0594436    0.1082241
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0392550   -0.0132495    0.0917595
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0494691   -0.0787043   -0.0202338
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0257530   -0.0348504    0.0863564
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0075134   -0.1070869    0.0920601
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0491425    0.0125320    0.0857529
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0564424    0.0333352    0.0795497
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0380914   -0.0540297    0.1302124
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0968896    0.0867568    0.1070223
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0618739    0.0354768    0.0882709
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0361486   -0.0851282    0.1574255
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.1771186    0.0827980    0.2714393
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.1256728    0.0649183    0.1864272
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0128524   -0.0512483    0.0255435
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0204923   -0.0592048    0.1001895
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0312153   -0.0041102    0.0665408
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.1370170    0.1047879    0.1692461
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0300518   -0.0293602    0.0894638
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0501182    0.0383766    0.0618598
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0639918    0.0332041    0.0947795


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0314465   -0.3428961    0.2077705
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.1794872   -0.2757414    0.4722745
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0135870   -0.0613168    0.0319963
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.1893536    0.0453406    0.3116419
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.2496747    0.0939362    0.3786441
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1278050   -0.2295548   -0.0344754
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0376798   -0.0646606    0.1301828
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0500611   -0.4964290    0.2631604
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0512745    0.0112993    0.0896335
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.1828222    0.1406470    0.2229275
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0388830   -0.0519420    0.1218662
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.1992669    0.1771833    0.2207577
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.1453358    0.0969193    0.1911566
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0533333   -0.6757167    0.4651973
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.3187010   -0.4982213   -0.1606912
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0574713   -0.1623453    0.2357173
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.1640719   -0.0862152    0.3566874
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.2536220   -0.4122038   -0.1128480
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0928342   -0.1540516    0.2869038
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0336538   -0.5913044    0.3285758
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.1516688    0.0309755    0.2573297
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.2360390    0.1337103    0.3262803
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.1078587   -0.1951078    0.3340215
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.2358046    0.2106476    0.2601598
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.1780701    0.0982606    0.2508160
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0425955   -0.1117937    0.1755455
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.4696629    0.1569609    0.6663768
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.4204493    0.1832307    0.5887712
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0566641   -0.2402244    0.0997283
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0365261   -0.1165910    0.1686464
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0407240   -0.0066252    0.0858460
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.2124364    0.1599614    0.2616335
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0500864   -0.0543726    0.1441963
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.2306621    0.1753772    0.2822406
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.1690980    0.0837781    0.2464727
