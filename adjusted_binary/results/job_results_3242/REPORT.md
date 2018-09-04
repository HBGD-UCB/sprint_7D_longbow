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
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    0      106    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    1      196    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    0       84    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    1      218    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    0       94    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    1      206    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    0      108    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    1      192    1204
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    0     8226   54365
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    1     5388   54365
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    0     5955   54365
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    1     7646   54365
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    0     6555   54365
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    1     7328   54365
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    0     6768   54365
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    1     6499   54365
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    0     1243   10548
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    1     1239   10548
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    0      932   10548
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    1     1722   10548
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    0     1008   10548
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    1     1622   10548
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    0     1200   10548
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    1     1582   10548
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
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    0      226    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    1       76    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    0      208    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    1       94    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    0      218    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    1       82    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    0      218    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    1       82    1204
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    0     9320   54292
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    1     4266   54292
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    0     7036   54292
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    1     6544   54292
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    0     7748   54292
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    1     6122   54292
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    0     7880   54292
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    1     5376   54292
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    0     1716   10234
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    1      686   10234
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    0     1536   10234
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    1     1016   10234
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    0     1624   10234
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    1      934   10234
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    0     1802   10234
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    1      920   10234
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
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    0      102     852
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                    1      120     852
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    0       84     852
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                    1      124     852
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    0       88     852
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                    1      124     852
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    0      100     852
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                    1      110     852
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    0     5594   20983
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                    1     1122   20983
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    0     3045   20983
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                    1     1102   20983
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    0     3673   20983
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                    1     1206   20983
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    0     4118   20983
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                    1     1123   20983
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    0     1237    6984
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                    1      553    6984
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    0      930    6984
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                    1      706    6984
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    0     1008    6984
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                    1      688    6984
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    0     1200    6984
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                    1      662    6984


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
![](/tmp/6ea63439-5d14-420c-93d7-1f5a7367dcdc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6ea63439-5d14-420c-93d7-1f5a7367dcdc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6ea63439-5d14-420c-93d7-1f5a7367dcdc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6ea63439-5d14-420c-93d7-1f5a7367dcdc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.5236985   0.4356498   0.6117472
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.6884409   0.6092208   0.7676609
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.6796534   0.5977450   0.7615619
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.6706080   0.5875854   0.7536305
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.3105861   0.2562632   0.3649090
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.4567006   0.3957073   0.5176940
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.4086220   0.3464476   0.4707965
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.3807383   0.3188035   0.4426731
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.3864487   0.3522856   0.4206119
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.3164558   0.2862138   0.3466978
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.3604956   0.3236670   0.3973242
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.3425507   0.3082302   0.3768711
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.6457306   0.5707114   0.7207498
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.7171581   0.6472282   0.7870880
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.6833144   0.6102482   0.7563805
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.6339414   0.5587674   0.7091153
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                0.3101929   0.1929809   0.4274049
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1            NA                0.3488276   0.2318850   0.4657702
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2            NA                0.2711024   0.1629692   0.3792356
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3            NA                0.2351554   0.1280670   0.3422439
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.7236817   0.6877337   0.7596297
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.7760398   0.7332094   0.8188702
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.8056785   0.7663938   0.8449632
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.7436579   0.7020810   0.7852349
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.6087133   0.5805085   0.6369181
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.7001990   0.6711164   0.7292816
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.6974655   0.6665446   0.7283864
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.7456769   0.7220691   0.7692847
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.6146330   0.5517881   0.6774778
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.6043022   0.5396390   0.6689654
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.6359519   0.5711127   0.7007910
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.6910269   0.6293358   0.7527181
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.4772351   0.4667806   0.4876896
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.5159661   0.5048938   0.5270385
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.5093436   0.4992607   0.5194265
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.4892462   0.4783991   0.5000933
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.5263101   0.4979012   0.5547191
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.6307985   0.6046127   0.6569843
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.6045143   0.5777060   0.6313227
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.5642354   0.5364517   0.5920191
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.3333333   0.1140095   0.5526571
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.3157895   0.1052928   0.5262861
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.3529412   0.1241566   0.5817258
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.4117647   0.1761492   0.6473802
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.7194513   0.6422405   0.7966622
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.4278335   0.3458221   0.5098448
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.5312365   0.4475838   0.6148892
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.4984911   0.4136817   0.5833004
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.3981959   0.3127698   0.4836219
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                0.4344890   0.3504631   0.5185150
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                0.4943917   0.4078486   0.5809349
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                0.3741126   0.2882245   0.4600008
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.2066442   0.1635249   0.2497636
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.2409542   0.1891890   0.2927193
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.2575355   0.2056861   0.3093849
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.2139592   0.1641484   0.2637699
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.2387164   0.2082447   0.2691881
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1758073   0.1509924   0.2006222
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.2028379   0.1712359   0.2344399
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.1697240   0.1418527   0.1975953
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.2572445   0.1907031   0.3237859
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.3237940   0.2535353   0.3940527
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.2769454   0.2084130   0.3454778
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.2797592   0.2119450   0.3475733
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                0.2324988   0.1206889   0.3443088
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q1            NA                0.2318610   0.1294588   0.3342632
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q2            NA                0.2508506   0.1400139   0.3616874
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q3            NA                0.1778204   0.0818450   0.2737958
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.2653292   0.2277789   0.3028794
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.2969333   0.2455210   0.3483456
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.2966921   0.2498229   0.3435614
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.3187761   0.2744950   0.3630573
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.2268169   0.2052642   0.2483696
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.2567504   0.2312351   0.2822656
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.2554370   0.2281117   0.2827623
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.2499422   0.2277686   0.2721157
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.3167537   0.2122537   0.4212538
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.3195675   0.2108915   0.4282436
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.3761147   0.2627687   0.4894607
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.3552100   0.2413741   0.4690459
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.3907784   0.3814093   0.4001475
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.4340040   0.4236496   0.4443583
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.4228168   0.4137013   0.4319323
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.4043780   0.3949509   0.4138052
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.3076132   0.2835000   0.3317264
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.3726464   0.3481952   0.3970976
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.3538619   0.3314136   0.3763103
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.3344479   0.3118005   0.3570953
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.8125000   0.6768992   0.9481008
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.8928571   0.8116295   0.9740847
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.8333333   0.7276180   0.9390487
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.8367347   0.7329656   0.9405037
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1981658   0.0981080   0.2982236
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.4501207   0.3286144   0.5716270
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.3699566   0.2393001   0.5006130
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.4821371   0.3617598   0.6025145
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.1705653   0.1084371   0.2326934
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.4178618   0.3247766   0.5109470
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.2997769   0.2168564   0.3826974
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.2752642   0.1970668   0.3534616
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.2504445   0.2086020   0.2922870
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.2117506   0.1777991   0.2457020
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.2485758   0.2046414   0.2925101
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.2469163   0.2079375   0.2858951
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.5247711   0.4358235   0.6137188
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.5755832   0.4857711   0.6653953
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.5732397   0.4823947   0.6640848
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.5015558   0.4108754   0.5922361
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.7325251   0.6884976   0.7765526
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.7842770   0.7288308   0.8397232
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.8301646   0.7789652   0.8813640
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.7494378   0.6928308   0.8060449
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.5573088   0.5233072   0.5913103
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.7229316   0.6870796   0.7587835
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.6681488   0.6288425   0.7074550
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.7180073   0.6881067   0.7479080
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.5739081   0.5047130   0.6431033
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.5855840   0.5130893   0.6580788
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.5975823   0.5249359   0.6702287
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.6532656   0.5834774   0.7230537
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.1850291   0.1726092   0.1974489
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.2441806   0.2280169   0.2603444
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.2355166   0.2181419   0.2528913
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.2142280   0.1991936   0.2292623
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.3127483   0.2797023   0.3457943
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.4135117   0.3778646   0.4491588
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.3931783   0.3572308   0.4291259
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.3508605   0.3159434   0.3857776


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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4940863   0.4862363   0.5019363
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.5844710   0.5684819   0.6004601
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2169852   0.2076274   0.2263430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3735682   0.3548662   0.3922701


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
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.3145747   1.0794534   1.6009091
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.2977952   1.0617997   1.5862431
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.2805229   1.0452275   1.5687867
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         1.4704477   1.1927447   1.8128075
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         1.3156482   1.0554203   1.6400387
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         1.2258704   0.9765736   1.5388068
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.8188817   0.7208188   0.9302854
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.9328421   0.8168875   1.0652560
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.8864065   0.7773104   1.0108144
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.1106151   0.9543283   1.2924963
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0582035   0.9036609   1.2391756
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.9817428   0.8316096   1.1589800
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         1.1245506   0.6859964   1.8434705
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         0.8739802   0.5122812   1.4910589
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         0.7580943   0.4269829   1.3459717
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.0723496   0.9984519   1.1517167
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.1133051   1.0405461   1.1911517
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.0276036   0.9567430   1.1037126
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.1502936   1.0829910   1.2217788
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.1458030   1.0772048   1.2187695
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.2250051   1.1604858   1.2931115
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         0.9831919   0.8481736   1.1397034
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.0346855   0.8957951   1.1951106
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.1242920   0.9819194   1.2873078
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.0811572   1.0553721   1.1075722
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.0672803   1.0420876   1.0930820
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.0251681   1.0000127   1.0509563
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.1985301   1.1224921   1.2797189
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.1485896   1.0731485   1.2293341
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.0720589   1.0020414   1.1469687
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         0.9473684   0.3713237   2.4170471
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         1.0588235   0.4204262   2.6665969
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         1.2352941   0.5165046   2.9543816
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.5946664   0.4776392   0.7403665
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.7383912   0.6110053   0.8923353
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.6928767   0.5670417   0.8466363
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.0911440   0.8271566   1.4393833
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.2415793   0.9512575   1.6205067
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.9395191   0.6936443   1.2725487
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         1.1660338   0.8878442   1.5313890
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         1.2462747   0.9574755   1.6221832
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         1.0353986   0.7777812   1.3783442
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.7364692   0.6112106   0.8873978
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.8497022   0.6969823   1.0358855
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.7109856   0.5791439   0.8728409
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.2587012   0.8988670   1.7625842
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0765843   0.7532067   1.5387988
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.0875222   0.7641844   1.5476692
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q1            Wealth Q4         0.9972565   0.5240606   1.8977202
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q2            Wealth Q4         1.0789328   0.5674180   2.0515669
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q3            Wealth Q4         0.7648228   0.3759131   1.5560881
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.1191129   0.9076293   1.3798736
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.1182039   0.9199354   1.3592042
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.2014365   1.0023261   1.4400998
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.1319719   0.9974540   1.2846312
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.1261815   0.9868773   1.2851493
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.1019557   0.9797419   1.2394145
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         1.0088832   0.6298588   1.6159898
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.1874040   0.7614398   1.8516609
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.1214075   0.7098161   1.7716627
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.1106141   1.0826224   1.1393294
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.0819861   1.0552526   1.1093969
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.0348015   1.0100767   1.0601314
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.2114121   1.1016718   1.3320839
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.1503470   1.0537722   1.2557726
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.0872352   0.9926687   1.1908105
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         1.0989011   0.9086750   1.3289500
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.0256410   0.8316727   1.2648479
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         1.0298273   0.8364943   1.2678440
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         2.2714347   1.2818260   4.0250513
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.8669041   1.0088126   3.4548844
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         2.4329985   1.3838973   4.2773996
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         2.4498645   1.6042083   3.7413073
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         1.7575495   1.1153917   2.7694129
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         1.6138349   1.0198441   2.5537856
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.8454990   0.6718993   1.0639521
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.9925384   0.7799524   1.2630674
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.9859124   0.7852574   1.2378402
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.0968271   0.8710820   1.3810752
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0923614   0.8662139   1.3775505
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.9557609   0.7458273   1.2247863
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.0706486   0.9774149   1.1727756
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.1332916   1.0407451   1.2340677
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.0230882   0.9310019   1.1242828
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.2971831   1.2008762   1.4012137
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.1988843   1.1035929   1.3024039
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.2883475   1.1985696   1.3848500
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         1.0203445   0.8586948   1.2124248
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.0412508   0.8776734   1.2353151
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.1382755   0.9692571   1.3367671
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.3196879   1.2076637   1.4421035
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.2728625   1.1566457   1.4007566
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.1578069   1.0540158   1.2718185
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.3221869   1.1560745   1.5121673
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.2571718   1.0925175   1.4466412
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.1218622   0.9710577   1.2960864


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0203252   -0.1961517    0.1555013
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.1029412   -0.1034377    0.3093200
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0125670   -0.0556692    0.0305351
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.1177649    0.0444377    0.1910921
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.1235113    0.0763868    0.1706358
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0395528   -0.0684550   -0.0106505
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0286880   -0.0358376    0.0932136
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0171696   -0.1160964    0.0817571
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0478363    0.0217879    0.0738848
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0779076    0.0554206    0.1003945
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0230659   -0.0303808    0.0765126
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0168512    0.0095303    0.0241720
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0581609    0.0348264    0.0814953
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0187793   -0.1715677    0.2091264
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.2085818   -0.2783796   -0.1387840
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0261944   -0.0458319    0.0982207
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0326108   -0.0034725    0.0686940
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0436661   -0.0689760   -0.0183562
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0201641   -0.0379312    0.0782594
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0092430   -0.1043154    0.0858294
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0586824    0.0308799    0.0864849
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0123064   -0.0049378    0.0295507
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0364061   -0.0530263    0.1258385
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0201109    0.0138025    0.0264192
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0398560    0.0210926    0.0586195
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0361486   -0.0851282    0.1574255
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.1789528    0.0856910    0.2722147
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.1283358    0.0708034    0.1858683
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0236274   -0.0598778    0.0126229
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0362617   -0.0402526    0.1127760
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0339843    0.0016555    0.0663131
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0876700    0.0604089    0.1149312
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0260919   -0.0325453    0.0847290
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0319561    0.0212757    0.0426365
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0608198    0.0318024    0.0898373


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4            NA                -0.0314465   -0.3428961    0.2077705
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4            NA                 0.1794872   -0.2757414    0.4722745
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0135870   -0.0613168    0.0319963
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.1835879    0.0595176    0.2912905
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.2845244    0.1692412    0.3838100
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1140191   -0.2009897   -0.0333465
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0425374   -0.0581472    0.1336416
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0585947   -0.4562252    0.2304605
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0620028    0.0274397    0.0953377
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.1134652    0.0799122    0.1457946
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0361705   -0.0514190    0.1164634
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0341057    0.0191928    0.0487919
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0995103    0.0585647    0.1386750
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0533333   -0.6757167    0.4651973
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.4082877   -0.5673964   -0.2653303
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0617224   -0.1242610    0.2169391
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.1363013   -0.0255564    0.2726139
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.2238710   -0.3613100   -0.1003079
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0726874   -0.1618840    0.2599014
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4            NA                -0.0414011   -0.5671765    0.3079808
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.1811120    0.0909613    0.2623224
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0514648   -0.0231261    0.1206175
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.1030868   -0.1894816    0.3236942
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0489448    0.0335136    0.0641296
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.1147037    0.0587929    0.1672932
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0425955   -0.1117937    0.1755455
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.4745266    0.1663620    0.6687743
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.4293589    0.2085998    0.5885378
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.1041696   -0.2763542    0.0447867
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0646339   -0.0821695    0.1915224
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0443364    0.0011055    0.0856964
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.1359270    0.0923890    0.1773764
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0434864   -0.0594816    0.1364472
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.1472732    0.0977763    0.1940546
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.1628079    0.0817671    0.2366963
