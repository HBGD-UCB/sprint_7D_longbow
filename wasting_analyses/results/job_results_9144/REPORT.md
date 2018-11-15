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

**Outcome Variable:** ever_wasted

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

agecat        studyid                    country                        hhwealth_quart    ever_wasted   n_cell       n
------------  -------------------------  -----------------------------  ---------------  ------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                   0       17      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                   1        4      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                   0       11      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                   1       10      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                   0        9      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                   1       11      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                   0       15      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                   1        5      82
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                   0        8      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                   1       10      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                   0        7      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                   1       12      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                   0       10      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                   1        7      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                   0        7      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                   1       10      71
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                   0       10      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                   1        1      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                   0        7      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                   1        4      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                   0        8      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                   1        2      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                   0        7      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                   1        3      42
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                   0        8      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                   1        2      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                   0        8      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                   1        1      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                   0        7      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                   1        2      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                   0        8      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                   1        1      37
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                   0       11      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                   1        6      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                   0       10      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                   1        7      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                   0       13      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                   1        4      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                   0       13      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                   1        4      68
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0       13      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1        2      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0       13      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1        2      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0       12      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1        3      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0       11      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1        4      60
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                   0       44     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                   1       52     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                   0       37     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                   1       54     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                   0       26     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                   1       69     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                   0       37     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                   1       54     373
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4                   0       32     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4                   1       68     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1                   0       34     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1                   1       71     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2                   0       42     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2                   1       60     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3                   0       33     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3                   1       70     410
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                   0      115     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                   1       60     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                   0      100     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                   1       80     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                   0      114     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                   1       55     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                   0      124     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                   1       50     698
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0      447    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1      146    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0      558    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1      161    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0      367    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1      116    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0      448    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1      141    2384
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   0      124    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   1      178    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   0      122    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   1      180    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   0      120    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   1      180    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   0      126    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   1      174    1204
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                   0       50     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                   1        2     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                   0       57     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                   1        2     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                   0       49     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                   1        3     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                   0       51     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                   1        1     215
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                   0      366    1263
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                   1      110    1263
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                   0      166    1263
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                   1       78    1263
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                   0      190    1263
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                   1       68    1263
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                   0      211    1263
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                   1       74    1263
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                   0      531    3044
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                   1      309    3044
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                   0      372    3044
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                   1      309    3044
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                   0      330    3044
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                   1      210    3044
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                   0      582    3044
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                   1      401    3044
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                   0      208     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                   1        9     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                   0      180     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                   1       24     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                   0      180     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                   1       19     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                   0      183     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                   1       14     817
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   0    10327   53814
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   1     3237   53814
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   0     9779   53814
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   1     3624   53814
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   0    10056   53814
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   1     3659   53814
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   0     9756   53814
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   1     3376   53814
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   0     1799   10549
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   1      683   10549
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   0     1698   10549
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   1      957   10549
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   0     1788   10549
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   1      842   10549
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   0     1966   10549
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   1      816   10549
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                   0       19      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                   1        2      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                   0       13      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                   1        8      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                   0       14      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                   1        6      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                   0       17      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                   1        3      82
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                   0       12      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                   1        6      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                   0        9      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                   1       10      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                   0       10      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                   1        7      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                   0       10      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                   1        7      71
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                   0       11      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                   1        0      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                   0        8      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                   1        3      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                   0        9      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                   1        1      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                   0        8      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                   1        2      42
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                   0       10      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                   1        0      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                   0        8      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                   1        1      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                   0        9      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                   1        0      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                   0        9      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                   1        0      37
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                   0       15      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                   1        2      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                   0       14      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                   1        3      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                   0       14      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                   1        3      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                   0       15      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                   1        2      68
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0       14      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1        1      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0       15      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1        0      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0       13      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1        2      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0       13      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1        2      60
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                   0       54     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                   1       41     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                   0       45     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                   1       45     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                   0       34     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                   1       59     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                   0       44     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                   1       46     368
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4                   0       45     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4                   1       55     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1                   0       47     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1                   1       58     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2                   0       50     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2                   1       52     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3                   0       45     410
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3                   1       58     410
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                   0      127     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                   1       48     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                   0      122     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                   1       58     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                   0      131     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                   1       38     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                   0      138     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                   1       36     698
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0      506    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1       87    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0      613    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1      106    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0      429    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1       54    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0      504    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1       85    2384
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   0      218    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   1       84    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   0      220    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   1       82    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   0      200    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   1      100    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   0      210    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   1       90    1204
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4                   0       51     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4                   1        1     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q1                   0       59     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q1                   1        0     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q2                   0       49     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q2                   1        3     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q3                   0       52     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q3                   1        0     215
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4                   0      297    1015
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4                   1       72    1015
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1                   0      146    1015
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1                   1       50    1015
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2                   0      166    1015
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2                   1       36    1015
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3                   0      200    1015
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3                   1       48    1015
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                   0      627    3043
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                   1      213    3043
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                   0      504    3043
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                   1      176    3043
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                   0      424    3043
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                   1      116    3043
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                   0      771    3043
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                   1      212    3043
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4                   0       73     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4                   1        0     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1                   0       65     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1                   1        3     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2                   0       64     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2                   1        0     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3                   0       63     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3                   1        1     269
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   0    11334   53678
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   1     2196   53678
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   0    10860   53678
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   1     2502   53678
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   0    11182   53678
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   1     2502   53678
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   0    10838   53678
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   1     2264   53678
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   0     2136   10166
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   1      256   10166
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   0     2218   10166
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   1      304   10166
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   0     2284   10166
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   1      258   10166
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   0     2432   10166
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   1      278   10166
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                   0       19      82
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                   1        2      82
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                   0       14      82
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                   1        7      82
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                   0       15      82
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                   1        5      82
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                   0       18      82
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                   1        2      82
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                   0       12      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                   1        6      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                   0       12      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                   1        7      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                   0       16      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                   1        1      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                   0       11      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                   1        6      71
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                   0       10      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                   1        1      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                   0       10      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                   1        1      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                   0        9      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                   1        1      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                   0        9      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                   1        1      42
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                   0        8      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                   1        2      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                   0        9      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                   1        0      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                   0        6      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                   1        2      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                   0        8      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                   1        1      36
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                   0       13      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                   1        4      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                   0       12      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                   1        5      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                   0       14      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                   1        3      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                   0       15      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                   1        2      68
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0       14      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1        1      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0       13      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1        2      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0       12      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1        3      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0       12      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1        3      60
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                   0       77     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                   1       19     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                   0       63     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                   1       28     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                   0       65     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                   1       30     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                   0       69     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                   1       22     373
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4                   0       65     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4                   1       35     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1                   0       71     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1                   1       34     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2                   0       75     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2                   1       27     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3                   0       72     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3                   1       31     410
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                   0      136     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                   1       25     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                   0      110     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                   1       38     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                   0      128     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                   1       20     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                   0      140     613
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                   1       16     613
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0      402    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1       86    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0      529    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1       80    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0      327    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1       80    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0      429    2010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1       77    2010
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   0      164    1180
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   1      134    1180
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   0      150    1180
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   1      148    1180
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   0      160    1180
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   1      134    1180
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   0      148    1180
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   1      142    1180
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                   0       51     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                   1        1     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                   0       57     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                   1        2     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                   0       52     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                   1        0     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                   0       51     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                   1        1     215
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                   0      386    1154
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                   1       47    1154
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                   0      191    1154
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                   1       34    1154
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                   0      203    1154
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                   1       38    1154
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                   0      225    1154
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                   1       30    1154
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                   0      626    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                   1      145    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                   0      406    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                   1      200    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                   0      368    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                   1      136    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                   0      660    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                   1      268    2809
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                   0      207     805
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                   1        9     805
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                   0      174     805
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                   1       22     805
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                   0      177     805
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                   1       19     805
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                   0      184     805
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                   1       13     805
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   0     8405   34520
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   1     1319   34520
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   0     6181   34520
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   1     1452   34520
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   0     7058   34520
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   1     1471   34520
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   0     7218   34520
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   1     1416   34520
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   0     1995   10541
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   1      481   10541
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   0     1852   10541
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   1      801   10541
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   0     1946   10541
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   1      684   10541
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   0     2134   10541
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   1      648   10541


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
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
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
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/2c52ce10-9b0d-4364-a4a4-5acc703051f4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2c52ce10-9b0d-4364-a4a4-5acc703051f4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2c52ce10-9b0d-4364-a4a4-5acc703051f4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2c52ce10-9b0d-4364-a4a4-5acc703051f4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.5555556   0.3243680   0.7867431
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.6315789   0.4131363   0.8500216
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.4117647   0.1761492   0.6473802
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.5882353   0.3526198   0.8238508
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.5416667   0.4418617   0.6414716
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.5934066   0.4923495   0.6944637
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.7263158   0.6365405   0.8160911
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.5934066   0.4923495   0.6944637
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.6800000   0.5884607   0.7715393
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.6761905   0.5865791   0.7658018
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.5882353   0.4926088   0.6838618
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.6796117   0.5893863   0.7698370
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.3428571   0.2724808   0.4132335
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.4444444   0.3718011   0.5170878
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.3254438   0.2547529   0.3961346
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.2873563   0.2200693   0.3546434
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.2462057   0.2115251   0.2808864
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.2239221   0.1934449   0.2543994
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.2401656   0.2020608   0.2782705
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.2393888   0.2049209   0.2738567
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.5894040   0.5108742   0.6679338
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.5960265   0.5176962   0.6743568
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.6000000   0.5215362   0.6784638
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.5800000   0.5009500   0.6590500
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.2310924   0.1932092   0.2689756
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.3196721   0.2611343   0.3782100
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.2635659   0.2097858   0.3173460
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.2596491   0.2087266   0.3105716
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.3678571   0.3352414   0.4004729
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.4537445   0.4163464   0.4911426
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.3888889   0.3477649   0.4300129
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.4079349   0.3772077   0.4386621
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.0414747   0.0149300   0.0680193
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.1176471   0.0734075   0.1618866
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.0954774   0.0546222   0.1363326
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.0710660   0.0351652   0.1069668
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.2386464   0.2267310   0.2505618
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.2703872   0.2590063   0.2817681
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.2667882   0.2554244   0.2781519
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.2570819   0.2454958   0.2686680
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.2751813   0.2446040   0.3057586
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.3604520   0.3318122   0.3890918
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.3201521   0.2917929   0.3485113
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.2933142   0.2656240   0.3210043
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.3333333   0.1140095   0.5526571
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.5263158   0.3002061   0.7524254
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.4117647   0.1761492   0.6473802
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.4117647   0.1761492   0.6473802
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.4315789   0.3318451   0.5313127
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.5000000   0.3965602   0.6034398
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.6344086   0.5363964   0.7324208
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.5111111   0.4076968   0.6145254
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.5500000   0.4523739   0.6476261
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                0.5523810   0.4571546   0.6476073
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                0.5098039   0.4126714   0.6069365
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                0.5631068   0.4672015   0.6590121
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.2742857   0.2081365   0.3404349
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.3222222   0.2539027   0.3905417
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.2248521   0.1618642   0.2878399
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.2068966   0.1466647   0.2671284
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1467116   0.1182282   0.1751950
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1474270   0.1215073   0.1733466
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1118012   0.0836923   0.1399102
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.1443124   0.1159273   0.1726975
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.2781457   0.2066168   0.3496746
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.2715232   0.2005275   0.3425189
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.3333333   0.2578315   0.4088351
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.3000000   0.2266039   0.3733961
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.1951220   0.1546674   0.2355765
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.2551020   0.1940445   0.3161596
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.1782178   0.1254170   0.2310186
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.1935484   0.1443535   0.2427433
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.2535714   0.2241459   0.2829969
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.2588235   0.2258984   0.2917487
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.2148148   0.1801698   0.2494598
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.2156663   0.1899515   0.2413812
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.1623060   0.1518805   0.1727315
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.1872474   0.1771730   0.1973218
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.1828413   0.1729567   0.1927259
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.1727980   0.1628729   0.1827232
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.1070234   0.0851515   0.1288953
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.1205393   0.1007329   0.1403456
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.1014949   0.0820812   0.1209085
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.1025830   0.0841919   0.1209741
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.1979167   0.1181087   0.2777247
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.3076923   0.2127372   0.4026474
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.3157895   0.2221923   0.4093867
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.2417582   0.1536727   0.3298438
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.3500000   0.2564015   0.4435985
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.3238095   0.2341982   0.4134209
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.2647059   0.1789842   0.3504276
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.3009709   0.2122819   0.3896598
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.1552795   0.0992904   0.2112686
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.2567568   0.1863202   0.3271933
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.1351351   0.0800125   0.1902578
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.1025641   0.0549166   0.1502116
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1762295   0.1424161   0.2100429
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1313629   0.1045278   0.1581980
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1965602   0.1579428   0.2351776
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.1521739   0.1208696   0.1834782
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.4496644   0.3697213   0.5296076
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.4966443   0.4162947   0.5769939
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.4557823   0.3752031   0.5363615
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.4896552   0.4082205   0.5710899
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.1085450   0.0792329   0.1378571
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.1511111   0.1042925   0.1979297
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.1576763   0.1116453   0.2037074
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.1176471   0.0780851   0.1572090
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.1880674   0.1604798   0.2156551
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.3300330   0.2925879   0.3674781
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.2698413   0.2310822   0.3086003
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.2887931   0.2596294   0.3179568
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.0416667   0.0150015   0.0683318
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.1122449   0.0680248   0.1564650
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.0969388   0.0554914   0.1383862
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.0659898   0.0313003   0.1006794
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.1356438   0.1248635   0.1464240
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.1902266   0.1772875   0.2031658
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.1724704   0.1607173   0.1842235
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.1640028   0.1520009   0.1760047
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.1942649   0.1667523   0.2217776
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.3019224   0.2760750   0.3277697
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.2600760   0.2331719   0.2869802
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.2329260   0.2065673   0.2592846


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5492958   0.4327362   0.6658554
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6139410   0.5644682   0.6634139
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.6560976   0.6100625   0.7021326
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3510029   0.3155698   0.3864359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2365772   0.2195142   0.2536402
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5913621   0.5520608   0.6306634
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2612827   0.2370438   0.2855216
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.4037451   0.3863123   0.4211779
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0807834   0.0620863   0.0994804
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2582228   0.2517573   0.2646883
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3126363   0.2981271   0.3271455
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4225352   0.3068192   0.5382512
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5190217   0.4679041   0.5701394
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.5439024   0.4956326   0.5921723
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2578797   0.2254025   0.2903568
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1392617   0.1253610   0.1531625
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2956811   0.2591967   0.3321655
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2029557   0.1782002   0.2277111
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2356227   0.2205417   0.2507038
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1763106   0.1706836   0.1819376
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1078103   0.0979895   0.1176312
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2654155   0.2205451   0.3102860
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.3097561   0.2649438   0.3545684
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1615008   0.1323459   0.1906557
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1606965   0.1446374   0.1767556
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4728814   0.4325613   0.5132014
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1291161   0.1097606   0.1484716
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2666429   0.2502871   0.2829988
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0782609   0.0596958   0.0968259
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1639050   0.1577770   0.1700330
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2479841   0.2343635   0.2616046


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         1.1368421   0.6617609   1.9529862
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         0.7411765   0.3652975   1.5038222
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         1.0588235   0.5942652   1.8865437
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         1.0955199   0.8524220   1.4079455
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.3408907   1.0740757   1.6739861
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         1.0955199   0.8524220   1.4079455
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         0.9943978   0.8232292   1.2011563
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         0.8650519   0.7004500   1.0683343
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.9994289   0.8272571   1.2074338
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         1.2962963   0.9971253   1.6852287
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.9492110   0.7039973   1.2798367
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.8381226   0.6138645   1.1443071
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.9094919   0.7477076   1.1062820
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.9754673   0.7889866   1.2060234
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.9723120   0.7949267   1.1892803
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.0112360   0.8386417   1.2193505
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0179775   0.8446164   1.2269218
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.9840449   0.8132784   1.1906679
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.3833085   1.0818823   1.7687158
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.1405215   0.8778702   1.4817559
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.1235726   0.8701438   1.4508124
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.2334802   1.0928441   1.3922144
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.0571737   0.9209031   1.2136089
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.1089492   0.9871561   1.2457689
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         2.8366011   1.3502532   5.9591087
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         2.3020657   1.0660043   4.9713744
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.7134798   0.7581722   3.8724886
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.1330035   1.0660279   1.2041870
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.1179225   1.0486771   1.1917402
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.0772504   1.0102801   1.1486599
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.3098709   1.1421909   1.5021672
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.1634224   1.0114353   1.3382484
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.0658942   0.9200807   1.2348162
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         1.5789474   0.7196094   3.4644833
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         1.2352941   0.5165046   2.9543816
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         1.2352941   0.5165046   2.9543816
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         1.1585366   0.8495854   1.5798377
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.4699712   1.1132302   1.9410317
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         1.1842818   0.8710869   1.6100844
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.0043290   0.7841777   1.2862859
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         0.9269162   0.7144141   1.2026269
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.0238305   0.8005590   1.3093712
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         1.1747685   0.8521028   1.6196180
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.8197732   0.5664480   1.1863896
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.7543103   0.5168561   1.1008559
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.0048759   0.7733238   1.3057603
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.7620475   0.5546600   1.0469773
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.9836465   0.7461276   1.2967762
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         0.9761905   0.6764879   1.4086696
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.1984127   0.8507015   1.6882454
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.0785714   0.7563045   1.5381586
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.3073980   0.9525446   1.7944456
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         0.9133663   0.6362087   1.3112647
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         0.9919355   0.7145473   1.3770060
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.0207125   0.8592567   1.2125061
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         0.8471570   0.6945039   1.0333636
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         0.8505151   0.7201501   1.0044794
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.1536692   1.0633007   1.2517180
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.1265221   1.0367036   1.2241223
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.0646437   0.9818954   1.1543656
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.1262887   0.8636839   1.4687389
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         0.9483428   0.7183615   1.2519521
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         0.9585102   0.7315525   1.2558793
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         1.5546559   0.9356400   2.5832103
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.5955679   0.9673251   2.6318316
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         1.2215153   0.7093721   2.1034090
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         0.9251701   0.6296337   1.3594248
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         0.7563025   0.4969342   1.1510448
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.8599168   0.5776127   1.2801950
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         1.6535135   1.0510996   2.6011874
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.8702703   0.5049091   1.5000133
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.6605128   0.3668468   1.1892627
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.7454080   0.5632207   0.9865282
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         1.1153648   0.8475260   1.4678472
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.8634985   0.6517665   1.1440134
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.1044776   0.8684846   1.4045969
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0136054   0.7888247   1.3024390
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.0889346   0.8536390   1.3890867
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.3921513   0.9229806   2.0998113
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.4526353   0.9759917   2.1620567
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.0838548   0.7041520   1.6683063
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.7548651   1.4578230   2.1124318
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.4348112   1.1685105   1.7618010
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.5355826   1.2850789   1.8349178
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         2.6938773   1.2705852   5.7115218
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         2.3265304   1.0775899   5.0230089
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.5837562   0.6918491   3.6254778
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.4023987   1.2677231   1.5513816
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.2714952   1.1451053   1.4118352
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.2090698   1.0838170   1.3487976
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.5541783   1.3175562   1.8332956
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.3387698   1.1237025   1.5949992
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.1990118   0.9961580   1.4431739


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0062598   -0.2060937   0.1935741
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0722744   -0.0130556   0.1576043
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0239024   -0.1039720   0.0561671
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0081457   -0.0528856   0.0691770
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0096286   -0.0395542   0.0202971
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0019582   -0.0659963   0.0699126
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0301902   -0.0004840   0.0608645
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0358879    0.0079491   0.0638268
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0393087    0.0132339   0.0653835
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0195764    0.0098867   0.0292660
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0374550    0.0109073   0.0640026
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0892019   -0.1034192   0.2818230
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0874428    0.0012787   0.1736069
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0060976   -0.0910189   0.0788238
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0164061   -0.0732950   0.0404829
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0074499   -0.0319637   0.0170639
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0175354   -0.0447607   0.0798315
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0078337   -0.0247157   0.0403831
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0179487   -0.0427533   0.0068559
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0140046    0.0052875   0.0227218
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0007869   -0.0178857   0.0194596
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0674989   -0.0039441   0.1389419
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0402439   -0.1208375   0.0403497
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0062213   -0.0421329   0.0545755
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0155330   -0.0446202   0.0135542
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0232169   -0.0459832   0.0924171
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0205711   -0.0036995   0.0448417
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0785755    0.0538612   0.1032898
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0365942    0.0106304   0.0625580
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0282612    0.0190296   0.0374928
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0537191    0.0290787   0.0783595


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0113960   -0.4492472   0.2941702
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.1177220   -0.0334942   0.2468129
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0364312   -0.1660348   0.0787671
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0232070   -0.1671074   0.1824878
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0406994   -0.1751888   0.0783990
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0033113   -0.1184874   0.1118465
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.1155462   -0.0097913   0.2253265
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0888876    0.0169659   0.1555473
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.4865940    0.0711724   0.7162168
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0758119    0.0373664   0.1127219
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.1198036    0.0303011   0.2010452
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.2111111   -0.4069876   0.5576751
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.1684762   -0.0160718   0.3195049
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0112108   -0.1800482   0.1334699
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0636190   -0.3087197   0.1355784
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0534956   -0.2450195   0.1085658
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0593050   -0.1768067   0.2480439
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0385982   -0.1358896   0.1862823
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0761755   -0.1867271   0.0240775
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0794315    0.0285407   0.1276562
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0072993   -0.1820008   0.1662825
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.2543140   -0.0675804   0.4791515
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.1299213   -0.4225113   0.1024872
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0385219   -0.3126720   0.2957569
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0966604   -0.2932855   0.0700707
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0490967   -0.1091505   0.1847662
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.1593223   -0.0498983   0.3268501
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.2946843    0.1966146   0.3807826
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.4675926    0.0389644   0.7050498
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.1724244    0.1141460   0.2268687
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.2166233    0.1105939   0.3100125
