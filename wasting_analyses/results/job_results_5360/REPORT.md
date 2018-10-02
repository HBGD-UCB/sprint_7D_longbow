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
![](/tmp/c560472f-dcf5-4d0b-a3d1-dad728a02a90/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c560472f-dcf5-4d0b-a3d1-dad728a02a90/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/c560472f-dcf5-4d0b-a3d1-dad728a02a90/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c560472f-dcf5-4d0b-a3d1-dad728a02a90/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1087927   0.0507204   0.1668650
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.1096698   0.0555476   0.1637921
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.1597505   0.0911427   0.2283582
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1337713   0.0712617   0.1962808
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0223881   0.0098607   0.0349154
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0385208   0.0237112   0.0533304
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0160183   0.0042447   0.0277919
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0261682   0.0126381   0.0396983
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1216216   0.0689192   0.1743240
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1721854   0.1119168   0.2324541
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1418919   0.0856274   0.1981563
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1379310   0.0817573   0.1941048
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0249264   0.0139294   0.0359234
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0842132   0.0622906   0.1061359
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0526543   0.0333421   0.0719666
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0534710   0.0390333   0.0679087
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0448047   0.0382728   0.0513366
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.0647784   0.0569882   0.0725686
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.0555492   0.0484694   0.0626291
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.0551528   0.0488540   0.0614516
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0514677   0.0344829   0.0684524
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.0926593   0.0756580   0.1096607
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.0891187   0.0739297   0.1043077
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.0762354   0.0624542   0.0900166
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.0652174   0.0146933   0.1157415
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1379310   0.0653709   0.2104911
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.2000000   0.1172450   0.2827550
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.1573034   0.0815564   0.2330503
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1422862   0.0749484   0.2096240
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                0.1639133   0.0932693   0.2345573
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                0.1632147   0.0947988   0.2316305
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1697227   0.0980334   0.2414119
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0216963   0.0090116   0.0343809
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0337079   0.0195326   0.0478831
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0168675   0.0044749   0.0292600
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0255906   0.0118554   0.0393257
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0846011   0.0357946   0.1334076
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.0846544   0.0382775   0.1310314
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1288562   0.0725017   0.1852107
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1341326   0.0767688   0.1914963
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1100000   0.0485998   0.1714002
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.1142857   0.0533564   0.1752151
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.1176471   0.0550448   0.1802493
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1262136   0.0620017   0.1904255
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0659074   0.0416938   0.0901209
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0505135   0.0312666   0.0697604
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0275340   0.0102060   0.0448620
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0451745   0.0255538   0.0647953
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1361916   0.0815397   0.1908436
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.2000271   0.1358093   0.2642449
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1850171   0.1228917   0.2471425
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1805431   0.1174339   0.2436522
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.0289017   0.0112396   0.0465638
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.0409357   0.0112215   0.0706498
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.0618557   0.0279392   0.0957721
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.0600000   0.0270685   0.0929315
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0395152   0.0256506   0.0533797
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.1139190   0.0885240   0.1393140
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0741478   0.0508811   0.0974146
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0781528   0.0606073   0.0956982
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0708670   0.0514782   0.0902557
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.1222726   0.1031277   0.1414174
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.1210170   0.0987621   0.1432719
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.1011056   0.0851094   0.1171018


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
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1199262   0.0925504   0.1473020
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
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.0080624   0.4869153   2.0869951
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.4683934   0.7417629   2.9068307
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.2295980   0.6045965   2.5006943
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.7205958   0.8726409   3.3925180
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.7154845   0.2840630   1.8021283
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.1688474   0.5456139   2.5039760
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.4157469   0.8110866   2.4711779
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.1666667   0.6484135   2.0991407
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.1340996   0.6257314   2.0554856
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         3.3784770   2.0242212   5.6387644
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         2.1123930   1.1902239   3.7490461
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         2.1451578   1.2789052   3.5981572
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.4457941   1.2152317   1.7201004
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.2398078   1.0298223   1.4926105
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.2309609   1.0276352   1.4745161
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.8003404   1.2427925   2.6080184
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.7315470   1.1923528   2.5145705
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.4812283   1.0203306   2.1503200
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         2.1149425   0.8291086   5.3949289
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         3.0666667   1.2741917   7.3807140
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         2.4119850   0.9687855   6.0051185
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.1519975   0.6097448   2.1764813
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.1470872   0.6107876   2.1542825
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.1928259   0.6342036   2.2434968
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.5536261   0.7560946   3.1923971
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.7774371   0.3040121   1.9881064
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.1794918   0.5333532   2.6084045
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.0006300   0.4517941   2.2161873
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.5231030   0.7378891   3.1438907
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.5854699   0.7736355   3.2492238
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.0389610   0.4801491   2.2481350
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.0695187   0.4946168   2.3126394
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.1473963   0.5391541   2.4418219
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.7664319   0.4515661   1.3008458
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.4177684   0.2016100   0.8656836
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.6854249   0.3880177   1.2107882
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.4687179   0.8793845   2.4530025
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.3585057   0.8058006   2.2903155
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.3256545   0.7794236   2.2546917
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.4163743   0.5483915   3.6581822
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         2.1402062   0.9416365   4.8643850
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         2.0760000   0.9130568   4.7201622
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         2.8829189   1.9030442   4.3673296
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.8764399   1.1726666   3.0025812
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.9777912   1.3045828   2.9983976
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.7253818   1.2639903   2.3551939
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.7076650   1.2400106   2.3516893
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.4266958   1.0446701   1.9484245


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0082805   -0.0435175   0.0600784
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0045011   -0.0067043   0.0157066
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0219595   -0.0248170   0.0687360
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0263009    0.0152873   0.0373146
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0124311    0.0070853   0.0177770
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0290914    0.0143572   0.0438256
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0744474    0.0241121   0.1247827
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0169178   -0.0424178   0.0762533
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0036325   -0.0076655   0.0149306
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0353251   -0.0090548   0.0797049
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0070732   -0.0467954   0.0609417
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0164374   -0.0366126   0.0037378
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0492503    0.0001193   0.0983813
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0161038    0.0000904   0.0321171
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0336186    0.0200819   0.0471553
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0360838    0.0191611   0.0530065


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0707291   -0.4939499   0.4219723
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.1673958   -0.3700147   0.4939983
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.1529412   -0.2428950   0.4227118
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.5134161    0.2667076   0.6771222
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.2171915    0.1176016   0.3055414
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.3611187    0.1446138   0.5228245
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.5330435    0.0379996   0.7733386
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.1062648   -0.3550464   0.4105275
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.1434153   -0.4391886   0.4901729
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.2945567   -0.1865751   0.5805994
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0604167   -0.5329147   0.4240927
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.3322702   -0.8008964   0.0144108
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.2655834   -0.0499504   0.4862922
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.3578176   -0.0909799   0.6219928
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.4596864    0.2537202   0.6088078
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.3373872    0.1570965   0.4791151
