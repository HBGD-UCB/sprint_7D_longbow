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
![](/tmp/e6d0440c-cb7b-4a61-a3b7-c74b1d375978/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e6d0440c-cb7b-4a61-a3b7-c74b1d375978/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e6d0440c-cb7b-4a61-a3b7-c74b1d375978/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e6d0440c-cb7b-4a61-a3b7-c74b1d375978/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.5555556   0.3243680   0.7867431
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.6315789   0.4131363   0.8500216
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.4117647   0.1761492   0.6473802
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.5882353   0.3526198   0.8238508
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.5686293   0.4806613   0.6565972
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.6209282   0.5304039   0.7114524
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.7472502   0.6672826   0.8272177
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.6175453   0.5283138   0.7067768
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.6497577   0.5624232   0.7370921
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.6392762   0.5560996   0.7224527
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.5506848   0.4622828   0.6390867
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.6522520   0.5668451   0.7376589
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.3360001   0.2892516   0.3827485
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.3522323   0.3046555   0.3998090
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.3299014   0.2847373   0.3750655
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.2979482   0.2535963   0.3423000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.2376695   0.2063143   0.2690247
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.2202233   0.1916909   0.2487556
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.2348970   0.2001316   0.2696625
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.2360405   0.2038559   0.2682252
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.5622012   0.4852694   0.6391331
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.5550698   0.4786665   0.6314731
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.5732106   0.4957508   0.6506705
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.5441073   0.4662380   0.6219765
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.2421334   0.2135992   0.2706676
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.2928313   0.2543001   0.3313625
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.2553886   0.2186580   0.2921192
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.2575870   0.2228739   0.2923002
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.3643955   0.3386779   0.3901130
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.4425855   0.4129947   0.4721762
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.3890973   0.3571457   0.4210489
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.4165073   0.3907394   0.4422752
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.0414747   0.0149300   0.0680193
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.1176471   0.0734075   0.1618866
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.0954774   0.0546222   0.1363326
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.0710660   0.0351652   0.1069668
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.2548633   0.2448418   0.2648848
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.2567010   0.2474216   0.2659804
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.2614209   0.2519562   0.2708856
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.2640105   0.2541517   0.2738692
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.2639272   0.2375539   0.2903005
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.3356139   0.3118204   0.3594075
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.3104445   0.2852416   0.3356474
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.2890272   0.2661134   0.3119410
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                0.3333333   0.1140095   0.5526571
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            NA                0.5263158   0.3002061   0.7524254
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            NA                0.4117647   0.1761492   0.6473802
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            NA                0.4117647   0.1761492   0.6473802
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.3988690   0.3186725   0.4790656
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.4812275   0.3976022   0.5648528
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.6387325   0.5631501   0.7143148
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.4845242   0.4015992   0.5674493
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.5640022   0.4932459   0.6347584
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                0.5288811   0.4613962   0.5963661
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                0.5008058   0.4310381   0.5705735
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                0.5773682   0.5084816   0.6462548
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.2861784   0.2275110   0.3448458
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.3295605   0.2701826   0.3889384
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.2246051   0.1683392   0.2808711
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.2023985   0.1485359   0.2562611
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1524241   0.1256710   0.1791771
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1537388   0.1290537   0.1784240
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1196277   0.0934976   0.1457578
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.1517281   0.1249237   0.1785324
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.2781457   0.2066168   0.3496746
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.2715232   0.2005275   0.3425189
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.3333333   0.2578315   0.4088351
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.3000000   0.2266039   0.3733961
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.1819544   0.1462749   0.2176340
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.2362975   0.1858078   0.2867872
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.1556730   0.1132073   0.1981386
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.1778254   0.1350832   0.2205676
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.2384541   0.2186581   0.2582502
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.2466510   0.2247968   0.2685053
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.2379603   0.2151450   0.2607756
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.2362044   0.2173157   0.2550931
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.1642046   0.1560202   0.1723889
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.1790305   0.1714621   0.1865988
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.1792399   0.1715213   0.1869585
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.1797617   0.1716914   0.1878319
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0975489   0.0820609   0.1130369
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.1113035   0.0974078   0.1251991
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.1043756   0.0913445   0.1174067
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.1055547   0.0927176   0.1183919
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.2025125   0.1255247   0.2795003
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.3065433   0.2127577   0.4003290
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.3146535   0.2236237   0.4056834
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.2471632   0.1607892   0.3335372
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.3499976   0.2564003   0.4435949
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.3238127   0.2342033   0.4134221
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.2647069   0.1789843   0.3504295
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.3009688   0.2122800   0.3896576
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.1658397   0.1111896   0.2204898
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.2452040   0.1770448   0.3133632
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.1436258   0.0897704   0.1974811
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.1091358   0.0624053   0.1558662
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1563456   0.1250260   0.1876652
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1179439   0.0923517   0.1435361
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1708130   0.1351059   0.2065202
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.1389743   0.1089842   0.1689645
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.4335920   0.3558184   0.5113655
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.4721382   0.3940413   0.5502350
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.4422073   0.3635435   0.5208711
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.4710701   0.3916112   0.5505291
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.1078320   0.0800448   0.1356192
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.1540268   0.1104495   0.1976040
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.1626751   0.1199576   0.2053926
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.1218027   0.0853769   0.1582284
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.2079642   0.1823431   0.2335852
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.3344593   0.3013424   0.3675761
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.2643117   0.2311680   0.2974553
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.2834419   0.2565180   0.3103659
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.0416667   0.0150015   0.0683318
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.1122449   0.0680248   0.1564650
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.0969388   0.0554914   0.1383862
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.0659898   0.0313003   0.1006794
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.1495238   0.1393681   0.1596795
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.1819601   0.1704421   0.1934782
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.1695545   0.1588204   0.1802887
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.1668539   0.1555932   0.1781147
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.1915519   0.1654199   0.2176838
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.2874740   0.2632575   0.3116905
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.2509020   0.2248887   0.2769154
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.2284627   0.2040744   0.2528511


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
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1078103   0.0979894   0.1176312
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2654155   0.2205451   0.3102860
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.3097561   0.2649438   0.3545684
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1615008   0.1323460   0.1906557
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
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         1.0919736   0.8848876   1.3475230
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.3141254   1.0917114   1.5818517
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         1.0860245   0.8812201   1.3384277
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         0.9838686   0.8177935   1.1836698
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         0.8475233   0.6890691   1.0424147
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.0038389   0.8334472   1.2090659
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         1.0483101   0.8942394   1.2289261
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.9818492   0.8374454   1.1511532
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.8867502   0.7518278   1.0458858
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.9265945   0.7711269   1.1134060
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.9883348   0.8115047   1.2036969
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.9931461   0.8222073   1.1996235
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         0.9873152   0.8129715   1.1990473
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0195827   0.8411193   1.2359114
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.9678159   0.7939026   1.1798267
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.2093804   1.0420657   1.4035593
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.0547436   0.9009555   1.2347824
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.0638231   0.9177812   1.2331038
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.2145745   1.1094626   1.3296449
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.0677885   0.9647389   1.1818454
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.1430090   1.0485666   1.2459576
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         2.8366011   1.3502532   5.9591087
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         2.3020657   1.0660043   4.9713744
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.7134798   0.7581722   3.8724886
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.0072104   0.9607538   1.0559134
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.0257298   0.9768340   1.0770731
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.0358904   0.9856841   1.0886541
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.2716157   1.1298622   1.4311538
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.1762506   1.0381044   1.3327806
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.0951021   0.9685175   1.2382313
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1            Wealth Q4         1.5789474   0.7196094   3.4644833
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2            Wealth Q4         1.2352941   0.5165046   2.9543816
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3            Wealth Q4         1.2352941   0.5165046   2.9543816
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         1.2064799   0.9299333   1.5652669
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.6013588   1.2724419   2.0152984
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         1.2147452   0.9375382   1.5739155
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         0.9377289   0.7990023   1.1005419
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         0.8879501   0.7486946   1.0531068
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.0236985   0.8773774   1.1944217
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         1.1515912   0.8785057   1.5095659
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.7848432   0.5689443   1.0826698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.7072459   0.5061769   0.9881857
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.0086255   0.7957468   1.2784536
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.7848348   0.5933799   1.0380630
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.9954337   0.7764623   1.2761577
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         0.9761905   0.6764879   1.4086696
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.1984127   0.8507015   1.6882454
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.0785714   0.7563045   1.5381586
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.2986630   0.9806652   1.7197771
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         0.8555601   0.6177507   1.1849167
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         0.9773071   0.7233320   1.3204576
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.0343751   0.9361420   1.1429163
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         0.9979290   0.8978504   1.1091629
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         0.9905653   0.9044518   1.0848777
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.0902892   1.0310532   1.1529285
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.0915647   1.0312199   1.1554408
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.0947421   1.0347949   1.1581623
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.1410015   0.9597119   1.3565368
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.0699823   0.9007186   1.2710541
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.0820699   0.9123356   1.2833823
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         1.5137005   0.9304788   2.4624843
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.5537484   0.9645117   2.5029599
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         1.2204832   0.7306349   2.0387464
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         0.9251855   0.6296503   1.3594343
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         0.7563107   0.4969393   1.1510579
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.8599167   0.5776133   1.2801935
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         1.4785608   0.9633348   2.2693482
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.8660519   0.5274096   1.4221318
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.6580799   0.3846011   1.1260215
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.7543796   0.5629363   1.0109288
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         1.0925350   0.8197423   1.4561073
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.8888920   0.6632089   1.1913726
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.0888997   0.8539000   1.3885731
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0198696   0.7928379   1.3119126
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.0864364   0.8500977   1.3884805
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.4283955   0.9768952   2.0885697
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.5085976   1.0469289   2.1738502
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.1295597   0.7635947   1.6709194
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.6082545   1.3743695   1.8819411
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.2709482   1.0672782   1.5134849
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.3629364   1.1679630   1.5904576
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         2.6938773   1.2705852   5.7115218
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         2.3265304   1.0775899   5.0230089
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.5837562   0.6918491   3.6254778
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.2169311   1.1133849   1.3301072
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.1339636   1.0343027   1.2432274
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.1159023   1.0131741   1.2290464
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.5007632   1.2798332   1.7598309
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.3098386   1.1041008   1.5539134
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.1926938   1.0010574   1.4210159


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0062598   -0.2060937   0.1935741
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0453118   -0.0291632   0.1197867
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0063399   -0.0691341   0.0818139
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0150028   -0.0185677   0.0485733
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0010923   -0.0280948   0.0259102
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0291609   -0.0375321   0.0958540
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0191493    0.0003423   0.0379563
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0393496    0.0186603   0.0600389
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0393087    0.0132339   0.0653835
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0033594   -0.0047722   0.0114910
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0487091    0.0263029   0.0711153
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.0892019   -0.1034192   0.2818230
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.1201527    0.0508679   0.1894375
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0200997   -0.0758063   0.0356069
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0282987   -0.0785437   0.0219463
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0131623   -0.0361751   0.0098504
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0175354   -0.0447607   0.0798315
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0210012   -0.0068418   0.0488443
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0028314   -0.0164724   0.0108096
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0121060    0.0058199   0.0183921
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0102614   -0.0011805   0.0217034
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0629030   -0.0061187   0.1319248
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0402415   -0.1208339   0.0403509
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0043389   -0.0512251   0.0425474
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0043509   -0.0224579   0.0311598
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0392894   -0.0278302   0.1064089
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0212841   -0.0016307   0.0441989
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0586788    0.0357343   0.0816232
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0365942    0.0106304   0.0625580
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0143812    0.0055095   0.0232529
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0564322    0.0330202   0.0798442


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                -0.0113960   -0.4492472   0.2941702
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0738047   -0.0557349   0.1874497
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0096631   -0.1123007   0.1182535
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0427426   -0.0575524   0.1335260
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0046172   -0.1255074   0.1032882
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0493114   -0.0704307   0.1556588
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0732896   -0.0008797   0.1419627
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0974615    0.0449887   0.1470512
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.4865940    0.0711724   0.7162168
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0130099   -0.0189663   0.0439826
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.1558012    0.0808114   0.2246730
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4            NA                 0.2111111   -0.4069876   0.5576751
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.2314984    0.0871611   0.3530132
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0369546   -0.1449483   0.0608529
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.1097361   -0.3240008   0.0698538
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0945151   -0.2733242   0.0591844
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0593050   -0.1768067   0.2480439
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.1034769   -0.0442123   0.2302775
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0120166   -0.0716463   0.0442951
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0686631    0.0323833   0.1035826
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0951804   -0.0183625   0.1960637
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.2369982   -0.0694607   0.4556399
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.1299135   -0.4224989   0.1024918
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0268658   -0.3625765   0.2261327
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0270754   -0.1549527   0.1804147
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0830851   -0.0705088   0.2146417
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.1648447   -0.0306187   0.3232373
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.2200650    0.1306806   0.3002589
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.4675926    0.0389644   0.7050498
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0877410    0.0322915   0.1400134
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.2275638    0.1273319   0.3162833
