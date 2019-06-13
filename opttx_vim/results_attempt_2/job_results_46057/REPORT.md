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
![](/tmp/e30472f8-0396-4331-beb7-e02fcf405221/679cc2b6-1797-4582-a6b7-61cac5dab46f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e30472f8-0396-4331-beb7-e02fcf405221/679cc2b6-1797-4582-a6b7-61cac5dab46f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.4330379   0.1722744   0.6938015
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.5987733   0.4994461   0.6981005
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                0.6023576   0.5073865   0.6973287
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.3137169   0.2573400   0.3700938
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2473766   0.2154846   0.2792687
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.6975681   0.6256927   0.7694434
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.2768209   0.2179731   0.3356687
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.3526829   0.3214926   0.3838733
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.0418595   0.0150482   0.0686709
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.2600410   0.2444958   0.2755863
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.3095813   0.2589963   0.3601663
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.3691707   0.1306155   0.6077258
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.4466418   0.3477854   0.5454983
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                0.5097368   0.4116144   0.6078592
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2221076   0.1572204   0.2869949
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1294157   0.0998766   0.1589547
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.2332566   0.1665381   0.2999750
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.1764846   0.1102496   0.2427197
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2302520   0.2045331   0.2559709
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1762304   0.1643601   0.1881008
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.1177878   0.0808765   0.1546991
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.1871850   0.1116519   0.2627181
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                0.2656885   0.1781070   0.3532700
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1004173   0.0531886   0.1476459
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1255208   0.0993010   0.1517405
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.5271320   0.4428315   0.6114325
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.1464278   0.0940576   0.1987979
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2006227   0.1724652   0.2287802
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.0415440   0.0147091   0.0683788
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1548940   0.1378760   0.1719120
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.2178828   0.1678628   0.2679029


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
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.2684703   0.7431406   2.1651582
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.0253313   0.8882102   1.1836210
0-24 months   ki1000108-IRC              INDIA                          observed             optimal           1.0892160   0.9517834   1.2464933
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.1188523   0.9686472   1.2923492
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.9563440   0.8578169   1.0661878
0-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           0.8477483   0.7717848   0.9311885
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.1962129   1.0057101   1.4228011
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.1447820   1.0611853   1.2349641
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.9298672   1.0661826   3.4931983
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0161209   0.9628936   1.0722905
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.0286014   0.8842090   1.1965731
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             optimal           1.1445525   0.6524466   2.0078279
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.1620536   0.9552027   1.4136984
0-6 months    ki1000108-IRC              INDIA                          observed             optimal           1.0670260   0.9090520   1.2524526
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.1610572   0.8968004   1.5031816
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0760808   0.8773187   1.3198737
0-6 months    ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.2676216   0.9825602   1.6353853
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.4224320   1.0197727   1.9840821
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0233255   0.9358921   1.1189271
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0343516   0.9794870   1.0922893
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           0.9390575   0.7281119   1.2111174
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.4179316   0.9833778   2.0445144
6-24 months   ki1000108-IRC              INDIA                          observed             optimal           1.1658618   0.8734028   1.5562507
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.6082972   1.0499407   2.4635865
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.2802386   1.0688184   1.5334792
6-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           0.8970833   0.7821542   1.0289001
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.2182004   0.8988100   1.6510855
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.3290766   1.1728963   1.5060535
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.8838082   1.0377672   3.4195854
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0640477   0.9654036   1.1727711
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.1811058   0.9610863   1.4514938


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.1162578   -0.1131377    0.3456534
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0151677   -0.0707806    0.1011160
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.0537400   -0.0272433    0.1347232
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0372860   -0.0079245    0.0824965
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0107995   -0.0376873    0.0160883
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.1062060   -0.1705851   -0.0418268
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0543158    0.0062629    0.1023688
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0510621    0.0242978    0.0778265
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0389238    0.0126447    0.0652029
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0041921   -0.0098196    0.0182038
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0088544   -0.0380996    0.0558085
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0533645   -0.1533710    0.2601001
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0723799   -0.0153016    0.1600614
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                 0.0341656   -0.0471906    0.1155218
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0357720   -0.0215714    0.0931155
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0098461   -0.0165898    0.0362819
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0624245    0.0027151    0.1221339
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0745527    0.0153978    0.1337076
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0053707   -0.0151844    0.0259259
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0060538   -0.0035748    0.0156824
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                -0.0071783   -0.0371978    0.0228413
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0782305    0.0084968    0.1479643
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.0440676   -0.0326038    0.1207390
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0610835    0.0173359    0.1048312
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0351758    0.0123523    0.0579992
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.0542507   -0.1265698    0.0180685
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0319506   -0.0127526    0.0766538
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0660202    0.0406965    0.0913440
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0367169    0.0106203    0.0628135
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0099206   -0.0051846    0.0250258
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0394598   -0.0056476    0.0845673


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.2116489   -0.3456404    0.5381400
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0247055   -0.1258597    0.1551350
0-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.0819085   -0.0506592    0.1977494
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1062270   -0.0323676    0.2262153
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0456488   -0.1657500    0.0620789
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.1795955   -0.2956980   -0.0738964
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.1640284    0.0056776    0.2971611
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.1264712    0.0576575    0.1902599
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.4818296    0.0620744    0.7137294
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0158651   -0.0385363    0.0674169
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0278061   -0.1309543    0.1642801
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.1262961   -0.5326926    0.5019493
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.1394545   -0.0468982    0.2926355
0-6 months    ki1000108-IRC              INDIA                          optimal              NA                 0.0628157   -0.1000471    0.2015666
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1387160   -0.1150753    0.3347444
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0707018   -0.1398366    0.2423518
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.2111211   -0.0177493    0.3885233
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.2969787    0.0193893    0.4959886
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0227938   -0.0684992    0.1062867
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0332107   -0.0209426    0.0844916
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                -0.0648976   -0.3734154    0.1743162
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.2947474   -0.0169032    0.5108863
6-24 months   ki1000108-IRC              INDIA                          optimal              NA                 0.1422654   -0.1449471    0.3574300
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.3782244    0.0475653    0.5940877
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.2188956    0.0643874    0.3478881
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                -0.1147236   -0.2785203    0.0280883
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.1791170   -0.1125822    0.3943379
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.2475979    0.1474097    0.3360130
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.4691604    0.0363927    0.7075669
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0601925   -0.0358362    0.1473187
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.1533358   -0.0404893    0.3110546
