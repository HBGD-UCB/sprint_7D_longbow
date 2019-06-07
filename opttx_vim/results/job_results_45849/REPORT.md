---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      W: []
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
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** ever_stunted

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
![](/tmp/30a72854-2e61-4328-9df1-d54f04ebc454/4c2fc5b6-a753-415c-960b-e3bdbae01089/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/30a72854-2e61-4328-9df1-d54f04ebc454/4c2fc5b6-a753-415c-960b-e3bdbae01089/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.6775661   0.4452843   0.9098479
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.5160365   0.2488360   0.7832369
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.9359203   0.8891590   0.9826815
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                0.5193060   0.4241892   0.6144227
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.3485680   0.2872084   0.4099276
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.3153262   0.2820191   0.3486334
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.7059910   0.6340255   0.7779565
0-24 months   ki1114097-CONTENT          PERU                           optimal              NA                0.3243009   0.1921782   0.4564237
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.7468160   0.7060560   0.7875760
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.6071483   0.5758681   0.6384284
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.6592760   0.5966503   0.7219017
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.4791812   0.4679194   0.4904430
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.5309527   0.4997589   0.5621465
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.5212342   0.2627879   0.7796805
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.3922269   0.2889169   0.4955369
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                0.4291625   0.3314296   0.5268953
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2599178   0.1999656   0.3198700
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1601160   0.1320221   0.1882100
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.2155305   0.1476426   0.2834185
0-6 months    ki1114097-CONTENT          PERU                           optimal              NA                0.1855337   0.0802112   0.2908562
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.2923468   0.2499051   0.3347884
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2216876   0.1971706   0.2462046
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                0.4028072   0.2999510   0.5056634
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.4007470   0.3903066   0.4111875
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.3194502   0.2927001   0.3462003
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.8713116   0.7517521   0.9908712
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                0.2321483   0.1205427   0.3437538
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1818951   0.1171453   0.2466449
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2030496   0.1677485   0.2383508
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.5988348   0.5027178   0.6949518
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.7404058   0.6852418   0.7955699
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.5450319   0.5067851   0.5832788
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.5933246   0.5233571   0.6632920
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1862143   0.1709001   0.2015285
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.3189457   0.2842974   0.3535940


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.6463415   0.5422228   0.7504601
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.5735294   0.4551072   0.6919516
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.9249330   0.8981563   0.9517096
0-24 months   ki1000108-IRC              INDIA                          observed             NA                0.6414634   0.5949863   0.6879405
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.4340974   0.3973018   0.4708930
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.3468960   0.3277853   0.3660067
0-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.6744186   0.6369554   0.7118819
0-24 months   ki1114097-CONTENT          PERU                           observed             NA                0.2930233   0.2320422   0.3540043
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.7715180   0.7484902   0.7945458
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6866209   0.6701747   0.7030670
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.6376989   0.6047193   0.6706785
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.4938998   0.4860534   0.5017461
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.5818282   0.5658219   0.5978346
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             NA                0.3521127   0.2402231   0.4640023
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.5108696   0.4597270   0.5620121
0-6 months    ki1000108-IRC              INDIA                          observed             NA                0.4243902   0.3764905   0.4722900
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.2392550   0.2075826   0.2709275
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1950503   0.1791413   0.2109594
0-6 months    ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.2774086   0.2416141   0.3132032
0-6 months    ki1114097-CONTENT          PERU                           observed             NA                0.2232558   0.1674626   0.2790491
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             NA                0.3240116   0.2955133   0.3525098
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.2391233   0.2240003   0.2542464
0-6 months    ki1148112-LCNI-5           MALAWI                         observed             NA                0.3531599   0.2959376   0.4103821
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.4108893   0.4034376   0.4183410
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.3474692   0.3322601   0.3626783
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.8486486   0.7968646   0.9004327
6-24 months   ki1000108-IRC              INDIA                          observed             NA                0.3771186   0.3151523   0.4390850
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.2989011   0.2567922   0.3410100
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2268170   0.2062654   0.2473687
6-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.5610329   0.5138522   0.6082135
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.7665094   0.7380190   0.7949999
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6449788   0.6246093   0.6653483
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.6000000   0.5639396   0.6360604
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2172797   0.2079084   0.2266510
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.3784303   0.3598372   0.3970234


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           0.9539164   0.7083704   1.284577
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.1114126   0.7100809   1.739574
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           0.9882604   0.9439428   1.034659
0-24 months   ki1000108-IRC              INDIA                          observed             optimal           1.2352321   1.0552022   1.445977
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.2453736   1.0701139   1.449337
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.1001177   1.0065773   1.202351
0-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           0.9552793   0.8732037   1.045069
0-24 months   ki1114097-CONTENT          PERU                           observed             optimal           0.9035535   0.6441382   1.267444
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.0330765   0.9899543   1.078077
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.1308949   1.0841678   1.179636
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           0.9672715   0.8896402   1.051677
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0307161   1.0134275   1.048300
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.0958194   1.0422907   1.152097
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             optimal           0.6755364   0.4480738   1.018469
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.3024848   1.0318874   1.644042
0-6 months    ki1000108-IRC              INDIA                          observed             optimal           0.9888802   0.8170900   1.196789
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           0.9205025   0.7628776   1.110696
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.2181811   1.0449455   1.420136
0-6 months    ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.2870967   0.9740118   1.700819
0-6 months    ki1114097-CONTENT          PERU                           observed             optimal           1.2033169   0.7336308   1.973706
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.1083125   0.9919515   1.238323
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0786499   0.9851306   1.181047
0-6 months    ki1148112-LCNI-5           MALAWI                         observed             optimal           0.8767467   0.6966517   1.103399
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0253083   1.0071463   1.043798
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.0877101   1.0164633   1.163951
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           0.9739898   0.8577790   1.105945
6-24 months   ki1000108-IRC              INDIA                          observed             optimal           1.6244733   1.0509470   2.510986
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.6432609   1.1935780   2.262363
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.1170522   0.9645056   1.293726
6-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           0.9368742   0.8156972   1.076053
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.0352558   0.9737383   1.100660
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.1833779   1.1168942   1.253819
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.0112509   0.9143318   1.118443
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.1668262   1.0882364   1.251092
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.1865039   1.0785726   1.305236


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.0312247   -0.2330945   0.1706452
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0574930   -0.1724077   0.2873937
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                -0.0109873   -0.0538756   0.0319011
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.1221575    0.0412296   0.2030853
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0855294    0.0323908   0.1386680
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0315697    0.0035356   0.0596039
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0315724   -0.0948847   0.0317399
0-24 months   ki1114097-CONTENT          PERU                           optimal              NA                -0.0312777   -0.1415961   0.0790407
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0247020   -0.0070708   0.0564748
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0794726    0.0540658   0.1048794
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                -0.0215771   -0.0766609   0.0335067
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0147186    0.0066156   0.0228216
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0508755    0.0243427   0.0774084
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.1691215   -0.3849777   0.0467348
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.1186427    0.0278326   0.2094528
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                -0.0047722   -0.0867023   0.0771578
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0206628   -0.0695798   0.0282541
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0349343    0.0102771   0.0595915
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0618781    0.0018161   0.1219401
0-6 months    ki1114097-CONTENT          PERU                           optimal              NA                 0.0377221   -0.0540002   0.1294444
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0316648   -0.0007338   0.0640634
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0174357   -0.0026990   0.0375705
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                -0.0496473   -0.1411051   0.0418105
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0101422    0.0029862   0.0172983
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0280190    0.0064479   0.0495902
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                -0.0226630   -0.1332830   0.0879571
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.1449704    0.0434744   0.2464664
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1170060    0.0573816   0.1766304
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0237674   -0.0060878   0.0536226
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0378019   -0.1207376   0.0451338
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0261036   -0.0191762   0.0713834
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0999468    0.0687807   0.1311130
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0066754   -0.0530985   0.0664494
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0310654    0.0180210   0.0441098
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0594846    0.0290165   0.0899527


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.0483099   -0.4116908   0.2215338
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.1002441   -0.4082903   0.4251465
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                -0.0118790   -0.0593863   0.0334978
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.1904356    0.0523143   0.3084262
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1970281    0.0655200   0.3100292
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0910064    0.0065343   0.1682959
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0468143   -0.1452081   0.0431258
0-24 months   ki1114097-CONTENT          PERU                           optimal              NA                -0.1067413   -0.5524618   0.2110104
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0320174   -0.0101477   0.0724225
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.1157445    0.0776336   0.1522807
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                -0.0338359   -0.1240499   0.0491378
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0298008    0.0132496   0.0460744
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0874408    0.0405748   0.1320176
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.4803050   -1.2317750   0.0181345
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.2322367    0.0309020   0.3917432
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                -0.0112449   -0.2238553   0.1644305
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0863632   -0.3108262   0.0996633
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1791040    0.0430123   0.2958422
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.2230576   -0.0266816   0.4120480
0-6 months    ki1114097-CONTENT          PERU                           optimal              NA                 0.1689637   -0.3630834   0.4933389
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0977274   -0.0081138   0.1924564
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0729151   -0.0150938   0.1532937
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                -0.1405803   -0.4354376   0.0937095
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0246836    0.0070956   0.0419600
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0806374    0.0161966   0.1408572
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                -0.0267048   -0.1658015   0.0957957
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.3844159    0.0484772   0.6017501
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.3914539    0.1621829   0.5579842
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1047867   -0.0368006   0.2270386
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0673791   -0.2259451   0.0706777
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0340552   -0.0269700   0.0914541
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.1549614    0.1046600   0.2024368
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0111257   -0.0936949   0.1059003
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.1429744    0.0810820   0.2006981
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.1571877    0.0728487   0.2338548
