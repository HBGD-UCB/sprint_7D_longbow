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
![](/tmp/6864626e-b434-4d06-9a68-e964d58b457c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6864626e-b434-4d06-9a68-e964d58b457c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6864626e-b434-4d06-9a68-e964d58b457c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6864626e-b434-4d06-9a68-e964d58b457c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          PHILIPPINES   Wealth Q4            NA                0.0083135   0.0021795   0.0144475
Birth       ki1135781-COHORTS          PHILIPPINES   Wealth Q1            NA                0.0174672   0.0076695   0.0272650
Birth       ki1135781-COHORTS          PHILIPPINES   Wealth Q2            NA                0.0260223   0.0125676   0.0394771
Birth       ki1135781-COHORTS          PHILIPPINES   Wealth Q3            NA                0.0132383   0.0060886   0.0203880
Birth       kiGH5241-JiVitA-3          BANGLADESH    Wealth Q4            NA                0.1041188   0.0994458   0.1087917
Birth       kiGH5241-JiVitA-3          BANGLADESH    Wealth Q1            NA                0.1041589   0.0994848   0.1088331
Birth       kiGH5241-JiVitA-3          BANGLADESH    Wealth Q2            NA                0.1041563   0.0994823   0.1088303
Birth       kiGH5241-JiVitA-3          BANGLADESH    Wealth Q3            NA                0.1041558   0.0994813   0.1088302
Birth       kiGH5241-JiVitA-4          BANGLADESH    Wealth Q4            NA                0.0853312   0.0595506   0.1111118
Birth       kiGH5241-JiVitA-4          BANGLADESH    Wealth Q1            NA                0.0843466   0.0617153   0.1069778
Birth       kiGH5241-JiVitA-4          BANGLADESH    Wealth Q2            NA                0.0751035   0.0503521   0.0998548
Birth       kiGH5241-JiVitA-4          BANGLADESH    Wealth Q3            NA                0.0688966   0.0483295   0.0894637
6 months    ki1135781-COHORTS          GUATEMALA     Wealth Q4            NA                0.0758617   0.0486604   0.1030629
6 months    ki1135781-COHORTS          GUATEMALA     Wealth Q1            NA                0.1621048   0.1126120   0.2115977
6 months    ki1135781-COHORTS          GUATEMALA     Wealth Q2            NA                0.1464157   0.0990620   0.1937694
6 months    ki1135781-COHORTS          GUATEMALA     Wealth Q3            NA                0.1626981   0.1157109   0.2096853
6 months    ki1135781-COHORTS          PHILIPPINES   Wealth Q4            NA                0.0343966   0.0216564   0.0471367
6 months    ki1135781-COHORTS          PHILIPPINES   Wealth Q1            NA                0.0559353   0.0378963   0.0739743
6 months    ki1135781-COHORTS          PHILIPPINES   Wealth Q2            NA                0.0554315   0.0363701   0.0744928
6 months    ki1135781-COHORTS          PHILIPPINES   Wealth Q3            NA                0.0552407   0.0408059   0.0696754
6 months    ki1148112-LCNI-5           MALAWI        Wealth Q4            NA                0.0761338   0.0410239   0.1112436
6 months    ki1148112-LCNI-5           MALAWI        Wealth Q1            NA                0.1006738   0.0597253   0.1416222
6 months    ki1148112-LCNI-5           MALAWI        Wealth Q2            NA                0.0757633   0.0391190   0.1124076
6 months    ki1148112-LCNI-5           MALAWI        Wealth Q3            NA                0.0648842   0.0310943   0.0986741
6 months    kiGH5241-JiVitA-3          BANGLADESH    Wealth Q4            NA                0.0531795   0.0470882   0.0592709
6 months    kiGH5241-JiVitA-3          BANGLADESH    Wealth Q1            NA                0.0685533   0.0616195   0.0754871
6 months    kiGH5241-JiVitA-3          BANGLADESH    Wealth Q2            NA                0.0609500   0.0544653   0.0674347
6 months    kiGH5241-JiVitA-3          BANGLADESH    Wealth Q3            NA                0.0588070   0.0528240   0.0647901
6 months    kiGH5241-JiVitA-4          BANGLADESH    Wealth Q4            NA                0.0340622   0.0216351   0.0464893
6 months    kiGH5241-JiVitA-4          BANGLADESH    Wealth Q1            NA                0.0645458   0.0529729   0.0761188
6 months    kiGH5241-JiVitA-4          BANGLADESH    Wealth Q2            NA                0.0537344   0.0418875   0.0655814
6 months    kiGH5241-JiVitA-4          BANGLADESH    Wealth Q3            NA                0.0368127   0.0264991   0.0471263
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Wealth Q4            NA                0.3518352   0.2605501   0.4431203
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Wealth Q1            NA                0.2585865   0.1723307   0.3448423
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Wealth Q2            NA                0.3884476   0.2946032   0.4822920
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Wealth Q3            NA                0.3435342   0.2504713   0.4365971
24 months   ki1000108-IRC              INDIA         Wealth Q4            NA                0.0500000   0.0072313   0.0927687
24 months   ki1000108-IRC              INDIA         Wealth Q1            NA                0.1428571   0.0758436   0.2098707
24 months   ki1000108-IRC              INDIA         Wealth Q2            NA                0.0990099   0.0406898   0.1573300
24 months   ki1000108-IRC              INDIA         Wealth Q3            NA                0.1067961   0.0470769   0.1665153
24 months   ki1017093b-PROVIDE         BANGLADESH    Wealth Q4            NA                0.0512821   0.0166391   0.0859250
24 months   ki1017093b-PROVIDE         BANGLADESH    Wealth Q1            NA                0.1937984   0.1255288   0.2620681
24 months   ki1017093b-PROVIDE         BANGLADESH    Wealth Q2            NA                0.0633803   0.0232715   0.1034891
24 months   ki1017093b-PROVIDE         BANGLADESH    Wealth Q3            NA                0.0469799   0.0129751   0.0809846
24 months   ki1113344-GMS-Nepal        NEPAL         Wealth Q4            NA                0.0796716   0.0351625   0.1241806
24 months   ki1113344-GMS-Nepal        NEPAL         Wealth Q1            NA                0.1906744   0.1254206   0.2559283
24 months   ki1113344-GMS-Nepal        NEPAL         Wealth Q2            NA                0.1263210   0.0700781   0.1825638
24 months   ki1113344-GMS-Nepal        NEPAL         Wealth Q3            NA                0.0780432   0.0334148   0.1226716
24 months   ki1135781-COHORTS          GUATEMALA     Wealth Q4            NA                0.3669923   0.3250103   0.4089743
24 months   ki1135781-COHORTS          GUATEMALA     Wealth Q1            NA                0.5094504   0.4520133   0.5668874
24 months   ki1135781-COHORTS          GUATEMALA     Wealth Q2            NA                0.4801411   0.4252478   0.5350344
24 months   ki1135781-COHORTS          GUATEMALA     Wealth Q3            NA                0.4851137   0.4310980   0.5391295
24 months   ki1135781-COHORTS          PHILIPPINES   Wealth Q4            NA                0.1862559   0.1616010   0.2109108
24 months   ki1135781-COHORTS          PHILIPPINES   Wealth Q1            NA                0.3550754   0.3201282   0.3900227
24 months   ki1135781-COHORTS          PHILIPPINES   Wealth Q2            NA                0.2987137   0.2644834   0.3329441
24 months   ki1135781-COHORTS          PHILIPPINES   Wealth Q3            NA                0.2830448   0.2559722   0.3101175
24 months   ki1148112-LCNI-5           MALAWI        Wealth Q4            NA                0.1062500   0.0584598   0.1540402
24 months   ki1148112-LCNI-5           MALAWI        Wealth Q1            NA                0.1317829   0.0733611   0.1902048
24 months   ki1148112-LCNI-5           MALAWI        Wealth Q2            NA                0.1575342   0.0983898   0.2166787
24 months   ki1148112-LCNI-5           MALAWI        Wealth Q3            NA                0.0647482   0.0238035   0.1056929
24 months   kiGH5241-JiVitA-3          BANGLADESH    Wealth Q4            NA                0.1248739   0.1126828   0.1370650
24 months   kiGH5241-JiVitA-3          BANGLADESH    Wealth Q1            NA                0.1836801   0.1695059   0.1978543
24 months   kiGH5241-JiVitA-3          BANGLADESH    Wealth Q2            NA                0.1641369   0.1493115   0.1789623
24 months   kiGH5241-JiVitA-3          BANGLADESH    Wealth Q3            NA                0.1650720   0.1509106   0.1792334
24 months   kiGH5241-JiVitA-4          BANGLADESH    Wealth Q4            NA                0.0605888   0.0446729   0.0765047
24 months   kiGH5241-JiVitA-4          BANGLADESH    Wealth Q1            NA                0.1270989   0.1073822   0.1468156
24 months   kiGH5241-JiVitA-4          BANGLADESH    Wealth Q2            NA                0.0954257   0.0757561   0.1150953
24 months   kiGH5241-JiVitA-4          BANGLADESH    Wealth Q3            NA                0.0709614   0.0560213   0.0859015


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


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          PHILIPPINES   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES   Wealth Q1            Wealth Q4         2.1010605   0.8316064   5.3083471
Birth       ki1135781-COHORTS          PHILIPPINES   Wealth Q2            Wealth Q4         3.1301115   1.2713841   7.7062457
Birth       ki1135781-COHORTS          PHILIPPINES   Wealth Q3            Wealth Q4         1.5923771   0.6381739   3.9733128
Birth       kiGH5241-JiVitA-3          BANGLADESH    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH    Wealth Q1            Wealth Q4         1.0003860   1.0002819   1.0004900
Birth       kiGH5241-JiVitA-3          BANGLADESH    Wealth Q2            Wealth Q4         1.0003605   1.0002569   1.0004640
Birth       kiGH5241-JiVitA-3          BANGLADESH    Wealth Q3            Wealth Q4         1.0003557   1.0002522   1.0004592
Birth       kiGH5241-JiVitA-4          BANGLADESH    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-4          BANGLADESH    Wealth Q1            Wealth Q4         0.9884610   0.8629714   1.1321988
Birth       kiGH5241-JiVitA-4          BANGLADESH    Wealth Q2            Wealth Q4         0.8801407   0.7072213   1.0953399
Birth       kiGH5241-JiVitA-4          BANGLADESH    Wealth Q3            Wealth Q4         0.8074014   0.6589963   0.9892271
6 months    ki1135781-COHORTS          GUATEMALA     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA     Wealth Q1            Wealth Q4         2.1368482   1.3383385   3.4117826
6 months    ki1135781-COHORTS          GUATEMALA     Wealth Q2            Wealth Q4         1.9300362   1.1922318   3.1244257
6 months    ki1135781-COHORTS          GUATEMALA     Wealth Q3            Wealth Q4         2.1446688   1.3553822   3.3935847
6 months    ki1135781-COHORTS          PHILIPPINES   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES   Wealth Q1            Wealth Q4         1.6261901   0.9958110   2.6556188
6 months    ki1135781-COHORTS          PHILIPPINES   Wealth Q2            Wealth Q4         1.6115415   0.9728249   2.6696131
6 months    ki1135781-COHORTS          PHILIPPINES   Wealth Q3            Wealth Q4         1.6059941   1.0211422   2.5258159
6 months    ki1148112-LCNI-5           MALAWI        Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI        Wealth Q1            Wealth Q4         1.3223271   0.7163506   2.4409121
6 months    ki1148112-LCNI-5           MALAWI        Wealth Q2            Wealth Q4         0.9951339   0.5107823   1.9387742
6 months    ki1148112-LCNI-5           MALAWI        Wealth Q3            Wealth Q4         0.8522395   0.4262559   1.7039346
6 months    kiGH5241-JiVitA-3          BANGLADESH    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH    Wealth Q1            Wealth Q4         1.2890914   1.1186895   1.4854494
6 months    kiGH5241-JiVitA-3          BANGLADESH    Wealth Q2            Wealth Q4         1.1461174   0.9874959   1.3302183
6 months    kiGH5241-JiVitA-3          BANGLADESH    Wealth Q3            Wealth Q4         1.1058208   0.9544616   1.2811827
6 months    kiGH5241-JiVitA-4          BANGLADESH    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH    Wealth Q1            Wealth Q4         1.8949429   1.2789651   2.8075892
6 months    kiGH5241-JiVitA-4          BANGLADESH    Wealth Q2            Wealth Q4         1.5775408   1.0427494   2.3866088
6 months    kiGH5241-JiVitA-4          BANGLADESH    Wealth Q3            Wealth Q4         1.0807503   0.6901861   1.6923281
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Wealth Q1            Wealth Q4         0.7349649   0.4817826   1.1211974
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Wealth Q2            Wealth Q4         1.1040612   0.7750756   1.5726869
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Wealth Q3            Wealth Q4         0.9764066   0.6714298   1.4199100
24 months   ki1000108-IRC              INDIA         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA         Wealth Q1            Wealth Q4         2.8571428   1.0770898   7.5790015
24 months   ki1000108-IRC              INDIA         Wealth Q2            Wealth Q4         1.9801980   0.7009124   5.5943998
24 months   ki1000108-IRC              INDIA         Wealth Q3            Wealth Q4         2.1359223   0.7687111   5.9348225
24 months   ki1017093b-PROVIDE         BANGLADESH    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH    Wealth Q1            Wealth Q4         3.7790698   1.7640433   8.0958149
24 months   ki1017093b-PROVIDE         BANGLADESH    Wealth Q2            Wealth Q4         1.2359155   0.4897626   3.1188316
24 months   ki1017093b-PROVIDE         BANGLADESH    Wealth Q3            Wealth Q4         0.9161074   0.3403771   2.4656561
24 months   ki1113344-GMS-Nepal        NEPAL         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL         Wealth Q1            Wealth Q4         2.3932561   1.2421356   4.6111509
24 months   ki1113344-GMS-Nepal        NEPAL         Wealth Q2            Wealth Q4         1.5855214   0.7777228   3.2323576
24 months   ki1113344-GMS-Nepal        NEPAL         Wealth Q3            Wealth Q4         0.9795619   0.4400590   2.1804836
24 months   ki1135781-COHORTS          GUATEMALA     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA     Wealth Q1            Wealth Q4         1.3881773   1.1887234   1.6210972
24 months   ki1135781-COHORTS          GUATEMALA     Wealth Q2            Wealth Q4         1.3083139   1.1194683   1.5290163
24 months   ki1135781-COHORTS          GUATEMALA     Wealth Q3            Wealth Q4         1.3218636   1.1332771   1.5418324
24 months   ki1135781-COHORTS          PHILIPPINES   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES   Wealth Q1            Wealth Q4         1.9063852   1.6210053   2.2420065
24 months   ki1135781-COHORTS          PHILIPPINES   Wealth Q2            Wealth Q4         1.6037816   1.3510044   1.9038542
24 months   ki1135781-COHORTS          PHILIPPINES   Wealth Q3            Wealth Q4         1.5196559   1.2954140   1.7827151
24 months   ki1148112-LCNI-5           MALAWI        Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5           MALAWI        Wealth Q1            Wealth Q4         1.2403101   0.6595622   2.3324095
24 months   ki1148112-LCNI-5           MALAWI        Wealth Q2            Wealth Q4         1.4826753   0.8252733   2.6637552
24 months   ki1148112-LCNI-5           MALAWI        Wealth Q3            Wealth Q4         0.6093948   0.2804655   1.3240920
24 months   kiGH5241-JiVitA-3          BANGLADESH    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH    Wealth Q1            Wealth Q4         1.4709246   1.3084269   1.6536034
24 months   kiGH5241-JiVitA-3          BANGLADESH    Wealth Q2            Wealth Q4         1.3144216   1.1593695   1.4902100
24 months   kiGH5241-JiVitA-3          BANGLADESH    Wealth Q3            Wealth Q4         1.3219098   1.1661744   1.4984427
24 months   kiGH5241-JiVitA-4          BANGLADESH    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH    Wealth Q1            Wealth Q4         2.0977290   1.5495958   2.8397513
24 months   kiGH5241-JiVitA-4          BANGLADESH    Wealth Q2            Wealth Q4         1.5749727   1.1234328   2.2079995
24 months   kiGH5241-JiVitA-4          BANGLADESH    Wealth Q3            Wealth Q4         1.1711964   0.8516401   1.6106581


### Parameter: PAR


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1135781-COHORTS          PHILIPPINES   Wealth Q4            NA                 0.0067734    0.0008091   0.0127376
Birth       kiGH5241-JiVitA-3          BANGLADESH    Wealth Q4            NA                 0.0000458    0.0000369   0.0000546
Birth       kiGH5241-JiVitA-4          BANGLADESH    Wealth Q4            NA                -0.0074724   -0.0182481   0.0033034
6 months    ki1135781-COHORTS          GUATEMALA     Wealth Q4            NA                 0.0527870    0.0276574   0.0779166
6 months    ki1135781-COHORTS          PHILIPPINES   Wealth Q4            NA                 0.0143479    0.0025256   0.0261702
6 months    ki1148112-LCNI-5           MALAWI        Wealth Q4            NA                 0.0035231   -0.0268601   0.0339063
6 months    kiGH5241-JiVitA-3          BANGLADESH    Wealth Q4            NA                 0.0074563    0.0022585   0.0126541
6 months    kiGH5241-JiVitA-4          BANGLADESH    Wealth Q4            NA                 0.0216523    0.0112927   0.0320118
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Wealth Q4            NA                -0.0211901   -0.0995860   0.0572059
24 months   ki1000108-IRC              INDIA         Wealth Q4            NA                 0.0502445    0.0080079   0.0924811
24 months   ki1017093b-PROVIDE         BANGLADESH    Wealth Q4            NA                 0.0337874    0.0010759   0.0664989
24 months   ki1113344-GMS-Nepal        NEPAL         Wealth Q4            NA                 0.0285449   -0.0128895   0.0699793
24 months   ki1135781-COHORTS          GUATEMALA     Wealth Q4            NA                 0.0597900    0.0276131   0.0919669
24 months   ki1135781-COHORTS          PHILIPPINES   Wealth Q4            NA                 0.0955437    0.0728936   0.1181938
24 months   ki1148112-LCNI-5           MALAWI        Wealth Q4            NA                 0.0087326   -0.0324119   0.0498771
24 months   kiGH5241-JiVitA-3          BANGLADESH    Wealth Q4            NA                 0.0308676    0.0199263   0.0418089
24 months   kiGH5241-JiVitA-4          BANGLADESH    Wealth Q4            NA                 0.0314285    0.0172540   0.0456029


### Parameter: PAF


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1135781-COHORTS          PHILIPPINES   Wealth Q4            NA                 0.4489569   -0.0865616   0.7205419
Birth       kiGH5241-JiVitA-3          BANGLADESH    Wealth Q4            NA                 0.0004395    0.0003560   0.0005230
Birth       kiGH5241-JiVitA-4          BANGLADESH    Wealth Q4            NA                -0.0959730   -0.2421662   0.0330144
6 months    ki1135781-COHORTS          GUATEMALA     Wealth Q4            NA                 0.4103191    0.1937316   0.5687248
6 months    ki1135781-COHORTS          PHILIPPINES   Wealth Q4            NA                 0.2943495    0.0135940   0.4951951
6 months    ki1148112-LCNI-5           MALAWI        Wealth Q4            NA                 0.0442282   -0.4242451   0.3586079
6 months    kiGH5241-JiVitA-3          BANGLADESH    Wealth Q4            NA                 0.1229687    0.0335560   0.2041092
6 months    kiGH5241-JiVitA-4          BANGLADESH    Wealth Q4            NA                 0.3886296    0.1631938   0.5533329
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Wealth Q4            NA                -0.0640870   -0.3300669   0.1487037
24 months   ki1000108-IRC              INDIA         Wealth Q4            NA                 0.5012195   -0.1084738   0.7755635
24 months   ki1017093b-PROVIDE         BANGLADESH    Wealth Q4            NA                 0.3971743   -0.1158955   0.6743433
24 months   ki1113344-GMS-Nepal        NEPAL         Wealth Q4            NA                 0.2637758   -0.2243118   0.5572810
24 months   ki1135781-COHORTS          GUATEMALA     Wealth Q4            NA                 0.1400948    0.0615875   0.2120343
24 months   ki1135781-COHORTS          PHILIPPINES   Wealth Q4            NA                 0.3390485    0.2571027   0.4119552
24 months   ki1148112-LCNI-5           MALAWI        Wealth Q4            NA                 0.0759470   -0.3605846   0.3724212
24 months   kiGH5241-JiVitA-3          BANGLADESH    Wealth Q4            NA                 0.1981978    0.1268599   0.2637073
24 months   kiGH5241-JiVitA-4          BANGLADESH    Wealth Q4            NA                 0.3415496    0.1690999   0.4782081
