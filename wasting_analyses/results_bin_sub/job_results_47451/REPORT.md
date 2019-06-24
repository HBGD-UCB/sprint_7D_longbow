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

**Outcome Variable:** ever_co

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

agecat        studyid                    country                        hhwealth_quart    ever_co   n_cell       n
------------  -------------------------  -----------------------------  ---------------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               0       19      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               1        2      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               0       14      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               1        7      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               0       14      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               1        6      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               0       17      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               1        3      82
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4               0       10      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4               1        8      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1               0       13      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1               1        6      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2               0       16      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2               1        1      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3               0       11      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3               1        6      71
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4               0       10      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4               1        1      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1               0        9      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1               1        2      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2               0        9      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2               1        1      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3               0        9      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3               1        1      42
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4               0        8      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4               1        2      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1               0        9      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1               1        0      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2               0        7      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2               1        2      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3               0        9      37
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3               1        0      37
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               0       15      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               1        2      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               0       15      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               1        2      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               0       15      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               1        2      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               0       16      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               1        1      68
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0       14      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1        1      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0       14      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1        1      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0       13      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1        2      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0       12      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1        3      60
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4               0       76     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4               1       20     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1               0       75     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1               1       16     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2               0       69     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2               1       26     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3               0       67     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3               1       24     373
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4               0       83     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4               1       17     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1               0       82     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1               1       23     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2               0       82     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2               1       20     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3               0       87     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3               1       16     410
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4               0      159     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4               1       16     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1               0      142     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1               1       38     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2               0      147     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2               1       22     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3               0      160     698
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3               1       14     698
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0      548    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1       45    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0      691    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1       28    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0      461    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1       22    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0      565    2384
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1       24    2384
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               0      105     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               1       46     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               0       98     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               1       53     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               0      103     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               1       47     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               0      103     602
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               1       47     602
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4               0       51     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4               1        1     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1               0       57     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1               1        2     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2               0       52     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2               1        0     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3               0       51     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3               1        1     215
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4               0      434    1263
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4               1       42    1263
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1               0      212    1263
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1               1       32    1263
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2               0      222    1263
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2               1       36    1263
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3               0      251    1263
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3               1       34    1263
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4               0      753    3044
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4               1       87    3044
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1               0      511    3044
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1               1      170    3044
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2               0      439    3044
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2               1      101    3044
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3               0      781    3044
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3               1      202    3044
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4               0      212     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4               1        5     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1               0      187     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1               1       17     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2               0      187     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2               1       12     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3               0      189     817
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3               1        8     817
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               0     6340   26903
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               1      449   26903
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               0     5967   26903
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               1      724   26903
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               0     6203   26903
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               1      655   26903
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               0     6012   26903
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               1      553   26903
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               0     1145    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               1      136    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               0     1075    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               1      302    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               0     1118    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               1      230    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               0     1212    5426
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               1      208    5426
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               0       21      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               1        0      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               0       19      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               1        2      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               0       18      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               1        2      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               0       18      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               1        2      82
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4               0       15      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4               1        3      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1               0       16      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1               1        3      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2               0       16      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2               1        1      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3               0       14      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3               1        3      71
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4               0       11      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4               1        0      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1               0       10      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1               1        1      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2               0       10      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2               1        0      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3               0        9      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3               1        1      42
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4               0       10      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4               1        0      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1               0        9      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1               1        0      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2               0        9      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2               1        0      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3               0        9      37
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3               1        0      37
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               0       17      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               1        0      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               0       17      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               1        0      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               0       16      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               1        1      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               0       17      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               1        0      68
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0       15      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1        0      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0       15      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1        0      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0       15      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1        0      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0       13      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1        2      60
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4               0       86     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4               1        9     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1               0       87     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1               1        3     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2               0       81     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2               1       12     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3               0       83     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3               1        7     368
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4               0       95     409
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4               1        5     409
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1               0       99     409
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1               1        6     409
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2               0       92     409
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2               1        9     409
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3               0       98     409
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3               1        5     409
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4               0      168     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4               1        7     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1               0      168     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1               1       12     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2               0      162     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2               1        7     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3               0      170     698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3               1        4     698
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0      583    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1       10    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0      713    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1        6    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0      483    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1        0    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0      586    2384
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1        3    2384
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               0      146     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               1        5     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               0      144     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               1        7     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               0      144     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               1        6     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               0      144     602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               1        6     602
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4               0       52     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4               1        0     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q1               0       59     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q1               1        0     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q2               0       52     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q2               1        0     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q3               0       52     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q3               1        0     215
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4               0      363    1014
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4               1        6    1014
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1               0      190    1014
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1               1        5    1014
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2               0      200    1014
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2               1        2    1014
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3               0      242    1014
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3               1        6    1014
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4               0      827    3043
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4               1       13    3043
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1               0      658    3043
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1               1       22    3043
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2               0      527    3043
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2               1       13    3043
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3               0      959    3043
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3               1       24    3043
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4               0       73     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4               1        0     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1               0       68     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1               1        0     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2               0       64     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2               1        0     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3               0       64     269
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3               1        0     269
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               0     6570   26796
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               1      189   26796
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               0     6340   26796
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               1      323   26796
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               0     6531   26796
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               1      300   26796
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               0     6301   26796
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               1      242   26796
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               0     1173    5079
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               1       23    5079
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               0     1215    5079
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               1       45    5079
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               0     1233    5079
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               1       35    5079
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               0     1324    5079
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               1       31    5079
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               0       19      81
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4               1        2      81
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               0       14      81
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1               1        7      81
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               0       15      81
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2               1        5      81
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               0       18      81
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3               1        1      81
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4               0       12      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4               1        6      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1               0       14      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1               1        5      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2               0       16      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2               1        1      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3               0       11      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3               1        6      71
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4               0       10      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4               1        1      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1               0       10      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1               1        1      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2               0        9      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2               1        1      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3               0       10      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3               1        0      42
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4               0        8      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4               1        2      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1               0        9      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1               1        0      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2               0        6      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2               1        2      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3               0        9      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3               1        0      36
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               0       15      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4               1        2      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               0       15      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1               1        2      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               0       15      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2               1        2      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               0       16      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3               1        1      68
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0       14      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1        1      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0       14      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1        1      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0       13      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1        2      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0       14      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1        1      60
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4               0       81     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4               1       15     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1               0       76     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1               1       15     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2               0       75     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2               1       20     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3               0       71     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3               1       20     373
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4               0       85     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4               1       15     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1               0       86     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1               1       19     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2               0       85     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2               1       17     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3               0       90     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3               1       13     410
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4               0      150     612
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4               1       11     612
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1               0      114     612
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1               1       33     612
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2               0      130     612
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2               1       18     612
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3               0      143     612
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3               1       13     612
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               0      444    2009
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4               1       44    2009
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               0      583    2009
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1               1       26    2009
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               0      384    2009
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2               1       22    2009
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               0      485    2009
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3               1       21    2009
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               0      105     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4               1       44     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               0       97     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1               1       52     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               0      100     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2               1       47     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               0       98     590
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3               1       47     590
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q4               0       51     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q4               1        1     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q1               0       57     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q1               1        2     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q2               0       52     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q2               1        0     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q3               0       51     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q3               1        1     215
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4               0      396    1153
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4               1       37    1153
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1               0      194    1153
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1               1       31    1153
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2               0      205    1153
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2               1       36    1153
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3               0      225    1153
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3               1       29    1153
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4               0      690    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4               1       80    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1               0      442    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1               1      164    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2               0      407    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2               1       97    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3               0      733    2808
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3               1      195    2808
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4               0      211     805
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4               1        5     805
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1               0      179     805
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1               1       17     805
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2               0      184     805
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2               1       12     805
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3               0      189     805
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3               1        8     805
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               0     4590   17271
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4               1      281   17271
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               0     3354   17271
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1               1      462   17271
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               0     3860   17271
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2               1      406   17271
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               0     3968   17271
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3               1      350   17271
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               0     1156    5422
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4               1      122    5422
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               0     1097    5422
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1               1      279    5422
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               0     1137    5422
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2               1      211    5422
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               0     1231    5422
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3               1      189    5422


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
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
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
![](/tmp/f9445e35-10b2-48a2-bd65-ced8f3a85183/5166d07c-d450-4a38-8c10-def5c887b291/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f9445e35-10b2-48a2-bd65-ced8f3a85183/5166d07c-d450-4a38-8c10-def5c887b291/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f9445e35-10b2-48a2-bd65-ced8f3a85183/5166d07c-d450-4a38-8c10-def5c887b291/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f9445e35-10b2-48a2-bd65-ced8f3a85183/5166d07c-d450-4a38-8c10-def5c887b291/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.2055005   0.1242718   0.2867293
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1855326   0.1081860   0.2628792
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.2882172   0.1969372   0.3794973
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.2532313   0.1628605   0.3436021
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1644058   0.0901180   0.2386936
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.2131194   0.1329752   0.2932636
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.1883322   0.1104828   0.2661817
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1538192   0.0834632   0.2241751
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.0924209   0.0493984   0.1354433
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.2039850   0.1451003   0.2628697
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.1329405   0.0806131   0.1852679
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.0812777   0.0401300   0.1224254
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0752754   0.0539510   0.0965998
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0390599   0.0249152   0.0532046
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0454691   0.0269404   0.0639979
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0411609   0.0251545   0.0571673
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.3116919   0.2384511   0.3849327
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.3450219   0.2687435   0.4213004
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.3187104   0.2440289   0.3933919
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.3213520   0.2469280   0.3957759
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.0880536   0.0627061   0.1134012
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.1340257   0.0906937   0.1773577
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.1372475   0.0951691   0.1793258
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.1195763   0.0822210   0.1569317
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.1200493   0.0991173   0.1409813
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.2423499   0.2104139   0.2742859
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.1769979   0.1448600   0.2091358
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.1961446   0.1718376   0.2204516
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.0230415   0.0030669   0.0430160
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.0833333   0.0453831   0.1212835
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.0603015   0.0272078   0.0933952
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.0406091   0.0130294   0.0681889
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0814503   0.0732896   0.0896111
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.0955774   0.0887615   0.1023932
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.0896717   0.0828375   0.0965059
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.0856050   0.0784619   0.0927482
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.1141936   0.0939696   0.1344177
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.2090531   0.1869756   0.2311306
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.1667405   0.1459901   0.1874910
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.1523176   0.1316162   0.1730190
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.0500000   0.0072313   0.0927687
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                0.0571429   0.0126911   0.1015946
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                0.0891089   0.0334784   0.1447394
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                0.0485437   0.0069888   0.0900986
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0331126   0.0045495   0.0616757
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.0463576   0.0127936   0.0799216
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.0400000   0.0086145   0.0713855
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.0400000   0.0086145   0.0713855
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0154809   0.0069809   0.0239809
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0339674   0.0204503   0.0474844
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0245290   0.0114122   0.0376457
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0242514   0.0145067   0.0339962
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0329685   0.0276057   0.0383313
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.0426984   0.0385076   0.0468892
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.0406583   0.0362428   0.0450739
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.0385451   0.0340807   0.0430096
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0210282   0.0098420   0.0322145
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.0336348   0.0220724   0.0451972
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.0264366   0.0167044   0.0361687
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.0234311   0.0137941   0.0330681
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.1519757   0.0794825   0.2244689
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1665252   0.0911521   0.2418984
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.2251397   0.1407528   0.3095265
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.2152966   0.1288867   0.3017065
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1465420   0.0757497   0.2173342
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.1766162   0.1022903   0.2509421
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.1644857   0.0917223   0.2372491
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1241736   0.0594658   0.1888813
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.0779411   0.0396530   0.1162293
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.2071240   0.1419037   0.2723444
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.1357970   0.0835681   0.1880259
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.0943949   0.0513803   0.1374095
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0891382   0.0636205   0.1146558
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0418267   0.0257825   0.0578708
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0542107   0.0321082   0.0763132
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0417527   0.0243017   0.0592037
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.3052603   0.2317412   0.3787794
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.3464587   0.2700349   0.4228825
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.3307140   0.2549016   0.4065265
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.3347489   0.2594295   0.4100682
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.0858153   0.0595480   0.1120826
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.1383519   0.0928006   0.1839033
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.1428247   0.0980181   0.1876313
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.1161001   0.0771061   0.1550942
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.1195165   0.0976462   0.1413867
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.2642123   0.2294916   0.2989329
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.1831747   0.1493605   0.2169889
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.1992291   0.1739524   0.2245058
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.0231481   0.0030820   0.0432143
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.0867347   0.0473085   0.1261609
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.0612245   0.0276404   0.0948086
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.0406091   0.0130291   0.0681892
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0737166   0.0649325   0.0825006
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.1081668   0.0980813   0.1182524
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.0894402   0.0803407   0.0985398
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.0812650   0.0722412   0.0902888
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.1023184   0.0827327   0.1219040
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.1944410   0.1733190   0.2155630
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.1525465   0.1321013   0.1729917
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.1364340   0.1177743   0.1550938


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2305630   0.1877616   0.2733644
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1853659   0.1477057   0.2230261
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1289398   0.1040599   0.1538198
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0499161   0.0411726   0.0586596
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3205980   0.2832855   0.3579105
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1140143   0.0964790   0.1315495
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1839685   0.1702020   0.1977349
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0514076   0.0362561   0.0665591
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0885031   0.0846269   0.0923794
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1614449   0.1501252   0.1727646
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.0611247   0.0378797   0.0843697
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0398671   0.0242254   0.0555088
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0236609   0.0182597   0.0290620
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0393342   0.0368494   0.0418190
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0263831   0.0210411   0.0317252
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1876676   0.1479906   0.2273445
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1560976   0.1209228   0.1912723
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1225490   0.0965478   0.1485502
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0562469   0.0461696   0.0663242
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3220339   0.2842988   0.3597690
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1153513   0.0969046   0.1337979
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1908832   0.1763448   0.2054216
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0521739   0.0368026   0.0675452
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0867929   0.0821342   0.0914516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1477315   0.1371478   0.1583151


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.9028325   0.5103085   1.5972816
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.4025133   0.8449479   2.3280057
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         1.2322657   0.7247605   2.0951454
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.2963008   0.7195614   2.3353057
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.1455325   0.6206392   2.1143440
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.9356065   0.4918645   1.7796760
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         2.2071317   1.2760429   3.8176071
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         1.4384249   0.7816187   2.6471556
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.8794298   0.4418322   1.7504308
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.5188934   0.3277648   0.8214742
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.6040374   0.3676802   0.9923332
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.5468044   0.3380224   0.8845419
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.1069325   0.8024674   1.5269152
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0225175   0.7342975   1.4238670
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.0309923   0.7422108   1.4321337
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.5220916   0.9876594   2.3457105
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.5586804   1.0249354   2.3703784
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.3579946   0.8887005   2.0751079
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         2.0187532   1.6246409   2.5084709
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.4743767   1.1484828   1.8927464
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.6338673   1.3223154   2.0188244
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         3.6166667   1.3584145   9.6290769
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         2.6170854   0.9380536   7.3014338
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.7624365   0.5859301   5.3012855
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.1734435   1.0391186   1.3251324
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.1009369   0.9759907   1.2418788
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.0510089   0.9286340   1.1895103
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.8306899   1.4982972   2.2368228
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.4601562   1.1747449   1.8149099
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.3338534   1.0698523   1.6630006
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.1428571   0.3596332   3.6318187
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.7821782   0.6180834   5.1387223
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.9708738   0.2894696   3.2562863
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.4000000   0.4539741   4.3174272
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.2080000   0.3763957   3.8769417
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.2080000   0.3763957   3.8769417
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         2.1941455   1.1132706   4.3244422
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.5844649   0.7361165   3.4105050
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.5665386   0.7931394   3.0940883
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.2951274   1.0776548   1.5564864
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.2332489   1.0214890   1.4889077
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.1691514   0.9675087   1.4128192
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.5995077   0.8461270   3.0236891
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.2571945   0.6543308   2.4155029
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.1142687   0.5790448   2.1442118
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         1.0957357   0.5691583   2.1094950
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.4814184   0.8065157   2.7210886
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         1.4166510   0.7581328   2.6471614
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.2052259   0.6345669   2.2890722
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.1224478   0.5830632   2.1608106
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.8473585   0.4161279   1.7254707
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         2.6574426   1.4858634   4.7527931
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         1.7423026   0.9360433   3.2430322
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         1.2111053   0.6215143   2.3600037
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.4692341   0.2908212   0.7570997
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.6081648   0.3695666   1.0008060
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.4684040   0.2822632   0.7772968
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.1349614   0.8200797   1.5707466
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0833837   0.7769905   1.5105980
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.0966014   0.7900777   1.5220461
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.6122053   1.0290873   2.5257389
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.6643265   1.0749011   2.5769651
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.3529069   0.8604168   2.1272910
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         2.2106768   1.7670987   2.7656022
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.5326317   1.1839864   1.9839416
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.6669597   1.3370806   2.0782252
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         3.7469388   1.4079441   9.9716670
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         2.6448980   0.9481883   7.3777385
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.7543147   0.5832458   5.2767121
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.4673340   1.2615129   1.7067357
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.2132992   1.0407290   1.4144844
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.1023980   0.9410718   1.2913801
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.9003524   1.5300995   2.3601991
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.4909003   1.1729625   1.8950167
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.3334266   1.0571404   1.6819208


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0250625   -0.0458244    0.0959493
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0209600   -0.0444861    0.0864062
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0365190   -0.0029196    0.0759575
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0253593   -0.0428274   -0.0078911
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0089061   -0.0546437    0.0724559
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0259606    0.0045020    0.0474192
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0639192    0.0445008    0.0833375
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0283661    0.0079551    0.0487771
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0070528   -0.0001307    0.0142364
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0472513    0.0290992    0.0654033
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0111247   -0.0272816    0.0495309
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0067545   -0.0187647    0.0322738
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0081800    0.0002818    0.0160781
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0063657    0.0016272    0.0111043
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0053549   -0.0042776    0.0149874
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0356918   -0.0285751    0.0999587
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0095556   -0.0523871    0.0714983
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0446079    0.0078506    0.0813652
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0328913   -0.0538077   -0.0119749
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0167736   -0.0471361    0.0806833
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0295359    0.0070306    0.0520413
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0713667    0.0509031    0.0918304
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0290258    0.0084625    0.0495890
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0130763    0.0051137    0.0210389
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0454131    0.0275549    0.0632713


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.1087011   -0.2581584    0.3685901
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.1130739   -0.3204402    0.4042608
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.2832249   -0.0919217    0.5294840
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.5080376   -0.8891758   -0.2037934
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0277796   -0.1920734    0.2070854
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.2276963    0.0178802    0.3926882
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.3474464    0.2365004    0.4422706
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.5517885   -0.0096188    0.8010204
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0796900   -0.0052437    0.1574476
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.2926773    0.1714653    0.3961564
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.1820000   -0.7560322    0.6189569
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.1694260   -0.7881194    0.6142019
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.3457166   -0.0754826    0.6019585
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.1618373    0.0317152    0.2744731
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.2029670   -0.2661736    0.4982823
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.1901864   -0.2342501    0.4686668
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0612156   -0.4327142    0.3848625
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.3640005    0.0014137    0.5949320
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.5847662   -0.9870893   -0.2639010
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0520864   -0.1686280    0.2311153
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.2560521    0.0374706    0.4249958
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.3738765    0.2611384    0.4694126
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.5563272    0.0006791    0.8030206
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.1506613    0.0543498    0.2371638
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.3074029    0.1762264    0.4176911
