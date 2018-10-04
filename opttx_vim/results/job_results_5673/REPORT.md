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
![](/tmp/96d4d6d7-7503-41f2-9878-dba751424624/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/96d4d6d7-7503-41f2-9878-dba751424624/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.6486019   0.4326947   0.8645092
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.6034230   0.3676972   0.8391489
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.9249506   0.8649388   0.9849625
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                0.5186172   0.4286198   0.6086145
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.3464486   0.2942838   0.3986134
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2967773   0.2666301   0.3269246
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.4454455   0.3627166   0.5281744
0-24 months   ki1114097-CONTENT          PERU                           optimal              NA                0.2301642   0.1239343   0.3363940
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.7067679   0.6697721   0.7437638
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.6060429   0.5774534   0.6346323
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.6076327   0.5426312   0.6726341
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.4549104   0.4443300   0.4654907
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.4879515   0.4591034   0.5167997
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.3566711   0.1091926   0.6041495
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.4022749   0.3180129   0.4865370
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                0.3650068   0.2768546   0.4531590
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1879039   0.1451595   0.2306482
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1694275   0.1421029   0.1967521
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.0818492   0.0371337   0.1265646
0-6 months    ki1114097-CONTENT          PERU                           optimal              NA                0.1836119   0.0833510   0.2838729
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.2272002   0.1910542   0.2633463
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.1948625   0.1741558   0.2155692
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                0.1923951   0.1094181   0.2753721
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.3787434   0.3695090   0.3879778
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.2676880   0.2469959   0.2883802
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.8471229   0.7510271   0.9432188
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                0.2030715   0.1029758   0.3031673
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1811721   0.1171409   0.2452032
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1450326   0.1156028   0.1744625
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.5295915   0.4347596   0.6244234
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.7144678   0.6686495   0.7602860
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.5412440   0.5071396   0.5753484
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.5729996   0.5033333   0.6426659
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1716816   0.1596095   0.1837537
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.3183971   0.2851862   0.3516079


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.6493541   0.5452354   0.7534728
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.6034230   0.4850008   0.7218452
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.9249308   0.8981541   0.9517074
0-24 months   ki1000108-IRC              INDIA                          observed             NA                0.6415364   0.5950593   0.6880135
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.4349930   0.3981974   0.4717886
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.3478208   0.3287101   0.3669316
0-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.6750086   0.6375454   0.7124719
0-24 months   ki1114097-CONTENT          PERU                           observed             NA                0.2920126   0.2310316   0.3529937
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.7702778   0.7472500   0.7933055
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6867080   0.6702618   0.7031541
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.6372994   0.6043198   0.6702790
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.4946196   0.4867696   0.5024696
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.5845928   0.5686037   0.6005819
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             NA                0.3482277   0.2363381   0.4601173
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.5128325   0.4616900   0.5639751
0-6 months    ki1000108-IRC              INDIA                          observed             NA                0.4222125   0.3743127   0.4701122
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.2392862   0.2076138   0.2709587
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1952261   0.1793171   0.2111352
0-6 months    ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.2794354   0.2436408   0.3152299
0-6 months    ki1114097-CONTENT          PERU                           observed             NA                0.2231305   0.1673372   0.2789237
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             NA                0.3273202   0.2988220   0.3558185
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.2396720   0.2245489   0.2547950
0-6 months    ki1148112-LCNI-5           MALAWI                         observed             NA                0.3539781   0.2967559   0.4112004
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.4113765   0.4039248   0.4188282
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.3493309   0.3341218   0.3645400
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.8474070   0.7956229   0.8991911
6-24 months   ki1000108-IRC              INDIA                          observed             NA                0.3777021   0.3157358   0.4396685
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.2991547   0.2570458   0.3412636
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2284204   0.2078688   0.2489721
6-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.5605073   0.5133267   0.6076880
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.7659783   0.7374878   0.7944688
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6448950   0.6245255   0.6652645
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.5991997   0.5631393   0.6352601
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2180343   0.2086765   0.2273921
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.3739943   0.3552924   0.3926962


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          0.9988417   0.7516324   1.3273574
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          1.0000000   0.6977709   1.4331352
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          1.0000214   0.9472595   1.0557221
0-24 months   ki1000108-IRC              INDIA                          optimal              observed          0.8083987   0.6977008   0.9366600
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.7964463   0.7012187   0.9046060
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.8532477   0.7836572   0.9290180
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          0.6599108   0.5615759   0.7754647
0-24 months   ki1114097-CONTENT          PERU                           optimal              observed          0.7881994   0.5291066   1.1741648
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          0.9175494   0.8831619   0.9532759
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          0.8825336   0.8495792   0.9167663
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          0.9534492   0.8697164   1.0452435
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          0.9197176   0.9049789   0.9346963
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          0.8346863   0.7947997   0.8765745
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          1.0242466   0.5582492   1.8792345
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          0.7844177   0.6529948   0.9422910
0-6 months    ki1000108-IRC              INDIA                          optimal              observed          0.8645098   0.7052561   1.0597244
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.7852683   0.6502565   0.9483125
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.8678525   0.7546812   0.9979947
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              observed          0.2929092   0.1744145   0.4919073
0-6 months    ki1114097-CONTENT          PERU                           optimal              observed          0.8228904   0.5115201   1.3237968
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          0.6941221   0.6129592   0.7860319
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          0.8130383   0.7458956   0.8862249
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          0.5435225   0.3666593   0.8056980
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          0.9206734   0.9056129   0.9359845
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          0.7662879   0.7190552   0.8166233
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          0.9996648   0.9063378   1.1026017
6-24 months   ki1000108-IRC              INDIA                          optimal              observed          0.5376499   0.3429003   0.8430074
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.6056133   0.4412048   0.8312861
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.6349373   0.5311559   0.7589964
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              observed          0.9448432   0.8089097   1.1036196
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          0.9327519   0.8896211   0.9779738
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          0.8392746   0.7975371   0.8831963
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          0.9562748   0.8625735   1.0601550
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          0.7874062   0.7412556   0.8364300
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              observed          0.8513421   0.7771052   0.9326708
