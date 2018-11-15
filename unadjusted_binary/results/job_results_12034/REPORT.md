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
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                0     3857   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                1      294   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                0     4542   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                1      660   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                0     4767   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                1      579   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                0     4387   19594
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                1      508   19594
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                0      167     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                1       16     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                0      187     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                1       22     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                0      207     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                1       12     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                0      197     822
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                1       14     822
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
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                0      139     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                1        2     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                0      134     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                1       11     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                0      135     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                1        4     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                0      135     563
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                1        3     563
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
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                0     4544   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                1      198   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                0     3412   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                1      293   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                0     3879   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                1      278   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                0     3949   16803
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                1      250   16803
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                0     1100    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                1       40    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                0     1101    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                1      102    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                0     1136    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                1       75    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                0     1218    4825
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                1       53    4825
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
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                0      118     499
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4                1        9     499
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                0      105     499
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1                1       22     499
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                0      111     499
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2                1       15     499
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                0      111     499
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3                1        8     499
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
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                0     2018    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4                1      213    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                0     1616    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1                1      404    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                0     1824    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2                1      382    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                0     1821    8623
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3                1      345    8623
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                0     1075    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4                1       66    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                0     1007    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1                1      163    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                0     1050    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2                1      116    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                0     1179    4747
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3                1       91    4747


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
![](/tmp/325aca7a-cd76-4009-94f8-a486dcb88bd3/d602e82d-a873-47d2-b94c-d63ee83dd4cf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/325aca7a-cd76-4009-94f8-a486dcb88bd3/d602e82d-a873-47d2-b94c-d63ee83dd4cf/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/325aca7a-cd76-4009-94f8-a486dcb88bd3/d602e82d-a873-47d2-b94c-d63ee83dd4cf/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/325aca7a-cd76-4009-94f8-a486dcb88bd3/d602e82d-a873-47d2-b94c-d63ee83dd4cf/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
6 months    kiGH5241-JiVitA-3          BANGLADESH    Wealth Q4            NA                0.0417545   0.0358070   0.0477021
6 months    kiGH5241-JiVitA-3          BANGLADESH    Wealth Q1            NA                0.0790823   0.0700146   0.0881500
6 months    kiGH5241-JiVitA-3          BANGLADESH    Wealth Q2            NA                0.0668752   0.0587615   0.0749888
6 months    kiGH5241-JiVitA-3          BANGLADESH    Wealth Q3            NA                0.0595380   0.0521871   0.0668889
6 months    kiGH5241-JiVitA-4          BANGLADESH    Wealth Q4            NA                0.0350877   0.0211226   0.0490528
6 months    kiGH5241-JiVitA-4          BANGLADESH    Wealth Q1            NA                0.0847880   0.0711661   0.0984099
6 months    kiGH5241-JiVitA-4          BANGLADESH    Wealth Q2            NA                0.0619323   0.0479159   0.0759486
6 months    kiGH5241-JiVitA-4          BANGLADESH    Wealth Q3            NA                0.0416994   0.0295912   0.0538077
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
24 months   kiGH5241-JiVitA-3          BANGLADESH    Wealth Q4            NA                0.0954729   0.0816475   0.1092983
24 months   kiGH5241-JiVitA-3          BANGLADESH    Wealth Q1            NA                0.2000000   0.1820189   0.2179811
24 months   kiGH5241-JiVitA-3          BANGLADESH    Wealth Q2            NA                0.1731641   0.1552706   0.1910576
24 months   kiGH5241-JiVitA-3          BANGLADESH    Wealth Q3            NA                0.1592798   0.1429387   0.1756209
24 months   kiGH5241-JiVitA-4          BANGLADESH    Wealth Q4            NA                0.0578440   0.0409339   0.0747541
24 months   kiGH5241-JiVitA-4          BANGLADESH    Wealth Q1            NA                0.1393162   0.1183281   0.1603044
24 months   kiGH5241-JiVitA-4          BANGLADESH    Wealth Q2            NA                0.0994854   0.0789347   0.1200361
24 months   kiGH5241-JiVitA-4          BANGLADESH    Wealth Q3            NA                0.0716535   0.0566199   0.0866872


### Parameter: E(Y)


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0150869   0.0107594   0.0194144
Birth       kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.1041645   0.0994900   0.1088391
Birth       kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0778589   0.0559066   0.0998111
6 months    ki1135781-COHORTS          GUATEMALA     NA                   NA                0.1286486   0.1070607   0.1502366
6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0487445   0.0406327   0.0568562
6 months    ki1148112-LCNI-5           MALAWI        NA                   NA                0.0796569   0.0610679   0.0982459
6 months    kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.0606439   0.0567894   0.0644985
6 months    kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0559585   0.0491999   0.0627172
24 months   ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.3306452   0.2827744   0.3785159
24 months   ki1000108-IRC              INDIA         NA                   NA                0.1002445   0.0711031   0.1293859
24 months   ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.0850694   0.0622663   0.1078726
24 months   ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1082164   0.0809323   0.1355005
24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.4267823   0.3966784   0.4568861
24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.2817996   0.2639639   0.2996353
24 months   ki1148112-LCNI-5           MALAWI        NA                   NA                0.1149826   0.0888632   0.1411019
24 months   kiGH5241-JiVitA-3          BANGLADESH    NA                   NA                0.1558622   0.1471181   0.1646064
24 months   kiGH5241-JiVitA-4          BANGLADESH    NA                   NA                0.0918475   0.0824775   0.1012175


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
6 months    kiGH5241-JiVitA-3          BANGLADESH    Wealth Q1            Wealth Q4         1.8939815   1.5812416   2.268575
6 months    kiGH5241-JiVitA-3          BANGLADESH    Wealth Q2            Wealth Q4         1.6016259   1.3317836   1.926143
6 months    kiGH5241-JiVitA-3          BANGLADESH    Wealth Q3            Wealth Q4         1.4259046   1.1802081   1.722750
6 months    kiGH5241-JiVitA-4          BANGLADESH    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-4          BANGLADESH    Wealth Q1            Wealth Q4         2.4164589   1.5760854   3.704922
6 months    kiGH5241-JiVitA-4          BANGLADESH    Wealth Q2            Wealth Q4         1.7650702   1.1194658   2.782999
6 months    kiGH5241-JiVitA-4          BANGLADESH    Wealth Q3            Wealth Q4         1.1884343   0.7220432   1.956082
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
24 months   kiGH5241-JiVitA-3          BANGLADESH    Wealth Q1            Wealth Q4         2.0948356   1.7694238   2.480093
24 months   kiGH5241-JiVitA-3          BANGLADESH    Wealth Q2            Wealth Q4         1.8137516   1.5208464   2.163069
24 months   kiGH5241-JiVitA-3          BANGLADESH    Wealth Q3            Wealth Q4         1.6683248   1.3920769   1.999392
24 months   kiGH5241-JiVitA-4          BANGLADESH    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-4          BANGLADESH    Wealth Q1            Wealth Q4         2.4084823   1.7355832   3.342270
24 months   kiGH5241-JiVitA-4          BANGLADESH    Wealth Q2            Wealth Q4         1.7198919   1.1965500   2.472131
24 months   kiGH5241-JiVitA-4          BANGLADESH    Wealth Q3            Wealth Q4         1.2387378   0.8777819   1.748123


### Parameter: PAR


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1135781-COHORTS          PHILIPPINES   Wealth Q4            NA                 0.0067734    0.0008091   0.0127376
Birth       kiGH5241-JiVitA-3          BANGLADESH    Wealth Q4            NA                 0.0333382    0.0251548   0.0415217
Birth       kiGH5241-JiVitA-4          BANGLADESH    Wealth Q4            NA                -0.0095728   -0.0547722   0.0356266
6 months    ki1135781-COHORTS          GUATEMALA     Wealth Q4            NA                 0.0519525    0.0258652   0.0780398
6 months    ki1135781-COHORTS          PHILIPPINES   Wealth Q4            NA                 0.0164430    0.0046635   0.0282224
6 months    ki1148112-LCNI-5           MALAWI        Wealth Q4            NA                 0.0059241   -0.0242790   0.0361273
6 months    kiGH5241-JiVitA-3          BANGLADESH    Wealth Q4            NA                 0.0188894    0.0135127   0.0242661
6 months    kiGH5241-JiVitA-4          BANGLADESH    Wealth Q4            NA                 0.0208708    0.0086795   0.0330622
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Wealth Q4            NA                -0.0167233   -0.0991166   0.0656701
24 months   ki1000108-IRC              INDIA         Wealth Q4            NA                 0.0502445    0.0080079   0.0924811
24 months   ki1017093b-PROVIDE         BANGLADESH    Wealth Q4            NA                 0.0337874    0.0010759   0.0664989
24 months   ki1113344-GMS-Nepal        NEPAL         Wealth Q4            NA                 0.0373503   -0.0041737   0.0788743
24 months   ki1135781-COHORTS          GUATEMALA     Wealth Q4            NA                 0.0843505    0.0471157   0.1215853
24 months   ki1135781-COHORTS          PHILIPPINES   Wealth Q4            NA                 0.1117415    0.0859965   0.1374864
24 months   ki1148112-LCNI-5           MALAWI        Wealth Q4            NA                 0.0087326   -0.0324119   0.0498771
24 months   kiGH5241-JiVitA-3          BANGLADESH    Wealth Q4            NA                 0.0603893    0.0475054   0.0732733
24 months   kiGH5241-JiVitA-4          BANGLADESH    Wealth Q4            NA                 0.0340035    0.0189703   0.0490367


### Parameter: PAF


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1135781-COHORTS          PHILIPPINES   Wealth Q4            NA                 0.4489569   -0.0865616   0.7205419
Birth       kiGH5241-JiVitA-3          BANGLADESH    Wealth Q4            NA                 0.3200536    0.2374610   0.3937004
Birth       kiGH5241-JiVitA-4          BANGLADESH    Wealth Q4            NA                -0.1229508   -0.8767238   0.3280745
6 months    ki1135781-COHORTS          GUATEMALA     Wealth Q4            NA                 0.4038323    0.1756190   0.5688694
6 months    ki1135781-COHORTS          PHILIPPINES   Wealth Q4            NA                 0.3373302    0.0545516   0.5355313
6 months    ki1148112-LCNI-5           MALAWI        Wealth Q4            NA                 0.0743708   -0.3937368   0.3852574
6 months    kiGH5241-JiVitA-3          BANGLADESH    Wealth Q4            NA                 0.3114804    0.2189224   0.3930702
6 months    kiGH5241-JiVitA-4          BANGLADESH    Wealth Q4            NA                 0.3729695    0.1056440   0.5603906
24 months   ki1000108-CMC-V-BCS-2002   INDIA         Wealth Q4            NA                -0.0505777   -0.3318076   0.1712666
24 months   ki1000108-IRC              INDIA         Wealth Q4            NA                 0.5012195   -0.1084738   0.7755635
24 months   ki1017093b-PROVIDE         BANGLADESH    Wealth Q4            NA                 0.3971743   -0.1158955   0.6743433
24 months   ki1113344-GMS-Nepal        NEPAL         Wealth Q4            NA                 0.3451444   -0.1615973   0.6308222
24 months   ki1135781-COHORTS          GUATEMALA     Wealth Q4            NA                 0.1976430    0.1052358   0.2805067
24 months   ki1135781-COHORTS          PHILIPPINES   Wealth Q4            NA                 0.3965281    0.3000205   0.4797300
24 months   ki1148112-LCNI-5           MALAWI        Wealth Q4            NA                 0.0759470   -0.3605846   0.3724212
24 months   kiGH5241-JiVitA-3          BANGLADESH    Wealth Q4            NA                 0.3874534    0.3013751   0.4629258
24 months   kiGH5241-JiVitA-4          BANGLADESH    Wealth Q4            NA                 0.3702169    0.1824941   0.5148331
