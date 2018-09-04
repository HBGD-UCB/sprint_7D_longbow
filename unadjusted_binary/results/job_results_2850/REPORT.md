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

**Outcome Variable:** sstunted

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

agecat      studyid                    country                        hhwealth_quart    sstunted   n_cell       n
----------  -------------------------  -----------------------------  ---------------  ---------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                0       21      82
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                1        0      82
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                0       18      82
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                1        3      82
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                0       19      82
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                1        1      82
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                0       20      82
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                1        0      82
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4                0       11      55
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4                1        1      55
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1                0       17      55
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1                1        0      55
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2                0       15      55
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2                1        0      55
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3                0        9      55
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3                1        2      55
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4                0        9      31
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4                1        0      31
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q1                0        8      31
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q1                1        0      31
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q2                0        6      31
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q2                1        1      31
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q3                0        7      31
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q3                1        0      31
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4                0       10      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4                1        0      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1                0        9      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1                1        0      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2                0        9      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2                1        0      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3                0        8      36
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3                1        0      36
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                0       15      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                1        0      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                0       16      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                1        0      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                0       14      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                1        0      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                0       16      61
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                1        0      61
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                0        5      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                1        0      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                0        6      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                1        0      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                0        7      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                1        0      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                0        5      23
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                1        0      23
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                0       31      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                1        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                0       14      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                1        0      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                0       19      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                1        1      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                0       23      90
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                1        2      90
Birth       ki1000108-IRC              INDIA                          Wealth Q4                0       87     388
Birth       ki1000108-IRC              INDIA                          Wealth Q4                1        4     388
Birth       ki1000108-IRC              INDIA                          Wealth Q1                0       96     388
Birth       ki1000108-IRC              INDIA                          Wealth Q1                1        2     388
Birth       ki1000108-IRC              INDIA                          Wealth Q2                0       92     388
Birth       ki1000108-IRC              INDIA                          Wealth Q2                1        7     388
Birth       ki1000108-IRC              INDIA                          Wealth Q3                0       97     388
Birth       ki1000108-IRC              INDIA                          Wealth Q3                1        3     388
Birth       ki1114097-CONTENT          PERU                           Wealth Q4                0        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q4                1        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q1                0        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q1                1        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q2                0        1       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q2                1        0       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q3                0        1       2
Birth       ki1114097-CONTENT          PERU                           Wealth Q3                1        0       2
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4                0      291     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4                1        2     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1                0      157     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1                1        0     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2                0      158     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2                1        3     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3                0      201     816
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3                1        4     816
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                0      835    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                1        7    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                0      675    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                1       12    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                0      524    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                1       14    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                0      969    3049
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                1       13    3049
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                0     7714   39188
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                1      588   39188
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                0     9084   39188
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                1     1320   39188
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                0     9534   39188
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                1     1158   39188
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                0     8774   39188
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                1     1016   39188
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                0      334    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                1       32    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                0      374    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                1       44    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                0      414    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                1       24    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                0      394    1644
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                1       28    1644
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                0       21      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                1        0      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                0       21      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                1        0      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                0       16      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                1        3      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                0       17      81
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                1        3      81
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                0       18      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4                1        0      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                0       18      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1                1        1      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                0       17      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2                1        0      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                0       13      71
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3                1        4      71
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                0       11      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4                1        0      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                0       11      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1                1        0      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                0       10      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2                1        0      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                0       10      42
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3                1        0      42
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                0        8      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4                1        2      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                0        8      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1                1        1      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                0        7      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2                1        1      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                0        9      36
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3                1        0      36
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                0       17      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                1        0      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                0       16      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                1        0      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                0       15      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                1        1      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                0       16      65
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                1        0      65
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                0       15      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                1        0      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                0       13      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                1        0      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                0       14      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                1        1      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                0       13      58
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                1        2      58
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                0       79     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                1       15     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                0       89     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                1        2     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                0       83     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                1       11     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                0       76     369
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                1       14     369
6 months    ki1000108-IRC              INDIA                          Wealth Q4                0       92     407
6 months    ki1000108-IRC              INDIA                          Wealth Q4                1        7     407
6 months    ki1000108-IRC              INDIA                          Wealth Q1                0       95     407
6 months    ki1000108-IRC              INDIA                          Wealth Q1                1       10     407
6 months    ki1000108-IRC              INDIA                          Wealth Q2                0       92     407
6 months    ki1000108-IRC              INDIA                          Wealth Q2                1        8     407
6 months    ki1000108-IRC              INDIA                          Wealth Q3                0       99     407
6 months    ki1000108-IRC              INDIA                          Wealth Q3                1        4     407
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                0      153     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                1        2     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                0      130     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                1        8     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                0      137     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                1        3     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                0      147     581
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                1        1     581
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                0      497    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                1        5    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                0      598    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                1        7    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                0      403    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                1        6    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                0      503    2020
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                1        1    2020
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                0      278    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                1        4    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                0      268    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                1       22    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                0      270    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                1        8    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                0      270    1126
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                1        6    1126
6 months    ki1114097-CONTENT          PERU                           Wealth Q4                0       51     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q4                1        1     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q1                0       59     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q1                1        0     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q2                0       51     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q2                1        1     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q3                0       50     215
6 months    ki1114097-CONTENT          PERU                           Wealth Q3                1        2     215
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4                0      313     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4                1       26     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1                0      147     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1                1       28     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2                0      165     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2                1       30     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3                0      181     925
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3                1       35     925
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                0      719    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                1       24    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                0      540    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                1       30    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                0      459    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                1       26    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                0      858    2708
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                1       52    2708
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4                0      201     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4                1       16     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1                0      182     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1                1       21     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2                0      184     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2                1       15     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3                0      184     816
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3                1       13     816
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                0     9072   33561
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                1      395   33561
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                0     6815   33561
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                1      584   33561
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                0     7747   33561
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                1      556   33561
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                0     7892   33561
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                1      500   33561
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                0     2149    9441
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                1       78    9441
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                0     2144    9441
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                1      196    9441
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                0     2226    9441
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                1      148    9441
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                0     2396    9441
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                1      104    9441
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                0       20      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4                1        1      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                0       16      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1                1        5      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                0       13      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2                1        4      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                0       13      77
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3                1        5      77
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                0       16      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4                1        2      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                0       16      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1                1        3      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                0       16      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2                1        1      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                0       14      71
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3                1        3      71
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                0       11      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4                1        0      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                0       11      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1                1        0      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                0        8      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2                1        2      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                0       10      42
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3                1        0      42
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                0        7      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4                1        3      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                0        6      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1                1        1      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                0        7      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2                1        1      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                0        7      32
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3                1        0      32
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                0       12      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4                1        4      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                0       15      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1                1        1      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                0       14      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2                1        3      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                0       16      66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3                1        1      66
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                0       10      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4                1        5      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                0       12      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1                1        3      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                0       12      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2                1        3      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                0        8      59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3                1        6      59
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                0       62     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4                1       33     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                0       68     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1                1       23     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                0       59     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2                1       36     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                0       60     372
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3                1       31     372
24 months   ki1000108-IRC              INDIA                          Wealth Q4                0       95     409
24 months   ki1000108-IRC              INDIA                          Wealth Q4                1        5     409
24 months   ki1000108-IRC              INDIA                          Wealth Q1                0       90     409
24 months   ki1000108-IRC              INDIA                          Wealth Q1                1       15     409
24 months   ki1000108-IRC              INDIA                          Wealth Q2                0       91     409
24 months   ki1000108-IRC              INDIA                          Wealth Q2                1       10     409
24 months   ki1000108-IRC              INDIA                          Wealth Q3                0       92     409
24 months   ki1000108-IRC              INDIA                          Wealth Q3                1       11     409
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                0      148     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4                1        8     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                0      104     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1                1       25     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                0      133     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2                1        9     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                0      142     576
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3                1        7     576
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4                1        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                0        4       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1                1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2                1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3                1        0       6
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                0      236     998
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                1       18     998
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                0      210     998
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                1       44     998
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                0      222     998
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                1       30     998
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                0      222     998
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                1       16     998
24 months   ki1114097-CONTENT          PERU                           Wealth Q4                0       41     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q4                1        0     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q1                0       40     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q1                1        0     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q2                0       40     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q2                1        2     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q3                0       40     164
24 months   ki1114097-CONTENT          PERU                           Wealth Q3                1        1     164
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                0      265    1038
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4                1      138    1038
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                0      100    1038
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1                1      103    1038
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                0      110    1038
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2                1      103    1038
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                0      120    1038
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3                1       99    1038
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                0      571    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4                1      117    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                0      311    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1                1      178    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                0      286    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2                1      137    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                0      588    2445
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3                1      257    2445
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                0      143     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4                1       17     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                0      112     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1                1       17     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                0      123     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2                1       23     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                0      130     574
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3                1        9     574
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                0     4025   17208
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                1      425   17208
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                0     3228   17208
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                1      805   17208
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                0     3640   17208
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                1      763   17208
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                0     3635   17208
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                1      687   17208
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                0     2096    9270
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                1      129    9270
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                0     1951    9270
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                1      317    9270
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                0     2053    9270
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                1      227    9270
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                0     2317    9270
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                1      180    9270


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
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
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
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/aecdd5b3-0dc4-4fde-a968-0cbd018798e8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/aecdd5b3-0dc4-4fde-a968-0cbd018798e8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/aecdd5b3-0dc4-4fde-a968-0cbd018798e8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/aecdd5b3-0dc4-4fde-a968-0cbd018798e8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          PHILIPPINES   Wealth Q4            NA                0.0083135   0.0021795   0.0144475
Birth       ki1135781-COHORTS          PHILIPPINES   Wealth Q1            NA                0.0174672   0.0076695   0.0272650
Birth       ki1135781-COHORTS          PHILIPPINES   Wealth Q2            NA                0.0260223   0.0125676   0.0394771
Birth       ki1135781-COHORTS          PHILIPPINES   Wealth Q3            NA                0.0132383   0.0060886   0.0203880
Birth       kiGH5241-JiVitA-3          BANGLADESH    Wealth Q4            NA                0.0708263   0.0619624   0.0796902
Birth       kiGH5241-JiVitA-3          BANGLADESH    Wealth Q1            NA                0.1268743   0.1174943   0.1362543
Birth       kiGH5241-JiVitA-3          BANGLADESH    Wealth Q2            NA                0.1083053   0.0999471   0.1166635
Birth       kiGH5241-JiVitA-3          BANGLADESH    Wealth Q3            NA                0.1037794   0.0944800   0.1130787
Birth       kiGH5241-JiVitA-4          BANGLADESH    Wealth Q4            NA                0.0874317   0.0344976   0.1403658
Birth       kiGH5241-JiVitA-4          BANGLADESH    Wealth Q1            NA                0.1052632   0.0572628   0.1532635
Birth       kiGH5241-JiVitA-4          BANGLADESH    Wealth Q2            NA                0.0547945   0.0186255   0.0909636
Birth       kiGH5241-JiVitA-4          BANGLADESH    Wealth Q3            NA                0.0663507   0.0297633   0.1029382
6 months    ki1135781-COHORTS          GUATEMALA     Wealth Q4            NA                0.0766962   0.0483534   0.1050389
6 months    ki1135781-COHORTS          GUATEMALA     Wealth Q1            NA                0.1600000   0.1056545   0.2143455
6 months    ki1135781-COHORTS          GUATEMALA     Wealth Q2            NA                0.1538462   0.1031782   0.2045141
6 months    ki1135781-COHORTS          GUATEMALA     Wealth Q3            NA                0.1620370   0.1128698   0.2112043
6 months    ki1135781-COHORTS          PHILIPPINES   Wealth Q4            NA                0.0323015   0.0195865   0.0450164
6 months    ki1135781-COHORTS          PHILIPPINES   Wealth Q1            NA                0.0526316   0.0342969   0.0709663
6 months    ki1135781-COHORTS          PHILIPPINES   Wealth Q2            NA                0.0536082   0.0335585   0.0736580
6 months    ki1135781-COHORTS          PHILIPPINES   Wealth Q3            NA                0.0571429   0.0420590   0.0722267
6 months    ki1148112-LCNI-5           MALAWI        Wealth Q4            NA                0.0737327   0.0389404   0.1085250
6 months    ki1148112-LCNI-5           MALAWI        Wealth Q1            NA                0.1034483   0.0615288   0.1453677
6 months    ki1148112-LCNI-5           MALAWI        Wealth Q2            NA                0.0753769   0.0386749   0.1120788
6 months    ki1148112-LCNI-5           MALAWI        Wealth Q3            NA                0.0659898   0.0313005   0.1006792
6 months    kiGH5241-JiVitA-3          BANGLADESH    Wealth Q4            NA                0.0417239   0.0357702   0.0476775
6 months    kiGH5241-JiVitA-3          BANGLADESH    Wealth Q1            NA                0.0789296   0.0698688   0.0879903
6 months    kiGH5241-JiVitA-3          BANGLADESH    Wealth Q2            NA                0.0669637   0.0588474   0.0750801
6 months    kiGH5241-JiVitA-3          BANGLADESH    Wealth Q3            NA                0.0595806   0.0522198   0.0669413
6 months    kiGH5241-JiVitA-4          BANGLADESH    Wealth Q4            NA                0.0350247   0.0197303   0.0503191
6 months    kiGH5241-JiVitA-4          BANGLADESH    Wealth Q1            NA                0.0837607   0.0700626   0.0974588
6 months    kiGH5241-JiVitA-4          BANGLADESH    Wealth Q2            NA                0.0623420   0.0484670   0.0762170
6 months    kiGH5241-JiVitA-4          BANGLADESH    Wealth Q3            NA                0.0416000   0.0295894   0.0536106
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Wealth Q4            NA                0.3473684   0.2514946   0.4432422
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Wealth Q1            NA                0.2527473   0.1633367   0.3421578
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Wealth Q2            NA                0.3789474   0.2812631   0.4766316
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Wealth Q3            NA                0.3406593   0.2431543   0.4381644
24 months   ki1000108-IRC              INDIA         Wealth Q4            NA                0.0500000   0.0072313   0.0927687
24 months   ki1000108-IRC              INDIA         Wealth Q1            NA                0.1428571   0.0758436   0.2098707
24 months   ki1000108-IRC              INDIA         Wealth Q2            NA                0.0990099   0.0406898   0.1573300
24 months   ki1000108-IRC              INDIA         Wealth Q3            NA                0.1067961   0.0470769   0.1665153
24 months   ki1017093b-PROVIDE         BANGLADESH    Wealth Q4            NA                0.0512821   0.0166391   0.0859250
24 months   ki1017093b-PROVIDE         BANGLADESH    Wealth Q1            NA                0.1937984   0.1255288   0.2620681
24 months   ki1017093b-PROVIDE         BANGLADESH    Wealth Q2            NA                0.0633803   0.0232715   0.1034891
24 months   ki1017093b-PROVIDE         BANGLADESH    Wealth Q3            NA                0.0469799   0.0129751   0.0809846
24 months   ki1113344-GMS-Nepal        NEPAL         Wealth Q4            NA                0.0708661   0.0261936   0.1155387
24 months   ki1113344-GMS-Nepal        NEPAL         Wealth Q1            NA                0.1732283   0.1073437   0.2391130
24 months   ki1113344-GMS-Nepal        NEPAL         Wealth Q2            NA                0.1190476   0.0624452   0.1756500
24 months   ki1113344-GMS-Nepal        NEPAL         Wealth Q3            NA                0.0672269   0.0221899   0.1122639
24 months   ki1135781-COHORTS          GUATEMALA     Wealth Q4            NA                0.3424318   0.2960804   0.3887831
24 months   ki1135781-COHORTS          GUATEMALA     Wealth Q1            NA                0.5073892   0.4385823   0.5761961
24 months   ki1135781-COHORTS          GUATEMALA     Wealth Q2            NA                0.4835681   0.4164247   0.5507114
24 months   ki1135781-COHORTS          GUATEMALA     Wealth Q3            NA                0.4520548   0.3861071   0.5180025
24 months   ki1135781-COHORTS          PHILIPPINES   Wealth Q4            NA                0.1700581   0.1419802   0.1981361
24 months   ki1135781-COHORTS          PHILIPPINES   Wealth Q1            NA                0.3640082   0.3213538   0.4066626
24 months   ki1135781-COHORTS          PHILIPPINES   Wealth Q2            NA                0.3238771   0.2792735   0.3684806
24 months   ki1135781-COHORTS          PHILIPPINES   Wealth Q3            NA                0.3041420   0.2731173   0.3351667
24 months   ki1148112-LCNI-5           MALAWI        Wealth Q4            NA                0.1062500   0.0584598   0.1540402
24 months   ki1148112-LCNI-5           MALAWI        Wealth Q1            NA                0.1317829   0.0733611   0.1902048
24 months   ki1148112-LCNI-5           MALAWI        Wealth Q2            NA                0.1575342   0.0983898   0.2166787
24 months   ki1148112-LCNI-5           MALAWI        Wealth Q3            NA                0.0647482   0.0238035   0.1056929
24 months   kiGH5241-JiVitA-3          BANGLADESH    Wealth Q4            NA                0.0955056   0.0816925   0.1093188
24 months   kiGH5241-JiVitA-3          BANGLADESH    Wealth Q1            NA                0.1996033   0.1816509   0.2175557
24 months   kiGH5241-JiVitA-3          BANGLADESH    Wealth Q2            NA                0.1732909   0.1553998   0.1911821
24 months   kiGH5241-JiVitA-3          BANGLADESH    Wealth Q3            NA                0.1589542   0.1425950   0.1753133
24 months   kiGH5241-JiVitA-4          BANGLADESH    Wealth Q4            NA                0.0579775   0.0411513   0.0748037
24 months   kiGH5241-JiVitA-4          BANGLADESH    Wealth Q1            NA                0.1397707   0.1184776   0.1610638
24 months   kiGH5241-JiVitA-4          BANGLADESH    Wealth Q2            NA                0.0995614   0.0790856   0.1200372
24 months   kiGH5241-JiVitA-4          BANGLADESH    Wealth Q3            NA                0.0720865   0.0565874   0.0875856


### Parameter: E(Y)


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0150869   0.0107594   0.0194144
Birth       kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.1041645   0.0994900   0.1088391
Birth       kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0778589   0.0559066   0.0998111
6 months    ki1135781-COHORTS          GUATEMALA     NA                   NA                0.1286486   0.1070607   0.1502366
6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0487445   0.0406327   0.0568562
6 months    ki1148112-LCNI-5           MALAWI        NA                   NA                0.0796569   0.0610679   0.0982459
6 months    kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0606359   0.0567797   0.0644920
6 months    kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0557144   0.0488132   0.0626157
24 months   ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.3306452   0.2827744   0.3785159
24 months   ki1000108-IRC              INDIA         NA                   NA                0.1002445   0.0711031   0.1293859
24 months   ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.0850694   0.0622663   0.1078726
24 months   ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1082164   0.0809323   0.1355005
24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.4267823   0.3966784   0.4568861
24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.2817996   0.2639639   0.2996353
24 months   ki1148112-LCNI-5           MALAWI        NA                   NA                0.1149826   0.0888632   0.1411019
24 months   kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.1557415   0.1469948   0.1644882
24 months   kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0920173   0.0825478   0.1014867


### Parameter: RR


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1135781-COHORTS          PHILIPPINES   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          PHILIPPINES   Wealth Q1            Wealth Q4         2.1010605   0.8316064   5.308347
Birth       ki1135781-COHORTS          PHILIPPINES   Wealth Q2            Wealth Q4         3.1301115   1.2713841   7.706246
Birth       ki1135781-COHORTS          PHILIPPINES   Wealth Q3            Wealth Q4         1.5923771   0.6381739   3.973313
Birth       kiGH5241-JiVitA-3          BANGLADESH    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3          BANGLADESH    Wealth Q1            Wealth Q4         1.7913440   1.5438876   2.078463
Birth       kiGH5241-JiVitA-3          BANGLADESH    Wealth Q2            Wealth Q4         1.5291673   1.3203043   1.771071
Birth       kiGH5241-JiVitA-3          BANGLADESH    Wealth Q3            Wealth Q4         1.4652658   1.2609378   1.702704
Birth       kiGH5241-JiVitA-4          BANGLADESH    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-4          BANGLADESH    Wealth Q1            Wealth Q4         1.2039474   0.5639686   2.570159
Birth       kiGH5241-JiVitA-4          BANGLADESH    Wealth Q2            Wealth Q4         0.6267123   0.2556137   1.536570
Birth       kiGH5241-JiVitA-4          BANGLADESH    Wealth Q3            Wealth Q4         0.7588863   0.3337972   1.725324
6 months    ki1135781-COHORTS          GUATEMALA     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          GUATEMALA     Wealth Q1            Wealth Q4         2.0861538   1.2628777   3.446128
6 months    ki1135781-COHORTS          GUATEMALA     Wealth Q2            Wealth Q4         2.0059172   1.2227421   3.290722
6 months    ki1135781-COHORTS          GUATEMALA     Wealth Q3            Wealth Q4         2.1127137   1.3097221   3.408020
6 months    ki1135781-COHORTS          PHILIPPINES   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          PHILIPPINES   Wealth Q1            Wealth Q4         1.6293860   0.9632513   2.756185
6 months    ki1135781-COHORTS          PHILIPPINES   Wealth Q2            Wealth Q4         1.6596220   0.9642640   2.856422
6 months    ki1135781-COHORTS          PHILIPPINES   Wealth Q3            Wealth Q4         1.7690476   1.1013026   2.841662
6 months    ki1148112-LCNI-5           MALAWI        Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5           MALAWI        Wealth Q1            Wealth Q4         1.4030172   0.7532483   2.613291
6 months    ki1148112-LCNI-5           MALAWI        Wealth Q2            Wealth Q4         1.0222990   0.5189274   2.013953
6 months    ki1148112-LCNI-5           MALAWI        Wealth Q3            Wealth Q4         0.8949873   0.4416034   1.813850
6 months    kiGH5241-JiVitA-3          BANGLADESH    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3          BANGLADESH    Wealth Q1            Wealth Q4         1.8917122   1.5791212   2.266181
6 months    kiGH5241-JiVitA-3          BANGLADESH    Wealth Q2            Wealth Q4         1.6049259   1.3343082   1.930429
6 months    kiGH5241-JiVitA-3          BANGLADESH    Wealth Q3            Wealth Q4         1.4279723   1.1818266   1.725384
6 months    kiGH5241-JiVitA-4          BANGLADESH    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH    Wealth Q1            Wealth Q4         2.3914749   1.5034136   3.804111
6 months    kiGH5241-JiVitA-4          BANGLADESH    Wealth Q2            Wealth Q4         1.7799451   1.0913000   2.903147
6 months    kiGH5241-JiVitA-4          BANGLADESH    Wealth Q3            Wealth Q4         1.1877333   0.6998630   2.015695
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Wealth Q1            Wealth Q4         0.7276057   0.4645521   1.139614
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Wealth Q2            Wealth Q4         1.0909091   0.7477798   1.591488
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Wealth Q3            Wealth Q4         0.9806860   0.6589407   1.459532
24 months   ki1000108-IRC              INDIA         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   ki1000108-IRC              INDIA         Wealth Q1            Wealth Q4         2.8571428   1.0770898   7.579002
24 months   ki1000108-IRC              INDIA         Wealth Q2            Wealth Q4         1.9801980   0.7009124   5.594400
24 months   ki1000108-IRC              INDIA         Wealth Q3            Wealth Q4         2.1359223   0.7687111   5.934823
24 months   ki1017093b-PROVIDE         BANGLADESH    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH    Wealth Q1            Wealth Q4         3.7790698   1.7640433   8.095815
24 months   ki1017093b-PROVIDE         BANGLADESH    Wealth Q2            Wealth Q4         1.2359155   0.4897626   3.118832
24 months   ki1017093b-PROVIDE         BANGLADESH    Wealth Q3            Wealth Q4         0.9161074   0.3403771   2.465656
24 months   ki1113344-GMS-Nepal        NEPAL         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal        NEPAL         Wealth Q1            Wealth Q4         2.4444444   1.1706862   5.104108
24 months   ki1113344-GMS-Nepal        NEPAL         Wealth Q2            Wealth Q4         1.6798942   0.7627299   3.699926
24 months   ki1113344-GMS-Nepal        NEPAL         Wealth Q3            Wealth Q4         0.9486461   0.3780992   2.380141
24 months   ki1135781-COHORTS          GUATEMALA     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          GUATEMALA     Wealth Q1            Wealth Q4         1.4817234   1.2233607   1.794650
24 months   ki1135781-COHORTS          GUATEMALA     Wealth Q2            Wealth Q4         1.4121589   1.1632396   1.714344
24 months   ki1135781-COHORTS          GUATEMALA     Wealth Q3            Wealth Q4         1.3201310   1.0819041   1.610814
24 months   ki1135781-COHORTS          PHILIPPINES   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          PHILIPPINES   Wealth Q1            Wealth Q4         2.1404925   1.7481741   2.620854
24 months   ki1135781-COHORTS          PHILIPPINES   Wealth Q2            Wealth Q4         1.9045079   1.5360583   2.361336
24 months   ki1135781-COHORTS          PHILIPPINES   Wealth Q3            Wealth Q4         1.7884590   1.4729642   2.171530
24 months   ki1148112-LCNI-5           MALAWI        Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   ki1148112-LCNI-5           MALAWI        Wealth Q1            Wealth Q4         1.2403101   0.6595622   2.332409
24 months   ki1148112-LCNI-5           MALAWI        Wealth Q2            Wealth Q4         1.4826753   0.8252733   2.663755
24 months   ki1148112-LCNI-5           MALAWI        Wealth Q3            Wealth Q4         0.6093948   0.2804655   1.324092
24 months   kiGH5241-JiVitA-3          BANGLADESH    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3          BANGLADESH    Wealth Q1            Wealth Q4         2.0899636   1.7658872   2.473515
24 months   kiGH5241-JiVitA-3          BANGLADESH    Wealth Q2            Wealth Q4         1.8144580   1.5217892   2.163412
24 months   kiGH5241-JiVitA-3          BANGLADESH    Wealth Q3            Wealth Q4         1.6643438   1.3886491   1.994773
24 months   kiGH5241-JiVitA-4          BANGLADESH    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH    Wealth Q1            Wealth Q4         2.4107741   1.7390863   3.341888
24 months   kiGH5241-JiVitA-4          BANGLADESH    Wealth Q2            Wealth Q4         1.7172413   1.1976580   2.462237
24 months   kiGH5241-JiVitA-4          BANGLADESH    Wealth Q3            Wealth Q4         1.2433525   0.8797681   1.757197


### Parameter: PAR


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1135781-COHORTS          PHILIPPINES   Wealth Q4            NA                 0.0067734    0.0008091   0.0127376
Birth       kiGH5241-JiVitA-3          BANGLADESH    Wealth Q4            NA                 0.0333382    0.0251548   0.0415217
Birth       kiGH5241-JiVitA-4          BANGLADESH    Wealth Q4            NA                -0.0095728   -0.0547722   0.0356266
6 months    ki1135781-COHORTS          GUATEMALA     Wealth Q4            NA                 0.0519525    0.0258652   0.0780398
6 months    ki1135781-COHORTS          PHILIPPINES   Wealth Q4            NA                 0.0164430    0.0046635   0.0282224
6 months    ki1148112-LCNI-5           MALAWI        Wealth Q4            NA                 0.0059241   -0.0242790   0.0361273
6 months    kiGH5241-JiVitA-3          BANGLADESH    Wealth Q4            NA                 0.0189120    0.0135360   0.0242879
6 months    kiGH5241-JiVitA-4          BANGLADESH    Wealth Q4            NA                 0.0206897    0.0075707   0.0338088
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Wealth Q4            NA                -0.0167233   -0.0991166   0.0656701
24 months   ki1000108-IRC              INDIA         Wealth Q4            NA                 0.0502445    0.0080079   0.0924811
24 months   ki1017093b-PROVIDE         BANGLADESH    Wealth Q4            NA                 0.0337874    0.0010759   0.0664989
24 months   ki1113344-GMS-Nepal        NEPAL         Wealth Q4            NA                 0.0373503   -0.0041737   0.0788743
24 months   ki1135781-COHORTS          GUATEMALA     Wealth Q4            NA                 0.0843505    0.0471157   0.1215853
24 months   ki1135781-COHORTS          PHILIPPINES   Wealth Q4            NA                 0.1117415    0.0859965   0.1374864
24 months   ki1148112-LCNI-5           MALAWI        Wealth Q4            NA                 0.0087326   -0.0324119   0.0498771
24 months   kiGH5241-JiVitA-3          BANGLADESH    Wealth Q4            NA                 0.0602359    0.0473689   0.0731028
24 months   kiGH5241-JiVitA-4          BANGLADESH    Wealth Q4            NA                 0.0340397    0.0189986   0.0490809


### Parameter: PAF


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1135781-COHORTS          PHILIPPINES   Wealth Q4            NA                 0.4489569   -0.0865616   0.7205419
Birth       kiGH5241-JiVitA-3          BANGLADESH    Wealth Q4            NA                 0.3200536    0.2374610   0.3937004
Birth       kiGH5241-JiVitA-4          BANGLADESH    Wealth Q4            NA                -0.1229508   -0.8767238   0.3280745
6 months    ki1135781-COHORTS          GUATEMALA     Wealth Q4            NA                 0.4038323    0.1756190   0.5688694
6 months    ki1135781-COHORTS          PHILIPPINES   Wealth Q4            NA                 0.3373302    0.0545516   0.5355313
6 months    ki1148112-LCNI-5           MALAWI        Wealth Q4            NA                 0.0743708   -0.3937368   0.3852574
6 months    kiGH5241-JiVitA-3          BANGLADESH    Wealth Q4            NA                 0.3118942    0.2192939   0.3935111
6 months    kiGH5241-JiVitA-4          BANGLADESH    Wealth Q4            NA                 0.3713533    0.0740696   0.5731897
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Wealth Q4            NA                -0.0505777   -0.3318076   0.1712666
24 months   ki1000108-IRC              INDIA         Wealth Q4            NA                 0.5012195   -0.1084738   0.7755635
24 months   ki1017093b-PROVIDE         BANGLADESH    Wealth Q4            NA                 0.3971743   -0.1158955   0.6743433
24 months   ki1113344-GMS-Nepal        NEPAL         Wealth Q4            NA                 0.3451444   -0.1615973   0.6308222
24 months   ki1135781-COHORTS          GUATEMALA     Wealth Q4            NA                 0.1976430    0.1052358   0.2805067
24 months   ki1135781-COHORTS          PHILIPPINES   Wealth Q4            NA                 0.3965281    0.3000205   0.4797300
24 months   ki1148112-LCNI-5           MALAWI        Wealth Q4            NA                 0.0759470   -0.3605846   0.3724212
24 months   kiGH5241-JiVitA-3          BANGLADESH    Wealth Q4            NA                 0.3867684    0.3007469   0.4622075
24 months   kiGH5241-JiVitA-4          BANGLADESH    Wealth Q4            NA                 0.3699277    0.1832383   0.5139450
