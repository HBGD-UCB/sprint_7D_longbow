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
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   0       62     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   1       89     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   0       61     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   1       90     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   0       60     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   1       90     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   0       63     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   1       87     602
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                   0       50     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                   1        2     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                   0       57     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                   1        2     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                   0       49     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                   1        3     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                   0       51     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                   1        1     215
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                   0      177     607
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                   1       61     607
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                   0       76     607
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                   1       55     607
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                   0       73     607
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                   1       43     607
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                   0       80     607
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                   1       42     607
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   0     2596   13314
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   1      825   13314
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   0     2372   13314
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   1      927   13314
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   0     2450   13314
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   1      908   13314
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   0     2378   13314
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   1      858   13314
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   0      237    1432
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   1       93    1432
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   0      238    1432
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   1      137    1432
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   0      230    1432
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   1      108    1432
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   0      271    1432
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   1      118    1432
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
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   0      109     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   1       42     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   0      110     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   1       41     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   0      100     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   1       50     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   0      105     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   1       45     602
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4                   0       51     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4                   1        1     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q1                   0       59     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q1                   1        0     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q2                   0       49     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q2                   1        3     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q3                   0       52     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q3                   1        0     215
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4                   0      146     482
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4                   1       39     482
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1                   0       73     482
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1                   1       35     482
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2                   0       64     482
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2                   1       22     482
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3                   0       78     482
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3                   1       25     482
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   0     2843   13265
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   1      562   13265
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   0     2632   13265
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   1      654   13265
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   0     2714   13265
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   1      634   13265
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   0     2658   13265
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   1      568   13265
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   0      277    1329
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   1       30    1329
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   0      298    1329
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   1       41    1329
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   0      275    1329
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   1       35    1329
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   0      332    1329
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   1       41    1329
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
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   0       82     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   1       67     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   0       75     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   1       74     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   0       80     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   1       67     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   0       74     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   1       71     590
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                   0       51     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                   1        1     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                   0       57     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                   1        2     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                   0       52     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                   1        0     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                   0       51     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                   1        1     215
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                   0      191     555
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                   1       29     555
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                   0       95     555
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                   1       24     555
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                   0       83     555
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                   1       27     555
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                   0       87     555
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                   1       19     555
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   0     2110    8549
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   1      328    8549
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   0     1501    8549
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   1      362    8549
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   0     1742    8549
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   1      360    8549
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   0     1787    8549
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   1      359    8549
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   0      259    1430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   1       70    1430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   0      258    1430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   1      116    1430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   0      251    1430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   1       87    1430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   0      294    1430
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   1       95    1430


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
![](/tmp/4d67d07d-9de5-424a-a153-8ea4b29fc5d2/3e1779b5-7bfa-4df3-8a50-9b65514e5c78/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4d67d07d-9de5-424a-a153-8ea4b29fc5d2/3e1779b5-7bfa-4df3-8a50-9b65514e5c78/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.4088015   0.1565411   0.6610619
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.6107402   0.5187947   0.7026857
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                0.6102825   0.5149609   0.7056042
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.3243911   0.2677359   0.3810462
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2407922   0.2087401   0.2728444
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.6780057   0.5997988   0.7562127
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.2575747   0.2002059   0.3149434
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.3544253   0.3238877   0.3849629
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.0412259   0.0146814   0.0677704
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.2578123   0.2429726   0.2726520
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.3125404   0.2607754   0.3643055
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.4206487   0.1752934   0.6660040
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.4801794   0.3871503   0.5732085
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                0.4833581   0.3944976   0.5722187
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2319945   0.1670321   0.2969569
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1168497   0.0887480   0.1449513
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.2970597   0.2238675   0.3702520
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.1753191   0.1063609   0.2442774
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2420542   0.2150036   0.2691048
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1692280   0.1568196   0.1816364
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.1237094   0.0848060   0.1626129
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.2096465   0.1311104   0.2881825
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                0.2669960   0.1797915   0.3542005
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1070165   0.0585519   0.1554810
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1336100   0.1066166   0.1606034
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.4879251   0.4060087   0.5698415
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.1401706   0.0931160   0.1872251
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2037946   0.1755665   0.2320227
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.0422441   0.0152006   0.0692875
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1517389   0.1358607   0.1676171
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.2181499   0.1683574   0.2679424


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             NA                0.5492958   0.4327362   0.6658554
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.6139410   0.5644682   0.6634139
0-24 months   ki1000108-IRC              INDIA                          observed             NA                0.6560976   0.6100625   0.7021326
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.3510029   0.3155698   0.3864359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2365772   0.2195142   0.2536402
0-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.5913621   0.5520608   0.6306634
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.3311367   0.2936667   0.3686068
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.4037451   0.3863123   0.4211779
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.0807834   0.0620863   0.0994804
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2642331   0.2551503   0.2733160
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.3184358   0.2901120   0.3467596
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             NA                0.4225352   0.3068192   0.5382512
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.5190217   0.4679041   0.5701394
0-6 months    ki1000108-IRC              INDIA                          observed             NA                0.5439024   0.4956326   0.5921723
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.2578797   0.2254025   0.2903568
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1392617   0.1253610   0.1531625
0-6 months    ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.2956811   0.2591967   0.3321655
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             NA                0.2510373   0.2122871   0.2897876
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.2356227   0.2205417   0.2507038
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.1822842   0.1742752   0.1902932
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.1106095   0.0909057   0.1303132
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.2654155   0.2205451   0.3102860
6-24 months   ki1000108-IRC              INDIA                          observed             NA                0.3097561   0.2649438   0.3545684
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.1615008   0.1323460   0.1906557
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1606965   0.1446374   0.1767556
6-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.4728814   0.4325613   0.5132014
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.1783784   0.1464997   0.2102571
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.2666429   0.2502871   0.2829988
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.0782609   0.0596958   0.0968259
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.1648146   0.1556271   0.1740021
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.2573427   0.2311603   0.2835250


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.3436736   0.7764992   2.3251264
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.0052409   0.8793495   1.1491554
0-24 months   ki1000108-IRC              INDIA                          observed             optimal           1.0750718   0.9406516   1.2287008
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.0820361   0.9404185   1.2449799
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.9824951   0.8794834   1.0975723
0-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           0.8722081   0.7881281   0.9652581
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.2855952   1.0714646   1.5425195
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.1391542   1.0580607   1.2264630
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.9595281   1.0790976   3.5582975
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0249051   0.9752227   1.0771185
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.0188626   0.8784285   1.1817478
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             optimal           1.0044848   0.6083731   1.6585050
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.0808913   0.9089017   1.2854261
0-6 months    ki1000108-IRC              INDIA                          observed             optimal           1.1252576   0.9604246   1.3183802
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.1115765   0.8689352   1.4219729
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.1918026   0.9584586   1.4819559
0-6 months    ki1113344-GMS-Nepal        NEPAL                          observed             optimal           0.9953589   0.8041916   1.2319694
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.4318878   1.0108686   2.0282584
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             optimal           0.9734297   0.8901666   1.0644808
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0771515   1.0116719   1.1468693
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           0.8941072   0.7038501   1.1357925
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.2660150   0.9066275   1.7678638
6-24 months   ki1000108-IRC              INDIA                          observed             optimal           1.1601527   0.8711405   1.5450486
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.5091210   1.0010516   2.2750537
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.2027283   1.0114740   1.4301458
6-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           0.9691679   0.8386514   1.1199962
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.2725809   0.9608004   1.6855346
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.3083907   1.1565380   1.4801816
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.8525887   1.0260417   3.3449758
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0861723   0.9908949   1.1906109
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.1796598   0.9609000   1.4482228


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.1404943   -0.0811578    0.3621464
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0032008   -0.0785374    0.0849390
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.0458150   -0.0354836    0.1271136
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0266118   -0.0189111    0.0721347
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0042150   -0.0308918    0.0224617
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0866436   -0.1550189   -0.0182683
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0735621    0.0266233    0.1205009
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0493198    0.0230948    0.0755447
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0395574    0.0134732    0.0656416
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0064208   -0.0064134    0.0192551
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0058953   -0.0405089    0.0522996
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0018865   -0.2090190    0.2127921
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0388423   -0.0447086    0.1223933
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                 0.0605443   -0.0160450    0.1371336
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0258851   -0.0312403    0.0830105
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0224121   -0.0031268    0.0479510
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0013787   -0.0647316    0.0619743
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0757182    0.0146052    0.1368312
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.0064315   -0.0280934    0.0152305
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0130562    0.0023769    0.0237355
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                -0.0130999   -0.0430599    0.0168600
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0557691   -0.0148414    0.1263796
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.0427601   -0.0337120    0.1192323
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0544843    0.0097295    0.0992392
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0270865    0.0038548    0.0503183
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0150437   -0.0856299    0.0555424
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0382078   -0.0016537    0.0780693
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0628484    0.0374644    0.0882323
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0360168    0.0097616    0.0622720
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0130757   -0.0009156    0.0270670
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0391928   -0.0057604    0.0841459


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.2557717   -0.2878313    0.5699159
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0052135   -0.1372043    0.1297957
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.0698296   -0.0630929    0.1861322
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0758164   -0.0633563    0.1967742
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0178167   -0.1370311    0.0888983
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.1465153   -0.2688293   -0.0359923
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.2221502    0.0666980    0.3517100
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.1221557    0.0548746    0.1846472
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.4896730    0.0732998    0.7189667
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0242999   -0.0254069    0.0715970
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0185134   -0.1383966    0.1537958
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0044648   -0.6437283    0.3970473
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0748376   -0.1002290    0.2220478
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                 0.1113146   -0.0412062    0.2414935
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1003768   -0.1508338    0.2967517
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1609349   -0.0433418    0.3252161
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0046627   -0.2434848    0.1882915
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.3016213    0.0107517    0.5069662
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.0272956   -0.1233852    0.0605749
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0716255    0.0115372    0.1280611
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                -0.1184341   -0.4207571    0.1195575
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.2101199   -0.1029888    0.4343456
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.1380445   -0.1479205    0.3527712
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.3373626    0.0010505    0.5604499
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1685570    0.0113439    0.3007706
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0318129   -0.1923905    0.1071399
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.2141954   -0.0407989    0.4067164
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.2357023    0.1353505    0.3244072
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.4602148    0.0253808    0.7010442
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0793358   -0.0091888    0.1600950
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.1522980   -0.0406911    0.3094985
