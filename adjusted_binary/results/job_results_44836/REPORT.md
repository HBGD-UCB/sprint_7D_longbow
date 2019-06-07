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

unadjusted

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
![](/tmp/9b8601f6-a209-451e-b0b1-6feb1e533dfc/92c047d6-6b82-4e25-8ae2-0ca111bda0d4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9b8601f6-a209-451e-b0b1-6feb1e533dfc/92c047d6-6b82-4e25-8ae2-0ca111bda0d4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/9b8601f6-a209-451e-b0b1-6feb1e533dfc/92c047d6-6b82-4e25-8ae2-0ca111bda0d4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9b8601f6-a209-451e-b0b1-6feb1e533dfc/92c047d6-6b82-4e25-8ae2-0ca111bda0d4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.2083333   0.1269855   0.2896812
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1758242   0.0975065   0.2541418
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.2736842   0.1839089   0.3634595
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.2637363   0.1730770   0.3543955
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1700000   0.0962874   0.2437126
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.2190476   0.1398403   0.2982549
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.1960784   0.1189348   0.2732221
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1553398   0.0853004   0.2253792
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.0914286   0.0486958   0.1341613
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.2111111   0.1514506   0.2707716
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.1301775   0.0794084   0.1809466
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.0804598   0.0400153   0.1209043
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0758853   0.0545670   0.0972037
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0389430   0.0247992   0.0530867
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0455487   0.0269501   0.0641473
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0407470   0.0247774   0.0567167
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.3046358   0.2311645   0.3781070
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.3509934   0.2748040   0.4271828
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.3133333   0.2390417   0.3876249
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.3133333   0.2390417   0.3876249
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.0882353   0.0627447   0.1137258
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.1311475   0.0887756   0.1735195
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.1395349   0.0972370   0.1818327
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.1192982   0.0816514   0.1569451
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.1035714   0.0829624   0.1241805
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.2496329   0.2171216   0.2821441
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.1870370   0.1541427   0.2199314
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.2054934   0.1802301   0.2307567
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.0230415   0.0030669   0.0430160
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.0833333   0.0453831   0.1212835
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.0603015   0.0272078   0.0933952
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.0406091   0.0130294   0.0681889
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0661364   0.0592003   0.0730725
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.1082051   0.1004125   0.1159976
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.0955089   0.0880612   0.1029566
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.0842346   0.0769563   0.0915129
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.1061671   0.0856993   0.1266348
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.2193174   0.1960570   0.2425777
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.1706231   0.1493532   0.1918931
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.1464789   0.1246037   0.1683540
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.0500000   0.0072313   0.0927687
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                0.0571429   0.0126911   0.1015946
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                0.0891089   0.0334784   0.1447394
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                0.0485437   0.0069888   0.0900986
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0331126   0.0045495   0.0616757
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.0463576   0.0127936   0.0799216
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.0400000   0.0086145   0.0713855
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.0400000   0.0086145   0.0713855
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0154762   0.0071274   0.0238250
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0323529   0.0190521   0.0456538
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0240741   0.0111439   0.0370043
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0244151   0.0147656   0.0340645
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0279627   0.0234156   0.0325098
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.0484767   0.0432033   0.0537500
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.0439174   0.0385872   0.0492477
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.0369861   0.0323745   0.0415977
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0192308   0.0080378   0.0304237
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.0357143   0.0239217   0.0475069
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.0276025   0.0177882   0.0374169
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.0228782   0.0129558   0.0328006
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.1562500   0.0835202   0.2289798
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1648352   0.0885006   0.2411698
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.2105263   0.1284361   0.2926165
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.2197802   0.1345854   0.3049750
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1500000   0.0799298   0.2200702
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.1809524   0.1072264   0.2546783
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.1666667   0.0942544   0.2390789
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1262136   0.0620017   0.1904255
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.0683230   0.0293192   0.1073267
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.2244898   0.1569847   0.2919949
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.1216216   0.0689207   0.1743226
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.0833333   0.0399267   0.1267400
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0901639   0.0647458   0.1155821
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0426929   0.0266327   0.0587532
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0541872   0.0321608   0.0762136
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0415020   0.0241195   0.0588844
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.2953020   0.2219929   0.3686111
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.3489933   0.2723940   0.4255926
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.3197279   0.2442727   0.3951831
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.3241379   0.2478903   0.4003856
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.0854503   0.0591081   0.1117926
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.1377778   0.0927226   0.1828329
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.1493776   0.1043541   0.1944011
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.1141732   0.0750463   0.1533002
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.1038961   0.0823406   0.1254516
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.2706271   0.2352477   0.3060064
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.1924603   0.1580362   0.2268844
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.2101293   0.1839129   0.2363457
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.0231481   0.0030820   0.0432143
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.0867347   0.0473085   0.1261609
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.0612245   0.0276404   0.0948086
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.0406091   0.0130291   0.0681892
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0576884   0.0505838   0.0647930
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.1210692   0.1104573   0.1316811
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.0951711   0.0859424   0.1043998
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.0810560   0.0724547   0.0896574
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0954617   0.0759890   0.1149343
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.2027616   0.1808616   0.2246616
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.1565282   0.1360381   0.1770183
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.1330986   0.1140281   0.1521691


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
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.8439560   0.4667308   1.5260654
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.3136842   0.7888871   2.1875959
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         1.2659341   0.7524572   2.1298075
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.2885154   0.7326387   2.2661539
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.1534025   0.6422510   2.0713667
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.9137636   0.4888371   1.7080615
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         2.3090278   1.3372865   3.9868863
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         1.4238166   0.7746152   2.6171106
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.8800287   0.4429989   1.7481998
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.5131819   0.3242354   0.8122359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.6002300   0.3656523   0.9852970
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.5369553   0.3315264   0.8696774
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.1521739   0.8329131   1.5938094
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0285507   0.7334064   1.4424697
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.0285507   0.7334064   1.4424697
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.4863388   0.9635861   2.2926887
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.5813953   1.0403528   2.4038108
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.3520468   0.8814245   2.0739502
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         2.4102486   1.9001157   3.0573392
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.8058748   1.3846944   2.3551651
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.9840741   1.5702791   2.5069110
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         3.6166667   1.3584145   9.6290769
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         2.6170854   0.9380536   7.3014338
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.7624365   0.5859301   5.3012855
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.6360893   1.4412441   1.8572761
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.4441200   1.2713378   1.6403843
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.2736493   1.1183685   1.4504902
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         2.0657760   1.6634863   2.5653535
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.6071195   1.2750340   2.0256973
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.3797017   1.0798287   1.7628507
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.1428571   0.3596332   3.6318187
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.7821782   0.6180834   5.1387223
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.9708738   0.2894696   3.2562863
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.4000000   0.4539741   4.3174272
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.2080000   0.3763957   3.8769417
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.2080000   0.3763957   3.8769417
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         2.0904973   1.0609253   4.1192144
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.5555552   0.7265743   3.3303571
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.5775879   0.8082769   3.0791226
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.7336178   1.4212009   2.1147120
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.5705711   1.2809165   1.9257256
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.3226931   1.0899726   1.6051019
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.8571428   0.9489280   3.6346062
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.4353312   0.7201938   2.8605853
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.1896679   0.5851655   2.4186487
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         1.0549451   0.5471077   2.0341682
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.3473684   0.7341373   2.4728366
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         1.4065934   0.7675340   2.5777425
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.2063492   0.6490449   2.2421845
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.1111111   0.5870819   2.1028888
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.8414239   0.4217486   1.6787114
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         3.2857143   1.7234981   6.2639573
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         1.7800983   0.8693294   3.6450510
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         1.2196970   0.5631596   2.6416323
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.4735035   0.2959141   0.7576711
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.6009852   0.3664613   0.9855974
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.4602947   0.2778260   0.7626040
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.1818182   0.8484779   1.6461174
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0827149   0.7687003   1.5250047
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.0976489   0.7797142   1.5452240
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.6123724   1.0286983   2.5272179
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.7481216   1.1358753   2.6903737
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.3361353   0.8426785   2.1185514
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         2.6047855   2.0383190   3.3286778
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.8524305   1.4085632   2.4361697
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         2.0224946   1.5876194   2.5764893
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         3.7469388   1.4079441   9.9716670
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         2.6448980   0.9481883   7.3777385
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.7543147   0.5832458   5.2767121
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         2.0986761   1.8049272   2.4402322
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.6497457   1.4150905   1.9233121
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.4050676   1.1989088   1.6466764
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         2.1240111   1.6900163   2.6694553
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.6396969   1.2769298   2.1055236
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.3942622   1.0869953   1.7883861


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0222297   -0.0487852    0.0932446
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0153659   -0.0494518    0.0801835
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0375113   -0.0015968    0.0766193
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0259692   -0.0434286   -0.0085099
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0159622   -0.0479304    0.0798549
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0257790    0.0041576    0.0474003
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0803970    0.0609077    0.0998864
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0283661    0.0079551    0.0487771
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0223667    0.0164570    0.0282765
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0552778    0.0367323    0.0738234
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0111247   -0.0272816    0.0495309
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0067545   -0.0187647    0.0322738
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0081847    0.0004134    0.0159560
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0113715    0.0073909    0.0153521
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0071524   -0.0025160    0.0168207
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0314176   -0.0329336    0.0957687
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0060976   -0.0551565    0.0673516
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0542260    0.0168504    0.0916017
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0339170   -0.0547439   -0.0130902
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0267319   -0.0371721    0.0906359
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0299009    0.0072513    0.0525506
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0869871    0.0664644    0.1075098
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0290258    0.0084625    0.0495890
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0291045    0.0227854    0.0354237
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0522698    0.0343951    0.0701445


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0964147   -0.2702615    0.3572455
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0828947   -0.3424410    0.3734681
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.2909206   -0.0812617    0.5349937
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.5202573   -0.9008428   -0.2158724
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0497890   -0.1719326    0.2295623
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.2261029    0.0144903    0.3922773
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.4370153    0.3250675    0.5303949
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.5517885   -0.0096188    0.8010204
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.2527226    0.1823587    0.3170312
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.3423945    0.2175108    0.4473469
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.1820000   -0.7560322    0.6189569
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.1694260   -0.7881194    0.6142019
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.3459159   -0.0654223    0.5984447
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.2890997    0.1798732    0.3837791
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.2710964   -0.2147016    0.5626083
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.1674107   -0.2551819    0.4477255
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0390625   -0.4454894    0.3611846
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.4424845    0.0578203    0.6701016
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.6030030   -1.0032537   -0.2827225
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0830095   -0.1384988    0.2614208
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.2592162    0.0390123    0.4289618
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.4557085    0.3419952    0.5497704
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.5563272    0.0006791    0.8030206
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.3353331    0.2597226    0.4032209
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.3538163    0.2217815    0.4634497
