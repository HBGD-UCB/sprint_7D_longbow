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

**Outcome Variable:** wast_rec90d

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

agecat        studyid                    country                        hhwealth_quart    wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  ---------------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                   0        2     41
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                   1        3     41
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                   0        9     41
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                   1        8     41
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                   0        6     41
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                   1        8     41
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                   0        4     41
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                   1        1     41
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                   0        6     65
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                   1       11     65
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                   0        7     65
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                   1       14     65
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                   0        3     65
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                   1        6     65
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                   0        6     65
0-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                   1       12     65
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                   0        0     12
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                   1        2     12
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                   0        0     12
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                   1        5     12
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                   0        0     12
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                   1        2     12
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                   0        0     12
0-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                   1        3     12
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                   0        1      8
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                   1        3      8
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                   0        0      8
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                   1        1      8
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                   0        1      8
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                   1        1      8
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                   0        0      8
0-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                   1        1      8
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                   0        0     26
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                   1        6     26
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                   0        2     26
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                   1        6     26
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                   0        0     26
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                   1        6     26
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                   0        0     26
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                   1        6     26
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0        1     16
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1        1     16
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0        0     16
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1        3     16
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0        1     16
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1        5     16
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0        0     16
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1        5     16
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                   0       20    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                   1       49    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                   0       34    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                   1       45    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                   0       35    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                   1       64    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                   0       31    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                   1       48    326
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4                   0       44    395
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4                   1       61    395
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1                   0       44    395
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1                   1       60    395
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2                   0       36    395
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2                   1       51    395
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3                   0       38    395
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3                   1       61    395
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                   0       23    306
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                   1       54    306
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                   0       52    306
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                   1       54    306
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                   0       26    306
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                   1       39    306
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                   0       27    306
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                   1       31    306
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0       81    711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1      105    711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0       77    711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1      124    711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0       44    711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1      105    711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0       64    711
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1      111    711
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   0       63    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   1       69    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   0       65    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   1       67    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   0       67    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   1       81    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   0       73    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   1       76    561
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                   0        1      9
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                   1        1      9
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                   0        1      9
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                   1        2      9
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                   0        0      9
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                   1        3      9
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                   0        0      9
0-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                   1        1      9
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                   0       68    368
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                   1       55    368
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                   0       44    368
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                   1       43    368
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                   0       44    368
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                   1       33    368
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                   0       48    368
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                   1       33    368
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                   0      135   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                   1      269   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                   0      183   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                   1      256   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                   0      127   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                   1      159   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                   0      219   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                   1      341   1689
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                   0        7     78
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                   1        3     78
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                   0       24     78
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                   1        5     78
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                   0       19     78
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                   1        3     78
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                   0       15     78
0-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                   1        2     78
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   0      958   7566
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   1      800   7566
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   0     1199   7566
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   1      780   7566
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   0     1157   7566
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   1      830   7566
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   0     1055   7566
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   1      787   7566
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   0      271   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   1      130   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   0      475   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   1      150   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   0      409   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   1      119   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   0      375   2062
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   1      133   2062
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                   0        0     20
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                   1        2     20
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                   0        4     20
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                   1        5     20
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                   0        1     20
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                   1        5     20
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                   0        2     20
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                   1        1     20
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                   0        2     32
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                   1        5     32
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                   0        2     32
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                   1        8     32
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                   0        3     32
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                   1        5     32
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                   0        1     32
0-6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                   1        6     32
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                   0        0      6
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                   1        0      6
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                   0        0      6
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                   1        3      6
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                   0        0      6
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                   1        1      6
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                   0        0      6
0-6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                   1        2      6
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                   0        0      1
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                   1        0      1
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                   0        0      1
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                   1        1      1
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                   0        0      1
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                   1        0      1
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                   0        0      1
0-6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                   1        0      1
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                   0        0     10
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                   1        2     10
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                   0        1     10
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                   1        2     10
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                   0        0     10
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                   1        3     10
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                   0        0     10
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                   1        2     10
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0        0      5
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1        1      5
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0        0      5
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1        0      5
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0        0      5
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1        2      5
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0        0      5
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1        2      5
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                   0       10    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                   1       35    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                   0       20    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                   1       27    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                   0       21    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                   1       40    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                   0       15    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                   1       35    203
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4                   0       22    240
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4                   1       36    240
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1                   0       23    240
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1                   1       40    240
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2                   0       21    240
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2                   1       36    240
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3                   0       21    240
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3                   1       41    240
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                   0        9    183
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                   1       39    183
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                   0       14    183
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                   1       45    183
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                   0        7    183
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                   1       31    183
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                   0        9    183
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                   1       29    183
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0       26    339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1       61    339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0       34    339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1       75    339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0       13    339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1       43    339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0       28    339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1       59    339
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   0       15    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   1       27    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   0       16    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   1       25    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   0       22    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   1       30    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   0       22    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   1       23    180
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4                   0        0      4
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q4                   1        1      4
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q1                   0        0      4
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q1                   1        0      4
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q2                   0        0      4
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q2                   1        3      4
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q3                   0        0      4
0-6 months    ki1114097-CONTENT          PERU                           Wealth Q3                   1        0      4
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4                   0       18    207
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4                   1       54    207
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1                   0        9    207
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1                   1       41    207
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2                   0        7    207
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2                   1       29    207
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3                   0       17    207
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3                   1       32    207
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                   0       59    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                   1      160    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                   0       52    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                   1      137    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                   0       32    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                   1       89    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                   0       55    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                   1      168    752
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4                   0        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4                   1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1                   0        3      4
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1                   1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2                   0        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2                   1        0      4
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3                   0        1      4
0-6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3                   1        0      4
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   0      298   4734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   1      800   4734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   0      471   4734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   1      780   4734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   0      421   4734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   1      830   4734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   0      347   4734
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   1      787   4734
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   0       53    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   1       75    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   0       72    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   1       80    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   0       62    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   1       67    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   0       55    548
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   1       84    548
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                   0        2     21
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                   1        1     21
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                   0        5     21
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                   1        3     21
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                   0        5     21
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                   1        3     21
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                   0        2     21
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                   1        0     21
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                   0        4     33
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                   1        6     33
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                   0        5     33
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                   1        6     33
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                   0        0     33
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                   1        1     33
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                   0        5     33
6-24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                   1        6     33
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                   0        0      6
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                   1        2      6
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                   0        0      6
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                   1        2      6
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                   0        0      6
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                   1        1      6
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                   0        0      6
6-24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                   1        1      6
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                   0        1      7
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                   1        3      7
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                   0        0      7
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                   1        0      7
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                   0        1      7
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                   1        1      7
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                   0        0      7
6-24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                   1        1      7
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                   0        0     16
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                   1        4     16
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                   0        1     16
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                   1        4     16
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                   0        0     16
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                   1        3     16
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                   0        0     16
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                   1        4     16
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0        1     11
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1        0     11
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0        0     11
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1        3     11
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0        1     11
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1        3     11
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0        0     11
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1        3     11
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                   0       10    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                   1       14    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                   0       14    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                   1       18    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                   0       14    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                   1       24    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                   0       16    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                   1       13    123
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4                   0       22    155
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4                   1       25    155
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1                   0       21    155
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1                   1       20    155
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2                   0       15    155
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2                   1       15    155
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3                   0       17    155
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3                   1       20    155
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                   0       14    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                   1       15    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                   0       38    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                   1        9    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                   0       19    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                   1        8    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                   0       18    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                   1        2    123
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   0       55    372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                   1       44    372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   0       43    372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                   1       49    372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   0       31    372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                   1       62    372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   0       36    372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                   1       52    372
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   0       48    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                   1       42    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   0       49    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                   1       42    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   0       45    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                   1       51    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   0       51    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                   1       53    381
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                   0        1      5
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q4                   1        0      5
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                   0        1      5
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q1                   1        2      5
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                   0        0      5
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q2                   1        0      5
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                   0        0      5
6-24 months   ki1114097-CONTENT          PERU                           Wealth Q3                   1        1      5
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                   0       50    161
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                   1        1    161
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                   0       35    161
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                   1        2    161
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                   0       37    161
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                   1        4    161
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                   0       31    161
6-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                   1        1    161
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                   0       76    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                   1      109    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                   0      131    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                   1      119    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                   0       95    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                   1       70    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                   0      164    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                   1      173    937
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                   0        7     74
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                   1        3     74
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                   0       21     74
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                   1        5     74
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                   0       19     74
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                   1        3     74
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                   0       14     74
6-24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                   1        2     74
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   0      660   2832
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                   1        0   2832
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   0      728   2832
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                   1        0   2832
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   0      736   2832
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                   1        0   2832
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   0      708   2832
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                   1        0   2832
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   0      218   1514
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                   1       55   1514
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   0      403   1514
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                   1       70   1514
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   0      347   1514
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                   1       52   1514
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   0      320   1514
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                   1       49   1514


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
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
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
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/731dd7e4-9207-45ce-9aef-850a5d32909c/2b3f7eca-b8ea-4685-be2e-91d7f2af367e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/731dd7e4-9207-45ce-9aef-850a5d32909c/2b3f7eca-b8ea-4685-be2e-91d7f2af367e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/731dd7e4-9207-45ce-9aef-850a5d32909c/2b3f7eca-b8ea-4685-be2e-91d7f2af367e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/731dd7e4-9207-45ce-9aef-850a5d32909c/2b3f7eca-b8ea-4685-be2e-91d7f2af367e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.7101449   0.5972061   0.8230838
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.5696203   0.4539734   0.6852671
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.6464646   0.5451221   0.7478072
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.6075949   0.4943779   0.7208120
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.5809524   0.4835796   0.6783252
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.5769231   0.4754717   0.6783744
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.5862069   0.4781803   0.6942335
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.6161616   0.5052331   0.7270901
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.7012987   0.5992969   0.8033005
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.5094340   0.4165902   0.6022778
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.6000000   0.4709802   0.7290198
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.5344828   0.3925509   0.6764147
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.5645161   0.4911377   0.6378946
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.6169154   0.5447761   0.6890547
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.7046980   0.6263903   0.7830057
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.6342857   0.5573657   0.7112057
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.5227273   0.4294558   0.6159987
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.5075758   0.4084335   0.6067180
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.5472973   0.4645183   0.6300763
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.5100671   0.4248533   0.5952809
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.4471545   0.3569854   0.5373236
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.4942529   0.3852897   0.6032161
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.4285714   0.3150080   0.5421349
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.4074074   0.2948140   0.5200008
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.6658416   0.6156941   0.7159891
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.5831435   0.5356939   0.6305931
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.5559441   0.4939019   0.6179862
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.6089286   0.5675004   0.6503567
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.4550626   0.4317461   0.4783790
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.3941385   0.3726740   0.4156030
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.4177151   0.3959988   0.4394315
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.4272530   0.4047115   0.4497945
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.3241895   0.2743809   0.3739981
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.2400000   0.2079918   0.2720082
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.2253788   0.1887876   0.2619700
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.2618110   0.2222408   0.3013813
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.7777778   0.6592238   0.8963317
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.5744681   0.4284163   0.7205198
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.6557377   0.5316832   0.7797922
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.7000000   0.5730269   0.8269731
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.6206897   0.4919104   0.7494689
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                0.6349206   0.5131671   0.7566742
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                0.6315789   0.5040730   0.7590849
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                0.6612903   0.5402274   0.7823532
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.8125000   0.6999286   0.9250714
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.7627119   0.6550333   0.8703904
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.8157895   0.6901313   0.9414477
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.7631579   0.6373034   0.8890124
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.7011494   0.6027851   0.7995137
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.6880734   0.5996955   0.7764513
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.7678571   0.6553923   0.8803220
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.6781609   0.5794647   0.7768571
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.6428571   0.4959045   0.7898098
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.6097561   0.4583379   0.7611743
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.5769231   0.4444789   0.7093673
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.5111111   0.3630025   0.6592198
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.7500000   0.6492506   0.8507494
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.8200000   0.7127330   0.9272670
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.8055556   0.6753282   0.9357829
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.6530612   0.5220152   0.7841072
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.7305936   0.6702821   0.7909052
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.7248677   0.6628824   0.7868530
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.7355372   0.6562866   0.8147878
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.7533632   0.6966900   0.8100364
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.7285974   0.7022810   0.7549139
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.6235012   0.5966385   0.6503639
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.6634692   0.6372710   0.6896674
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.6940035   0.6672280   0.7207791
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.5859375   0.5005295   0.6713455
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.5263158   0.4468664   0.6057652
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.5193798   0.4330833   0.6056764
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.6043165   0.5229504   0.6856826
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.5833333   0.3760402   0.7906264
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.5625000   0.3678223   0.7571777
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.6315789   0.4735198   0.7896381
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.4482759   0.2642794   0.6322724
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.5319149   0.3941494   0.6696804
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.4878049   0.3199789   0.6556308
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.5000000   0.2999019   0.7000981
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.5405405   0.3626702   0.7184109
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.4444444   0.3450351   0.5438538
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.5326087   0.4262476   0.6389698
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.6666667   0.5658761   0.7674572
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.5909091   0.4849145   0.6969037
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.4666667   0.3531511   0.5801823
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.4615385   0.3410980   0.5819789
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.5312500   0.4281925   0.6343075
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.5096154   0.4083904   0.6108403
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.5891892   0.5164024   0.6619760
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.4760000   0.4100748   0.5419252
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.4242424   0.3419677   0.5065172
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.5133531   0.4577706   0.5689356
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.2014652   0.1526997   0.2502307
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.1479915   0.1177103   0.1782728
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.1303258   0.0987426   0.1619091
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.1327913   0.0979855   0.1675971


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6319018   0.5759256   0.6878781
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5898734   0.5376978   0.6420491
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.5816993   0.5247676   0.6386311
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6258790   0.5881498   0.6636083
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5222816   0.4773852   0.5671781
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4456522   0.3930622   0.4982422
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6068680   0.5823645   0.6313715
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4225482   0.4114219   0.4336746
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2580019   0.2386523   0.2773515
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6748768   0.6092233   0.7405304
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.6375000   0.5751450   0.6998550
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.7868852   0.7281477   0.8456228
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7020649   0.6526590   0.7514708
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5833333   0.5108676   0.6557991
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7536232   0.6949302   0.8123162
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7367021   0.7051294   0.7682749
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.6753274   0.6619885   0.6886664
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.5583942   0.5167799   0.6000084
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5609756   0.4682842   0.6536670
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5161290   0.4322562   0.6000019
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5564516   0.5041613   0.6087419
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4934383   0.4388573   0.5480193
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.5026681   0.4688378   0.5364984
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1492734   0.1316631   0.1668838


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.8021183   0.6198415   1.0379973
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.9103278   0.7281287   1.1381183
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.8555929   0.6696896   1.0931022
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         0.9930643   0.7789031   1.2661096
0-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.0090447   0.7865678   1.2944479
0-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.0606061   0.8293241   1.3563880
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         0.7264151   0.5752588   0.9172895
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.8555556   0.6599233   1.1091824
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.7621328   0.5629396   1.0318094
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.0928216   0.9175216   1.3016142
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         1.2483221   1.0521020   1.4811380
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.1235918   0.9405966   1.3421892
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         0.9710145   0.7454136   1.2648940
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0470035   0.8288937   1.3225053
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.9757806   0.7643352   1.2457200
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.1053292   0.8197376   1.4904190
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         0.9584416   0.6869861   1.3371597
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         0.9111111   0.6470918   1.2828527
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         0.8757992   0.7838829   0.9784933
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         0.8349494   0.7297526   0.9553109
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         0.9145247   0.8262451   1.0122365
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         0.8661193   0.8037181   0.9333653
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         0.9179290   0.8533127   0.9874384
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         0.9388884   0.8723160   1.0105414
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         0.7403077   0.6040256   0.9073382
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         0.6952069   0.5559524   0.8693416
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         0.8075863   0.6510132   1.0018163
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.7386018   0.5491282   0.9934523
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.8430913   0.6612474   1.0749426
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.9000000   0.7101425   1.1406161
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.0229277   0.7711592   1.3568936
0-6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.0175439   0.7617749   1.3591882
0-6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.0654122   0.8078824   1.4050352
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         0.9387223   0.7702487   1.1440455
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         1.0040486   0.8161674   1.2351799
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.9392713   0.7572670   1.1650190
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.9813506   0.8113686   1.1869438
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         1.0951405   0.8941056   1.3413771
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.9672131   0.7901920   1.1838910
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         0.9485095   0.6767965   1.3293069
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         0.8974359   0.6490896   1.2408012
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.7950617   0.5496775   1.1499891
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.0933333   0.9064025   1.3188156
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.0740741   0.8704625   1.3253129
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         0.8707483   0.6839437   1.1085747
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         0.9921627   0.8809754   1.1173829
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.0067665   0.8789824   1.1531276
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.0311659   0.9221973   1.1530105
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         0.8557554   0.8089714   0.9052450
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         0.9106115   0.8631615   0.9606699
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         0.9525198   0.9034863   1.0042145
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         0.8982456   0.7282184   1.1079714
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         0.8864083   0.7106279   1.1056695
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.0313669   0.8457371   1.2577404
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.9642857   0.5872039   1.5835162
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.0827068   0.7010499   1.6721406
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.7684729   0.4465098   1.3225926
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         0.9170732   0.5961245   1.4108181
6-24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         0.9400000   0.5835489   1.5141833
6-24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.0162162   0.6685015   1.5447915
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.1983696   0.8878965   1.6174065
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         1.5000000   1.1450832   1.9649228
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.3295455   0.9981326   1.7709983
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         0.9890110   0.6922942   1.4129004
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.1383929   0.8340614   1.5537684
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.0920330   0.7977622   1.4948515
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         0.8078899   0.6710549   0.9726270
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         0.7200445   0.5721405   0.9061831
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         0.8712874   0.7393119   1.0268220
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         0.7345762   0.5350344   1.0085373
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         0.6468900   0.4592738   0.9111484
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         0.6591279   0.4613391   0.9417141


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0782431   -0.1800340    0.0235478
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0089210   -0.0756958    0.0935379
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.1195994   -0.2108604   -0.0283383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0613629   -0.0018058    0.1245317
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0004456   -0.0816700    0.0807788
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0015023   -0.0754398    0.0724353
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0589736   -0.1026060   -0.0153412
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0325143   -0.0528819   -0.0121467
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0661876   -0.1096641   -0.0227111
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.1029009   -0.2130038    0.0072019
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0168103   -0.0947957    0.1284164
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0256148   -0.1229526    0.0717230
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0009155   -0.0836438    0.0854747
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0595238   -0.1890177    0.0699701
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0036232   -0.0772108    0.0844571
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0061085   -0.0440476    0.0562646
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0532700   -0.0767055   -0.0298346
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0275433   -0.1025007    0.0474140
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0223577   -0.2088672    0.1641517
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0157859   -0.1363138    0.1047420
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.1120072    0.0263321    0.1976822
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0267717   -0.0721039    0.1256472
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0865211   -0.1523281   -0.0207141
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0521918   -0.0949893   -0.0093942


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.1238216   -0.2982740    0.0271892
0-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0151236   -0.1392355    0.1485681
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.2056034   -0.3771573   -0.0554201
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0980428   -0.0089015    0.1936508
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0008532   -0.1691043    0.1431840
0-24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0033710   -0.1837913    0.1495516
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0971770   -0.1715762   -0.0275024
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0769482   -0.1262661   -0.0297899
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.2565391   -0.4352954   -0.1000457
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.1524736   -0.3312898    0.0023243
0-6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0263692   -0.1655019    0.1866534
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                -0.0325521   -0.1640542    0.0840943
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0013040   -0.1267046    0.1147690
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.1020408   -0.3487614    0.0995487
0-6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0048077   -0.1084546    0.1064968
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0082917   -0.0621976    0.0741032
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                -0.0788803   -0.1142717   -0.0446130
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0493260   -0.1926224    0.0767530
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0398551   -0.4318239    0.2448104
6-24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0305851   -0.2935436    0.1789178
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.2012882    0.0305652    0.3419460
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0542553   -0.1691361    0.2349625
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.1721237   -0.3117148   -0.0473877
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.3496386   -0.6647239   -0.0941900
