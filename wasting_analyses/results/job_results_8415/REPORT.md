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

**Outcome Variable:** pers_wast

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

agecat        studyid                    country                        hhwealth_quart    pers_wast   n_cell       n
------------  -------------------------  -----------------------------  ---------------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                 0       20      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                 1        1      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                 0       20      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                 1        1      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                 0       19      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                 1        1      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                 0       18      82
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                 1        2      82
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                 0       16      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                 1        2      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                 0       16      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                 1        3      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                 0       15      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                 1        2      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                 0       17      71
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                 1        0      71
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                 0       11      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                 1        0      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                 0       11      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                 1        0      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                 0       10      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                 1        0      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                 0       10      42
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                 1        0      42
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                 0       10      36
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                 1        0      36
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                 0        9      36
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                 1        0      36
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                 0        8      36
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                 1        0      36
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                 0        9      36
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                 1        0      36
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                 0       17      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                 1        0      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                 0       16      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                 1        1      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                 0       17      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                 1        0      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                 0       17      68
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                 1        0      68
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 0       15      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 1        0      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 0       15      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 1        0      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 0       15      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 1        0      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 0       15      60
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 1        0      60
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                 0       93     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                 1        3     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                 0       83     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                 1        8     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                 0       89     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                 1        6     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                 0       85     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                 1        6     373
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4                 0       90     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4                 1       10     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1                 0       95     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1                 1       10     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2                 0       87     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2                 1       15     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3                 0       90     410
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3                 1       13     410
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                 0      165     638
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                 1        2     638
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                 0      151     638
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                 1        5     638
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                 0      150     638
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                 1        5     638
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                 0      157     638
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                 1        3     638
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 0      524    2157
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 1       12    2157
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 0      624    2157
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 1       25    2157
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 0      430    2157
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 1        7    2157
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 0      521    2157
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 1       14    2157
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                 0      260    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                 1       36    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                 0      250    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                 1       52    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                 0      254    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                 1       42    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                 0      250    1184
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                 1       40    1184
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                 0       52     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                 1        0     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                 0       59     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                 1        0     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                 0       52     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                 1        0     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                 0       52     215
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                 1        0     215
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                 0      375    1023
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                 1        9    1023
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                 0      199    1023
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                 1        4    1023
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                 0      197    1023
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                 1       11    1023
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                 0      217    1023
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                 1       11    1023
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                 0      754    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                 1       19    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                 0      556    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                 1       48    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                 0      476    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                 1       27    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                 0      881    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                 1       50    2811
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                 0      188     715
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                 1        1     715
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                 0      172     715
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                 1        3     715
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                 0      176     715
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                 1        2     715
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                 0      173     715
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                 1        0     715
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                 0     8438   31344
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                 1      396   31344
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                 0     6338   31344
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                 1      506   31344
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                 0     7306   31344
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                 1      472   31344
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                 0     7468   31344
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                 1      420   31344
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                 0     2295   10303
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                 1      124   10303
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                 0     2321   10303
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                 1      263   10303
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                 0     2334   10303
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                 1      235   10303
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                 0     2523   10303
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                 1      208   10303
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                 0       21      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                 1        0      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                 0       20      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                 1        1      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                 0       20      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                 1        0      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                 0       18      82
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                 1        2      82
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                 0       16      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                 1        2      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                 0       18      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                 1        1      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                 0       14      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                 1        3      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                 0       16      71
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                 1        1      71
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                 0       11      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                 1        0      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                 0       11      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                 1        0      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                 0       10      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                 1        0      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                 0       10      42
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                 1        0      42
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                 0       10      36
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                 1        0      36
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                 0        9      36
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                 1        0      36
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                 0        8      36
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                 1        0      36
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                 0        9      36
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                 1        0      36
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                 0       17      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                 1        0      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                 0       16      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                 1        1      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                 0       17      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                 1        0      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                 0       17      68
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                 1        0      68
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 0       15      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 1        0      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 0       15      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 1        0      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 0       15      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 1        0      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 0       15      60
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 1        0      60
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                 0       86     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                 1        6     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                 0       75     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                 1       12     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                 0       72     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                 1       18     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                 0       75     358
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                 1       14     358
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4                 0       84     402
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4                 1       14     402
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1                 0       86     402
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1                 1       17     402
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2                 0       85     402
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2                 1       16     402
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3                 0       83     402
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3                 1       17     402
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                 0      163     635
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                 1        4     635
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                 0      152     635
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                 1        2     635
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                 0      149     635
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                 1        6     635
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                 0      157     635
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                 1        2     635
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 0      496    2053
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 1       11    2053
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 0      602    2053
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 1       21    2053
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 0      408    2053
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 1        7    2053
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 0      495    2053
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 1       13    2053
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                 0      240    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                 1       24    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                 0      254    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                 1       28    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                 0      232    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                 1       38    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                 0      228    1084
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                 1       40    1084
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4                 0       52     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4                 1        0     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q1                 0       59     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q1                 1        0     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q2                 0       52     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q2                 1        0     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q3                 0       52     215
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q3                 1        0     215
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                 0       19      80
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                 1        2      80
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                 0       18      80
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                 1        3      80
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                 0       17      80
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                 1        2      80
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                 0       18      80
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                 1        1      80
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                 0       15      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                 1        3      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                 0       16      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                 1        3      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                 0       15      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                 1        2      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                 0       14      71
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                 1        3      71
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                 0       11      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                 1        0      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                 0       11      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                 1        0      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                 0       10      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                 1        0      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                 0       10      42
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                 1        0      42
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                 0       10      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                 1        0      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                 0        9      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                 1        0      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                 0        8      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                 1        0      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                 0        9      36
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                 1        0      36
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                 0       17      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                 1        0      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                 0       16      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                 1        1      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                 0       17      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                 1        0      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                 0       17      68
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                 1        0      68
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 0       15      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 1        0      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 0       15      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 1        0      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 0       15      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 1        0      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 0       15      60
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 1        0      60
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                 0       92     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                 1        4     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                 0       82     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                 1        9     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                 0       88     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                 1        7     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                 0       83     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                 1        8     373
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4                 0       89     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4                 1       11     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1                 0       93     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1                 1       12     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2                 0       90     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2                 1       12     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3                 0       90     410
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3                 1       13     410
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                 0      156     600
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                 1        4     600
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                 0      123     600
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                 1       19     600
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                 0      137     600
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                 1        9     600
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                 0      146     600
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                 1        6     600
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 0      385    1698
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                 1       28    1698
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 0      479    1698
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                 1       26    1698
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 0      339    1698
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                 1       10    1698
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 0      411    1698
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                 1       20    1698
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                 0      252    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                 1       42    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                 0      230    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                 1       64    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                 0      234    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                 1       56    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                 0      224    1154
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                 1       52    1154
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                 0       52     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                 1        0     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                 0       59     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                 1        0     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                 0       52     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                 1        0     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                 0       52     215
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                 1        0     215
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                 0      336     911
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                 1       10     911
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                 0      164     911
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                 1        7     911
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                 0      182     911
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                 1       12     911
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                 0      188     911
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                 1       12     911
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                 0      704    2639
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                 1       28    2639
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                 0      488    2639
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                 1       58    2639
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                 0      436    2639
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                 1       36    2639
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                 0      818    2639
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                 1       71    2639
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                 0      182     691
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                 1        2     691
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                 0      166     691
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                 1        2     691
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                 0      170     691
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                 1        2     691
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                 0      167     691
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                 1        0     691
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                 0     2145    9855
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                 1      164    9855
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                 0     2137    9855
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                 1      319    9855
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                 0     2154    9855
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                 1      305    9855
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                 0     2365    9855
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                 1      266    9855


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
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/6eb5d19b-d099-4aa3-94e1-336bbacbdb3d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6eb5d19b-d099-4aa3-94e1-336bbacbdb3d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6eb5d19b-d099-4aa3-94e1-336bbacbdb3d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6eb5d19b-d099-4aa3-94e1-336bbacbdb3d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1000000   0.0411292   0.1588708
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.0952381   0.0390226   0.1514536
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.1470588   0.0782438   0.2158739
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1262136   0.0620017   0.1904255
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0223881   0.0098607   0.0349154
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0385208   0.0237112   0.0533304
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0160183   0.0042447   0.0277919
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0261682   0.0126381   0.0396983
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1216216   0.0689192   0.1743240
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1721854   0.1119168   0.2324541
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1418919   0.0856274   0.1981563
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1379310   0.0817573   0.1941048
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0245796   0.0136622   0.0354969
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0794702   0.0578963   0.1010441
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0536779   0.0339783   0.0733776
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0537057   0.0392222   0.0681892
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0448268   0.0372254   0.0524282
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.0739334   0.0644203   0.0834465
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.0606840   0.0521829   0.0691851
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.0532454   0.0461188   0.0603721
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0512609   0.0332535   0.0692682
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.1017802   0.0829361   0.1206243
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.0914753   0.0752634   0.1076872
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.0761626   0.0612455   0.0910797
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.0652174   0.0146933   0.1157415
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1379310   0.0653709   0.2104911
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.2000000   0.1172450   0.2827550
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.1573034   0.0815564   0.2330503
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1428571   0.0734901   0.2122242
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                0.1650485   0.0932680   0.2368291
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                0.1584158   0.0871180   0.2297137
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1700000   0.0962856   0.2437144
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0216963   0.0090116   0.0343809
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0337079   0.0195326   0.0478831
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0168675   0.0044749   0.0292600
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0255906   0.0118554   0.0393257
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0909091   0.0418218   0.1399964
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.0992908   0.0498840   0.1486975
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1407407   0.0820250   0.1994564
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1492537   0.0888645   0.2096429
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1100000   0.0485998   0.1714002
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.1142857   0.0533564   0.1752151
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.1176471   0.0550448   0.1802493
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1262136   0.0620017   0.1904255
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0677966   0.0435439   0.0920493
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0514851   0.0322058   0.0707645
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0286533   0.0111452   0.0461613
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0464037   0.0265384   0.0662691
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1428571   0.0862406   0.1994737
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.2176871   0.1509184   0.2844557
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1931034   0.1287985   0.2574084
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1884058   0.1231075   0.2537041
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.0289017   0.0112396   0.0465638
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.0409357   0.0112215   0.0706498
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.0618557   0.0279392   0.0957721
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.0600000   0.0270685   0.0929315
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0382514   0.0243541   0.0521486
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.1062271   0.0803768   0.1320774
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0762712   0.0523208   0.1002215
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0798650   0.0620419   0.0976881
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0710264   0.0508243   0.0912285
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.1298860   0.1091093   0.1506627
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.1240342   0.1007470   0.1473213
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.1011022   0.0842379   0.1179666


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0268892   0.0200612   0.0337172
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1435811   0.1153098   0.1718524
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0512273   0.0430760   0.0593786
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0572358   0.0531429   0.0613287
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0805591   0.0719065   0.0892117
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1396648   0.1037072   0.1756225
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1592040   0.1233945   0.1950135
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0253288   0.0185306   0.0321270
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1199262   0.0925505   0.1473020
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1170732   0.0859146   0.1482317
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0494700   0.0391528   0.0597871
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1854419   0.1537023   0.2171816
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0450055   0.0315357   0.0584753
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0731338   0.0631985   0.0830690
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1069508   0.0962252   0.1176764


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         0.9523810   0.4137684   2.1921189
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.4705882   0.6932491   3.1195562
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.2621359   0.5796824   2.7480341
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.7205958   0.8726409   3.3925180
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.7154845   0.2840630   1.8021283
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.1688474   0.5456139   2.5039760
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.4157469   0.8110866   2.4711779
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.1666667   0.6484135   2.0991407
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.1340996   0.6257314   2.0554856
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         3.2331823   1.9211236   5.4413303
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         2.1838443   1.2274252   3.8855126
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         2.1849737   1.2994972   3.6738133
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.6493116   1.3463850   2.0203944
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.3537431   1.0838524   1.6908394
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.1878035   0.9576037   1.4733412
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.9855344   1.3384210   2.9455208
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.7845057   1.2005701   2.6524571
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.4857845   0.9948829   2.2189100
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         2.1149425   0.8291086   5.3949289
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         3.0666667   1.2741917   7.3807140
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         2.4119850   0.9687855   6.0051185
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.1553398   0.6020198   2.2172197
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.1089109   0.5719560   2.1499613
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.1900000   0.6206144   2.2817710
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.5536261   0.7560946   3.1923971
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.7774371   0.3040121   1.9881064
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.1794918   0.5333532   2.6084045
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.0921985   0.5240950   2.2761096
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.5481480   0.7824749   3.0630533
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.6417909   0.8361514   3.2236712
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.0389610   0.4801491   2.2481350
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.0695187   0.4946168   2.3126394
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.1473963   0.5391541   2.4418219
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.7594059   0.4524435   1.2746286
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.4226361   0.2081932   0.8579592
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.6844548   0.3917941   1.1957258
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.5238095   0.9231829   2.5152064
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.3517241   0.8055191   2.2682990
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.3188406   0.7790096   2.2327588
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.4163743   0.5483915   3.6581822
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         2.1402062   0.9416365   4.8643850
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         2.0760000   0.9130568   4.7201622
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         2.7770801   1.7934078   4.3002901
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.9939467   1.2335604   3.2230474
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         2.0878997   1.3631233   3.1980417
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.8286997   1.3218809   2.5298366
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.7463102   1.2538674   2.4321546
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.4234456   1.0269021   1.9731164


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0170732   -0.0353292   0.0694755
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0045011   -0.0067043   0.0157066
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0219595   -0.0248170   0.0687360
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0266478    0.0156896   0.0376059
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0124090    0.0060982   0.0187198
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0292982    0.0135968   0.0449997
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0744474    0.0241121   0.1247827
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0163468   -0.0448746   0.0775683
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0036325   -0.0076655   0.0149306
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0290171   -0.0155400   0.0735742
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0070732   -0.0467954   0.0609417
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0183266   -0.0385382   0.0018849
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0425848   -0.0082047   0.0933743
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0161038    0.0000904   0.0321171
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0348824    0.0212919   0.0484729
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0359244    0.0182774   0.0535713


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.1458333   -0.4403244    0.4934470
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.1673958   -0.3700147    0.4939983
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.1529412   -0.2428950    0.4227118
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.5201865    0.2748607    0.6825148
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.2168052    0.0967462    0.3209062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.3636861    0.1298018    0.5347090
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.5330435    0.0379996    0.7733386
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.1026786   -0.3767125    0.4151388
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.1434153   -0.4391886    0.4901729
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.2419580   -0.2321932    0.5336545
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0604167   -0.5329147    0.4240927
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.3704600   -0.8379702   -0.0218668
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.2296395   -0.0966331    0.4588388
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.3578176   -0.0909799    0.6219928
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.4769671    0.2689101    0.6258142
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.3358962    0.1462815    0.4833967
