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

**Outcome Variable:** wasted

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

agecat      studyid                    country                        hhwealth_quart    wasted   n_cell       n
----------  -------------------------  -----------------------------  ---------------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4              0       19      76
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4              1        2      76
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1              0       12      76
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1              1        5      76
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2              0       14      76
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2              1        4      76
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3              0       19      76
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3              1        1      76
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4              0        8      54
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4              1        3      54
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1              0       11      54
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1              1        6      54
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2              0       12      54
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2              1        3      54
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3              0        9      54
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3              1        2      54
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4              0        9      30
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4              1        0      30
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q1              0        7      30
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q1              1        1      30
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q2              0        5      30
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q2              1        1      30
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q3              0        5      30
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q3              1        2      30
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4              0       10      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4              1        0      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1              0        8      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1              1        1      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2              0        9      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2              1        0      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3              0        8      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3              1        0      36
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4              0       13      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4              1        2      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1              0       13      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1              1        3      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2              0       12      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2              1        2      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3              0       15      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3              1        1      61
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4              0        5      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4              1        0      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1              0        6      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1              1        0      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2              0        7      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2              1        0      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3              0        4      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3              1        1      23
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4              0       26      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4              1        5      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1              0       11      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1              1        1      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2              0       16      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2              1        4      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3              0       21      88
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3              1        4      88
Birth       ki1000108-IRC              INDIA                          Wealth Q4              0       63     343
Birth       ki1000108-IRC              INDIA                          Wealth Q4              1       16     343
Birth       ki1000108-IRC              INDIA                          Wealth Q1              0       58     343
Birth       ki1000108-IRC              INDIA                          Wealth Q1              1       32     343
Birth       ki1000108-IRC              INDIA                          Wealth Q2              0       60     343
Birth       ki1000108-IRC              INDIA                          Wealth Q2              1       23     343
Birth       ki1000108-IRC              INDIA                          Wealth Q3              0       70     343
Birth       ki1000108-IRC              INDIA                          Wealth Q3              1       21     343
Birth       ki1114097-CONTENT          PERU                           Wealth Q4              0        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q4              1        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q1              0        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q1              1        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q2              0        1       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q2              1        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q3              0        1       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q3              1        0       2
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4              0      190     729
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4              1       68     729
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1              0       98     729
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1              1       46     729
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2              0      108     729
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2              1       33     729
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3              0      148     729
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3              1       38     729
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4              0      671    2898
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4              1      144    2898
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1              0      533    2898
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1              1      114    2898
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2              0      442    2898
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2              1       64    2898
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3              0      801    2898
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3              1      129    2898
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4              0     3241   15691
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4              1      294   15691
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1              0     3550   15691
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1              1      418   15691
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2              0     3802   15691
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2              1      450   15691
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3              0     3592   15691
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3              1      344   15691
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4              0      145     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4              1        8     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1              0      158     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1              1       13     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2              0      178     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2              1        7     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3              0      166     683
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3              1        8     683
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4              0       21      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4              1        0      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1              0       19      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1              1        2      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2              0       18      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2              1        1      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3              0       19      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3              1        1      81
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4              0       16      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4              1        2      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1              0       18      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1              1        1      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2              0       13      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2              1        4      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3              0       16      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3              1        1      71
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4              0       11      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4              1        0      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1              0       11      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1              1        0      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2              0       10      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2              1        0      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3              0       10      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3              1        0      42
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4              0       10      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4              1        0      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1              0        9      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1              1        0      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2              0        8      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2              1        0      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3              0        9      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3              1        0      36
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4              0       17      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4              1        0      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1              0       15      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1              1        1      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2              0       16      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2              1        0      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3              0       16      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3              1        0      65
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4              0       15      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4              1        0      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1              0       13      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1              1        0      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2              0       15      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2              1        0      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3              0       15      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3              1        0      58
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4              0       87     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4              1        8     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1              0       74     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1              1       16     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2              0       80     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2              1       13     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3              0       81     368
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3              1        9     368
6 months    ki1000108-IRC              INDIA                          Wealth Q4              0       84     408
6 months    ki1000108-IRC              INDIA                          Wealth Q4              1       16     408
6 months    ki1000108-IRC              INDIA                          Wealth Q1              0       96     408
6 months    ki1000108-IRC              INDIA                          Wealth Q1              1        8     408
6 months    ki1000108-IRC              INDIA                          Wealth Q2              0       91     408
6 months    ki1000108-IRC              INDIA                          Wealth Q2              1       11     408
6 months    ki1000108-IRC              INDIA                          Wealth Q3              0       83     408
6 months    ki1000108-IRC              INDIA                          Wealth Q3              1       19     408
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4              0      149     580
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4              1        6     580
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1              0      131     580
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1              1        6     580
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2              0      135     580
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2              1        5     580
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3              0      141     580
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3              1        7     580
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4              0      485    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4              1       16    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1              0      573    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1              1       32    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2              0      395    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2              1       14    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3              0      479    2019
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3              1       25    2019
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4              0      132     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4              1        9     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1              0      132     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1              1       13     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2              0      127     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2              1       12     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3              0      121     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3              1       17     563
6 months    ki1114097-CONTENT          PERU                           Wealth Q4              0       52     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q4              1        0     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q1              0       59     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q1              1        0     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q2              0       52     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q2              1        0     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q3              0       52     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q3              1        0     215
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4              0      332     926
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4              1        7     926
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1              0      170     926
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1              1        6     926
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2              0      189     926
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2              1        5     926
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3              0      205     926
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3              1       12     926
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4              0      715    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4              1       29    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1              0      520    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1              1       49    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2              0      453    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2              1       32    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3              0      857    2706
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3              1       51    2706
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4              0      216     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4              1        1     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1              0      195     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1              1        8     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2              0      197     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2              1        2     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3              0      194     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3              1        3     816
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4              0     4399   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4              1      332   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1              0     3337   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1              1      363   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2              0     3778   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2              1      375   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3              0     3843   16776
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3              1      349   16776
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4              0     1090    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4              1       50    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1              0     1112    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1              1       93    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2              0     1129    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2              1       83    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3              0     1221    4827
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3              1       49    4827
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4              0       20      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4              1        1      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1              0       19      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1              1        2      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2              0       14      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2              1        3      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3              0       16      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3              1        2      77
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4              0       13      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4              1        5      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1              0       16      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1              1        3      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2              0       15      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2              1        2      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3              0       14      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3              1        3      71
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4              0       11      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4              1        0      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1              0       11      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1              1        0      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2              0       10      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2              1        0      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3              0       10      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3              1        0      42
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4              0        9      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4              1        1      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1              0        7      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1              1        0      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2              0        8      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2              1        0      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3              0        7      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3              1        0      32
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4              0       16      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4              1        0      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1              0       15      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1              1        1      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2              0       17      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2              1        0      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3              0       17      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3              1        0      66
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4              0       14      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4              1        1      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1              0       15      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1              1        0      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2              0       14      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2              1        1      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3              0       14      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3              1        0      59
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4              0       93     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4              1        2     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1              0       84     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1              1        7     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2              0       88     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2              1        7     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3              0       84     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3              1        7     372
24 months   ki1000108-IRC              INDIA                          Wealth Q4              0       93     409
24 months   ki1000108-IRC              INDIA                          Wealth Q4              1        7     409
24 months   ki1000108-IRC              INDIA                          Wealth Q1              0       96     409
24 months   ki1000108-IRC              INDIA                          Wealth Q1              1        9     409
24 months   ki1000108-IRC              INDIA                          Wealth Q2              0       92     409
24 months   ki1000108-IRC              INDIA                          Wealth Q2              1        9     409
24 months   ki1000108-IRC              INDIA                          Wealth Q3              0       97     409
24 months   ki1000108-IRC              INDIA                          Wealth Q3              1        6     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4              0      140     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4              1       16     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1              0      107     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1              1       23     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2              0      126     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2              1       16     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3              0      139     577
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3              1       10     577
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4              0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1              0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2              0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3              0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3              1        0       6
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4              0      103     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4              1       24     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1              0      103     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1              1       23     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2              0      103     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2              1       23     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3              0       98     498
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3              1       21     498
24 months   ki1114097-CONTENT          PERU                           Wealth Q4              0       41     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q4              1        0     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q1              0       40     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q1              1        0     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q2              0       42     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q2              1        0     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q3              0       41     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q3              1        0     164
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4              0      392    1046
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4              1       13    1046
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1              0      195    1046
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1              1        8    1046
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2              0      204    1046
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2              1       11    1046
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3              0      208    1046
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3              1       15    1046
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4              0      654    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4              1       31    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1              0      447    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1              1       45    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2              0      396    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2              1       28    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3              0      785    2449
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3              1       63    2449
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4              0      154     558
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4              1        1     558
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1              0      123     558
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1              1        4     558
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2              0      138     558
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2              1        2     558
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3              0      133     558
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3              1        3     558
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4              0     1782    8594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4              1      433    8594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1              0     1550    8594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1              1      469    8594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2              0     1709    8594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2              1      491    8594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3              0     1679    8594
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3              1      481    8594
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4              0      941    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4              1      196    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1              0      929    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1              1      237    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2              0      915    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2              1      247    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3              0     1025    4730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3              1      240    4730


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_mean is not a
## cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, cv_fold): Lrnr_glm_TRUE is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/bd287aaf-faf3-4796-b3f1-b225780c6dfd/314ded1e-e152-4b9b-a408-a90990255aee/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bd287aaf-faf3-4796-b3f1-b225780c6dfd/314ded1e-e152-4b9b-a408-a90990255aee/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/bd287aaf-faf3-4796-b3f1-b225780c6dfd/314ded1e-e152-4b9b-a408-a90990255aee/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bd287aaf-faf3-4796-b3f1-b225780c6dfd/314ded1e-e152-4b9b-a408-a90990255aee/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                0.2025316   0.1137810   0.2912823
Birth       ki1000108-IRC              INDIA                          Wealth Q1            NA                0.3555556   0.2565163   0.4545948
Birth       ki1000108-IRC              INDIA                          Wealth Q2            NA                0.2771084   0.1806801   0.3735367
Birth       ki1000108-IRC              INDIA                          Wealth Q3            NA                0.2307692   0.1440773   0.3174612
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.2635659   0.2097702   0.3173616
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.3194444   0.2432375   0.3956514
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.2340426   0.1641089   0.3039762
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.2043011   0.1463182   0.2622839
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.1766871   0.1504975   0.2028767
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.1761978   0.1468360   0.2055596
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.1264822   0.0975156   0.1554489
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.1387097   0.1164914   0.1609279
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0831683   0.0724843   0.0938524
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.1053427   0.0945348   0.1161507
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.1058325   0.0960515   0.1156136
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.0873984   0.0778387   0.0969581
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0522876   0.0206412   0.0839340
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.0760234   0.0274510   0.1245958
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.0378378   0.0022240   0.0734516
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.0459770   0.0128344   0.0791197
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.0842105   0.0282917   0.1401294
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1777778   0.0986824   0.2568731
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.1397849   0.0692131   0.2103567
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.1000000   0.0379361   0.1620639
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1600000   0.0880583   0.2319417
6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                0.0769231   0.0256474   0.1281988
6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                0.1078431   0.0475736   0.1681127
6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1862745   0.1106267   0.2619224
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.0387097   0.0083152   0.0691041
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.0437956   0.0094988   0.0780924
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.0357143   0.0049475   0.0664811
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.0472973   0.0130687   0.0815259
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0319361   0.0165358   0.0473365
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0528926   0.0350534   0.0707317
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0342298   0.0166047   0.0518550
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0496032   0.0306428   0.0685636
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0638298   0.0234454   0.1042142
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.0896552   0.0431136   0.1361967
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.0863309   0.0396000   0.1330619
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1231884   0.0683061   0.1780707
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.0206490   0.0055029   0.0357951
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.0340909   0.0072675   0.0609143
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.0257732   0.0034634   0.0480830
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.0552995   0.0248724   0.0857266
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0389785   0.0250687   0.0528883
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0861160   0.0630613   0.1091707
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0659794   0.0438820   0.0880767
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0561674   0.0411887   0.0711461
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0701754   0.0612366   0.0791143
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.0981081   0.0878406   0.1083756
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.0902962   0.0807001   0.0998923
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.0832538   0.0742873   0.0922203
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0438596   0.0250372   0.0626821
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.0771784   0.0586837   0.0956732
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.0684818   0.0485896   0.0883741
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.0385827   0.0264803   0.0506850
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.0700000   0.0199309   0.1200691
24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.0857143   0.0321034   0.1393251
24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.0891089   0.0334784   0.1447394
24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.0582524   0.0129642   0.1035407
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.1025641   0.0549142   0.1502140
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.1769231   0.1112684   0.2425777
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.1126761   0.0606240   0.1647281
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.0671141   0.0269024   0.1073258
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1889764   0.1208205   0.2571322
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1825397   0.1150230   0.2500564
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1825397   0.1150230   0.2500564
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1764706   0.1079081   0.2450331
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.0320988   0.0149241   0.0492734
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.0394089   0.0126311   0.0661866
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.0511628   0.0216976   0.0806280
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.0672646   0.0343737   0.1001555
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0452555   0.0296861   0.0608248
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0914634   0.0659864   0.1169405
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0660377   0.0423941   0.0896814
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0742925   0.0566383   0.0919467
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.1954853   0.1770520   0.2139187
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.2322932   0.2127977   0.2517888
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.2231818   0.2038466   0.2425170
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.2226852   0.2031479   0.2422225
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.1723835   0.1422721   0.2024948
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.2032590   0.1756067   0.2309113
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.2125645   0.1872483   0.2378808
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.1897233   0.1652694   0.2141772


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.2682216   0.2212677   0.3151755
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2537723   0.2221611   0.2853834
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1556246   0.1424244   0.1688248
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0959786   0.0907764   0.1011808
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0527086   0.0336587   0.0717585
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1250000   0.0911644   0.1588356
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1323529   0.0994307   0.1652752
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0413793   0.0251566   0.0576020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0430906   0.0342310   0.0519502
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0905861   0.0668565   0.1143158
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0323974   0.0209875   0.0438073
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0594974   0.0505830   0.0684118
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0845851   0.0797798   0.0893904
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0569712   0.0481278   0.0658146
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.0757946   0.0501131   0.1014762
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1126516   0.0868319   0.1384714
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1827309   0.1487560   0.2167058
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0449331   0.0323731   0.0574931
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0681911   0.0582056   0.0781766
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2180591   0.2081778   0.2279404
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1945032   0.1812962   0.2077102


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.7555556   1.0445037   2.9506601
Birth       ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.3682229   0.7818797   2.3942734
Birth       ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.1394231   0.6397558   2.0293445
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.2120098   0.8854314   1.6590419
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         0.8879850   0.6183722   1.2751500
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         0.7751423   0.5464613   1.0995208
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         0.9972308   0.7978792   1.2463908
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         0.7158542   0.5449403   0.9403732
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         0.7850582   0.6311349   0.9765209
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.2666211   1.0772748   1.4892476
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.2725104   1.0832911   1.4947808
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.0508614   0.8845901   1.2483858
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.4539474   0.6034264   3.5032658
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         0.7236486   0.2358403   2.2204319
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         0.8793103   0.3464580   2.2316897
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         2.1111111   0.9492417   4.6951055
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.6599462   0.7208115   3.8226658
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         1.1875000   0.4785137   2.9469505
6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         0.4807692   0.2151491   1.0743205
6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         0.6740196   0.3289721   1.3809758
6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.1642157   0.6351858   2.1338609
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         1.1313869   0.3732482   3.4294506
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.9226190   0.2876093   2.9596607
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         1.2218468   0.4200166   3.5544068
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         1.6561983   0.9194862   2.9831802
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         1.0718215   0.5293549   2.1701911
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         1.5531994   0.8394348   2.8738724
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.4045977   0.6196201   3.1840393
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.3525180   0.5882055   3.1099760
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.9299517   0.8901962   4.1841491
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.6509740   0.5630837   4.8406931
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.2481591   0.4013444   3.8817062
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         2.6780777   1.0705381   6.6995283
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         2.2093206   1.4142059   3.4514759
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.6927124   1.0376205   2.7613904
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.4409844   0.9229603   2.2497564
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.3980405   1.1849745   1.6494173
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.2867204   1.0909780   1.5175828
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.1863669   1.0062899   1.3986689
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.7596680   1.0779678   2.8724715
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.5613861   0.9369117   2.6020881
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         0.8796850   0.5176646   1.4948788
24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.2244898   0.4734817   3.1667018
24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.2729844   0.4926099   3.2895994
24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.8321775   0.2893443   2.3934100
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         1.7250000   0.9518259   3.1262284
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         1.0985915   0.5705571   2.1153070
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.6543624   0.3065828   1.3966542
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         0.9659392   0.5762234   1.6192304
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         0.9659392   0.5762234   1.6192304
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.9338235   0.5495895   1.5866868
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.2277378   0.5170124   2.9154814
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.5939177   0.7262154   3.4983748
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         2.0955502   1.0150945   4.3260315
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         2.0210464   1.2981696   3.1464521
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.4592209   0.8881355   2.3975234
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.6416235   1.0806498   2.4938029
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.1882898   1.0521892   1.3419950
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.1416807   1.0032746   1.2991805
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.1391402   1.0038205   1.2927015
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.1791096   0.9407471   1.4778675
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.2330913   0.9939934   1.5297024
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.1005889   0.8814290   1.3742410


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0656899   -0.0146408   0.1460207
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0097936   -0.0527451   0.0331579
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.0210625   -0.0428422   0.0007171
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0128103    0.0032069   0.0224136
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0004211   -0.0297010   0.0305431
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.0407895   -0.0107598   0.0923387
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0276471   -0.0886587   0.0333646
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0026696   -0.0236597   0.0289989
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.0111545   -0.0029153   0.0252243
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0267564   -0.0103529   0.0638656
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0117484   -0.0020944   0.0255913
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0205189    0.0076133   0.0334246
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0144097    0.0068596   0.0219598
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0131116   -0.0029682   0.0291913
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0057946   -0.0382574   0.0498467
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0100875   -0.0312579   0.0514330
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0062455   -0.0648139   0.0523230
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0128343   -0.0021425   0.0278111
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0229356    0.0085651   0.0373061
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0225738    0.0068746   0.0382730
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0221197   -0.0043437   0.0485831


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.2449092   -0.1206368    0.4912160
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                -0.0385921   -0.2223922    0.1175717
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                -0.1353420   -0.2839735   -0.0039161
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.1334701    0.0275315    0.2278680
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0079884   -0.7636551    0.4420184
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                 0.3263158   -0.2283944    0.6305336
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.2088889   -0.7673694    0.1731144
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0645161   -0.8459385    0.5259159
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                 0.2588616   -0.1451042    0.5203178
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.2953692   -0.2489631    0.6024666
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.3626352   -0.2100558    0.6642850
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.3448708    0.0956664    0.5254027
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.1703572    0.0755640    0.2554301
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.2301435   -0.1171903    0.4694915
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0764516   -0.7319580    0.5075275
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0895464   -0.3618182    0.3913095
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0341784   -0.4098728    0.2414032
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.2856317   -0.1247612    0.5462841
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.3363434    0.0955045    0.5130544
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.1035214    0.0284614    0.1727823
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.1137241   -0.0339969    0.2403412
